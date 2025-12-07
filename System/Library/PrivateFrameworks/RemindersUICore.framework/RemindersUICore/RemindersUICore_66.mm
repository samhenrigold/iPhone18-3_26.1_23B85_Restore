uint64_t sub_21D71BDDC(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_21DBFC21C();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = ~v8;
    v4 = a1 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 64);
    v7 = a1;
  }

  v11 = (v5 + 64) >> 6;
  sub_21DBF8E0C();
  v12 = 0;
  v43 = v7;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_21DBFC2DC())
    {
      return sub_21D0CFAF8(v43);
    }

    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    swift_dynamicCast();
    v22 = v44;
    sub_21D0D8CF0(0, &qword_280D0C320, 0x277D447F8);
    swift_dynamicCast();
    v23 = v44;
    v17 = v12;
    v18 = v6;
    if (!v44)
    {
      return sub_21D0CFAF8(v43);
    }

LABEL_19:
    swift_beginAccess();
    v24 = *(a2 + 64);
    if ((v24 & 0xC000000000000001) != 0)
    {
      if (v24 < 0)
      {
        v25 = *(a2 + 64);
      }

      else
      {
        v25 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = v22;
      v27 = sub_21DBFBD7C();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_39;
      }

      *(a2 + 64) = sub_21D983FE4(v25, v27 + 1);
    }

    else
    {
      v28 = v22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a2 + 64);
    *(a2 + 64) = 0x8000000000000000;
    v31 = sub_21D17E07C(v22);
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_38;
    }

    v37 = v32;
    if (v30[3] < v36)
    {
      sub_21D215CB4(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_21D17E07C(v22);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_41;
      }

LABEL_31:
      if (v37)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v41 = v31;
    sub_21D220534();
    v31 = v41;
    if (v37)
    {
LABEL_8:
      v13 = v30[7];
      v14 = *(v13 + 8 * v31);
      *(v13 + 8 * v31) = v23;

      goto LABEL_9;
    }

LABEL_32:
    v30[(v31 >> 6) + 8] |= 1 << v31;
    *(v30[6] + 8 * v31) = v22;
    *(v30[7] + 8 * v31) = v23;
    v39 = v30[2];
    v35 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v35)
    {
      goto LABEL_40;
    }

    v30[2] = v40;
LABEL_9:
    *(a2 + 64) = v30;
    swift_endAccess();

    v12 = v17;
    v6 = v18;
    v7 = v43;
  }

  v15 = v12;
  v16 = v6;
  v17 = v12;
  if (v6)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v20 = *(*(v7 + 48) + v19);
    v21 = *(*(v7 + 56) + v19);
    v22 = v20;
    v23 = v21;
    if (!v22)
    {
      return sub_21D0CFAF8(v43);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
      return sub_21D0CFAF8(v43);
    }

    v16 = *(v4 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D71C15C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_21DBFC21C();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = ~v8;
    v4 = a1 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 64);
    v7 = a1;
  }

  v11 = (v5 + 64) >> 6;
  sub_21DBF8E0C();
  v12 = 0;
  v43 = v7;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_21DBFC2DC())
    {
      return sub_21D0CFAF8(v43);
    }

    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    swift_dynamicCast();
    v22 = v44;
    sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    swift_dynamicCast();
    v23 = v44;
    v17 = v12;
    v18 = v6;
    if (!v44)
    {
      return sub_21D0CFAF8(v43);
    }

LABEL_19:
    swift_beginAccess();
    v24 = *(a2 + 64);
    if ((v24 & 0xC000000000000001) != 0)
    {
      if (v24 < 0)
      {
        v25 = *(a2 + 64);
      }

      else
      {
        v25 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = v22;
      v27 = sub_21DBFBD7C();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_39;
      }

      *(a2 + 64) = sub_21D983D98(v25, v27 + 1);
    }

    else
    {
      v28 = v22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a2 + 64);
    *(a2 + 64) = 0x8000000000000000;
    v31 = sub_21D17E07C(v22);
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_38;
    }

    v37 = v32;
    if (v30[3] < v36)
    {
      sub_21D215CA0(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_21D17E07C(v22);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_41;
      }

LABEL_31:
      if (v37)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v41 = v31;
    sub_21D220520();
    v31 = v41;
    if (v37)
    {
LABEL_8:
      v13 = v30[7];
      v14 = *(v13 + 8 * v31);
      *(v13 + 8 * v31) = v23;

      goto LABEL_9;
    }

LABEL_32:
    v30[(v31 >> 6) + 8] |= 1 << v31;
    *(v30[6] + 8 * v31) = v22;
    *(v30[7] + 8 * v31) = v23;
    v39 = v30[2];
    v35 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v35)
    {
      goto LABEL_40;
    }

    v30[2] = v40;
LABEL_9:
    *(a2 + 64) = v30;
    swift_endAccess();

    v12 = v17;
    v6 = v18;
    v7 = v43;
  }

  v15 = v12;
  v16 = v6;
  v17 = v12;
  if (v6)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v20 = *(*(v7 + 48) + v19);
    v21 = *(*(v7 + 56) + v19);
    v22 = v20;
    v23 = v21;
    if (!v22)
    {
      return sub_21D0CFAF8(v43);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
      return sub_21D0CFAF8(v43);
    }

    v16 = *(v4 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

double sub_21D71C50C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v5 = sub_21DBF8E0C();
  *a1 = a3(v5);

  return result;
}

id sub_21D71C584(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v7 = result;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v8 = v7;
    v9 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_21D71C5F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void **), uint64_t a3, char a4, void *a5)
{
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v83 = v7 & *(a1 + 64);
  v60 = (63 - v6) >> 6;
  sub_21DBF8E0C();

  v8 = 0;
  for (i = v5; ; v5 = i)
  {
    v21 = v83;
    v22 = v8;
    if (!v83)
    {
      break;
    }

LABEL_12:
    v24 = __clz(__rbit64(v21)) | (v22 << 6);
    v25 = *(*(a1 + 48) + 8 * v24);
    v26 = *(a1 + 56) + 48 * v24;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
    v31 = *(v26 + 32);
    v32 = *(v26 + 40);
    v72 = v25;
    v73 = v27;
    v74 = v28;
    v75 = v29;
    v76 = v30;
    v77 = v31;
    v78 = v32;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v33 = v25;
    v34 = v27;
    v35 = v28;
    v36 = v29;
    a2(v79, &v72);
    v37 = v72;
    v38 = v73;
    v39 = v74;
    v40 = v75;

    v41 = v79[0];
    if (!v79[0])
    {
LABEL_22:
      sub_21D0CFAF8(a1);
    }

    v42 = v79[1];
    v66 = v79[2];
    v67 = v79[3];
    v43 = v80;
    v44 = v82;
    v68 = v81;
    v45 = *a5;
    v47 = sub_21D17E07C(v79[0]);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_24;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      if ((a4 & 1) == 0)
      {
        sub_21D220360();
      }
    }

    else
    {
      sub_21D2159CC(v50, a4 & 1);
      v52 = sub_21D17E07C(v41);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_26;
      }

      v47 = v52;
    }

    v83 = (v21 - 1) & v21;
    v54 = *a5;
    if (v51)
    {
      v9 = 48 * v47;
      v10 = v54[7] + v9;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v70 = *(v10 + 24);
      v14 = *(v10 + 40);
      v62 = *(v10 + 32);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v61 = v12;
      v15 = v11;
      v16 = v13;

      v17 = v54[7] + v9;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      *v17 = v61;
      *(v17 + 8) = v11;
      *(v17 + 16) = v13;
      *(v17 + 24) = v70;
      *(v17 + 32) = v62;
      *(v17 + 40) = v14;
    }

    else
    {
      v54[(v47 >> 6) + 8] |= 1 << v47;
      *(v54[6] + 8 * v47) = v41;
      v55 = v54[7] + 48 * v47;
      *v55 = v42;
      *(v55 + 8) = v66;
      *(v55 + 16) = v67;
      *(v55 + 24) = v43;
      *(v55 + 32) = v68;
      *(v55 + 40) = v44;
      v56 = v54[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_25;
      }

      v54[2] = v58;
    }

    a4 = 1;
    v8 = v22;
  }

  v23 = v8;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v60)
    {
      goto LABEL_22;
    }

    v21 = *(v5 + 8 * v22);
    ++v23;
    if (v21)
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
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

unint64_t sub_21D71C9D0()
{
  result = qword_27CE60828;
  if (!qword_27CE60828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListDataModelSourceListReloadReason, &type metadata for TTRRemindersListDataModelSourceListReloadReason, v0, v1);
    atomic_store(result, &qword_27CE60828);
  }

  return result;
}

unint64_t sub_21D71CA28()
{
  result = qword_27CE60830;
  if (!qword_27CE60830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListDataModelSourceCountCompleted, &type metadata for TTRRemindersListDataModelSourceCountCompleted, v0, v1);
    atomic_store(result, &qword_27CE60830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListDataModelSourceListReloadReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListDataModelSourceListReloadReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double destroy for TTRRemindersMovingParamsForREMManualOrdering(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRRemindersMovingParamsForREMManualOrdering(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[2];
  v5 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = a2[4];
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 20);
  v7 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = v4;
  v9 = v6;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersMovingParamsForREMManualOrdering(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = a2[1];
  sub_21DBF8E0C();

  v4 = a2[2];
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = v4;

  v8 = a2[4];
  v9 = *(a1 + 32);
  *(a1 + 32) = v8;
  v10 = v8;

  *(a1 + 40) = *(a2 + 20);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = a2[7];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRRemindersMovingParamsForREMManualOrdering(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  return a1;
}

uint64_t type metadata accessor for TTRRemindersListDataModelSourceBase(uint64_t a1)
{
  result = qword_280D10528;
  if (!qword_280D10528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D71D254(uint64_t a1)
{
  result = sub_21DBF70DC();
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

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

uint64_t FloatingPoint.isAlmostEqual(to:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  if (sub_21DBF9FEC() & 1) != 0 && (sub_21DBF9FEC())
  {
    v24[1] = *(*(a4 + 24) + 8);
    v25 = v18;
    sub_21DBFC6AC();
    sub_21DBFC6AC();
    sub_21DBF9F8C();
    sub_21DBFA68C();
    sub_21DBFC6CC();

    v19 = *(v7 + 8);
    v19(v9, a3);
    v19(v12, a3);
    v19(v15, a3);
    sub_21DBFC34C();
    sub_21DBFC6AC();
    v19(v12, a3);
    v20 = v25;
    sub_21DBFAC1C();
    v21 = sub_21DBFA08C();
    v19(v12, a3);
    v19(v15, a3);
    v19(v20, a3);
    return v21 & 1;
  }

  else
  {
    v23 = v26;

    return FloatingPoint.rescaledAlmostEqual(to:tolerance:)(a1, v23, a3, a4);
  }
}

uint64_t FloatingPoint.rescaledAlmostEqual(to:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  swift_getAssociatedTypeWitness();
  v8 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = v27 - v9;
  v32 = *(*(*(a4 + 16) + 8) + 16);
  v10 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v10);
  v34 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v34);
  v38 = v27 - v11;
  v33 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  MEMORY[0x28223BE20](v18);
  v37 = v27 - v19;
  if ((sub_21DBF9FCC() & 1) == 0)
  {
    v31 = v8;
    if ((sub_21DBF9FCC() & 1) == 0)
    {
      if (sub_21DBF9F7C())
      {
        if ((sub_21DBF9F7C() & 1) == 0)
        {
          v27[3] = sub_21DBF9FBC();
          sub_21DBF9F9C();
          sub_21DBF9FDC();
          v22 = v33;
          v23 = *(v33 + 8);
          v28 = a1;
          v29 = v33 + 8;
          v30 = v23;
          v23(v17, a3);
          swift_getAssociatedConformanceWitness();
          sub_21DBFC68C();
          sub_21DBFC61C();
          sub_21DBF9FAC();
          swift_getAssociatedConformanceWitness();
          sub_21DBFC68C();
          sub_21DBFC61C();
          (*(v22 + 16))(v14, v28, a3);
          sub_21DBF9FAC();
          v24 = v37;
          v25 = FloatingPoint.isAlmostEqual(to:tolerance:)(v17, v39, a3, a4);
          v26 = v30;
          v30(v17, a3);
          v26(v24, a3);
          return v25 & 1;
        }

        v21 = sub_21DBFA10C();
      }

      else
      {
        v21 = FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v4, v39, a3, a4);
      }

      return v21 & 1;
    }
  }

  return 0;
}

uint64_t sub_21D71E520(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(_BYTE *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v19[-v13];
  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  *(v4 + v16) = 1;
  sub_21D0D3954(a1, &v19[-v13], a2, a3);
  v17 = *((*v15 & *v4) + 0x78);
  swift_beginAccess();
  sub_21D0D3954(v4 + v17, v11, a2, a3);
  swift_beginAccess();
  sub_21D0EB8DC(v14, v4 + v17, a2, a3);
  swift_endAccess();
  a4(v11);
  sub_21D0CF7E0(v11, a2, a3);
  result = sub_21D0CF7E0(v14, a2, a3);
  *(v4 + v16) = 0;
  return result;
}

uint64_t sub_21D71E6C0(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TTRIDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v2) + 0x90);
  *(v2 + v11) = 1;
  sub_21D721610(a1, &v16[-v8]);
  v12 = *((*v10 & *v2) + 0x78);
  swift_beginAccess();
  sub_21D721610(v2 + v12, v6);
  swift_beginAccess();
  sub_21D539C50(v9, v2 + v12, v13);
  swift_endAccess();
  sub_21D5D2158(v6, v14);
  sub_21D721698(v6);
  result = sub_21D721698(v9);
  *(v2 + v11) = 0;
  return result;
}

uint64_t TTRIDatePickerCellContentState.init(date:timeZone:datePickerMode:datePickerStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21DBF563C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for TTRIDatePickerCellContentState(0);
  v12 = v11[5];
  v13 = sub_21DBF5C4C();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t TTRIDatePickerCellContentState.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRIDatePickerCellContentState.date.setter(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TTRIDatePickerCellContentState.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRIDatePickerCellContentState(0) + 20);
  v4 = sub_21DBF5C4C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRIDatePickerCellContentState.timeZone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIDatePickerCellContentState(0) + 20);
  v4 = sub_21DBF5C4C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTRIDatePickerCellContentState.datePickerMode.setter(uint64_t a1)
{
  result = type metadata accessor for TTRIDatePickerCellContentState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TTRIDatePickerCellContentState.datePickerStyle.setter(uint64_t a1)
{
  result = type metadata accessor for TTRIDatePickerCellContentState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

BOOL static TTRIDatePickerCellContentState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_21DBF55EC() & 1) != 0 && (v4 = type metadata accessor for TTRIDatePickerCellContentState(0), (MEMORY[0x223D3E3D0](a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D71EDB8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE8EAB0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D71EE58(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE8EAB0);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRIDatePickerCellContent.stateChangeBlock.getter()
{
  v1 = (v0 + qword_27CE8EAB0);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1, v1[1]);
  return v2;
}

uint64_t TTRIDatePickerCellContent.stateChangeBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE8EAB0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6, v7);
}

id TTRIDatePickerCellContent.init(state:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRIDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + qword_27CE8EAB0);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + qword_27CE60838) = 0;
  sub_21D721610(a1, v5);
  type metadata accessor for TTRIDatePickerTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_21DBFA12C();
  v10 = [objc_opt_self() nibWithNibName:v9 bundle:v8];

  v11 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v11 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0x90)) = 0;
  sub_21D721610(v5, v1 + *((*v11 & *v1) + 0x78));
  *(v1 + *((*v11 & *v1) + 0x80)) = v10;
  v12 = v1 + *((*v11 & *v1) + 0x88);
  strcpy(v12, "DatePickerCell");
  v12[15] = -18;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60840, "ne\n");
  v16.receiver = v1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_21D721698(a1);
  sub_21D721698(v5);
  return v14;
}

void TTRIDatePickerCellContent.updateCell(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF5C4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = Strong;
  v30 = v4;
  v31 = v3;
  v12 = [Strong minuteInterval];

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78);
  swift_beginAccess();
  v16 = type metadata accessor for TTRIDatePickerCellContentState(0);
  [v14 setDatePickerMode_];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  [v17 setPreferredDatePickerStyle_];

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  [v19 setMinuteInterval_];

  sub_21D71F60C();
  sub_21D71F6EC();
  if (*(v2 + qword_27CE60838))
  {
    return;
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  (*(v7 + 16))(v9, v15, v6);
  v23 = sub_21DBF55BC();
  (*(v7 + 8))(v9, v6);
  [v22 setDate_];

  v24 = swift_unknownObjectWeakLoadStrong();
  if (!v24)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v25 = v24;
  v27 = v30;
  v26 = v31;
  v28 = v32;
  (*(v30 + 16))(v32, &v15[v16[5]], v31);
  v29 = sub_21DBF5C0C();
  (*(v27 + 8))(v28, v26);
  [v25 setTimeZone_];

  sub_21D71F86C();
}

void sub_21D71F60C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = Strong;
  v3 = [Strong datePickerStyle];

  if (v3 != 3)
  {
    goto LABEL_5;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 datePickerMode];

  if (!v6)
  {
    v7 = 1;
    goto LABEL_6;
  }

LABEL_5:
  v7 = 0;
LABEL_6:
  v8 = v0[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_currentLayout];
  if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_currentLayout] = v7;

    [v0 setNeedsUpdateConstraints];
  }
}

void sub_21D71F6EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = Strong;
  v3 = [Strong datePickerMode];

  if (v3 > 1)
  {
    if (v3 == 3)
    {
      goto LABEL_13;
    }

    if (v3 != 2)
    {
      return;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    goto LABEL_13;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = v4;
  v6 = [v4 datePickerStyle];

  if (v6 == 1)
  {
    v7 = OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_tapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_tapGestureRecognizer])
    {
      return;
    }

    v8 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_datePickerDoubleTapped_];
    [v8 setNumberOfTapsRequired_];
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v9 addGestureRecognizer_];

      v11 = *&v0[v7];
      *&v0[v7] = v8;
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return;
  }

LABEL_13:
  v12 = OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_tapGestureRecognizer;
  if (!*&v0[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_tapGestureRecognizer])
  {
    return;
  }

  [v0 removeGestureRecognizer_];
  v11 = *&v0[v12];
  *&v0[v12] = 0;
LABEL_15:
}

void sub_21D71F86C()
{
  v0 = sub_21DBF5A0C();
  v31 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF5A2C();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF563C();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  v10 = Strong;
  v11 = [Strong datePickerMode];

  if ((v11 | 2) != 2)
  {
    return;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 datePickerStyle];

  if (v14 != 1)
  {
    return;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v15 minuteInterval];

  if (v17 < 2)
  {
    return;
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  v20 = [v18 date];

  sub_21DBF55FC();
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v21 = v31;
  (*(v31 + 104))(v2, *MEMORY[0x277CC99A0], v0);
  v22 = sub_21DBF5A1C();
  (*(v21 + 8))(v2, v0);
  (*(v30 + 8))(v5, v3);
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 minuteInterval];

  if (!v25)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v22 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_18;
  }

  if (v22 % v25)
  {
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      [v26 setMinuteInterval_];

      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    return;
  }

LABEL_15:
  (*(v29 + 8))(v8, v6);
}

void TTRIDatePickerCellContent.willUnassignCell(_:)(uint64_t a1)
{
  *(v1 + qword_27CE60838) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong removeTarget:v1 action:0 forControlEvents:0xFFFFFFFFLL];
  }

  else
  {
    __break(1u);
  }
}

void TTRIDatePickerCellContent.didAssignCell(_:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = Strong;
  [Strong addTarget:v1 action:sel_datePickerAction_ forControlEvents:4096];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 addTarget:v1 action:sel_datePickerEditingDidBegin_ forControlEvents:0x10000];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addTarget:v1 action:sel_datePickerEditingDidEnd_ forControlEvents:0x40000];
}

uint64_t sub_21D71FD60(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_21DBF5C4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v35 - v11;
  v12 = sub_21DBF563C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRIDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v38);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(a1, v41);
  sub_21D0D8CF0(0, &qword_27CE60890, 0x277D753E8);
  result = swift_dynamicCast();
  if (result)
  {
    v36 = v5;
    v19 = v40;
    v20 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v37 = v1;
    sub_21D721610(v1 + v20, v17);
    v21 = [v19 date];
    sub_21DBF55FC();

    (*(v13 + 40))(v17, v15, v12);
    v22 = [v19 timeZone];
    if (v22)
    {
      v23 = v22;
      sub_21DBF5C2C();

      v24 = *(v7 + 32);
      v25 = v36;
      v24(v36, v9, v6);
      (*(v7 + 56))(v25, 0, 1, v6);
      v26 = v39;
      v24(v39, v25, v6);
    }

    else
    {
      v27 = v36;
      (*(v7 + 56))(v36, 1, 1, v6);
      v28 = [objc_opt_self() defaultTimeZone];
      v26 = v39;
      sub_21DBF5C2C();

      if ((*(v7 + 48))(v27, 1, v6) != 1)
      {
        sub_21D0CF7E0(v27, &unk_27CE60DB0, qword_21DC0BF70);
      }
    }

    v29 = v38;
    (*(v7 + 40))(&v17[*(v38 + 20)], v26, v6);
    *&v17[*(v29 + 28)] = [v19 datePickerStyle];
    v30 = v37;
    sub_21D71E6C0(v17, v31);
    v32 = v30 + qword_27CE8EAB0;
    swift_beginAccess();
    v33 = *v32;
    if (*v32)
    {
      v34 = *(v32 + 8);

      v33(v17);
      sub_21D0D0E88(v33, v34);
    }

    return sub_21D721698(v17);
  }

  return result;
}

uint64_t sub_21D720200(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D71FD60(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_21D720264(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v5);
  v4[qword_27CE60838] = 1;
}

uint64_t sub_21D7202D0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  *(v4 + qword_27CE60838) = 0;
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = v6;
    sub_21D71F86C();
  }

  sub_21D71FD60(v9);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

Swift::Void __swiftcall TTRIDatePickerTableCell.awakeFromNib()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_awakeFromNib);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong _setCustomFontDesign_];

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 setRoundsToMinuteInterval_];

      sub_21D71F60C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall TTRIDatePickerTableCell.updateConstraints()()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, sel_updateConstraints);
  v2 = v0[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_currentLayout];
  if (v2 != 2)
  {
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_21DC0AA10;
      v4 = [v1 contentView];
      v5 = [v4 layoutMarginsGuide];

      v6 = [v5 leadingAnchor];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = [Strong leadingAnchor];

        v10 = [v6 constraintEqualToAnchor_];
        *(v3 + 32) = v10;
        v11 = [v1 contentView];
        v12 = [v11 layoutMarginsGuide];

        v13 = [v12 trailingAnchor];
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          v16 = [v14 trailingAnchor];

          v17 = [v13 constraintEqualToAnchor_];
          *(v3 + 40) = v17;
          v18 = [v1 contentView];
          v19 = [v18 topAnchor];

          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = [v20 topAnchor];

            v23 = [v19 constraintEqualToAnchor:v22 constant:-8.0];
            *(v3 + 48) = v23;
            v24 = [v1 contentView];
            v25 = [v24 bottomAnchor];

            v26 = swift_unknownObjectWeakLoadStrong();
            if (v26)
            {
              v27 = v26;
              v28 = [v26 bottomAnchor];

              v29 = [v25 constraintEqualToAnchor:v28 constant:8.0];
              *(v3 + 56) = v29;
LABEL_10:
              sub_21DBF8E0C();
              v33 = objc_opt_self();
              v34 = OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_datePickerConstraints;
              sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
              sub_21DBF8E0C();
              v35 = sub_21DBFA5DC();

              [v33 deactivateConstraints_];

              v36 = sub_21DBFA5DC();

              [v33 activateConstraints_];

              *&v1[v34] = v3;

              return;
            }

LABEL_16:
            __break(1u);
            return;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = [v0 contentView];
        v3 = UIView.constraintsEqualTo(_:edges:)(v32, 15);

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }
}

void sub_21D720998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v63 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v63 - v4;
  v5 = sub_21DBF509C();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v20 = Strong;
  v21 = [Strong datePickerMode];

  if ((v21 | 2) != 2)
  {
    return;
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    goto LABEL_35;
  }

  v23 = v22;
  v24 = [v22 minuteInterval];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = v25;
  v67 = v12;
  if (v24 == 5)
  {
    v27 = 1;
  }

  else
  {
    v27 = 5;
  }

  [v25 setMinuteInterval_];

  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
    goto LABEL_37;
  }

  v29 = v28;
  v30 = [v28 date];

  sub_21DBF55FC();
  (*(v10 + 16))(v15, v18, v9);
  if (v24 == 5)
  {
    goto LABEL_23;
  }

  v63 = v2;
  v64 = v15;
  v65 = v10;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8, &qword_21DC109A0);
  v31 = sub_21DBF5A0C();
  v32 = *(v31 - 8);
  v33 = v32;
  v66 = v18;
  v34 = *(v32 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_21DC0B380;
  v37 = *(v33 + 104);
  v37(v36 + v35, *MEMORY[0x277CC9978], v31);
  v37(v36 + v35 + v34, *MEMORY[0x277CC9988], v31);
  v37(v36 + v35 + 2 * v34, *MEMORY[0x277CC9998], v31);
  v37(v36 + v35 + 3 * v34, *MEMORY[0x277CC9968], v31);
  v37(v36 + v35 + 4 * v34, *MEMORY[0x277CC9980], v31);
  v37(v36 + v35 + 5 * v34, *MEMORY[0x277CC99A0], v31);
  v38 = v36 + v35 + 6 * v34;
  v18 = v66;
  v37(v38, *MEMORY[0x277CC99A8], v31);
  sub_21D1D0F50(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v39 = v73;
  sub_21DBF58DC();

  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v41 = v40;
  v42 = [v40 timeZone];

  v43 = v72;
  if (v42)
  {
    sub_21DBF5C2C();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = v43;
  v15 = v64;
  v10 = v65;
  v46 = v63;
  v47 = sub_21DBF5C4C();
  (*(*(v47 - 8) + 56))(v45, v44, 1, v47);
  sub_21DBF508C();
  v48 = sub_21DBF4FCC();
  if (v49)
  {
    (*(v70 + 8))(v39, v71);
    (*(v68 + 8))(v74, v69);
    goto LABEL_23;
  }

  v50 = round(v48 / 5.0);
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v50 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v50 * 5) >> 64 != (5 * v50) >> 63)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_21DBF4FDC();
  v51 = v74;
  sub_21DBF597C();
  (*(v70 + 8))(v39, v71);
  (*(v68 + 8))(v51, v69);
  if ((*(v10 + 48))(v46, 1, v9) == 1)
  {
    sub_21D0CF7E0(v46, &qword_27CE58D68, &unk_21DC0C060);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    (*(v10 + 32))(v15, v46, v9);
  }

LABEL_23:
  v52 = v18;
  v53 = swift_unknownObjectWeakLoadStrong();
  if (!v53)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v54 = v53;
  v55 = v67;
  sub_21DBF559C();
  v56 = sub_21DBF55BC();
  v57 = *(v10 + 8);
  v57(v55, v9);
  [v54 setDate:v56 animated:0];

  v58 = swift_unknownObjectWeakLoadStrong();
  if (!v58)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v59 = v58;
  v60 = sub_21DBF55BC();
  [v59 setDate:v60 animated:0];

  sub_21D721DC4();
  if ((sub_21DBFA10C() & 1) == 0)
  {
    v61 = swift_unknownObjectWeakLoadStrong();
    if (v61)
    {
      v62 = v61;
      [v61 sendActionsForControlEvents_];

      goto LABEL_28;
    }

LABEL_41:
    __break(1u);
    return;
  }

LABEL_28:
  v57(v15, v9);
  v57(v52, v9);
}

id TTRIDatePickerTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TTRIDatePickerTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_currentLayout] = 2;
  *&v3[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_tapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_datePickerConstraints] = MEMORY[0x277D84F90];
  if (a3)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id TTRIDatePickerTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIDatePickerTableCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_currentLayout] = 2;
  *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_tapGestureRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRIDatePickerTableCell_datePickerConstraints] = MEMORY[0x277D84F90];
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_21D721610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIDatePickerCellContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D721698(uint64_t a1)
{
  v2 = type metadata accessor for TTRIDatePickerCellContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRIDatePickerCellContentState(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = sub_21DBF5C4C();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    v10 = a3[7];
    *&a1[a3[6]] = *&a2[a3[6]];
    *&a1[v10] = *&a2[v10];
  }

  return a1;
}

uint64_t destroy for TTRICalendarPickerCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF563C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_21DBF5C4C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t initializeWithCopy for TTRIDatePickerCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_21DBF5C4C();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v9) = *(a2 + v9);
  return a1;
}

uint64_t assignWithCopy for TTRIDatePickerCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_21DBF5C4C();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t initializeWithTake for TTRIDatePickerCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_21DBF5C4C();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v9) = *(a2 + v9);
  return a1;
}

uint64_t assignWithTake for TTRIDatePickerCellContentState(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_21DBF5C4C();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v9) = *(a2 + v9);
  return a1;
}

uint64_t sub_21D721BE4(uint64_t a1)
{
  result = sub_21DBF563C();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF5C4C();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21D721D70()
{
  result = qword_27CE60888;
  if (!qword_27CE60888)
  {
    result = swift_getWitnessTable(byte_21DC258D8, &type metadata for TTRIDatePickerTableCell.Layout, v0, v1);
    atomic_store(result, &qword_27CE60888);
  }

  return result;
}

unint64_t sub_21D721DC4()
{
  result = qword_280D171A0;
  if (!qword_280D171A0)
  {
    v3 = sub_21DBF563C();
    result = swift_getWitnessTable(MEMORY[0x277CC9598], v3, v0, v1);
    atomic_store(result, &qword_280D171A0);
  }

  return result;
}

uint64_t TTRRemindersListEditingSession.effectiveParentList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 32))(v14);
  v6 = (*(a2 + 48))(a1, a2);
  v17 = v6;
  if (v6)
  {
    *(&v12 + 1) = sub_21D722058();
    v13 = &protocol witness table for REMList;
    *&v11 = v6;
    sub_21D0D0FD0(&v11, a3);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v7 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v8 + 184))(v7, v8);
  }

  v9 = v6;
  return sub_21D4ECC40(v14);
}

uint64_t TTRRemindersListReminderPostSaveMovement.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersListEditingSession.reminderAndList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 32))();
  result = (*(a2 + 48))(a1, a2);
  *(a3 + 40) = result;
  return result;
}

unint64_t sub_21D722058()
{
  result = qword_280D17690;
  if (!qword_280D17690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17690);
  }

  return result;
}

id TTRRemindersListEditingSession.supportsTextStyling.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(v7, a1);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = [v4 supportsTextStyling];

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = *a4;
  if (v12 == 2)
  {
    LOBYTE(v12) = sub_21D7222CC(a6, a7) ^ 1;
  }

  (*(a7 + 72))(v22, a6, a7);
  v13 = v23;
  v14 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v14 + 40))(a1, a2, a3, v12 & 1, v13, v14);
  result = __swift_destroy_boxed_opaque_existential_0(v22);
  if (a5)
  {
    v16 = (*(a7 + 96))(v22, a6, a7);
    v17 = off_28176EFA0();
    v21 = MEMORY[0x277D839B0];
    v20[0] = 1;
    sub_21D17C970(v20, v17, v18);
    return v16(v22, 0);
  }

  return result;
}

uint64_t sub_21D7222CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2, v8);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v6);
  sub_21D1067F8(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_21D1067F8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    v13 = 0;
  }

  else
  {
    sub_21D1067F8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    (*(a2 + 80))(&v16, a1, a2);
    v12 = sub_21D722934(v16);

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

unint64_t sub_21D722490()
{
  result = qword_27CE60898;
  if (!qword_27CE60898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption, &type metadata for TTRRemindersListEditingSessionFinishingOption, v0, v1);
    atomic_store(result, &qword_27CE60898);
  }

  return result;
}

unint64_t sub_21D7224E8()
{
  result = qword_27CE608A0;
  if (!qword_27CE608A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption, &type metadata for TTRRemindersListEditingSessionFinishingOption, v0, v1);
    atomic_store(result, &qword_27CE608A0);
  }

  return result;
}

unint64_t sub_21D722540()
{
  result = qword_27CE608A8;
  if (!qword_27CE608A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption, &type metadata for TTRRemindersListEditingSessionFinishingOption, v0, v1);
    atomic_store(result, &qword_27CE608A8);
  }

  return result;
}

unint64_t sub_21D722598()
{
  result = qword_27CE608B0;
  if (!qword_27CE608B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption, &type metadata for TTRRemindersListEditingSessionFinishingOption, v0, v1);
    atomic_store(result, &qword_27CE608B0);
  }

  return result;
}

unint64_t sub_21D7225F0()
{
  result = qword_27CE608B8;
  if (!qword_27CE608B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListReminderPostSaveMovement, &type metadata for TTRRemindersListReminderPostSaveMovement, v0, v1);
    atomic_store(result, &qword_27CE608B8);
  }

  return result;
}

unint64_t sub_21D722648()
{
  result = qword_280D0DE18;
  if (!qword_280D0DE18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets, &type metadata for TTRRemindersListEditingSessionDisplayTargets, v0, v1);
    atomic_store(result, &qword_280D0DE18);
  }

  return result;
}

unint64_t sub_21D7226A0()
{
  result = qword_280D0DE10;
  if (!qword_280D0DE10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets, &type metadata for TTRRemindersListEditingSessionDisplayTargets, v0, v1);
    atomic_store(result, &qword_280D0DE10);
  }

  return result;
}

unint64_t sub_21D7226F8()
{
  result = qword_280D0DE20;
  if (!qword_280D0DE20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets, &type metadata for TTRRemindersListEditingSessionDisplayTargets, v0, v1);
    atomic_store(result, &qword_280D0DE20);
  }

  return result;
}

unint64_t sub_21D722750()
{
  result = qword_280D0DE08;
  if (!qword_280D0DE08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets, &type metadata for TTRRemindersListEditingSessionDisplayTargets, v0, v1);
    atomic_store(result, &qword_280D0DE08);
  }

  return result;
}

uint64_t sub_21D722934(uint64_t a1)
{
  v2 = off_28176EFA0();
  if (!*(a1 + 16))
  {

    goto LABEL_5;
  }

  v4 = sub_21D0CEF70(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_5:
    memset(v8, 0, sizeof(v8));
    goto LABEL_6;
  }

  sub_21D0CEB98(*(a1 + 56) + 32 * v4, v8);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  return swift_dynamicCast() & v9;
}

void sub_21D722A20(uint64_t a1, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v22 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    sub_21D365CC4();
    sub_21DBFAB5C();
    v6 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);
    sub_21DBF8E0C();
    v9 = 0;
  }

  v20 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v21[0] = v18;
        a2(&v22, v21);
        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v6 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_21DBFBDBC())
        {
          goto LABEL_19;
        }

        sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
        swift_dynamicCast();
        v18 = v21[0];
        v16 = v9;
        v17 = v10;
        if (!v21[0])
        {
          goto LABEL_20;
        }
      }

      sub_21D0CFAF8(v20);
    }

    else
    {
LABEL_20:
      v6 = v20;
LABEL_19:
      sub_21D0CFAF8(v6);
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D722C6C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE608C0);
  v1 = __swift_project_value_buffer(v0, qword_27CE608C0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListPresenterCapabilityCore.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRRemindersListPresenterCapabilityCore.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t sub_21D722EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v19 = swift_getObjectType();
  v20 = a13(a1, a3, a4, a5, a6, a7, a8, a9, a11, a12);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_21D722FC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v3, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Int __swiftcall TTRRemindersListPresenterCapabilityCore.request(setFlaggedTo:for:)(Swift::Bool setFlaggedTo, Swift::OpaquePointer a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v11 = 0x800000021DC4F950;
  v4 = sub_21DBF516C();
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  LOBYTE(v11) = setFlaggedTo;
  v8 = sub_21D723218(a2._rawValue, v7, v6, sub_21D72D0EC, &v10);

  return v8;
}

uint64_t sub_21D7231C0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 24))(a2, v3, v4);
}

uint64_t sub_21D723218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v18 = 0;
  v10 = objc_opt_self();
  v11 = sub_21DBFA12C();
  v12 = swift_allocObject();
  v12[2] = &v18;
  v12[3] = v6;
  v12[4] = a1;
  v12[5] = a4;
  v12[6] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D72E890;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_52_2;
  v14 = _Block_copy(aBlock);

  sub_21DBF8E0C();

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v16 = v18;

    return v16;
  }

  return result;
}

double TTRRemindersListPresenterCapabilityCore.request(setPriorityLevelTo:for:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  v9[2] = a1;
  sub_21D723218(a2, v7, v6, sub_21D72D144, v9);

  return result;
}

uint64_t sub_21D723510(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 32))(a2, v3, v4);
}

double TTRRemindersListPresenterCapabilityCore.request(addToList:for:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v10[2] = v3;
  v11 = v4;
  sub_21D723218(a2, v8, v7, sub_21D72D19C, v10);

  return result;
}

void sub_21D7236B0(void *a1, id a2, char a3)
{
  if (a3)
  {
    v5 = [a2 customContext];
    if (v5 && (v6 = v5, oslog = sub_21DBFB4FC(), v6, oslog))
    {
      v7 = a1;
      v8 = a1[3];
      v9 = a1[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v9 + 72))(oslog, v8, v9);
    }

    else
    {
      if (qword_27CE56C48 != -1)
      {
        swift_once();
      }

      v12 = sub_21DBF84BC();
      __swift_project_value_buffer(v12, qword_27CE608C0);
      v13 = a2;
      oslog = sub_21DBF84AC();
      v14 = sub_21DBFAECC();

      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = [v13 objectID];
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&dword_21D0C9000, oslog, v14, "Attempted edit with a smart list that is not a custom smart list {listID: %@}", v15, 0xCu);
        sub_21D0CF7E0(v16, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v16, -1, -1);
        MEMORY[0x223D46520](v15, -1, -1);
      }
    }
  }

  else
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 168))(a2, v10, v11);
  }
}

double TTRRemindersListPresenterCapabilityCore.request(toMatch:for:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  v9[2] = a1;
  sub_21D723218(a2, v7, v6, sub_21D72D1A8, v9);

  return result;
}

double sub_21D723A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF516C();
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  v11[2] = a1;
  sub_21D723218(a2, v9, v8, a3, v11);

  return result;
}

double sub_21D723B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF516C();
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  v11[2] = a1;
  sub_21D723218(a2, v9, v8, a3, v11);

  return result;
}

Swift::Void __swiftcall TTRRemindersListPresenterCapabilityCore.request(setRecurrenceRulesTo:for:)(Swift::OpaquePointer setRecurrenceRulesTo, Swift::OpaquePointer a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  v8[2] = setRecurrenceRulesTo._rawValue;
  sub_21D723218(a2._rawValue, v7, v6, sub_21D72D300, v8);
}

double TTRRemindersListPresenterCapabilityCore.request(updateHashtagsToMatch:for:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  MEMORY[0x28223BE20](v4);
  v9[2] = a1;
  sub_21D723218(a2, v7, v6, sub_21D72D358, v9);

  return result;
}

uint64_t sub_21D723F2C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 104))(a2, v3, v4);
}

double sub_21D723F9C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v13 = a2;
  v14 = a3;
  v15 = 0;
  v16 = 0;
  v7 = *(v6 + 80);
  sub_21DBF8E0C();
  v7(&v13, v5, v6);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;

  return sub_21D24B434(v8, v9, v10, v11);
}

double sub_21D72405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF516C();
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  v13[2] = a1;
  v13[3] = a2;
  sub_21D723218(a3, v11, v10, a4, v13);

  return result;
}

double sub_21D72418C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v13 = a2;
  v14 = a3;
  v15 = 0;
  v16 = 0;
  v7 = *(v6 + 88);
  sub_21DBF8E0C();
  v7(&v13, v5, v6);
  sub_21D24B434(v13, v14, v15, v16);
  v13 = a2;
  v14 = a3;
  v15 = 1;
  v16 = 0;
  sub_21DBF8E0C();
  v7(&v13, v5, v6);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;

  return sub_21D24B434(v8, v9, v10, v11);
}

double TTRRemindersListPresenterCapabilityCore.request(setAssigned:for:pendingMoveTargetListForHostingReminder:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v14[6] = a1[6];
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[3];
  v14[2] = a1[2];
  v14[3] = v7;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF516C();
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  v13[2] = v14;
  v13[3] = a3;
  sub_21D723218(a2, v11, v10, sub_21D72D3C0, v13);

  return result;
}

void sub_21D7243E4(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    if (a3)
    {
      v4 = a1;
      v5 = sub_21D9BF158();
      if (v5)
      {
        v6 = v5;
        v11 = [v5 objectID];
      }

      else
      {
        v11 = 0;
      }

      a1 = v4;
    }

    else
    {
      v11 = 0;
    }

    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 64))(v3, v11, v9, v10);
  }

  else
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    (*(v8 + 56))(v7, v8);
  }
}

Swift::Int __swiftcall TTRRemindersListPresenterCapabilityCore.request(postpone:to:undoActionName:)(Swift::OpaquePointer postpone, RemindersUICore::TTRRemindersListPostponeType to, Swift::String undoActionName)
{
  v60 = undoActionName;
  v3 = to;
  v52 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v52);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TTRDateChangeType(0);
  v6 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = *(postpone._rawValue + 2);
  if (!v22)
  {
    return 0;
  }

  LOBYTE(aBlock) = *v3;
  TTRRemindersListPostponeType.dateChangeType.getter(&v51 - v20);
  v70 = 0;
  v59 = *(v8 + 80);
  v58 = (v59 + 32) & ~v59;
  v23 = postpone._rawValue + v58;
  v24 = *(v8 + 72);
  v67 = (v6 + 48);
  v57 = &v73;
  *&v25 = 136315138;
  v53 = v25;
  v56 = xmmword_21DC08D00;
  v65 = v12;
  v66 = v15;
  v64 = v18;
  v63 = v21;
  v62 = v24;
  while (1)
  {
    sub_21D1D338C(v23, v15);
    sub_21D0D3954(v21, v18, &qword_27CE58D78, &qword_21DC18800);
    if ((*v67)(v18, 1, v69) != 1)
    {
      break;
    }

    sub_21D0CF7E0(v18, &qword_27CE58D78, &qword_21DC18800);
    if (qword_27CE56C48 != -1)
    {
      swift_once();
    }

    v26 = sub_21DBF84BC();
    __swift_project_value_buffer(v26, qword_27CE608C0);
    sub_21D1D338C(v15, v12);
    v27 = sub_21DBF84AC();
    v28 = sub_21DBFAEBC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v79 = v30;
      *v29 = v53;
      sub_21D1D338C(v12, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380, &unk_21DC0F0C0);
      if (swift_dynamicCast())
      {
        sub_21D0D0FD0(v77, &aBlock);
        __swift_project_boxed_opaque_existential_1(&aBlock, v74);
        v31 = sub_21DBFC5BC();
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        v78 = 0;
        memset(v77, 0, sizeof(v77));
        sub_21D0CF7E0(v77, &qword_27CE5A388, &unk_21DC0F450);
        aBlock = 0;
        v72 = 0xE000000000000000;
        v48 = v51;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v51);
        sub_21DBFC14C();
        v49 = v48;
        v12 = v65;
        sub_21D106D38(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v31 = aBlock;
        v33 = v72;
      }

      sub_21D106D38(v12, type metadata accessor for TTRRemindersListViewModel.Item);
      v50 = sub_21D0CDFB4(v31, v33, &v79);

      *(v29 + 4) = v50;
      _os_log_impl(&dword_21D0C9000, v27, v28, "TTRRemindersListPresenterCapabilityCore: Unable to find due date to postpone for item (%s)", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223D46520](v30, -1, -1);
      MEMORY[0x223D46520](v29, -1, -1);

      v15 = v66;
      v47 = v66;
      v46 = type metadata accessor for TTRRemindersListViewModel.Item;
LABEL_16:
      sub_21D106D38(v47, v46);
      v18 = v64;
      v21 = v63;
      v24 = v62;
      goto LABEL_4;
    }

    sub_21D106D38(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106D38(v15, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_4:
    v23 += v24;
    if (!--v22)
    {
      sub_21D0CF7E0(v21, &qword_27CE58D78, &qword_21DC18800);
      return v70;
    }
  }

  v34 = v68;
  sub_21D72DB8C(v18, v68, type metadata accessor for TTRDateChangeType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
  v35 = v58;
  v36 = swift_allocObject();
  *(v36 + 16) = v56;
  v37 = sub_21D1D338C(v15, v36 + v35);
  MEMORY[0x28223BE20](v37);
  *(&v51 - 2) = v34;
  *&v77[0] = 0;
  v38 = objc_opt_self();
  v39 = sub_21DBFA12C();
  v40 = swift_allocObject();
  v40[2] = v77;
  v40[3] = v61;
  v40[4] = v36;
  v40[5] = sub_21D72E89C;
  v40[6] = &v51 - 4;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_21D72D3C8;
  *(v41 + 24) = v40;
  v75 = sub_21D0E6070;
  v76 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_21D0E6204;
  v74 = &block_descriptor_84;
  v42 = _Block_copy(&aBlock);

  [v38 withActionName:v39 block:v42];

  v43 = v42;
  v15 = v66;
  _Block_release(v43);
  sub_21D106D38(v15, type metadata accessor for TTRRemindersListViewModel.Item);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    v45 = *&v77[0];

    v12 = v65;
    if (__OFADD__(v70, v45))
    {
      goto LABEL_20;
    }

    v70 += v45;
    v46 = type metadata accessor for TTRDateChangeType;
    v47 = v68;
    goto LABEL_16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

BOOL TTRRemindersListPresenterCapabilityCore.request(postponeRelativeToDueDate:to:undoActionName:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_21DBF509C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78, &qword_21DC18800);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for TTRDateChangeType(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v28 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v20 = *a2;
  v32 = v4;
  sub_21D7263B0(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE58D60, &unk_21DC0A690);
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_4:
    sub_21D0CF7E0(v16, &qword_27CE58D78, &qword_21DC18800);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  v33 = v20;
  TTRRemindersListPostponeType.dateChangeType(relativeToDueDate:)(v13, v16);
  (*(v11 + 8))(v13, v10);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  v22 = v28;
  sub_21D72DB8C(v16, v28, type metadata accessor for TTRDateChangeType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928, &qword_21DC09B80);
  v23 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21DC08D00;
  v26 = sub_21D1D338C(v29, v25 + v24);
  MEMORY[0x28223BE20](v26);
  *(&v28 - 2) = v22;
  v27 = sub_21D723218(v25, v30, v31, sub_21D72E89C, (&v28 - 4));

  sub_21D106D38(v22, type metadata accessor for TTRDateChangeType);
  return v27 == 1;
}

uint64_t TTRRemindersListPresenterCapabilityCore.postponeType(relativeToDueDate:from:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a2;
  sub_21D7263B0(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE58D60, &unk_21DC0A690);
    v14 = type metadata accessor for TTRDateChangeType(0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16[15] = v13;
    TTRRemindersListPostponeType.dateChangeType(relativeToDueDate:)(v12, a3);
    return (*(v10 + 8))(v12, v9);
  }
}

void TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v41);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    *a2 = 2;
    return;
  }

  v36 = a2;
  v15 = *(v11 + 80);
  v16 = *(v11 + 72);
  v17 = MEMORY[0x277D84F90];
  v35 = a1;
  v37 = (v15 + 32) & ~v15;
  v18 = a1 + v37;
  v38 = v9;
  while (1)
  {
    sub_21D1D338C(v18, v13);
    sub_21D1D338C(v13, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if ((EnumCaseMultiPayload - 5) < 4)
        {
LABEL_28:
          sub_21D106D38(v9, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        swift_storeEnumTagMultiPayload();
LABEL_30:
        sub_21D106D38(v13, type metadata accessor for TTRRemindersListViewModel.Item);

        goto LABEL_32;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      goto LABEL_28;
    }

    sub_21D72DB8C(v9, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    if (swift_getEnumCaseMultiPayload() >= 3)
    {
      goto LABEL_30;
    }

    v20 = v16;
    sub_21D106D38(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    v21 = *(v39 + 40);
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(v13, ObjectType, v21);
    if (v23)
    {
      v24 = v23;
      *(&v44 + 1) = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
      v45 = &protocol witness table for REMReminderChangeItem;
      *&v43 = v24;
      sub_21D0D0FD0(&v43, &v46);
      goto LABEL_16;
    }

    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v25 = (*(v21 + 8))(v13, ObjectType, v21);
    if (v25)
    {
      v26 = v25;
      *(&v47 + 1) = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v48 = &protocol witness table for REMReminder;
      *&v46 = v26;
      if (!*(&v44 + 1))
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_21D0CF7E0(&v43, &qword_27CE608D8, &qword_21DC25DC8);
      goto LABEL_16;
    }

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    if (*(&v44 + 1))
    {
      goto LABEL_15;
    }

LABEL_16:
    if (!*(&v47 + 1))
    {
      sub_21D106D38(v13, type metadata accessor for TTRRemindersListViewModel.Item);

      sub_21D0CF7E0(&v46, &qword_27CE608D8, &qword_21DC25DC8);
LABEL_32:
      v33 = 2;
LABEL_33:
      *v36 = v33;
      return;
    }

    sub_21D0D0FD0(&v46, v49);
    v27 = v50;
    v28 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v28 + 200))(&v43, v27, v28);
    if (!*(&v44 + 1))
    {
      break;
    }

    sub_21D0D0FD0(&v43, &v46);
    v29 = *(&v47 + 1);
    v30 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    if ((v30[1])(v29, v30) < 1)
    {
      sub_21D106D38(v13, type metadata accessor for TTRRemindersListViewModel.Item);
      v16 = v20;
      v9 = v38;
    }

    else
    {
      sub_21D1D338C(v13, v42);
      v16 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_21D211A80(0, v17[2] + 1, 1, v17);
      }

      v9 = v38;
      v32 = v17[2];
      v31 = v17[3];
      if (v32 >= v31 >> 1)
      {
        v17 = sub_21D211A80((v31 > 1), v32 + 1, 1, v17);
      }

      sub_21D106D38(v13, type metadata accessor for TTRRemindersListViewModel.Item);
      v17[2] = v32 + 1;
      sub_21D72DB8C(v42, v17 + v37 + v32 * v16, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    __swift_destroy_boxed_opaque_existential_0(&v46);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v18 += v16;
    if (!--v14)
    {
      v34 = sub_21D1D8980(v35, v17);

      v33 = (v34 & 1) == 0;
      goto LABEL_33;
    }
  }

  sub_21D106D38(v13, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D0CF7E0(&v43, &qword_27CE5D100, &unk_21DC25DD0);
  *v36 = 2;
  __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t sub_21D7259FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(a1, ObjectType, v5);
  if (v7)
  {
    v8 = v7;
    v13 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
    v14 = &protocol witness table for REMReminderChangeItem;
    *&v12 = v8;
    return sub_21D0D0FD0(&v12, a2);
  }

  else
  {
    result = (*(v5 + 8))(a1, ObjectType, v5);
    v10 = result;
    if (result)
    {
      result = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v11 = &protocol witness table for REMReminder;
    }

    else
    {
      v11 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    *a2 = v10;
    a2[3] = result;
    a2[4] = v11;
  }

  return result;
}

void TTRRemindersListPresenterCapabilityCore.paramsForBatchSetPriorityLevel(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    *a2 = 0;
    return;
  }

  v23 = a2;
  v35 = MEMORY[0x277D84FA0];
  v10 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  v24 = v10 + 8;
  v25 = v12;
  v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v14 = *(v6 + 72);
  while (1)
  {
    sub_21D1D338C(v13, v8);
    v15 = v25(v8, ObjectType, v10);
    if (v15)
    {
      v16 = v15;
      *(&v27 + 1) = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
      v28 = &protocol witness table for REMReminderChangeItem;
      *&v26 = v16;
      sub_21D0D0FD0(&v26, &v29);
      goto LABEL_8;
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v17 = (*(v10 + 8))(v8, ObjectType, v10);
    if (v17)
    {
      v18 = v17;
      *(&v30 + 1) = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v31 = &protocol witness table for REMReminder;
      *&v29 = v18;
      if (!*(&v27 + 1))
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_21D0CF7E0(&v26, &qword_27CE608D8, &qword_21DC25DC8);
      goto LABEL_8;
    }

    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    if (*(&v27 + 1))
    {
      goto LABEL_7;
    }

LABEL_8:
    if (!*(&v30 + 1))
    {
      break;
    }

    sub_21D0D0FD0(&v29, v32);
    v19 = v33;
    v20 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v21 = TTRReminderProtocol.priorityLevel.getter(v19, v20);
    sub_21D29DAA4(&v29, v21);
    sub_21D106D38(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v13 += v14;
    if (!--v9)
    {
      *v23 = v35;
      return;
    }
  }

  sub_21D106D38(v8, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D0CF7E0(&v29, &qword_27CE608D8, &qword_21DC25DC8);
  *v23 = 0;
}

BOOL TTRRemindersListPresenterCapabilityCore.canPostpone(_:)(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_21D7259FC(a2, &v16);
  v7 = v17;
  if (v17)
  {
    sub_21D0D0FD0(&v16, v18);
    v8 = v19;
    v9 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v10 = (*(v9 + 104))(v8, v9);
    if (v10)
    {
      v11 = v10;
      v12 = [v10 date];

      sub_21DBF55FC();
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_21DBF563C();
    (*(*(v14 - 8) + 56))(v6, v13, 1, v14);
    TTRRemindersListPostponeType.init(date:)(v6, &v16);
    *a1 = v16;
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_21D0CF7E0(&v16, &qword_27CE608D8, &qword_21DC25DC8);
    *a1 = 6;
  }

  return v7 != 0;
}

Swift::tuple_isEnabled_Bool_newValue_UIMenuElementState __swiftcall TTRRemindersListPresenterCapabilityCore.optionsForPostponing(items:to:)(Swift::OpaquePointer items, RemindersUICore::TTRRemindersListPostponeType to)
{
  v3 = to;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33[-v6];
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(items._rawValue + 2);
  if (!v12)
  {
LABEL_23:
    v32 = 0;
    v31 = UIMenuElementStateOff;
    goto LABEL_25;
  }

  v34 = *v3;
  v48 = MEMORY[0x277D84FA0];
  v13 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v37 = *(v13 + 16);
  v38 = v13 + 16;
  v15 = items._rawValue + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v16 = *(v9 + 72);
  v35 = v13 + 8;
  v36 = v16;
  do
  {
    sub_21D1D338C(v15, v11);
    v22 = v37(v11, ObjectType, v13);
    if (v22)
    {
      v23 = v22;
      *(&v40 + 1) = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
      v41 = &protocol witness table for REMReminderChangeItem;
      *&v39 = v23;
      sub_21D0D0FD0(&v39, &v42);
      goto LABEL_10;
    }

    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v24 = (*(v13 + 8))(v11, ObjectType, v13);
    if (v24)
    {
      v25 = v24;
      *(&v43 + 1) = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v44 = &protocol witness table for REMReminder;
      *&v42 = v25;
      if (!*(&v40 + 1))
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_21D0CF7E0(&v39, &qword_27CE608D8, &qword_21DC25DC8);
      goto LABEL_10;
    }

    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    if (*(&v40 + 1))
    {
      goto LABEL_9;
    }

LABEL_10:
    if (!*(&v43 + 1))
    {
      sub_21D106D38(v11, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(&v42, &qword_27CE608D8, &qword_21DC25DC8);
LABEL_22:

      goto LABEL_23;
    }

    sub_21D0D0FD0(&v42, v45);
    v26 = v46;
    v27 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v28 = (*(v27 + 104))(v26, v27);
    if (v28)
    {
      v17 = v28;
      v18 = [v28 date];

      sub_21DBF55FC();
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = sub_21DBF563C();
    (*(*(v20 - 8) + 56))(v7, v19, 1, v20);
    TTRRemindersListPostponeType.init(date:)(v7, &v42);
    v21 = v42;
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_21D29DB9C(v45, v21);
    sub_21D106D38(v11, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 += v36;
    --v12;
  }

  while (v12);
  v29 = v48;
  if (!*(v48 + 16))
  {
    goto LABEL_22;
  }

  if (sub_21D1E2C0C(v34, v48))
  {
    v30 = *(v29 + 16);

    if (v30 == 1)
    {
      v31 = UIMenuElementStateOn;
    }

    else
    {
      v31 = UIMenuElementStateMixed;
    }

    v32 = 1;
  }

  else
  {

    v31 = UIMenuElementStateOff;
    v32 = 1;
  }

LABEL_25:
  result.newValue = v31;
  result.isEnabled = v32;
  return result;
}

uint64_t sub_21D7263B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF509C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D7259FC(a1, &v14);
  if (v15)
  {
    sub_21D0D0FD0(&v14, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = (*(v9 + 104))(v8, v9);
    if (v10)
    {
      v11 = v10;
      v12 = [v10 dateComponentsRepresentation];

      sub_21DBF4EFC();
      (*(v5 + 32))(a2, v7, v4);
      (*(v5 + 56))(a2, 0, 1, v4);
      return __swift_destroy_boxed_opaque_existential_0(v16);
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_21D0CF7E0(&v14, &qword_27CE608D8, &qword_21DC25DC8);
  }

  return (*(v5 + 56))(a2, 1, 1, v4);
}

void *TTRRemindersListPresenterCapabilityCore.allowedPostponementTypes(relativeToDueDateOf:)(uint64_t a1)
{
  v2 = sub_21DBF5A2C();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF563C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_21DBF509C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D7263B0(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE58D60, &unk_21DC0A690);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_21DBF560C();
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v17 = static TTRPostponementCalculator.allowedPostponementTypes(relativeTo:now:calendar:)(v15, v8, v4);
    (*(v18 + 8))(v4, v19);
    (*(v6 + 8))(v8, v5);
    (*(v13 + 8))(v15, v12);
    return v17;
  }
}

uint64_t TTRRemindersListPresenterCapabilityCore.postponementWeekendType(relativeToDueDateOf:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = a2;
  v3 = sub_21DBF5A2C();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_21DBF509C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D7263B0(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE58D60, &unk_21DC0A690);
    v17 = type metadata accessor for TTRPostponementWeekend(0);
    return (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_21DBF560C();
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    static TTRPostponementCalculator.postponementWeekendType(relativeTo:now:calendar:)(v16, v9, v5, v22);
    (*(v20 + 8))(v5, v21);
    (*(v7 + 8))(v9, v6);
    return (*(v14 + 8))(v16, v13);
  }
}

Swift::Void __swiftcall TTRRemindersListPresenterCapabilityCore.loadContactsSynchronously(for:)(Swift::OpaquePointer *a1)
{
  v2 = v1;
  v3 = a1;
  rawValue = a1->_rawValue;
  v5 = *(a1->_rawValue + 2);
  if (v5)
  {
    v61 = MEMORY[0x277D84F90];
    sub_21D18EFC4(0, v5, 0);
    v6 = v61;
    v7 = rawValue + 32;
    for (i = v5 - 1; ; --i)
    {
      v9 = *(v7 + 2);
      v10 = *v7;
      v48 = *(v7 + 1);
      v49 = v9;
      v47 = v10;
      v11 = *(v7 + 3);
      v12 = *(v7 + 4);
      v13 = *(v7 + 6);
      v52 = *(v7 + 5);
      v53 = v13;
      v50 = v11;
      v51 = v12;
      v14 = v10;
      v15 = *(v7 + 24);
      v16 = *(v7 + 40);
      v54 = *(v7 + 8);
      v55 = v15;
      v17 = *(v7 + 56);
      v18 = *(v7 + 72);
      v19 = *(v7 + 88);
      v60 = *(v7 + 13);
      v58 = v18;
      v59 = v19;
      v56 = v16;
      v57 = v17;
      if (v14)
      {
        *&v38[56] = v57;
        *&v38[72] = v58;
        *&v38[88] = v59;
        *&v38[8] = v54;
        *&v38[24] = v55;
        *v38 = v14;
        *&v38[104] = v60;
        *&v38[40] = v56;
        v20 = v2[12];
        v21 = v2[13];
        __swift_project_boxed_opaque_existential_1(v2 + 9, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_21DC09CF0;
        v23 = objc_opt_self();
        v39[4] = v51;
        v39[5] = v52;
        v39[6] = v53;
        v39[0] = v47;
        v39[1] = v48;
        v39[2] = v49;
        v39[3] = v50;
        sub_21D1D9A84(&v47, v37);
        sub_21D1D9C94(v39, v37);
        *(v22 + 32) = [v23 descriptorForRequiredKeys];
        REMContactsProviderType.loadContactSynchronously(for:keys:)(v38, v22, v20, v21);

        sub_21D1D9AE0(&v47);
        v44 = *&v38[64];
        v45 = *&v38[80];
        v46 = *&v38[96];
        v40 = *v38;
        v41 = *&v38[16];
        v25 = *&v38[32];
        v24 = *&v38[48];
      }

      else
      {
        v26 = *(v7 + 5);
        v44 = *(v7 + 4);
        v45 = v26;
        v46 = *(v7 + 6);
        v27 = *(v7 + 1);
        v40 = *v7;
        v41 = v27;
        v25 = *(v7 + 2);
        v24 = *(v7 + 3);
      }

      v42 = v25;
      v43 = v24;
      v61 = v6;
      v29 = v6[2];
      v28 = v6[3];
      if (v29 >= v28 >> 1)
      {
        sub_21D18EFC4((v28 > 1), v29 + 1, 1);
        v6 = v61;
      }

      v6[2] = v29 + 1;
      v30 = &v6[14 * v29];
      v31 = v40;
      v32 = v42;
      v30[3] = v41;
      v30[4] = v32;
      v30[2] = v31;
      v33 = v43;
      v34 = v44;
      v35 = v46;
      v30[7] = v45;
      v30[8] = v35;
      v30[5] = v33;
      v30[6] = v34;
      if (!i)
      {
        break;
      }

      v7 += 112;
    }

    v3 = a1;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v3->_rawValue = v6;
}

void TTRRemindersListPresenterCapabilityCore.updateAssigneeCandidateAvatarImages(for:configuration:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v37 = *(a2 + 24);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a1 + 40;
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = (v12 + 112 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= v10)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v11 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_18;
        }

        v16 = *(v14 - 1);
        v17 = v14[5];
        v51 = v14[4];
        v52 = v17;
        v53 = *(v14 + 12);
        v18 = v14[1];
        v47 = *v14;
        v48 = v18;
        v19 = v14[3];
        v49 = v14[2];
        v50 = v19;
        if (v16)
        {
          break;
        }

        ++v15;
        v14 += 7;
        if (v11 == v10)
        {
          goto LABEL_16;
        }
      }

      v36 = v9;
      v20 = v14[2];
      v43 = v14[3];
      v21 = v14[5];
      v44 = v14[4];
      v45 = v21;
      v22 = v14[1];
      v40 = *v14;
      v41 = v22;
      v39 = v16;
      v46 = *(v14 + 12);
      v42 = v20;
      sub_21D1D9C94(&v39, v38);
      v23 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_21D212760(0, *(v13 + 2) + 1, 1, v13);
      }

      v25 = *(v13 + 2);
      v24 = *(v13 + 3);
      if (v25 >= v24 >> 1)
      {
        v13 = sub_21D212760((v24 > 1), v25 + 1, 1, v13);
      }

      *(v13 + 2) = v25 + 1;
      v26 = &v13[112 * v25];
      *(v26 + 4) = v16;
      v27 = v47;
      v28 = v48;
      *(v26 + 72) = v49;
      *(v26 + 56) = v28;
      *(v26 + 40) = v27;
      v29 = v50;
      v30 = v51;
      v31 = v52;
      *(v26 + 17) = v53;
      *(v26 + 120) = v31;
      *(v26 + 104) = v30;
      *(v26 + 88) = v29;
      a3 = v23;
      v9 = v36;
    }

    while (v11 != v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v32 = v4[21];
  v33 = v4[22];
  __swift_project_boxed_opaque_existential_1(v4 + 18, v32);
  v39 = v7;
  *&v40 = v8;
  *(&v40 + 1) = v9;
  LOBYTE(v41) = v37;
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  v35 = *(v33 + 16);

  v35(v13, &v39, sub_21D72D424, v34, v32, v33);
}

void TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v109 = a3;
  v111 = a2;
  v6 = sub_21DBF78CC();
  v108 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v112 = &v102 - v9;
  v119 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v119);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  MEMORY[0x28223BE20](v13);
  v15 = &v102 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v19);
  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_50;
  }

  v107 = v21;
  v106 = v6;
  v113 = a4;
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v104 = a1;
  v103 = v23;
  v24 = a1 + v23;
  v114 = &v102 - v20;
  sub_21D1D338C(a1 + v23, &v102 - v20);
  v25 = 0;
  v130 = MEMORY[0x277D84F98];
  v115 = *(v12 + 72);
  v105 = v22;
  v26 = v22;
  v117 = MEMORY[0x277D84F98];
  do
  {
    sub_21D1D338C(v24, v18);
    sub_21D1D338C(v18, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if ((EnumCaseMultiPayload - 5) >= 4)
        {
          v15 = v114;
        }

        else
        {
LABEL_21:
          sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        sub_21D106D38(v15, type metadata accessor for TTRRemindersListViewModel.Item);
        swift_storeEnumTagMultiPayload();
        goto LABEL_49;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      goto LABEL_21;
    }

    sub_21D72DB8C(v15, v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    if (swift_getEnumCaseMultiPayload() >= 3)
    {
      sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_49:
      a4 = v113;
      sub_21D106D38(v18, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_50:
      *a4 = 0;
      a4[1] = 0;
      *(a4 + 16) = 0;
      return;
    }

    sub_21D106D38(v11, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    v28 = *(v116 + 5);
    ObjectType = swift_getObjectType();
    v30 = (*(v28 + 16))(v18, ObjectType, v28);
    if (v30)
    {
      v31 = v30;
      *(&v122 + 1) = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
      v123 = &protocol witness table for REMReminderChangeItem;
      *&v121 = v31;
      sub_21D0D0FD0(&v121, &v124);
      goto LABEL_14;
    }

    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v32 = (*(v28 + 8))(v18, ObjectType, v28);
    if (v32)
    {
      v33 = v32;
      *(&v125 + 1) = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v126 = &protocol witness table for REMReminder;
      *&v124 = v33;
      if (!*(&v122 + 1))
      {
        goto LABEL_14;
      }

LABEL_13:
      sub_21D0CF7E0(&v121, &qword_27CE608D8, &qword_21DC25DC8);
      goto LABEL_14;
    }

    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    if (*(&v122 + 1))
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!*(&v125 + 1))
    {
      sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106D38(v18, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(&v124, &qword_27CE608D8, &qword_21DC25DC8);
      goto LABEL_24;
    }

    sub_21D0D0FD0(&v124, v127);
    v34 = v128;
    v35 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v35 + 216))(&v121, v34, v35);
    if (!*(&v122 + 1))
    {
      sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106D38(v18, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(&v121, &qword_27CE5A140, &unk_21DC0E560);
      v43 = v113;
      *v113 = 0;
      v43[1] = 0;
      *(v43 + 16) = 0;
      __swift_destroy_boxed_opaque_existential_0(v127);

      return;
    }

    sub_21D0D0FD0(&v121, &v124);
    v36 = *(&v125 + 1);
    v37 = v126;
    __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
    v38 = (v37[1])(v36, v37);
    MEMORY[0x28223BE20](v38);
    *(&v102 - 2) = v18;
    sub_21D722A20(MEMORY[0x277D84F98], sub_21D72D44C, (&v102 - 4), v38);
    v40 = v39;

    swift_beginAccess();
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v130;
    sub_21D72D468(v40, sub_21D72CDFC, 0, isUniquelyReferenced_nonNull_native, &v120);

    v117 = v120;
    v130 = v120;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0(&v124);
    sub_21D106D38(v18, type metadata accessor for TTRRemindersListViewModel.Item);
    __swift_destroy_boxed_opaque_existential_0(v127);
    v24 += v115;
    --v26;
  }

  while (v26);
  v44 = v111;
  if (!v111)
  {
    v48 = v117;
LABEL_53:
    v70 = *(v116 + 5);
    v71 = swift_getObjectType();
    v118 = *(v70 + 8);
    v119 = v71;
    v72 = v118(v114);
    v73 = v72;
    v74 = v105 - 1;
    if (v105 == 1)
    {
      if (v72)
      {
        v75 = [v72 store];
        v76 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

        v77 = [v76 updateReminder_];
        sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_65:
        v94 = v113;
        *v113 = v48;
        v94[1] = v77;
LABEL_76:
        *(v94 + 16) = 1;
        return;
      }

      v93 = v114;
      v77 = (*(v70 + 16))(v114, v119, v70);
      sub_21D106D38(v93, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v77)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v72)
      {
        v78 = [v72 hashtagContext];
        if (v78)
        {
          v79 = v78;
          v105 = v73;
          v117 = v48;
          v80 = sub_21D0D8CF0(0, &qword_280D0C228, 0x277D447B0);
          *(&v125 + 1) = v80;
          v126 = &protocol witness table for REMReminderHashtagContext;
          *&v124 = v79;
          sub_21D0D0FD0(&v124, v127);
          __swift_project_boxed_opaque_existential_1(v127, v128);
          v116 = off_282EEAE40;
          *&v124 = off_282EEAE40(v80, &protocol witness table for REMReminderHashtagContext);
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148, &qword_21DC21710);
          v82 = sub_21D0D0F1C(&qword_280D0C370, &qword_27CE5A148, &qword_21DC21710, MEMORY[0x277D83B68]);
          v111 = v81;
          v109 = v82;
          sub_21DBF789C();
          v83 = (v108 + 8);
          v84 = sub_21DBF8E0C() + v115 + v103;
          while (1)
          {
            v85 = v107;
            sub_21D1D338C(v84, v107);
            v86 = (v118)(v85, v119, v70);
            if (!v86)
            {
              goto LABEL_70;
            }

            v87 = v86;
            v88 = [v86 hashtagContext];
            if (!v88)
            {

LABEL_70:

              sub_21D106D38(v107, type metadata accessor for TTRRemindersListViewModel.Item);
              (*v83)(v112, v106);
              goto LABEL_72;
            }

            *(&v122 + 1) = v80;
            v123 = &protocol witness table for REMReminderHashtagContext;
            *&v121 = v88;
            sub_21D0D0FD0(&v121, &v124);
            __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
            *&v121 = v116(v80, &protocol witness table for REMReminderHashtagContext);
            v89 = v110;
            sub_21DBF789C();
            v90 = sub_21DBF787C();

            v91 = *v83;
            (*v83)(v89, v106);
            sub_21D106D38(v107, type metadata accessor for TTRRemindersListViewModel.Item);
            if ((v90 & 1) == 0)
            {
              break;
            }

            __swift_destroy_boxed_opaque_existential_0(&v124);
            v84 += v115;
            if (!--v74)
            {
              v91(v112, v106);

              v92 = 1;
              goto LABEL_73;
            }
          }

          v91(v112, v106);

          __swift_destroy_boxed_opaque_existential_0(&v124);
LABEL_72:
          v92 = 0;
LABEL_73:
          __swift_destroy_boxed_opaque_existential_0(v127);
          v48 = v117;
          v73 = v105;
        }

        else
        {
          v92 = 0;
        }

        v95 = [v73 store];
        v96 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

        if (v92)
        {
          v97 = [v96 updateReminder_];

          sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
          v94 = v113;
          *v113 = v48;
          v94[1] = v97;
          goto LABEL_76;
        }

        v98 = [v73 list];
        v99 = [v96 updateList_];

        v100 = sub_21DBFA12C();
        v101 = [v96 addReminderWithTitle:v100 toListChangeItem:v99];

        sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
        v42 = v113;
        *v113 = v48;
        v42[1] = v101;
LABEL_25:
        *(v42 + 16) = 0;
        return;
      }

      sub_21D106D38(v114, type metadata accessor for TTRRemindersListViewModel.Item);
    }

LABEL_24:

    v42 = v113;
    *v113 = 0;
    v42[1] = 0;
    goto LABEL_25;
  }

  v45 = v44();
  v46 = v45;
  v47 = *(v45 + 16);
  v48 = v117;
  if (!v47)
  {
LABEL_51:

    sub_21D0D0E88(v111, v109);
    goto LABEL_53;
  }

  v49 = 0;
  v50 = (v45 + 40);
  v51 = MEMORY[0x277D84FA0];
  while (v49 < *(v46 + 16))
  {
    v53 = *(v50 - 1);
    v25 = *v50;
    v54 = v48[2];
    sub_21DBF8E0C();
    if (v54)
    {
      sub_21D0CEF70(v53, v25);
      if (v55)
      {

        goto LABEL_32;
      }
    }

    swift_beginAccess();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v130;
    *&v124 = v130;
    v58 = sub_21D0CEF70(v53, v25);
    v60 = v57[2];
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      goto LABEL_79;
    }

    v64 = v59;
    if (v57[3] < v63)
    {
      sub_21D21D434(v63, v56);
      v58 = sub_21D0CEF70(v53, v25);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_81;
      }

LABEL_42:
      if ((v64 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v56)
    {
      goto LABEL_42;
    }

    v69 = v58;
    sub_21D224CD4();
    v58 = v69;
    if ((v64 & 1) == 0)
    {
LABEL_43:
      v48 = v124;
      *(v124 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      v66 = (v48[6] + 16 * v58);
      *v66 = v53;
      v66[1] = v25;
      *(v48[7] + 8 * v58) = v51;
      v67 = v48[2];
      v62 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v62)
      {
        goto LABEL_80;
      }

      v48[2] = v68;
      goto LABEL_31;
    }

LABEL_30:
    v52 = v58;

    v48 = v124;
    *(*(v124 + 56) + 8 * v52) = v51;

LABEL_31:
    v130 = v48;
    swift_endAccess();
LABEL_32:
    ++v49;
    v50 += 2;
    if (v47 == v49)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);

  swift_endAccess();
  __break(1u);
LABEL_81:
  sub_21DBFC70C();
  __break(1u);
}

void sub_21D7280B4(void *a1, void **a2, uint64_t a3)
{
  v28 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v27 - v10;
  v12 = *a2;
  v13 = [v12 name];
  v14 = sub_21DBFA16C();
  v16 = v15;

  [v12 type];
  v17 = [v12 name];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_5;
  }

  v22 = sub_21D0CEF70(v18, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_5:
    v30 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  v30 = *(*(v21 + 56) + 8 * v22);
  sub_21DBF8E0C();
LABEL_6:
  sub_21D1D338C(v28, v7);
  sub_21D29DF04(v11, v7);
  sub_21D106D38(v11, type metadata accessor for TTRRemindersListViewModel.Item);
  v25 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *a1;
  sub_21D478C88(v25, v14, v16, isUniquelyReferenced_nonNull_native);

  *a1 = v29;
}

void TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_21D7259FC(a1, &v94);
  if (!*(&v95 + 1))
  {
    sub_21D0CF7E0(&v94, &qword_27CE608D8, &qword_21DC25DC8);
LABEL_31:
    sub_21D72D714(&v94);
    v37 = v105;
    a3[10] = v104;
    a3[11] = v37;
    v38 = v107;
    a3[12] = v106;
    a3[13] = v38;
    v39 = v101;
    a3[6] = v100;
    a3[7] = v39;
    v40 = v103;
    a3[8] = v102;
    a3[9] = v40;
    v41 = v97;
    a3[2] = v96;
    a3[3] = v41;
    v42 = v99;
    a3[4] = v98;
    a3[5] = v42;
    v43 = v95;
    *a3 = v94;
    a3[1] = v43;
    return;
  }

  sub_21D0D0FD0(&v94, v108);
  if (a2)
  {
    *(&v89 + 1) = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    v90 = &protocol witness table for REMList;
    *&v88 = a2;
    sub_21D0D0FD0(&v88, &v94);
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v5 = v109;
    v6 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    (*(v6 + 184))(&v94, v5, v6);
  }

  if (!*(&v95 + 1))
  {
    v34 = a2;
    sub_21D0CF7E0(&v94, &qword_27CE59DC0, &qword_21DC0FBF0);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_0(v108);
    goto LABEL_31;
  }

  sub_21D0D0FD0(&v94, v91);
  v7 = v92;
  v8 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v9 = *(v8 + 96);
  v10 = a2;
  v9(&v94, v7, v8);
  v11 = *(&v95 + 1);
  if (!*(&v95 + 1))
  {
    v35 = &qword_27CE62630;
    v36 = &qword_21DC187E0;
LABEL_26:
    sub_21D0CF7E0(&v94, v35, v36);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_0(v91);
    goto LABEL_30;
  }

  v12 = v96;
  __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
  v13 = (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(&v94);
  v14 = v109;
  v15 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  (*(v15 + 208))(&v94, v14, v15);
  v16 = *(&v95 + 1);
  if (!*(&v95 + 1))
  {

    v35 = &qword_27CE5CC28;
    v36 = qword_21DC17D60;
    goto LABEL_26;
  }

  v17 = v96;
  __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
  v18 = (*(v17 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_0(&v94);
  v86 = v18;
  if (!v18)
  {
LABEL_28:

    goto LABEL_29;
  }

  v19 = v92;
  v20 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v21 = (*(v20 + 80))(v19, v20);
  if (!v21 || (v22 = &off_278331000, v23 = v21, v24 = [v21 objectID], v23, !v24))
  {

    goto LABEL_28;
  }

  if (v13 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v76 = v24;
    v26 = 0;
    v82 = v13 & 0xC000000000000001;
    v80 = v13 & 0xFFFFFFFFFFFFFF8;
    v24 = &qword_280D17680;
    v78 = i;
    v84 = v13;
    while (1)
    {
      if (v82)
      {
        v27 = MEMORY[0x223D44740](v26, v13);
      }

      else
      {
        if (v26 >= *(v80 + 16))
        {
          goto LABEL_44;
        }

        v27 = *(v13 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v30 = v22;
      v31 = [v28 v22[425]];
      v32 = [v86 assigneeID];
      v33 = sub_21DBFB63C();

      if (v33)
      {
        break;
      }

      ++v26;
      v22 = v30;
      v13 = v84;
      if (v29 == v78)
      {
        v44 = 0;
        goto LABEL_33;
      }
    }

    v22 = v30;
    v44 = v28;
LABEL_33:
    v13 = 0;
    while (1)
    {
      if (v82)
      {
        v45 = MEMORY[0x223D44740](v13, v84);
      }

      else
      {
        if (v13 >= *(v80 + 16))
        {
          goto LABEL_46;
        }

        v45 = *(v84 + 8 * v13 + 32);
      }

      v46 = v45;
      v47 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v48 = [v45 v22 + 1784];
      v49 = [v86 originatorID];
      v24 = sub_21DBFB63C();

      if (v24)
      {

        v24 = v76;
        v22 = v30;
        goto LABEL_50;
      }

      ++v13;
      v22 = v30;
      if (v47 == v78)
      {
        v24 = v76;
        goto LABEL_49;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v44 = 0;
LABEL_49:

  v46 = 0;
LABEL_50:
  if (v44)
  {
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v50 = v46;
    v51 = [v44 v22[425]];
    v52 = sub_21DBFB63C();

    v53 = v50;
    v54 = v24;
    v55 = v44;
    TTRParticipantModel.init(sharee:)(v55, v87);
    v56 = [v55 v22[425]];
    v57 = v52 & 1;
    if (v53)
    {
      v58 = v53;
      v59 = [v53 v22[425]];
      v60 = sub_21DBFB63C();

      v61 = v58;
      TTRParticipantModel.init(sharee:)(v61, &v94);
      v83 = v95;
      v85 = v94;
      v79 = v97;
      v81 = v96;
      v77 = v98;
      v62 = [v61 v22[425]];

      v64 = v77;
      v63 = v79;
      v66 = v81;
      v65 = v83;
      v67 = v85;
      v68 = v60 & 1;
    }

    else
    {

      v62 = 0;
      v68 = 0;
      v67 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
    }

    v94 = v56;
    v97 = v87[2];
    v98 = v87[3];
    v99 = v87[4];
    v95 = v87[0];
    v96 = v87[1];
    LOBYTE(v100) = v57;
    *(&v100 + 1) = 0;
    v101 = v62;
    v102 = v67;
    v103 = v65;
    v104 = v66;
    v105 = v63;
    v106 = v64;
    v107 = v68;
    nullsub_1();
  }

  else
  {

    sub_21D72D714(&v94);
  }

  v69 = v105;
  a3[10] = v104;
  a3[11] = v69;
  v70 = v107;
  a3[12] = v106;
  a3[13] = v70;
  v71 = v101;
  a3[6] = v100;
  a3[7] = v71;
  v72 = v103;
  a3[8] = v102;
  a3[9] = v72;
  v73 = v97;
  a3[2] = v96;
  a3[3] = v73;
  v74 = v99;
  a3[4] = v98;
  a3[5] = v74;
  v75 = v95;
  *a3 = v94;
  a3[1] = v75;
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v108);
}

char *TTRRemindersListPresenterCapabilityCore.assigneeCandidates(for:pendingMoveTargetListForHostingReminder:)(uint64_t a1, void *a2)
{
  sub_21D7259FC(a1, &v14);
  if (v15)
  {
    sub_21D0D0FD0(&v14, v16);
    if (a2)
    {
      *(&v10 + 1) = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
      v11 = &protocol witness table for REMList;
      *&v9 = a2;
      sub_21D0D0FD0(&v9, &v12);
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      v3 = v17;
      v4 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v4 + 184))(&v12, v3, v4);
    }

    if (v13)
    {
      sub_21D0D0FD0(&v12, &v14);
      v5 = a2;
      v6 = _s15RemindersUICore39TTRRemindersListPresenterCapabilityCoreC18assigneeCandidates3forSayAA20TTRAssigneeCandidateOGSgAA15TTRListProtocol_p_tF_0(&v14);
      __swift_destroy_boxed_opaque_existential_0(&v14);
      __swift_destroy_boxed_opaque_existential_0(v16);
      return v6;
    }

    v8 = a2;
    sub_21D0CF7E0(&v12, &qword_27CE59DC0, &qword_21DC0FBF0);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_21D0CF7E0(&v14, &qword_27CE608D8, &qword_21DC25DC8);
  }

  return 0;
}

uint64_t TTRRemindersListPresenterCapabilityCore.loadAssignment(for:pendingMoveTargetListForHostingReminder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[178] = v3;
  v4[177] = a3;
  v4[176] = a2;
  v4[175] = a1;
  sub_21DBFA84C();
  v4[179] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[180] = v6;
  v4[181] = v5;

  return MEMORY[0x2822009F8](sub_21D728C00, v6, v5);
}

uint64_t sub_21D728C00()
{
  v53 = v0;
  TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)(*(v0 + 1408), *(v0 + 1416), (v0 + 240));
  v1 = *(v0 + 416);
  *(v0 + 176) = *(v0 + 400);
  *(v0 + 192) = v1;
  v2 = *(v0 + 448);
  *(v0 + 208) = *(v0 + 432);
  *(v0 + 224) = v2;
  v3 = *(v0 + 352);
  *(v0 + 112) = *(v0 + 336);
  *(v0 + 128) = v3;
  v4 = *(v0 + 384);
  *(v0 + 144) = *(v0 + 368);
  *(v0 + 160) = v4;
  v5 = *(v0 + 288);
  *(v0 + 48) = *(v0 + 272);
  *(v0 + 64) = v5;
  v6 = *(v0 + 320);
  *(v0 + 80) = *(v0 + 304);
  *(v0 + 96) = v6;
  v7 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 32) = v7;
  if (sub_21D157494((v0 + 16)) == 1)
  {
    v8 = *(v0 + 1400);

    v9 = *(v0 + 256);
    *v8 = *(v0 + 240);
    v8[1] = v9;
    v10 = *(v0 + 272);
    v11 = *(v0 + 288);
    v12 = *(v0 + 320);
    v8[4] = *(v0 + 304);
    v8[5] = v12;
    v8[2] = v10;
    v8[3] = v11;
    v13 = *(v0 + 336);
    v14 = *(v0 + 352);
    v15 = *(v0 + 384);
    v8[8] = *(v0 + 368);
    v8[9] = v15;
    v8[6] = v13;
    v8[7] = v14;
    v16 = *(v0 + 400);
    v17 = *(v0 + 416);
    v18 = *(v0 + 448);
    v8[12] = *(v0 + 432);
    v8[13] = v18;
    v8[10] = v16;
    v8[11] = v17;
    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 1424);
    v22 = swift_allocObject();
    *(v0 + 1456) = v22;
    v22[1] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    v22[4] = 0u;
    v22[5] = 0u;
    v22[6] = 0u;
    v22[7] = 0u;
    v23 = swift_allocObject();
    *(v0 + 1464) = v23;
    v23[1] = 0u;
    v23[2] = 0u;
    v23[3] = 0u;
    v23[4] = 0u;
    v23[5] = 0u;
    v23[6] = 0u;
    v23[7] = 0u;
    v24 = *(v0 + 96);
    v50 = *(v0 + 80);
    v51 = v24;
    v52 = *(v0 + 112);
    v25 = *(v0 + 32);
    v46 = *(v0 + 16);
    v47 = v25;
    v26 = *(v0 + 64);
    v48 = *(v0 + 48);
    v49 = v26;
    sub_21D0D3954(v0 + 240, v0 + 464, &qword_27CE608E0, &qword_21DC25DE8);
    sub_21D1D9C94(v0 + 16, v0 + 1024);
    sub_21D7295DC(&v46, v21);
    v27 = v51;
    *(v0 + 976) = v50;
    *(v0 + 992) = v27;
    *(v0 + 1008) = v52;
    v28 = v47;
    *(v0 + 912) = v46;
    *(v0 + 928) = v28;
    v29 = v49;
    *(v0 + 944) = v48;
    *(v0 + 960) = v29;
    sub_21D30DA04(v0 + 912);

    v30 = sub_21DBF816C();
    v31 = sub_21DBF820C();
    *(v0 + 1472) = v31;

    if (*(v0 + 128))
    {
      v32 = *(v0 + 1424);
      v34 = *(v0 + 208);
      v50 = *(v0 + 192);
      v33 = v50;
      v51 = v34;
      v52 = *(v0 + 224);
      v35 = v52;
      v36 = *(v0 + 144);
      v46 = *(v0 + 128);
      v47 = v36;
      v37 = *(v0 + 176);
      v48 = *(v0 + 160);
      v38 = v48;
      v49 = v37;
      *(v0 + 1136) = v46;
      *(v0 + 1152) = v36;
      *(v0 + 1168) = v38;
      *(v0 + 1184) = v37;
      *(v0 + 1200) = v33;
      *(v0 + 1216) = v34;
      *(v0 + 1232) = v35;
      sub_21D1D9C94(v0 + 1136, v0 + 1248);
      sub_21D7295DC(&v46, v32);

      v39 = sub_21DBF816C();
      v40 = sub_21DBF820C();

      sub_21D0CF7E0(v0 + 128, &qword_27CE5FF78, &qword_21DC22D60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608E8, &qword_21DC25DF0);
      swift_allocObject();
      v40 = sub_21DBF824C();
    }

    *(v0 + 1480) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608E8, &qword_21DC25DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_21DC0AA00;
    *(v41 + 32) = v31;
    *(v41 + 40) = v40;
    *(v0 + 1384) = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608F0, &qword_21DC25DF8);
    sub_21D0D0F1C(&qword_27CE608F8, &qword_27CE608F0, &qword_21DC25DF8, MEMORY[0x277D83988]);
    sub_21DBF819C();

    v42 = swift_allocObject();
    *(v42 + 16) = v22;
    *(v42 + 24) = v23;

    v43 = sub_21DBF816C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608E0, &qword_21DC25DE8);
    *(v0 + 1488) = sub_21DBF820C();

    v44 = swift_task_alloc();
    *(v0 + 1496) = v44;
    *v44 = v0;
    v44[1] = sub_21D729118;
    v45 = *(v0 + 1400);

    return MEMORY[0x2821A7870](v45);
  }
}

uint64_t sub_21D729118()
{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {
    sub_21D0CF7E0(v2 + 240, &qword_27CE608E0, &qword_21DC25DE8);
    v3 = *(v2 + 1448);
    v4 = *(v2 + 1440);
    v5 = sub_21D729328;
  }

  else
  {
    v3 = *(v2 + 1448);
    v4 = *(v2 + 1440);
    v5 = sub_21D72924C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D72924C()
{

  sub_21D0CF7E0(v0 + 240, &qword_27CE608E0, &qword_21DC25DE8);
  sub_21D0CF7E0(v0 + 240, &qword_27CE608E0, &qword_21DC25DE8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D729328()
{
  v27 = v0;

  if (qword_27CE56C48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1504);
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE608C0);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1504);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRRemindersListPresenterCapabilityCore: failed to load assignment {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);

    sub_21D0CF7E0(v0 + 240, &qword_27CE608E0, &qword_21DC25DE8);
  }

  else
  {

    sub_21D0CF7E0(v0 + 240, &qword_27CE608E0, &qword_21DC25DE8);
  }

  v13 = *(v0 + 1400);
  sub_21D72D714((v0 + 688));
  v14 = *(v0 + 704);
  *v13 = *(v0 + 688);
  v13[1] = v14;
  v15 = *(v0 + 720);
  v16 = *(v0 + 736);
  v17 = *(v0 + 768);
  v13[4] = *(v0 + 752);
  v13[5] = v17;
  v13[2] = v15;
  v13[3] = v16;
  v18 = *(v0 + 784);
  v19 = *(v0 + 800);
  v20 = *(v0 + 832);
  v13[8] = *(v0 + 816);
  v13[9] = v20;
  v13[6] = v18;
  v13[7] = v19;
  v21 = *(v0 + 848);
  v22 = *(v0 + 864);
  v23 = *(v0 + 896);
  v13[12] = *(v0 + 880);
  v13[13] = v23;
  v13[10] = v21;
  v13[11] = v22;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21D7295DC(__int128 *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50, &unk_21DC183E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v25 - v6);
  v8 = a1[3];
  v9 = a1[5];
  v30 = a1[4];
  v31 = v9;
  v10 = a1[5];
  v32 = a1[6];
  v11 = a1[1];
  v26 = *a1;
  v27 = v11;
  v12 = a1[3];
  v13 = a1[1];
  v28 = a1[2];
  v29 = v12;
  v25[2] = v8;
  v25[3] = v30;
  v25[4] = v10;
  v25[1] = v28;
  v25[0] = v13;
  v14 = TTRParticipantModel.contactHandles.getter();
  if (!v14)
  {
    *&v25[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60910, &unk_21DC25FE0);
    swift_allocObject();
    sub_21DBF824C();
LABEL_10:
    v18 = swift_allocObject();
    v19 = v31;
    v18[5] = v30;
    v18[6] = v19;
    v18[7] = v32;
    v20 = v27;
    v18[1] = v26;
    v18[2] = v20;
    v21 = v29;
    v18[3] = v28;
    v18[4] = v21;

    sub_21D1D9C94(&v26, v25);
    v22 = sub_21DBF816C();
    v23 = sub_21DBF81FC();

    return v23;
  }

  v15 = v14;
  __swift_project_boxed_opaque_existential_1(a2 + 9, a2[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  sub_21DBF6A7C();

  v17 = (*(v5 + 88))(v7, v4);
  if (v17 == *MEMORY[0x277D450E0])
  {
    (*(v5 + 96))(v7, v4);
LABEL_9:

    sub_21DBF817C();

    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D450E8])
  {
    (*(v5 + 96))(v7, v4);
    *&v25[0] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60918, &qword_21DC29E90);
    swift_allocObject();
    sub_21DBF824C();
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D450D8])
  {
    (*(v5 + 96))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60918, &qword_21DC29E90);
    swift_allocObject();
    sub_21DBF823C();
    goto LABEL_9;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D7299A8(void **a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v28.lastName = *(a2 + 48);
  v28.emailAddress = v3;
  v4 = *(a2 + 96);
  v28.phoneNumber = *(a2 + 80);
  v5 = *(a2 + 32);
  v28.displayName = *(a2 + 16);
  v28.firstName = v5;
  v6 = *a2;
  v29 = *(a2 + 8);
  v7 = *a1;
  v27 = v4;
  if (v7)
  {
    v8 = v7;
    sub_21D1D9C94(a2, v25);
    v9 = v8;
    sub_21D0CF7E0(&v29, &qword_27CE60920, &qword_21DC25FF0);
    v16 = v28;
    *v25 = v28;
    sub_21D1D9B34(&v16, &v22);
    TTRParticipantModel.updatingNames(with:)(&v22, v9);

    lastName = *&v25[32];
    v20 = *&v25[48];
    v21 = *&v25[64];
    displayName = *v25;
    v18 = *&v25[16];
    sub_21D1D9B90(&displayName);
    *v25 = v28;
    sub_21D1D9B90(v25);
    v28 = v22;
  }

  else
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 64);
    v22.lastName = *(a2 + 48);
    v22.emailAddress = v11;
    v12 = *(a2 + 64);
    v22.phoneNumber = *(a2 + 80);
    v13 = *(a2 + 32);
    v22.displayName = *(a2 + 16);
    v22.firstName = v13;
    lastName = v22.lastName;
    v20 = v12;
    v21 = *(a2 + 80);
    displayName = v22.displayName;
    v18 = v10;
    sub_21D1D9C94(a2, v25);
    sub_21D1D9B34(&v22, v25);
    v7 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&displayName);
    *&v25[32] = lastName;
    *&v25[48] = v20;
    *&v25[64] = v21;
    *v25 = displayName;
    *&v25[16] = v18;
    sub_21D1D9B90(v25);
    sub_21D0CF7E0(&v29, &qword_27CE60920, &qword_21DC25FF0);
  }

  v22.displayName.value._countAndFlagsBits = v6;
  v22.displayName.value._object = v7;
  v22.emailAddress = v28.lastName;
  v22.phoneNumber = v28.emailAddress;
  v22.firstName = v28.displayName;
  v22.lastName = v28.firstName;
  phoneNumber = v28.phoneNumber;
  v24 = v27;
  *&v25[16] = v28;
  v26 = v27;
  *v25 = v22.displayName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60928, &qword_21DC25FF8);
  swift_allocObject();
  sub_21D1D9C94(&v22, &displayName);
  v14 = sub_21DBF824C();
  *v25 = v6;
  *&v25[8] = v7;
  *&v25[16] = v28;
  v26 = v27;
  sub_21D30DA04(v25);
  return v14;
}

uint64_t sub_21D729C10(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v15[6] = a1[6];
  v5 = a1[1];
  v15[0] = *a1;
  v15[1] = v5;
  v6 = a1[3];
  v15[2] = a1[2];
  v15[3] = v6;
  swift_beginAccess();
  v7 = a2[6];
  v16[4] = a2[5];
  v16[5] = v7;
  v16[6] = a2[7];
  v8 = a2[2];
  v16[0] = a2[1];
  v16[1] = v8;
  v9 = a2[4];
  v16[2] = a2[3];
  v16[3] = v9;
  v10 = a1[1];
  a2[1] = *a1;
  a2[2] = v10;
  v11 = a1[5];
  a2[5] = a1[4];
  a2[6] = v11;
  v12 = a1[3];
  a2[3] = a1[2];
  a2[4] = v12;
  a2[7] = a1[6];
  sub_21D1D9C94(v15, v14);
  return sub_21D0CF7E0(v16, &qword_27CE5FF78, &qword_21DC22D60);
}

uint64_t sub_21D729CF0@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X2>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v52[4] = *(a1 + 80);
  v52[5] = v7;
  v8 = *(a1 + 112);
  v9 = *(a1 + 32);
  v52[0] = *(a1 + 16);
  v52[1] = v9;
  v52[2] = *(a1 + 48);
  v52[3] = v6;
  v10 = *(a1 + 24);
  v11 = *(a1 + 56);
  v54 = *(a1 + 40);
  v55 = v11;
  v52[6] = v8;
  v53 = v10;
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = *(a1 + 104);
  v59 = *(a1 + 120);
  v57 = v13;
  v58 = v14;
  v56 = v12;
  if (*&v52[0])
  {
    swift_beginAccess();
    v15 = a2[4];
    v16 = a2[6];
    v41 = a2[5];
    v42 = v16;
    v17 = a2[6];
    v43 = a2[7];
    v18 = a2[2];
    v38[0] = a2[1];
    v38[1] = v18;
    v19 = a2[4];
    v21 = a2[1];
    v20 = a2[2];
    v39 = a2[3];
    v40 = v19;
    *&v44[8] = v53;
    *&v44[24] = v54;
    *&v44[72] = v57;
    *&v44[88] = v58;
    *&v44[40] = v55;
    *&v44[56] = v56;
    v46 = v20;
    v45 = v21;
    v51 = a2[7];
    v50 = v17;
    v49 = v41;
    v47 = v39;
    v48 = v15;
    *&v44[104] = v59;
    *v44 = *&v52[0];
    nullsub_1();
    v22 = v41;
    a3[10] = v48;
    a3[11] = v22;
    v23 = v51;
    a3[12] = v50;
    a3[13] = v23;
    v24 = v45;
    a3[6] = *&v44[96];
    a3[7] = v24;
    v25 = v47;
    a3[8] = v46;
    a3[9] = v25;
    v26 = *&v44[48];
    a3[2] = *&v44[32];
    a3[3] = v26;
    v27 = *&v44[80];
    a3[4] = *&v44[64];
    a3[5] = v27;
    v28 = *&v44[16];
    *a3 = *v44;
    a3[1] = v28;
    sub_21D0D3954(v38, &v37, &qword_27CE5FF78, &qword_21DC22D60);
  }

  else
  {
    sub_21D72D714(v44);
    v29 = v49;
    a3[10] = v48;
    a3[11] = v29;
    v30 = v51;
    a3[12] = v50;
    a3[13] = v30;
    v31 = v45;
    a3[6] = *&v44[96];
    a3[7] = v31;
    v32 = v47;
    a3[8] = v46;
    a3[9] = v32;
    v33 = *&v44[48];
    a3[2] = *&v44[32];
    a3[3] = v33;
    v34 = *&v44[80];
    a3[4] = *&v44[64];
    a3[5] = v34;
    v35 = *&v44[16];
    *a3 = *v44;
    a3[1] = v35;
  }

  return sub_21D0D3954(v52, v44, &qword_27CE5FF78, &qword_21DC22D60);
}

void TTRRemindersListPresenterCapabilityCore.paramsForBatchAssign(_:pendingMoveTargetListForHostingReminder:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v70 = a2;
  v69 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v69);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v68 = a1;
  v17 = *(a1 + 16);
  if (!v17)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v62 = a3;
  v61 = v10;
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_52;
  }

LABEL_3:
  v18 = MEMORY[0x277D84FA0];
LABEL_4:
  v19 = 0;
  v80 = v18;
  v63 = v17;
  v65 = v13;
  do
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_52:
      if (!sub_21DBFBD7C())
      {
        goto LABEL_3;
      }

      sub_21D1CE198(MEMORY[0x277D84F90]);
      goto LABEL_4;
    }

    v22 = v68 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    sub_21D1D338C(v22 + *(v66 + 72) * v19, v16);
    sub_21D1D338C(v16, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v64 = v22;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if ((EnumCaseMultiPayload - 5) < 4)
        {
LABEL_31:
          sub_21D106D38(v13, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        swift_storeEnumTagMultiPayload();
LABEL_33:
        sub_21D106D38(v16, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_35:
        v42 = v62;
        *v62 = 0;
        v42[1] = 0;
        return;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      goto LABEL_31;
    }

    sub_21D72DB8C(v13, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    if (swift_getEnumCaseMultiPayload() >= 3)
    {
      goto LABEL_33;
    }

    sub_21D106D38(v8, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    v24 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 16))(v16, ObjectType, v24);
    if (v26)
    {
      v27 = v26;
      *(&v72 + 1) = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
      v73 = &protocol witness table for REMReminderChangeItem;
      *&v71 = v27;
      sub_21D0D0FD0(&v71, &v74);
      goto LABEL_19;
    }

    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v28 = (*(v24 + 8))(v16, ObjectType, v24);
    if (v28)
    {
      v29 = v28;
      *(&v75 + 1) = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v76 = &protocol witness table for REMReminder;
      *&v74 = v29;
      if (!*(&v72 + 1))
      {
        goto LABEL_19;
      }

LABEL_18:
      sub_21D0CF7E0(&v71, &qword_27CE608D8, &qword_21DC25DC8);
      goto LABEL_19;
    }

    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    if (*(&v72 + 1))
    {
      goto LABEL_18;
    }

LABEL_19:
    if (!*(&v75 + 1))
    {
      sub_21D106D38(v16, type metadata accessor for TTRRemindersListViewModel.Item);

      sub_21D0CF7E0(&v74, &qword_27CE608D8, &qword_21DC25DC8);
      goto LABEL_35;
    }

    sub_21D0D0FD0(&v74, v77);
    v30 = v78;
    v31 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v31 + 208))(&v74, v30, v31);
    if (!*(&v75 + 1))
    {
      sub_21D106D38(v16, type metadata accessor for TTRRemindersListViewModel.Item);

      sub_21D0CF7E0(&v74, &qword_27CE5CC28, qword_21DC17D60);
      v43 = v62;
      *v62 = 0;
      v43[1] = 0;
      __swift_destroy_boxed_opaque_existential_0(v77);
      return;
    }

    sub_21D0CF7E0(&v74, &qword_27CE5CC28, qword_21DC17D60);
    v32 = v70;
    if (v70)
    {
      *(&v72 + 1) = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
      v73 = &protocol witness table for REMList;
      *&v71 = v32;
      sub_21D0D0FD0(&v71, &v74);
    }

    else
    {
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      v33 = v78;
      v34 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      (*(v34 + 184))(&v74, v33, v34);
      v32 = v70;
      if (*(&v72 + 1))
      {
        sub_21D0CF7E0(&v71, &qword_27CE59DC0, &qword_21DC0FBF0);
      }
    }

    v35 = *(&v75 + 1);
    if (*(&v75 + 1))
    {
      v36 = v76;
      __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      v37 = v4;
      v38 = v36[1];
      v39 = v32;
      v40 = v38(v35, v36);
      v4 = v37;
      v17 = v63;
      v41 = v40;
      __swift_destroy_boxed_opaque_existential_0(&v74);
      sub_21D29B0D0(&v74, v41);
    }

    else
    {
      v20 = v32;
      sub_21D0CF7E0(&v74, &qword_27CE59DC0, &qword_21DC0FBF0);
    }

    sub_21D106D38(v16, type metadata accessor for TTRRemindersListViewModel.Item);
    v13 = v65;
    __swift_destroy_boxed_opaque_existential_0(v77);
    ++v19;
  }

  while (v21 != v17);
  if ((v80 & 0xC000000000000001) != 0)
  {
    v44 = sub_21DBFBD7C();
  }

  else
  {
    v44 = *(v80 + 16);
  }

  v45 = v62;

  if (v44 != 1)
  {
    goto LABEL_46;
  }

  v46 = v61;
  sub_21D1D338C(v64, v61);
  v47 = TTRRemindersListPresenterCapabilityCore.assigneeCandidates(for:pendingMoveTargetListForHostingReminder:)(v46, v70);
  if (!v47)
  {
    sub_21D106D38(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_46;
  }

  v48 = v47;
  v49 = *(v4 + 40);
  v50 = swift_getObjectType();
  v51 = (*(v49 + 8))(v46, v50, v49);
  if (!v51)
  {
    v55 = (*(v49 + 16))(v46, v50, v49);
    sub_21D106D38(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    if (v55)
    {
LABEL_48:
      *v45 = v48;
      v45[1] = v55;
      return;
    }

LABEL_46:
    *v45 = 0;
    v45[1] = 0;
    return;
  }

  v52 = v51;
  v53 = [v51 store];
  v54 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  if (v63 == 1)
  {
    v55 = [v54 updateReminder_];

    sub_21D106D38(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_48;
  }

  v56 = [v52 list];
  v57 = [v54 updateList_];

  v58 = sub_21DBFA12C();
  v59 = v45;
  v60 = [v54 addReminderWithTitle:v58 toListChangeItem:v57];

  sub_21D106D38(v46, type metadata accessor for TTRRemindersListViewModel.Item);
  *v59 = v48;
  v59[1] = v60;
}

void TTRRemindersListPresenterCapabilityCore.decorateWithLocationPermissions(_:for:)(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 52);
  if (*(v2 + 24))
  {
    v3 = *(v1 + 224);
    swift_beginAccess();
    *(v2 + 48) = *(v3 + 16) & 1;
  }
}

uint64_t TTRRemindersListPresenterCapabilityCore.decorateWithImageAttachments(_:for:viewScale:thumbnailDidLoad:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v84 = a6;
  v83 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v75 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = v14;
  v79 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60900, &qword_21DC25E00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v75 - v16);
  v96 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v87 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v75 - v20;
  v82 = a2;
  sub_21D7259FC(a2, &v98);
  if (!v99)
  {
    return sub_21D0CF7E0(&v98, &qword_27CE608D8, &qword_21DC25DC8);
  }

  sub_21D0D0FD0(&v98, v101);
  v21 = v102;
  v22 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  (*(v22 + 192))(&v98, v21, v22);
  v23 = v99;
  if (v99)
  {
    v85 = v12;
    v76 = a1;
    v24 = v100;
    __swift_project_boxed_opaque_existential_1(&v98, v99);
    v25 = (*(v24 + 8))(v23, v24);
    __swift_destroy_boxed_opaque_existential_0(&v98);
    *&v98 = v25;
    sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E900, &unk_21DC25E10);
    sub_21D0D0F1C(&qword_280D0C3A0, &unk_27CE5E900, &unk_21DC25E10, MEMORY[0x277D83970]);
    v26 = sub_21DBFA47C();

    v27 = *&a3;
    if (a4)
    {
      v27 = 1.0;
    }

    v28 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v26, v27);
    v29 = *(v28 + 2);
    sub_21DBF8E0C();
    v94 = v26 >> 62;
    if (v29)
    {
      v30 = 0;
      v31 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v26 < 0)
      {
        v32 = v26;
      }

      else
      {
        v32 = v26 & 0xFFFFFFFFFFFFFF8;
      }

      v75 = v32;
      v92 = v26 & 0xC000000000000001;
      v88 = (v87 + 48);
      v89 = (v87 + 56);
      v33 = MEMORY[0x277D84F90];
      v34 = (v28 + 48);
      v90 = v28;
      v93 = v26 & 0xFFFFFFFFFFFFFF8;
      v77 = v17;
      v91 = v26;
      while (v30 < v29)
      {
        v36 = *(v34 - 2);
        v35 = *(v34 - 1);
        v37 = *v34;
        if (v94)
        {
          v70 = sub_21DBFBD7C();
          v31 = v93;
          if (v30 == v70)
          {
            goto LABEL_49;
          }
        }

        else if (v30 == *(v31 + 16))
        {
          goto LABEL_49;
        }

        v97 = v33;
        if (v92)
        {
          sub_21D72DABC(v36, v35, v37);
          v39 = MEMORY[0x223D44740](v30, v26);
        }

        else
        {
          if (v30 >= *(v31 + 16))
          {
            goto LABEL_56;
          }

          v38 = *(v26 + 8 * v30 + 32);
          sub_21D72DABC(v36, v35, v37);
          v39 = v38;
        }

        v40 = v39;
        if (v37 >= 2)
        {
          v41 = v36;
        }

        else
        {
          v41 = v35;
        }

        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v42 = v41;
        v43 = [v40 objectID];
        v44 = sub_21DBFB63C();

        if (v44)
        {
          v45 = v35;
          if (v37)
          {
            if (v37 == 2)
            {
              v45 = v36;
            }

            else
            {

              sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
              v78 = sub_21DBFB12C();
              v52 = v79;
              sub_21D1D338C(v82, v79);
              v53 = (*(v81 + 80) + 32) & ~*(v81 + 80);
              v54 = swift_allocObject();
              v55 = v84;
              *(v54 + 16) = v83;
              *(v54 + 24) = v55;
              sub_21D72DB8C(v52, v54 + v53, type metadata accessor for TTRRemindersListViewModel.Item);

              v56 = v78;
              sub_21DBF820C();

              v45 = v35;
              v17 = v77;
            }
          }

          v57 = v45;
          v58 = [v40 fileURL];
          if (v58)
          {
            v59 = v85;
            v60 = v58;
            sub_21DBF546C();

            v61 = 0;
          }

          else
          {
            v61 = 1;
            v59 = v85;
          }

          v62 = sub_21DBF54CC();
          (*(*(v62 - 8) + 56))(v59, v61, 1, v62);
          v63 = 0;
          if (!v37)
          {
            v64 = v36;
            v63 = v36;
          }

          *v17 = v57;
          v51 = v96;
          sub_21D57690C(v59, v17 + *(v96 + 20));
          v50 = 0;
          *(v17 + *(v51 + 24)) = v63;
        }

        else
        {
          if (qword_27CE56C48 != -1)
          {
            swift_once();
          }

          v46 = sub_21DBF84BC();
          __swift_project_value_buffer(v46, qword_27CE608C0);
          v47 = sub_21DBF84AC();
          v48 = sub_21DBFAECC();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_21D0C9000, v47, v48, "Thumbnails from attachmentThumbnailsManager are of wrong order", v49, 2u);
            MEMORY[0x223D46520](v49, -1, -1);
          }

          v50 = 1;
          v51 = v96;
        }

        v26 = v91;
        (*v89)(v17, v50, 1, v51);
        sub_21D72DB24(v36, v35, v37);

        v65 = (*v88)(v17, 1, v51);
        v66 = v90;
        if (v65 == 1)
        {
          sub_21D0CF7E0(v17, &qword_27CE60900, &qword_21DC25E00);
          v33 = v97;
        }

        else
        {
          v67 = v86;
          sub_21D72DB8C(v17, v86, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          sub_21D72DB8C(v67, v95, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          v33 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_21D214510(0, v33[2] + 1, 1, v33);
          }

          v69 = v33[2];
          v68 = v33[3];
          if (v69 >= v68 >> 1)
          {
            v33 = sub_21D214510((v68 > 1), v69 + 1, 1, v33);
          }

          v33[2] = v69 + 1;
          sub_21D72DB8C(v95, v33 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v69, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
        }

        ++v30;
        v29 = *(v66 + 2);
        v34 += 24;
        v31 = v93;
        if (v30 == v29)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
LABEL_49:

      if (!v33[2])
      {

        return __swift_destroy_boxed_opaque_existential_0(v101);
      }

      v34 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
      v72 = *(v34 + 17);
      v73 = v76;

      *(v73 + v72) = v33;
      if (!v94)
      {
        v74 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:

        *(v76 + *(v34 + 19)) = v74;
        return __swift_destroy_boxed_opaque_existential_0(v101);
      }
    }

    v74 = sub_21DBFBD7C();
    goto LABEL_52;
  }

  sub_21D0CF7E0(&v98, &qword_27CE60908, &qword_21DC25E08);
  return __swift_destroy_boxed_opaque_existential_0(v101);
}

uint64_t sub_21D72B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a2;
  v5 = sub_21DBF9D2C();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D5C();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v14 = sub_21DBFB12C();
  sub_21D1D338C(v20, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = a3;
  sub_21D72DB8C(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TTRRemindersListViewModel.Item);
  aBlock[4] = sub_21D72E754;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_38_0;
  v17 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v10, v7, v17);
  _Block_release(v17);

  (*(v24 + 8))(v7, v5);
  return (*(v22 + 8))(v10, v23);
}

uint64_t TTRRemindersListPresenterCapabilityCore.decorateWithLinkAttachments(_:for:linkDidLoad:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_21D7259FC(a2, &v21);
  if (!v22)
  {
    return sub_21D0CF7E0(&v21, &qword_27CE608D8, &qword_21DC25DC8);
  }

  sub_21D0D0FD0(&v21, v24);
  v10 = v25;
  v11 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v11 + 192))(&v21, v10, v11);
  v12 = v22;
  if (!v22)
  {
    sub_21D0CF7E0(&v21, &qword_27CE60908, &qword_21DC25E08);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v13 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, v22);
  v14 = (*(v13 + 32))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(&v21);
  if (v14 >> 62)
  {
    v15 = sub_21DBFBD7C();
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_9:

    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_5:
  MEMORY[0x28223BE20](v15);
  v20[2] = v24;
  v20[3] = v5;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a2;
  sub_21D1743DC(sub_21D72DC74, v20, v14);
  v17 = v16;

  v18 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 64);

  *(a1 + v18) = v17;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

void sub_21D72B87C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v57 = a7;
  v52 = a6;
  v53 = a4;
  v54 = a5;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = v11;
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7B0, &qword_21DC104B0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = *a1;
  sub_21D0D32E4(a2, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58620, &qword_21DC09828);
  sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v20 = swift_dynamicCast();
  v55 = v19;
  if (v20)
  {
    v21 = v59;
    v22 = *(a3 + 64);
    ObjectType = swift_getObjectType();
    v24 = v21;
    v25 = v19;
    v26 = v24;
    sub_21D3180F8(v25, v21, ObjectType, v22);
  }

  else
  {
    v27 = *(a3 + 64);
    sub_21D0D32E4(a2, v58);
    sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
    if (swift_dynamicCast())
    {
      v28 = v59;
    }

    else
    {
      v28 = 0;
    }

    v29 = swift_getObjectType();
    sub_21D318364(v19, v28, v29, v27);
  }

  (*(v13 + 16))(v15, v18, v12);
  v30 = (*(v13 + 88))(v15, v12);
  v31 = *MEMORY[0x277D450E0];
  v56 = v18;
  if (v30 == v31)
  {
    (*(v13 + 96))(v15, v12);
    v32 = v51;
    sub_21D1D338C(v52, v51);
    v33 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v34 = swift_allocObject();
    v35 = v54;
    *(v34 + 16) = v53;
    *(v34 + 24) = v35;
    sub_21D72DB8C(v32, v34 + v33, type metadata accessor for TTRRemindersListViewModel.Item);

    v36 = sub_21DBF816C();
    sub_21DBF820C();

LABEL_13:
    v37 = 0;
    goto LABEL_14;
  }

  if (v30 == *MEMORY[0x277D450E8])
  {
    (*(v13 + 96))(v15, v12);
    v37 = *v15;
    v38 = *v15;
LABEL_14:
    v39 = v55;
    v40 = [v55 objectID];
    v41 = [v39 url];
    v42 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
    v43 = v57;
    sub_21DBF546C();

    (*(v13 + 8))(v56, v12);
    *v43 = v40;
    *(v43 + *(v42 + 24)) = v37;
    return;
  }

  if (v30 == *MEMORY[0x277D450D8])
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_13;
  }

  if (qword_27CE56C48 != -1)
  {
    swift_once();
  }

  v44 = sub_21DBF84BC();
  __swift_project_value_buffer(v44, qword_27CE608C0);
  v45 = MEMORY[0x277D84F90];
  v46 = sub_21D17716C(MEMORY[0x277D84F90]);
  v47 = sub_21D17716C(v45);
  sub_21DAEAB00("Unknown link metadata state", 27, 2, v46, v47);
  __break(1u);
}

void TTRRemindersListPresenterCapabilityCore.decorateWithPerson(_:for:personDidLoad:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a3;
  v9 = sub_21DBF61CC();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_21DBF7A2C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  sub_21D7259FC(a2, &v50);
  if (!v51)
  {
    sub_21D0CF7E0(&v50, &qword_27CE608D8, &qword_21DC25DC8);
    return;
  }

  v43 = a4;
  v44 = a1;
  sub_21D0D0FD0(&v50, v52);
  v18 = v53;
  v19 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v20 = (*(v19 + 152))(v18, v19);
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = v5[12];
  v41 = v5[13];
  v22 = v20;
  __swift_project_boxed_opaque_existential_1(v5 + 9, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC09CF0;
  *(v23 + 32) = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];
  v42 = v22;
  sub_21DBF6A5C();

  v24 = (*(v15 + 88))(v17, v14);
  if (v24 == *MEMORY[0x277D45730])
  {
    (*(v15 + 96))(v17, v14);
    sub_21D1D338C(v46, &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v26 = swift_allocObject();
    v27 = v43;
    *(v26 + 16) = v47;
    *(v26 + 24) = v27;
    sub_21D72DB8C(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for TTRRemindersListViewModel.Item);

    v28 = sub_21DBF816C();
    sub_21DBF820C();

LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v52);
    return;
  }

  v29 = v42;
  if (v24 == *MEMORY[0x277D45738])
  {
    (*(v15 + 96))(v17, v14);
    v31 = v48;
    v30 = v49;
    (*(v48 + 32))(v11, v17, v49);
    v32 = sub_21DBF61AC();
    v34 = v33;
    v35 = sub_21DBF61BC();

    (*(v31 + 8))(v11, v30);
    v36 = v44 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 128);
    sub_21D1576C8(*v36, *(v36 + 8), *(v36 + 16));
    *v36 = v32;
    *(v36 + 8) = v34;
    *(v36 + 16) = v35;
    goto LABEL_8;
  }

  if (qword_27CE56C48 != -1)
  {
    swift_once();
  }

  v37 = sub_21DBF84BC();
  __swift_project_value_buffer(v37, qword_27CE608C0);
  v38 = MEMORY[0x277D84F90];
  v39 = sub_21D17716C(MEMORY[0x277D84F90]);
  v40 = sub_21D17716C(v38);
  sub_21DAEAB00("Unknown contactAndName", 22, 2, v39, v40);
  __break(1u);
}

void TTRRemindersListPresenterCapabilityCore.decorateWithAppLink(_:for:viewScale:appLinkDidLoad:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v48 = a3;
  LODWORD(v49) = a4;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBE0, &qword_21DC1DC58);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  sub_21D7259FC(a2, &v50);
  if (!v51)
  {
    sub_21D0CF7E0(&v50, &qword_27CE608D8, &qword_21DC25DC8);
    return;
  }

  v44 = a6;
  v45 = a1;
  sub_21D0D0FD0(&v50, v52);
  v16 = v53;
  v17 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v18 = (*(v17 + 144))(v16, v17);
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  if ([v18 flags])
  {

LABEL_27:
    __swift_destroy_boxed_opaque_existential_0(v52);
    return;
  }

  if (v49)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = *&v48;
  }

  v21 = *(v6 + 120);
  ObjectType = swift_getObjectType();
  (*(v21 + 8))(v19, ObjectType, v21, v20);
  v23 = (*(v13 + 88))(v15, v12);
  if (v23 == *MEMORY[0x277D450E0])
  {
    (*(v13 + 96))(v15, v12);
    if (sub_21D72C834(v52))
    {
      v24 = 0;
      v25 = 0;
      v49 = 0;
    }

    else
    {
      v24 = (*(v21 + 24))(ObjectType, v21, v20);
      v49 = 0xE100000000000000;
      v25 = 32;
    }

    sub_21D1D338C(a2, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v35 = swift_allocObject();
    v36 = v44;
    *(v35 + 16) = v47;
    *(v35 + 24) = v36;
    sub_21D72DB8C(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for TTRRemindersListViewModel.Item);

    v37 = sub_21DBF816C();
    sub_21DBF820C();

    v38 = v45;
    v27 = v49;
    goto LABEL_26;
  }

  if (v23 == *MEMORY[0x277D450E8])
  {
    (*(v13 + 96))(v15, v12);
    v26 = *v15;
    v25 = *(v15 + 1);
    v27 = *(v15 + 2);
    v28 = v15[40];
    v30 = *(v15 + 6);
    v29 = *(v15 + 7);
    v32 = *(v15 + 8);
    v31 = *(v15 + 9);
    if (v28 == 2 || (v28 & 1) == 0)
    {
    }

    else
    {
      v33 = sub_21D72C834(v52);

      if (v33)
      {

        sub_21D3A22A8(v30, v29, v32, v31);
LABEL_21:
        v24 = 0;
        v25 = 0;
        v27 = 0;
        v38 = v45;
LABEL_26:
        v39 = v38 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 152);
        sub_21D6388A4(*v39);
        *v39 = v24;
        *(v39 + 8) = v25;
        *(v39 + 16) = v27;
        goto LABEL_27;
      }
    }

    v38 = v45;
    v24 = v26;

    if (v27)
    {
      sub_21D3A22A8(v30, v29, v32, v31);
    }

    else
    {

      sub_21D3A22A8(v30, v29, v32, v31);
      v24 = 0;
      v25 = 0;
    }

    goto LABEL_26;
  }

  if (v23 == *MEMORY[0x277D450D8])
  {

    (*(v13 + 8))(v15, v12);
    goto LABEL_21;
  }

  if (qword_27CE56C48 != -1)
  {
    swift_once();
  }

  v40 = sub_21DBF84BC();
  __swift_project_value_buffer(v40, qword_27CE608C0);
  v41 = MEMORY[0x277D84F90];
  v42 = sub_21D17716C(MEMORY[0x277D84F90]);
  v43 = sub_21D17716C(v41);
  sub_21DAEAB00("Unknown metadata state", 22, 2, v42, v43);
  __break(1u);
}

uint64_t sub_21D72C834(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 192))(v13, v1, v2);
  v3 = v14;
  if (v14)
  {
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v5 = (*(v4 + 8))(v3, v4);
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223D44740](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v3 = 1;
          goto LABEL_19;
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v3 = 0;
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_21D0CF7E0(v13, &qword_27CE60908, &qword_21DC25E08);
  }

  return v3;
}

__n128 TTRRemindersListPresenterCapabilityCore.decorateWithAssignment(_:for:pendingMoveTargetListForHostingReminder:visibleAssignmentElements:assignmentDidLoad:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)(a2, a3, &v76);
  v100 = v86;
  v101 = v87;
  v102 = v88;
  v103 = v89;
  v96 = v82;
  v97 = v83;
  v98 = v84;
  v99 = v85;
  v92 = v78;
  v93 = v79;
  v94 = v80;
  v95 = v81;
  v90 = v76;
  v91 = v77;
  if (sub_21D157494(&v90) != 1)
  {
    v72 = v100;
    v73 = v101;
    v74 = v102;
    v75 = v103;
    v69 = v97;
    v70 = v98;
    v71 = v99;
    v64 = v92;
    v65 = v93;
    v66 = v94;
    v67 = v95;
    v68 = v96;
    v62 = v90;
    v63 = v91;
    v13 = v6[12];
    v12 = v6[13];
    __swift_project_boxed_opaque_existential_1(v6 + 9, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC09CF0;
    v15 = objc_opt_self();
    v30[10] = v86;
    v30[11] = v87;
    v30[12] = v88;
    v30[13] = v89;
    v30[6] = v82;
    v30[7] = v83;
    v30[8] = v84;
    v30[9] = v85;
    v30[2] = v78;
    v30[3] = v79;
    v30[4] = v80;
    v30[5] = v81;
    v30[0] = v76;
    v30[1] = v77;
    sub_21D72DCB4(v30, v60);
    *(v14 + 32) = [v15 descriptorForRequiredKeysWithThreeDTouchEnabled_];
    REMContactsProviderType.loadContact(for:keys:updateHandler:)(&v62, v14, a5, a6, v13, v12);
    sub_21D0CF7E0(&v76, &qword_27CE608E0, &qword_21DC25DE8);

    v41 = v72;
    v42 = v73;
    v43 = v74;
    v44 = v75;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v40 = v71;
    v33 = v64;
    v34 = v65;
    v35 = v66;
    v36 = v67;
    v31 = v62;
    v32 = v63;
    nullsub_1();
    v55 = v41;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v45 = v31;
    v46 = v32;
    v59 = v10;
    nullsub_1();
    v16 = a1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 136);
    v17 = *(v16 + 208);
    v60[12] = *(v16 + 192);
    v60[13] = v17;
    v61 = *(v16 + 224);
    v18 = *(v16 + 144);
    v60[8] = *(v16 + 128);
    v60[9] = v18;
    v19 = *(v16 + 176);
    v60[10] = *(v16 + 160);
    v60[11] = v19;
    v20 = *(v16 + 80);
    v60[4] = *(v16 + 64);
    v60[5] = v20;
    v21 = *(v16 + 112);
    v60[6] = *(v16 + 96);
    v60[7] = v21;
    v22 = *(v16 + 16);
    v60[0] = *v16;
    v60[1] = v22;
    v23 = *(v16 + 48);
    v60[2] = *(v16 + 32);
    v60[3] = v23;
    sub_21D0CF7E0(v60, &unk_27CE5FB50, &qword_21DC1FAE0);
    v24 = v58;
    *(v16 + 192) = v57;
    *(v16 + 208) = v24;
    *(v16 + 224) = v59;
    v25 = v54;
    *(v16 + 128) = v53;
    *(v16 + 144) = v25;
    v26 = v56;
    *(v16 + 160) = v55;
    *(v16 + 176) = v26;
    v27 = v50;
    *(v16 + 64) = v49;
    *(v16 + 80) = v27;
    v28 = v52;
    *(v16 + 96) = v51;
    *(v16 + 112) = v28;
    v29 = v46;
    *v16 = v45;
    *(v16 + 16) = v29;
    result = v48;
    *(v16 + 32) = v47;
    *(v16 + 48) = result;
  }

  return result;
}

void *TTRRemindersListPresenterCapabilityCore.deinit()
{
  sub_21D157444((v0 + 2));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);

  return v0;
}

uint64_t TTRRemindersListPresenterCapabilityCore.__deallocating_deinit()
{
  TTRRemindersListPresenterCapabilityCore.deinit();

  return swift_deallocClassInstance();
}

double sub_21D72CDFC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

void *sub_21D72CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a11[3] = 0;
  swift_unknownObjectWeakInit();
  a11[4] = a1;
  a11[5] = a14;
  a11[6] = a2;
  a11[7] = a3;
  a11[8] = a4;
  sub_21D0D32E4(a5, (a11 + 9));
  a11[14] = a6;
  a11[15] = a7;
  a11[16] = a8;
  a11[17] = a15;
  sub_21D0D32E4(a9, (a11 + 18));
  sub_21D0D32E4(a10, (a11 + 23));
  v21 = a10[3];
  v22 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, v21);
  v23 = *(v22 + 96);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v23(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720, &qword_21DC1CC70);
  v25 = swift_allocObject();
  *(v25 + 16) = 2;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0u;
  *(v25 + 24) = 0;
  *(v25 + 32) = v24;
  swift_beginAccess();
  *(v25 + 16) = 0;
  a11[28] = v25;
  v26 = swift_allocObject();
  swift_weakInit();
  sub_21D59F07C(sub_21D5BB894, 0, sub_21D72E84C, v26);

  __swift_destroy_boxed_opaque_existential_0(a9);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a10);
  return a11;
}

void *sub_21D72D03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v25 = swift_allocObject();

  return sub_21D72CE44(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v25, a12, a13, a14, a15);
}

uint64_t sub_21D72D0EC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 24))(v2, v3, v4);
}

uint64_t sub_21D72D144(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 32))(v2, v3, v4);
}

uint64_t sub_21D72D1A8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 72))(v2, v3, v4);
}

uint64_t sub_21D72D200(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 136))(v2, v3, v4);
}

uint64_t sub_21D72D258(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 144))(v2, v3, v4);
}

uint64_t sub_21D72D2B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return TTRRemindersListAttributeEditing.setDueDate(_:)(v2, v3, v4);
}

uint64_t sub_21D72D300(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 128))(v2, v3, v4);
}

uint64_t sub_21D72D358(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 104))(v2, v3, v4);
}

uint64_t sub_21D72D3CC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

uint64_t sub_21D72D468(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
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
  sub_21DBF8E0C();

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v46[0] = *v18;
    v46[1] = v19;
    v46[2] = v20;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    (a2)(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_21D0CEF70(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_21D224CD4();
      }
    }

    else
    {
      sub_21D21D434(v29, v42 & 1);
      v31 = sub_21D0CEF70(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {
      v12 = *(v33[7] + 8 * v26);
      sub_21DBF8E0C();
      sub_21D996C6C(v23, v12);
      v14 = v13;

      *(v33[7] + 8 * v26) = v14;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v15;
    v6 = v39;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_21D0CFAF8(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

double sub_21D72D714(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

char *_s15RemindersUICore39TTRRemindersListPresenterCapabilityCoreC18assigneeCandidates3forSayAA20TTRAssigneeCandidateOGSgAA15TTRListProtocol_p_tF_0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 96))(&v32, v2, v3);
  v4 = *(&v33 + 1);
  if (!*(&v33 + 1))
  {
    sub_21D0CF7E0(&v32, &qword_27CE62630, &qword_21DC187E0);
    return 0;
  }

  v5 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  v6 = (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(&v32);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 80))(v7, v8);
  if (!v9 || (v10 = v9, v11 = [v9 objectID], v10, !v11))
  {

    return 0;
  }

  if (!(v6 >> 62))
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  v12 = sub_21DBFBD7C();
  if (!v12)
  {
LABEL_21:

    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v39 = MEMORY[0x277D84F90];
  result = sub_21D18EFC4(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v39;
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v15 = 0;
    v16 = v6;
    v30 = v6 & 0xC000000000000001;
    v17 = v12 - 1;
    v18 = v6;
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    for (i = MEMORY[0x223D44740](v15, v16); ; i = *(v16 + 8 * v15 + 32))
    {
      v20 = i;
      TTRParticipantModel.init(sharee:)(v20, v37);
      v21 = [v20 objectID];
      v22 = [v20 objectID];
      v23 = sub_21DBFB63C();

      v38[0] = v32;
      *(v38 + 3) = *(&v32 + 3);
      v39 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21D18EFC4((v24 > 1), v25 + 1, 1);
        v14 = v39;
      }

      v35 = v37[3];
      v36 = v37[4];
      v33 = v37[1];
      v34 = v37[2];
      v32 = v37[0];
      LODWORD(v31) = v38[0];
      *(&v31 + 3) = *(v38 + 3);
      *(v14 + 16) = v25 + 1;
      v26 = v14 + 112 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = 0;
      *(v26 + 48) = v32;
      v28 = v35;
      v27 = v36;
      v29 = v34;
      *(v26 + 64) = v33;
      *(v26 + 80) = v29;
      *(v26 + 96) = v28;
      *(v26 + 112) = v27;
      *(v26 + 128) = v23 & 1;
      *(v26 + 132) = *(&v31 + 3);
      *(v26 + 129) = v31;
      *(v26 + 136) = 0;
      if (v17 == v15)
      {
        break;
      }

      ++v15;
      v16 = v18;
      if (v30)
      {
        goto LABEL_8;
      }

LABEL_9:
      ;
    }

    return v14;
  }

  __break(1u);
  return result;
}

id sub_21D72DABC(id result, void *a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v4 = a2;
    }

    else
    {
      if (a3)
      {
        return result;
      }

      v4 = a2;
      v3 = result;
    }

    result = v4;
  }

  return result;
}

void sub_21D72DB24(void *a1, void *a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v3 = a2;
    }

    else
    {
      if (a3)
      {
        return;
      }

      v3 = a2;
    }

    a1 = v3;
  }
}

uint64_t sub_21D72DB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_21D72DDE8(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    sub_21DBF8E0C();
    v3 = v2;
  }

  return result;
}

uint64_t assignWithCopy for TTRRemindersListPresenterCapabilityCore.BatchAssignParams(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      v9 = a2[1];
      *(a1 + 8) = v9;
      sub_21DBF8E0C();
      v10 = v9;
      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  sub_21DBF8E0C();

  v6 = a2[1];
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  v8 = v6;

  return a1;
}

id *assignWithTake for TTRRemindersListPresenterCapabilityCore.BatchAssignParams(id *result, uint64_t a2)
{
  if (*result < 0xFFFFFFFF)
  {
    *result = *a2;
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      v3 = result;

      v4 = v3[1];
      v3[1] = *(a2 + 8);
    }

    return v3;
  }

  return result;
}

__n128 sub_21D72DF90(uint64_t a1, uint64_t *a2)
{
  if (*a2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v2 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v2;
    *(a1 + 16) = *(a2 + 16);
    sub_21DBF8E0C();
    v3 = v2;
  }

  return result;
}

uint64_t assignWithCopy for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      v9 = *(a2 + 1);
      *(a1 + 8) = v9;
      *(a1 + 16) = *(a2 + 16);
      sub_21DBF8E0C();
      v10 = v9;
      return a1;
    }

LABEL_7:
    v11 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v11;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  sub_21DBF8E0C();

  v6 = *(a2 + 1);
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  v8 = v6;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams(uint64_t result, uint64_t a2)
{
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      v3 = result;

      v4 = *(v3 + 8);
      *(v3 + 8) = *(a2 + 8);
    }

    *(v3 + 16) = *(a2 + 16);
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D72E208(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_46;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v18 = v3 + *(v17 + 20);
          if (*(v18 + 8))
          {

            sub_21D179EF0(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64));
            v19 = *(v18 + 120);
            if (v19 != 255)
            {
              sub_21D1078C0(*(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), v19 & 1);
            }
          }

          goto LABEL_46;
        }

LABEL_37:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 8))(v0 + v2, v16);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_30:

      goto LABEL_46;
    }

LABEL_16:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(v3 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v3 + v8, v20);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v14 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v14 - 8) + 48))(v0 + v2, 1, v14))
      {
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 8))(v0 + v2, v15);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }

    goto LABEL_46;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v2, 1, v11))
  {

    v12 = *(v11 + 20);
    v13 = sub_21DBF6C1C();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  v3 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v3 + 8))
  {

    goto LABEL_30;
  }

LABEL_46:

  return swift_deallocObject();
}

uint64_t sub_21D72E7D8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v1 + 136);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 8))(v3, v4, v5, ObjectType, v6);
  *v2 = result;
  return result;
}

id static CNAvatarViewControllerUtils.ttrDescriptorForRequiredKeys.getter()
{
  v0 = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];

  return v0;
}

uint64_t sub_21D72E900()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60930);
  v1 = __swift_project_value_buffer(v0, qword_27CE60930);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRGridViewPredefinedContentPopulator.SubviewUpdateResult.init(view:userInfo:horizontalAlignment:verticalAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = 0u;
  *(a5 + 8) = 0u;
  *a5 = a1;
  result = sub_21D45C42C(a2, a5 + 8);
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

void *TTRGridViewPredefinedContentPopulator.__allocating_init(gridView:)(void *a1)
{
  swift_allocObject();
  v2 = sub_21D731B28(a1);

  return v2;
}

void *TTRGridViewPredefinedContentPopulator.init(gridView:)(void *a1)
{
  v2 = sub_21D731B28(a1);

  return v2;
}

void TTRGridViewPredefinedContentPopulator.performUpdates(newGridSpecification:subviewUpdateHandler:)(uint64_t a1, void (*a2)(id *__return_ptr, uint64_t, __n128), uint64_t a3)
{
  v83 = a2;
  v84 = a3;
  v4 = *v3;
  v5 = *(*v3 + 80);
  v85 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = &v74 - v8;
  v75 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v14 = *v13;
  v15 = v3[5];
  v86 = v3;
  if (v15)
  {
    v16 = v3[4];
    sub_21DBF8E0C();
    if (v14)
    {
      v108 = v14;
      if (v16)
      {
        v81 = v12;
        v103 = v16;
        v17 = v4[11];
        v18 = v4[12];
        v19 = v4[13];
        swift_bridgeObjectRetain_n();
        LOBYTE(v17) = static TTRGridViewPredefinedContentPopulator.GridSpecification.== infix(_:_:)(&v108, &v103, v5, v17, v18, v19);

        if ((v17 & 1) == 0)
        {
          v77 = 0;
          v12 = v81;
          goto LABEL_11;
        }

        v12 = v81;
        v20 = v86[5];
        if (!v20)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (v16)
    {
      goto LABEL_10;
    }
  }

  else if (v14)
  {
LABEL_8:
    swift_bridgeObjectRetain_n();
LABEL_10:

    v77 = 0;
    goto LABEL_11;
  }

  sub_21DBF8E0C();
  v20 = v3[5];
  if (!v20)
  {
LABEL_6:
    v77 = 1;
LABEL_11:
    v103 = v14;
    v21 = v4[11];
    v22 = v4[12];
    v23 = v4[13];
    v108 = v5;
    v109 = v21;
    v110 = v22;
    v111 = v23;
    v24 = type metadata accessor for TTRGridViewPredefinedContentPopulator.GridSpecification(0, &v108);
    v20 = TTRGridViewPredefinedContentPopulator.GridSpecification.computeVisibleViewIDs()(v24);
    goto LABEL_14;
  }

LABEL_13:
  v21 = v4[11];
  v22 = v4[12];
  v23 = v4[13];
  sub_21DBF8E0C();
  v77 = 1;
LABEL_14:
  v94 = v21;
  v25 = sub_21D72F958(v5, MEMORY[0x277D839B0], v21);
  v116 = v25;
  sub_21DBF8E0C();
  swift_beginAccess();
  if (!sub_21DBFA6DC())
  {
LABEL_43:

    v67 = sub_21D72FC94(v25, v5, MEMORY[0x277D839B0], v94, v22, v23);
    v68 = v67;
    if (v77)
    {
      v108 = v67;
      v69 = sub_21DBFA74C();
      swift_getWitnessTable(MEMORY[0x277D83988], v69);
      v70 = sub_21DBFACFC();

      if (v70)
      {

        v71 = v86;
LABEL_48:
        v72 = v71[4];
        v73 = v71[5];
        v71[4] = v14;
        v71[5] = v20;
        sub_21D731D94(v72, v73);
        return;
      }
    }

    else
    {
    }

    v108 = v14;
    v71 = v86;
    sub_21D72FDB8(&v108, v68);

    goto LABEL_48;
  }

  v93 = v22;
  v76 = v14;
  v26 = 0;
  v90 = (v85 + 16);
  v91 = 0;
  v80 = (v85 + 32);
  v81 = v12;
  v78 = (v85 + 8);
  v79 = v20;
  v27 = v94;
  v28 = v92;
  v29 = v12;
  while (1)
  {
    v36 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v36)
    {
      v37 = *(v85 + 16);
      v37(v29, (v20 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v26), v5);
      v38 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v56 = sub_21DBFBF7C();
      if (v75 != 8)
      {
        __break(1u);
        return;
      }

      v108 = v56;
      v37 = *v90;
      (*v90)(v29, &v108, v5);
      swift_unknownObjectRelease();
      v38 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v87 = v38;
    v88 = v26;
    (*v80)(v28, v29, v5);
    v108 = v5;
    v109 = v27;
    v110 = v93;
    v111 = v23;
    type metadata accessor for TTRGridViewPredefinedContentPopulator.SubviewUpdateContext(0, &v108);
    v39 = v28;
    v40 = v82;
    v37(v82, v39, v5);
    v41 = sub_21D72FB6C(v40, v86[3]);
    sub_21DBF8E0C();
    v89 = v41;
    v42 = v91;
    (v83)(&v112, v41);
    v91 = v42;
    if (v42)
    {
      break;
    }

    swift_beginAccess();
    v43 = v23;
    sub_21D72FC24();
    swift_endAccess();
    sub_21D0D3954(&v108, &v103, qword_27CE60950, "a\n");
    if (v103)
    {
      v44 = v105;
      sub_21D731D4C(&v103);
    }

    else
    {
      sub_21D0CF7E0(&v103, qword_27CE60950, "a\n");
      v44 = 0;
    }

    v45 = qword_27CE56C58;
    v46 = v112;
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = qword_27CE60948;
    if (v44)
    {
      LOBYTE(v103) = 1;
      v48 = sub_21DBFC69C();
    }

    else
    {
      v48 = 0;
    }

    objc_setAssociatedObject(v46, v47, v48, 1);
    swift_unknownObjectRelease();
    sub_21D0D3954(&v113, &v104, &qword_27CE5C690, &unk_21DC11AB0);
    v50 = v114;
    v49 = v115;
    v103 = v46;
    v105 = v44;
    v106 = v114;
    v107 = v115;
    sub_21D731C10(&v103, &v96);
    swift_beginAccess();
    v95[0] = v5;
    v95[1] = &_s15RemindersUICore11SubviewInfoVN_0;
    v95[2] = v94;
    v95[3] = v93;
    v95[4] = v43;
    v51 = type metadata accessor for TTRGridViewPredefinedContentPopulator.LookupArray(0, v95);
    sub_21D731C48(&v96, v92, v51);
    swift_endAccess();
    sub_21D0D3954(&v108, &v96, qword_27CE60950, "a\n");
    if (v96)
    {
      v52 = v101;
      v53 = v102;
      sub_21D731D4C(&v96);
    }

    else
    {
      sub_21D0CF7E0(&v96, qword_27CE60950, "a\n");
      v52 = -1;
      v53 = -1;
    }

    v54 = v88;
    if (v50 == v52 && v49 == v53)
    {

      sub_21D731D4C(&v103);
      sub_21D0CF7E0(&v108, qword_27CE60950, "a\n");
      v96 = v5;
      v97 = v94;
      v98 = v93;
      v99 = v43;
      v23 = v43;
      updated = type metadata accessor for TTRGridViewPredefinedContentPopulator.SubviewUpdateResult(0, &v96);
      (*(*(updated - 8) + 8))(&v112, updated);
      v28 = v92;
      (*v78)(v92, v5);
    }

    else
    {
      LOBYTE(v95[0]) = 1;
      v96 = v5;
      v31 = v93;
      v30 = v94;
      v97 = MEMORY[0x277D839B0];
      v98 = v94;
      v99 = v93;
      v100 = v43;
      v23 = v43;
      v32 = type metadata accessor for TTRGridViewPredefinedContentPopulator.LookupArray(0, &v96);
      v28 = v92;
      sub_21D731C48(v95, v92, v32);

      sub_21D731D4C(&v103);
      sub_21D0CF7E0(&v108, qword_27CE60950, "a\n");
      v96 = v5;
      v97 = v30;
      v98 = v31;
      v99 = v43;
      v33 = type metadata accessor for TTRGridViewPredefinedContentPopulator.SubviewUpdateResult(0, &v96);
      (*(*(v33 - 8) + 8))(&v112, v33);
      (*v78)(v28, v5);
    }

    v34 = v87;
    v20 = v79;
    v35 = sub_21DBFA6DC();
    v26 = v54 + 1;
    v29 = v81;
    v27 = v94;
    if (v34 == v35)
    {
      v25 = v116;
      v14 = v76;
      v22 = v93;
      goto LABEL_43;
    }
  }

  swift_bridgeObjectRelease_n();
  (*v78)(v39, v5);

  if (qword_27CE56C50 == -1)
  {
    goto LABEL_40;
  }

LABEL_52:
  swift_once();
LABEL_40:
  v57 = sub_21DBF84BC();
  __swift_project_value_buffer(v57, qword_27CE60930);
  v58 = v91;
  v59 = v91;
  v60 = sub_21DBF84AC();
  v61 = sub_21DBFAEBC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v108 = v63;
    *v62 = 136315138;
    swift_getErrorValue();
    v64 = sub_21DBFC75C();
    v66 = sub_21D0CDFB4(v64, v65, &v108);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_21D0C9000, v60, v61, "TTRGridViewPredefinedContentPopulator: error during update {error: %s}", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x223D46520](v63, -1, -1);
    MEMORY[0x223D46520](v62, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRGridViewPredefinedContentPopulator.GridSpecification.computeVisibleViewIDs()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v22[0] = v4;
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v8 = *(v7 + 24);
  v24 = *(v7 + 32);
  v25 = *(&v24 + 1);
  v26 = v24;
  v31 = sub_21D72F958(v2, MEMORY[0x277D839B0], v8);
  sub_21DBF8E0C();
  *&v9 = v2;
  v10 = v8;
  *(&v9 + 1) = v8;
  v28 = v24;
  v27 = v9;
  v11 = type metadata accessor for TTRGridViewPredefinedContentPopulator.GridRow(0, &v27);
  if (sub_21DBFA6DC())
  {
    v12 = 0;
    v22[2] = v6;
    v23 = v6 + 32;
    v22[1] = v11;
    while (1)
    {
      v14 = sub_21DBFA6AC();
      result = sub_21DBFA61C();
      if ((v14 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_18;
      }

      *&v24 = v12 + 1;
      v16 = *(v23 + 24 * v12);
      sub_21DBF8E0C();
      if (sub_21DBFA6DC())
      {
        v17 = 0;
        do
        {
          v18 = sub_21DBFA6AC();
          sub_21DBFA61C();
          if (v18)
          {
            (*(v3 + 16))(v5, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_15;
            }
          }

          else
          {
            result = sub_21DBFBF7C();
            if (v22[0] != 8)
            {
              goto LABEL_19;
            }

            *&v27 = result;
            (*(v3 + 16))(v5, &v27, v2);
            swift_unknownObjectRelease();
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          v30 = 1;
          *&v27 = v2;
          *(&v27 + 1) = MEMORY[0x277D839B0];
          *&v28 = v10;
          *(&v28 + 1) = v26;
          v29 = v25;
          v20 = type metadata accessor for TTRGridViewPredefinedContentPopulator.LookupArray(0, &v27);
          sub_21D731C48(&v30, v5, v20);
          (*(v3 + 8))(v5, v2);
          ++v17;
        }

        while (v19 != sub_21DBFA6DC());
      }

      v13 = sub_21DBFA6DC();
      v12 = v24;
      if (v24 == v13)
      {
        goto LABEL_16;
      }
    }

    result = sub_21DBFBF7C();
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_16:

    v21 = sub_21D72FC94(v31, v2, MEMORY[0x277D839B0], v10, v26, v25);

    return v21;
  }

  return result;
}

uint64_t sub_21D72F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v16 - v6;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(*(a2 - 8) + 56))(&v16 - v11, 1, 1, a2, v10);
  sub_21DBFBEFC();
  swift_getAssociatedConformanceWitness();
  v13 = sub_21DBFAC8C();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v14 = sub_21D731A14(v12, v13, v8);
  (*(v9 + 8))(v12, v8);
  return v14;
}

uint64_t sub_21D72FB6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 112), a1);
  *(v4 + *(*v4 + 120)) = a2;
  return v4;
}

void *sub_21D72FC24()
{
  sub_21DBFA5BC();
  sub_21DBFBA8C();
  return sub_21DBFA78C();
}

uint64_t sub_21D72FC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_21DBFBEFC();
  swift_getAssociatedConformanceWitness();
  return sub_21DBFA52C();
}

uint64_t sub_21D72FDB8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D732404;
  *(v8 + 24) = v7;
  v11[4] = sub_21D0E6070;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D0E6204;
  v11[3] = &block_descriptor_85;
  v9 = _Block_copy(v11);

  sub_21DBF8E0C();
  sub_21DBF8E0C();

  [v6 performBatchUpdates_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id TTRGridViewPredefinedContentPopulator.existingView(for:)()
{
  swift_beginAccess();
  sub_21D72FC24();
  v0 = v3[0];
  if (v3[0])
  {
    v1 = v3[0];
  }

  sub_21D0CF7E0(v3, qword_27CE60950, "a\n");
  swift_endAccess();
  return v0;
}

id TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v6 = *v2;
  swift_beginAccess();
  v7 = v6[10];
  v8 = v6[11];
  v9 = v6[12];
  v10 = v6[13];
  sub_21D72FC24();
  v11 = swift_endAccess();
  if (*&v24[0])
  {
    *v27 = v24[0];
    *&v27[16] = v24[1];
    *&v27[32] = v25;
    v28 = v26;
    v12 = *&v24[0];
    if (BYTE8(v25))
    {
      v13 = *&v24[0];
      sub_21D731D4C(v27);
      return v13;
    }
  }

  else
  {
    v12 = a2(v11);
    memset(&v27[8], 0, 33);
    *v27 = v12;
    *&v28 = -1;
    *(&v28 + 1) = -1;
  }

  v15 = qword_27CE56C58;
  v16 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_27CE60948;
  LOBYTE(v24[0]) = 1;
  v18 = sub_21DBFC69C();
  objc_setAssociatedObject(v16, v17, v18, 1);
  swift_unknownObjectRelease();
  v27[40] = 1;
  v19 = [v16 superview];
  if (!v19 || (v20 = v3[2], v21 = v19, v19, v21 != v20))
  {
    [v16 setHidden_];
    [v3[2] addSubview_];
  }

  sub_21D731C10(v27, v24);
  swift_beginAccess();
  v23[0] = v7;
  v23[1] = &_s15RemindersUICore11SubviewInfoVN_0;
  v23[2] = v8;
  v23[3] = v9;
  v23[4] = v10;
  v22 = type metadata accessor for TTRGridViewPredefinedContentPopulator.LookupArray(0, v23);
  sub_21D731C48(v24, a1, v22);
  swift_endAccess();
  sub_21D731D4C(v27);
  return v16;
}

void sub_21D7302C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = [v5 arrangedSubviews];
  if (v6)
  {
    v7 = v6;
    sub_21D114EC8();
    v8 = sub_21DBFA5EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 numberOfRows];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v10 = v9;
  v27 = v8;
  if (v9)
  {
    v11 = v9;
    while (v10 >= v11)
    {
      [v5 removeRowAtIndex_];
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_9:
  v26 = a3;
  sub_21DBF8E0C();
  v12 = *(v4 + 96);
  v31 = *(v4 + 80);
  *v32 = v12;
  type metadata accessor for TTRGridViewPredefinedContentPopulator.GridRow(255, &v31);
  v13 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83980], v13);
  sub_21DBFAC2C();
  v28 = *(&v31 + 1);
  v29 = v31;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83970], v13);
  MEMORY[0x223D42CB0](&v31, v13, WitnessTable);

  sub_21DBFC38C();
  sub_21DBFC35C();
  sub_21DBFC37C();
  sub_21DBFC36C();
  v15 = *(&v31 + 1);
  if (*(&v31 + 1))
  {
    v16 = v31;
    v17 = v32[0];
    v18 = sub_21DBFA74C();
    v19 = sub_21D114EC8();
    while (1)
    {
      *&v31 = v15;
      sub_21DBF8E0C();
      v20 = swift_getWitnessTable(MEMORY[0x277D83988], v18);
      sub_21D0E5014(sub_21D732410, a1, v18, v19, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v21);

      v22 = [v5 numberOfRows];
      v23 = sub_21DBFA5DC();

      v24 = [v5 insertRowAtIndex:v22 withArrangedSubviews:v23];

      [v24 setAlignment_];

      if (__OFADD__(v16, 1))
      {
        break;
      }

      *&v31 = v29;
      *(&v31 + 1) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050, &qword_21DC10D10);
      if (sub_21DBFAD8C())
      {
        sub_21DBFA78C();
        [v24 setSpacingAfter_];
      }

      swift_unknownObjectRelease();
      sub_21DBFC36C();
      v15 = *(&v31 + 1);
      v16 = v31;
      v17 = v32[0];
      if (!*(&v31 + 1))
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_16:

  if (v27)
  {
    v25 = v27;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  sub_21D73083C(v25);

  sub_21D730CC0(v26);
}

void sub_21D7306C4(void *a2@<X8>)
{
  swift_beginAccess();
  sub_21D72FC24();
  if (v5[0])
  {
    v3 = v5[0];
    sub_21D0CF7E0(v5, qword_27CE60950, "a\n");
    swift_endAccess();
  }

  else
  {
    sub_21D0CF7E0(v5, qword_27CE60950, "a\n");
    swift_endAccess();
    v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  *a2 = v3;
}

void sub_21D73083C(uint64_t a1)
{
  *&v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
  sub_21D732430();
  sub_21D732494();
  v2 = sub_21DBFA42C();
  v3 = [*(v1 + 16) arrangedSubviews];
  if (v3)
  {
    v4 = v3;
    sub_21D114EC8();
    v5 = sub_21DBFA5EC();

    *&v24 = v5;
    v6 = sub_21DBFA42C();
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  if (*(v6 + 16) <= *(v2 + 16) >> 3)
  {
    *&v24 = v2;
    sub_21DBF8E0C();
    sub_21D9F8A0C(v6);
    v7 = v2;
  }

  else
  {
    sub_21DBF8E0C();
    v7 = sub_21D9FAEE8(v6, v2);
  }

  if (*(v2 + 16) <= *(v6 + 16) >> 3)
  {
    *&v24 = v6;
    sub_21D9F8A0C(v2);
  }

  else
  {
    v6 = sub_21D9FAEE8(v2, v6);
  }

  v8 = 0;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_20:
    v14 = qword_27CE56C58;
    v15 = *(*(v7 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v11)))));
    if (v14 != -1)
    {
      swift_once();
    }

    if (objc_getAssociatedObject(v15, qword_27CE60948))
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
      sub_21D0CF7E0(&v24, &qword_27CE5C690, &unk_21DC11AB0);
      [v15 setHidden_];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      sub_21D0CF7E0(&v24, &qword_27CE5C690, &unk_21DC11AB0);
      [v15 removeFromSuperview];
    }

    v11 &= v11 - 1;
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v7 + 56 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = 1 << *(v6 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v6 + 56);
  v20 = (v17 + 63) >> 6;
  if (v19)
  {
    goto LABEL_29;
  }

LABEL_30:
  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v6 + 56 + 8 * v21);
    ++v16;
    if (v19)
    {
      while (1)
      {
        v22 = qword_27CE56C58;
        v23 = *(*(v6 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
        if (v22 != -1)
        {
          swift_once();
        }

        v19 &= v19 - 1;
        if (objc_getAssociatedObject(v23, qword_27CE60948))
        {
          sub_21DBFBC1C();
          swift_unknownObjectRelease();
          sub_21D0CF7E0(&v24, &qword_27CE5C690, &unk_21DC11AB0);
          [v23 setHidden_];

          v16 = v21;
          if (!v19)
          {
            goto LABEL_30;
          }
        }

        else
        {

          v24 = 0u;
          v25 = 0u;
          sub_21D0CF7E0(&v24, &qword_27CE5C690, &unk_21DC11AB0);
          v16 = v21;
          if (!v19)
          {
            goto LABEL_30;
          }
        }

LABEL_29:
        v21 = v16;
      }
    }
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_21D730CC0(uint64_t a1)
{
  v17 = *v1;
  v3 = *(v17 + 80);
  v4 = *(v3 - 8);
  v14 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - v5;
  result = sub_21DBFA6DC();
  if (result)
  {
    v8 = 0;
    v16 = (v4 + 16);
    v15 = (v4 + 8);
    do
    {
      v9 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v9)
      {
        result = (*(v4 + 16))(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v14 != 8)
        {
          __break(1u);
          return result;
        }

        *&v19[0] = result;
        (*v16)(v6, v19, v3);
        result = swift_unknownObjectRelease();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_12:
          __break(1u);
          return result;
        }
      }

      swift_beginAccess();
      sub_21D72FC24();
      (*v15)(v6, v3);
      if (*&v18[0])
      {
        v19[0] = v18[0];
        v19[1] = v18[1];
        v19[2] = v18[2];
        v20 = v18[3];
        swift_endAccess();
        v11 = v1[2];
        v12 = *&v19[0];
        [v11 setAlignment:v20 forView:*&v19[0] inAxis:0];
        [v11 setAlignment:*(&v20 + 1) forView:v12 inAxis:1];
        sub_21D731D4C(v19);
      }

      else
      {
        sub_21D0CF7E0(v18, qword_27CE60950, "a\n");
        swift_endAccess();
      }

      result = sub_21DBFA6DC();
      ++v8;
    }

    while (v10 != result);
  }

  return result;
}

uint64_t TTRGridViewPredefinedContentPopulator.deinit()
{

  sub_21D731D94(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t TTRGridViewPredefinedContentPopulator.__deallocating_deinit()
{
  TTRGridViewPredefinedContentPopulator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

BOOL static TTRGridViewPredefinedContentPopulator.GridRow.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = sub_21DBFA75C();
  result = 0;
  if ((v9 & 1) != 0 && v5 == v7)
  {
    return v6 == v8;
  }

  return result;
}

uint64_t static TTRGridViewPredefinedContentPopulator.GridSpecification.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v6 = type metadata accessor for TTRGridViewPredefinedContentPopulator.GridRow(0, v8);
  swift_getWitnessTable(protocol conformance descriptor for TTRGridViewPredefinedContentPopulator<A>.GridRow, v6);
  return sub_21DBFA75C() & 1;
}

uint64_t TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D72FC24();
  if (v5[0])
  {
    v3 = v5[0];
    sub_21D731D4C(v5);
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_21D0CF7E0(v5, qword_27CE60950, "a\n");
  }

  return 0;
}

uint64_t TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedViewAndUserInfo<A, B>(ofTypes:for:)@<X0>(uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = sub_21DBFBA8C();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D72FC24();
  if (*&v24[0])
  {
    v25[0] = v24[0];
    v25[1] = v24[1];
    v25[2] = v24[2];
    v25[3] = v24[3];
    v12 = *&v24[0];
    v13 = swift_dynamicCastUnknownClass();
    if (v13)
    {
      v14 = v13;
      v22 = a3;
      sub_21D0D3954(v25 + 8, v24, &qword_27CE5C690, &unk_21DC11AB0);
      v15 = v12;
      sub_21D731D4C(v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
      if (swift_dynamicCast())
      {
        (*(v8 + 56))(v7, 0, 1, a2);
        v16 = *(v8 + 32);
        v16(v11, v7, a2);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v18 = *(TupleTypeMetadata2 + 48);
        v19 = v22;
        *v22 = v14;
        v16(v19 + v18, v11, a2);
        return (*(*(TupleTypeMetadata2 - 8) + 56))(v19, 0, 1, TupleTypeMetadata2);
      }

      (*(v8 + 56))(v7, 1, 1, a2);
      (*(v23 + 8))(v7, v5);
      a3 = v22;
    }

    else
    {
      sub_21D731D4C(v25);
    }
  }

  else
  {
    sub_21D0CF7E0(v24, qword_27CE60950, "a\n");
  }

  v21 = swift_getTupleTypeMetadata2();
  return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
}

uint64_t TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.__deallocating_deinit()
{
  TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.deinit();

  return swift_deallocClassInstance();
}

void *sub_21D731898()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27CE60948 = result;
  return result;
}

BOOL sub_21D7318C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  sub_21DBFA5BC();
  sub_21DBFA78C();
  v12 = (*(*(a4 - 8) + 48))(v11, 1, a4) != 1;
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_21D731A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DBFA68C();
  v14 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    sub_21DBFA74C();
    nullsub_1();
    return v14;
  }

  return result;
}

void *sub_21D731B28(void *a1)
{
  v3 = sub_21D72F958(*(*v1 + 80), &_s15RemindersUICore11SubviewInfoVN_0, *(*v1 + 88));
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = a1;
  v1[3] = v3;
  v4 = a1;
  [v4 setArrangedSubviewRemovalPolicy_];
  [v4 setArrangedSubviewAdditionPolicy_];
  return v1;
}

void sub_21D731C48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_21DBFA5BC();
  v5 = sub_21DBFBA8C();
  sub_21DBFA74C();
  sub_21DBFA67C();
  v6 = *v3;
  sub_21D345304(v7, v6, v5);
  (*(*(v5 - 8) + 40))(v6 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v7, a1, v5);
  nullsub_1();
}

double sub_21D731D94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21D731E94(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = *(a2 + 32);
  v7 = v4;
  if (v6)
  {
    *(a1 + 32) = v6;
    (**(v6 - 8))(v5, a2 + 8, v6);
  }

  else
  {
    v8 = *(a2 + 24);
    *v5 = *(a2 + 8);
    v5[1] = v8;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_21D731F2C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v7)
    {
      *(a1 + 32) = v7;
      (**(v7 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v9;
    goto LABEL_8;
  }

  v8 = (a1 + 8);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v8, (a2 + 8));
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_21D731FF0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((a1 + 8));
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *sub_21D732050(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

void *sub_21D7320A8(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t sub_21D7320F0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t *sub_21D7321A8(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t _s15RemindersUICore11SubviewInfoVwcp_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = *(a2 + 32);
  v7 = v4;
  if (v6)
  {
    *(a1 + 32) = v6;
    (**(v6 - 8))(v5, a2 + 8, v6);
  }

  else
  {
    v8 = *(a2 + 24);
    *v5 = *(a2 + 8);
    v5[1] = v8;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t _s15RemindersUICore11SubviewInfoVwca_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v7)
    {
      *(a1 + 32) = v7;
      (**(v7 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v9;
    goto LABEL_8;
  }

  v8 = (a1 + 8);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v8, (a2 + 8));
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t _s15RemindersUICore11SubviewInfoVwta_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((a1 + 8));
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

unint64_t sub_21D732430()
{
  result = qword_27CE60CD8;
  if (!qword_27CE60CD8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5F100, &qword_21DC18230);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27CE60CD8);
  }

  return result;
}