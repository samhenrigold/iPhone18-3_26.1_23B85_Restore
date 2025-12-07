uint64_t sub_22F308460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
  swift_beginAccess();
  v6 = *(a3 + v5);
  v9 = a1;
  v8[2] = &v9;

  LOBYTE(a1) = sub_22F1C39A8(sub_22F30F2D0, v8, v6);

  return a1 & 1;
}

unint64_t sub_22F3084FC(unint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = v3;
  v7 = sub_22F73F690();
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v64 - v10;
  v11 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v12 = [v11 childProgressReporterToCheckpoint_];
  v65 = v11;
  v13 = [v11 childProgressReporterToCheckpoint_];
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v72 = v14;
  while (1)
  {
    v66 = v13;
    v75 = OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets;
    v76 = v2;
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v70 = a1 & 0xFFFFFFFFFFFFFF8;
    v71 = a1 & 0xC000000000000001;
    v16 = 0.0;
    v17 = MEMORY[0x277D84F98];
    v68 = a1;
    v69 = v12;
    v67 = v14;
    while (1)
    {
      if (v71)
      {
        v13 = MEMORY[0x2319016F0](v15, a1);
      }

      else
      {
        if (v15 >= *(v70 + 16))
        {
          goto LABEL_53;
        }

        v13 = *(a1 + 8 * v15 + 32);
      }

      v18 = v13;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v80 = v17;
      v12 = [v13 numberOfAssetsInExtendedCuration];
      if (!v12)
      {
        v12 = [v18 numberOfAssets];
      }

      v19 = [v18 universalStartDate];
      a1 = v73;
      sub_22F73F640();

      v20 = [v18 universalEndDate];
      v21 = v74;
      sub_22F73F640();

      type metadata accessor for MomentRelevanceData(0);
      v22 = swift_allocObject();
      sub_22F309204(v12, a1, v21);
      if (isUniquelyReferenced_nonNull_native)
      {

        v43 = v80;
        goto LABEL_49;
      }

      v2 = v80;
      v77 = v15 + 1;
      if ((v80 & 0xC000000000000001) != 0)
      {
        if (v80 < 0)
        {
          v23 = v80;
        }

        else
        {
          v23 = v80 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v18;

        v13 = sub_22F741A00();
        if (__OFADD__(v13, 1))
        {
          goto LABEL_56;
        }

        v2 = sub_22F3F5FAC(v23, v13 + 1);
      }

      else
      {
        v25 = v18;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v2;
      v27 = sub_22F1234BC(v18);
      v28 = v2[2];
      v29 = (v26 & 1) == 0;
      v13 = (v28 + v29);
      if (__OFADD__(v28, v29))
      {
        goto LABEL_54;
      }

      a1 = v26;
      if (v2[3] >= v13)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = &v79;
          v13 = sub_22F137654();
        }
      }

      else
      {
        sub_22F12B228(v13, isUniquelyReferenced_nonNull_native);
        v2 = v79;
        v13 = sub_22F1234BC(v18);
        if ((a1 & 1) != (v30 & 1))
        {
          sub_22F120634(0, &qword_2810A90E0, off_27887B100);
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v27 = v13;
      }

      isUniquelyReferenced_nonNull_native = 0;
      v31 = v79;
      v78 = v79;
      if (a1)
      {
        v32 = *(v79 + 56);
        v2 = *(v32 + 8 * v27);
        *(v32 + 8 * v27) = v22;
      }

      else
      {
        *(v79 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v31[6] + 8 * v27) = v18;
        *(v31[7] + 8 * v27) = v22;
        v33 = v31[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_57;
        }

        v31[2] = v35;
      }

      v36 = *(v76 + v75);
      v34 = __OFADD__(v36, v12);
      v37 = &v12[v36];
      a1 = v68;
      if (v34)
      {
        goto LABEL_55;
      }

      v38 = *(v22 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_density);
      *(v76 + v75) = v37;
      v39 = v77;
      v2 = v69;
      v40 = v69;
      sub_22F741680();
      v16 = v16 + v38;

      ++v15;
      v41 = v78;
      v17 = v78;
      v42 = v39 == v67;
      v12 = v40;
      if (v42)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = v13;
    v72 = sub_22F741A00();
    v63 = sub_22F741A00();
    v13 = v62;
    v14 = v63;
  }

  v41 = MEMORY[0x277D84F98];
  v16 = 0.0;
LABEL_35:
  v43 = v41;
  sub_22F7416A0();
  if (isUniquelyReferenced_nonNull_native)
  {

LABEL_49:
  }

  else
  {

    if ((v43 & 0xC000000000000001) != 0)
    {
      sub_22F741A00();
    }

    v78 = v43;
    sub_22F2FBCA4(v43, &v79);
    sub_22F3D44B4(v44);
    if (v46)
    {
      v2 = v45;
      v48 = v47;
      a1 = &unk_2810AA000;
      while (1)
      {

        v49 = *(v76 + v75);
        if (v16 <= 0.0 || v49 < 1)
        {
          break;
        }

        v51 = *(v48 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_density) / v16;
        v52 = v48 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__densityRatio;
        *v52 = v51;
        *(v52 + 8) = 0;
        v53 = *(v48 + 16) / v49;
        v54 = v48 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__assetRatio;
        *v54 = v53;
        *(v54 + 8) = 0;
        v55 = v48 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore;
        *v55 = v51 * v53;
        *(v55 + 8) = 0;
        v13 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_58;
        }

        sub_22F741680();

        sub_22F3D44B4(v56);
        v2 = v57;
        v48 = v58;
        if (!v46)
        {
          goto LABEL_48;
        }
      }

      v43 = v78;

      sub_22F2FCEA4();
      swift_allocError();
      *v61 = 3;
      *(v61 + 8) = 0;
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      *(v61 + 32) = 3;
      swift_willThrow();

      sub_22F0FF590(v79);
    }

    else
    {
LABEL_48:
      sub_22F0FF590(v79);
      v59 = v66;
      sub_22F7416A0();

      return v78;
    }
  }

  return v43;
}

id sub_22F308C7C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_22F308E1C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_22F740DF0();

  return v5;
}

uint64_t sub_22F308E8C()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79A240);
  v2 = [*(v0 + OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode) description];
  v3 = sub_22F740E20();
  v5 = v4;

  MEMORY[0x231900B10](v3, v5);

  MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79A260);
  swift_beginAccess();
  v6 = sub_22F120634(0, &qword_2810A90E0, off_27887B100);

  v8 = MEMORY[0x231900D40](v7, v6);
  v10 = v9;

  MEMORY[0x231900B10](v8, v10);

  MEMORY[0x231900B10](0x72646C696863202CLL, 0xEC000000203A6E65);
  v11 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_children;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v13 = sub_22F741A00();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
LABEL_11:
    v20 = sub_22F120634(0, &qword_2810A9020, off_27887B138);
    v21 = MEMORY[0x231900D40](v14, v20);
    v23 = v22;

    MEMORY[0x231900B10](v21, v23);

    return 0;
  }

  v24 = MEMORY[0x277D84F90];

  result = sub_22F741BD0();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2319016F0](v16, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      v19 = *&v17[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];

      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
    }

    while (v13 != v16);

    v14 = v24;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

char *sub_22F309204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__densityRatio;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__assetRatio;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v4 + 16) = a1;
  v10 = OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_startDate;
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v4 + v10, a2, v11);
  v14 = OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_endDate;
  v13(v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_endDate, a3, v11);
  sub_22F73F590();
  if (v15 <= 900.0)
  {
    *(v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_deltaTimeInHours) = 0x3FF0000000000000;
    goto LABEL_5;
  }

  v16 = v15 / 3600.0;
  *(v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_deltaTimeInHours) = v16;
  if (v16 != 0.0)
  {
LABEL_5:
    v19 = *(v12 + 8);
    v19(a3, v11);
    v19(a2, v11);
    *(v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_density) = *(v4 + 16) / *(v4 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_deltaTimeInHours);
    return v4;
  }

  sub_22F2FCEA4();
  swift_allocError();
  *v17 = 3;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 3;
  swift_willThrow();
  v18 = *(v12 + 8);
  v18(a3, v11);
  v18(a2, v11);
  v18(v4 + v10, v11);
  v18(v4 + v14, v11);
  type metadata accessor for MomentRelevanceData(0);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_22F309484()
{
  if (*(v0 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8))
  {
    result = sub_22F741D40();
    __break(1u);
  }

  else
  {
    sub_22F7413B0();
    return 0;
  }

  return result;
}

uint64_t sub_22F309528()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_startDate;
  v2 = sub_22F73F690();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_endDate, v2);

  return swift_deallocClassInstance();
}

double sub_22F309618(uint64_t a1, uint64_t a2)
{
  if (sub_22F740E20() == a1 && v5 == a2)
  {

    goto LABEL_20;
  }

  v7 = sub_22F742040();

  if (v7)
  {
LABEL_20:
    result = 1.0;
    if ((*(v2 + 16) & 1) == 0)
    {
      return result;
    }

    v16 = 24;
    return *(v2 + v16);
  }

  if (sub_22F740E20() == a1 && v8 == a2)
  {

    goto LABEL_25;
  }

  v10 = sub_22F742040();

  if (v10)
  {
LABEL_25:
    result = 1.0;
    if ((*(v2 + 16) & 1) == 0)
    {
      return result;
    }

    v16 = 32;
    return *(v2 + v16);
  }

  if (sub_22F740E20() == a1 && v11 == a2)
  {

    goto LABEL_28;
  }

  v13 = sub_22F742040();

  if (v13)
  {
LABEL_28:
    result = 1.0;
    if ((*(v2 + 16) & 1) == 0)
    {
      return result;
    }

    v16 = 40;
    return *(v2 + v16);
  }

  if (sub_22F740E20() == a1 && v14 == a2)
  {
  }

  else
  {
    v17 = sub_22F742040();

    result = 1.0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  result = 1.0;
  if (*(v2 + 16) == 1)
  {
    v16 = 48;
    return *(v2 + v16);
  }

  return result;
}

uint64_t sub_22F3097CC()
{

  return swift_deallocClassInstance();
}

void sub_22F309804(void *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
    sub_22F11FA28(&qword_2810A8FD0, &qword_2810A8FE0, off_27887AD90);
    sub_22F741470();
    v3 = v54;
    v4 = v55;
    v5 = v56;
    v6 = v57;
    v7 = v58;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v40 = v4;
  v41 = v3;
  v39 = v11;
LABEL_8:
  if (v3 < 0)
  {
    if (!sub_22F741A40())
    {
      goto LABEL_44;
    }

    sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
    swift_dynamicCast();
    v16 = v53;
    v14 = v6;
    v15 = v7;
    if (!v53)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_46;
        }

        if (v14 >= v11)
        {
          break;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }

LABEL_44:
      sub_22F0FF590(v3);
      return;
    }

LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  v17 = [v16 addressNode];
  v18 = [a1 addressNodes];
  sub_22F120634(0, &qword_2810A90A8, off_27887AB90);
  sub_22F11FA28(&qword_2810A90A0, &qword_2810A90A8, off_27887AB90);
  v19 = sub_22F741420();

  v49 = [a3 cityNodeFromAddressNode_];
  v48 = [a3 stateNodeFromAddressNode_];
  v47 = [a3 countryNodeFromAddressNode_];
  v45 = v15;
  v46 = v14;
  v43 = v17;
  v44 = v16;
  if ((v19 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    sub_22F741470();
    v19 = v59;
    v20 = v60;
    v21 = v61;
    v22 = v62;
    v23 = v63;
  }

  else
  {
    v22 = 0;
    v24 = -1 << *(v19 + 32);
    v20 = v19 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v19 + 56);
  }

  v27 = (v21 + 64) >> 6;
  v50 = v19;
  while (1)
  {
    v28 = v23;
    if ((v19 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_22F741A40() || (swift_dynamicCast(), v31 = v53, v30 = v28, !v53))
    {
LABEL_41:
      sub_22F0FF590(v19);

      v7 = v45;
      v6 = v46;
      v4 = v40;
      v3 = v41;
      v11 = v39;
      goto LABEL_8;
    }

LABEL_34:
    v52 = v30;
    v32 = [a3 cityNodeFromAddressNode_];
    v33 = [v32 firstNode];

    v34 = [a3 stateNodeFromAddressNode_];
    v35 = [v34 firstNode];

    v36 = [a3 countryNodeFromAddressNode_];
    v37 = [v36 firstNode];

    if (v33 && [v49 containsNode_] || v35 && objc_msgSend(v48, sel_containsNode_, v35))
    {
      sub_22F0FF590(v50);

      goto LABEL_43;
    }

    if (v37)
    {
      v38 = [v47 containsNode_];

      v19 = v50;
      v23 = v52;
      if (v38)
      {
        sub_22F0FF590(v50);

LABEL_43:
        v4 = v40;
        v3 = v41;
        v11 = v39;
        v7 = v45;
        v6 = v46;
        goto LABEL_8;
      }
    }

    else
    {

      v19 = v50;
      v23 = v52;
    }
  }

  v29 = v22;
  if (v23)
  {
LABEL_30:
    v30 = (v23 - 1) & v23;
    v31 = *(*(v19 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v31)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      goto LABEL_41;
    }

    v23 = *(v20 + 8 * v22);
    ++v29;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

double sub_22F309EDC(uint64_t a1, uint64_t a2)
{
  if (sub_22F740E20() == a1 && v5 == a2)
  {

    goto LABEL_20;
  }

  v7 = sub_22F742040();

  if (v7)
  {
LABEL_20:
    if ((*(v2 + 144) & 1) == 0)
    {
      return 0.85;
    }

    v15 = 24;
    return *(v2 + v15);
  }

  if (sub_22F740E20() == a1 && v8 == a2)
  {

LABEL_27:
    if (*(v2 + 144))
    {
      v15 = 32;
    }

    else
    {
      result = 2.0;
      if (*(v2 + 145))
      {
        return result;
      }

      v15 = 88;
    }

    return *(v2 + v15);
  }

  v10 = sub_22F742040();

  if (v10)
  {
    goto LABEL_27;
  }

  if (sub_22F740E20() == a1 && v11 == a2)
  {

LABEL_32:
    if (*(v2 + 144))
    {
      v15 = 40;
    }

    else
    {
      v15 = 96;
      if (*(v2 + 145))
      {
        v15 = 128;
      }
    }

    return *(v2 + v15);
  }

  v13 = sub_22F742040();

  if (v13)
  {
    goto LABEL_32;
  }

  if (sub_22F740E20() == a1 && v14 == a2)
  {

LABEL_38:
    if (*(v2 + 144) == 1)
    {
      v15 = 48;
      return *(v2 + v15);
    }

    return 1.2;
  }

  v18 = sub_22F742040();

  result = 1.0;
  if (v18)
  {
    goto LABEL_38;
  }

  return result;
}

double sub_22F30A0C8()
{
  if (*(v0 + 144) == 1)
  {
    return *(v0 + 24);
  }

  else
  {
    return 0.85;
  }
}

uint64_t sub_22F30A128()
{

  return swift_deallocClassInstance();
}

void sub_22F30A160(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F73F690();
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22F73F690() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F30A51C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F30A28C(0, v2, 1, a1);
  }
}

void sub_22F30A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F73F690();
  MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v30 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      sub_22F173D18();
      v25 = sub_22F740DB0();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F30A51C(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v126 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v119 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v119 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v140 = &v119 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = a4;
    }

    else
    {
LABEL_128:
      v113 = sub_22F3F5F98(a4);
    }

    v142 = v113;
    v114 = *(v113 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *&v113[16 * v114];
        v116 = v113;
        v117 = *&v113[16 * v114 + 24];
        sub_22F30AF0C(*a3 + *(v10 + 72) * v115, *a3 + *(v10 + 72) * *&v113[16 * v114 + 16], *a3 + *(v10 + 72) * v117, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_22F3F5F98(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_22F3F5F0C(a4);
        v113 = v142;
        v114 = *(v142 + 2);
        if (v114 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v137 = (v10 + 8);
  v138 = v10 + 16;
  v136 = (v10 + 32);
  v21 = MEMORY[0x277D84F90];
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v22 = v20;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v132 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v128 = v24;
      v27 = *(v25 + 16);
      v27(v140, v5, v23, v17);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v123 = v22;
      v30 = v139;
      v131 = v27;
      (v27)(v139, v28, v23);
      v31 = sub_22F173D18();
      v32 = v140;
      v130 = v31;
      LODWORD(v133) = sub_22F740DB0();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v129 = v33;
      v33(v32, v23);
      v34 = v123 + 2;
      v135 = v26;
      v35 = v128 + v26 * (v123 + 2);
      while (1)
      {
        v36 = v132;
        if (v132 == v34)
        {
          break;
        }

        v38 = v140;
        v37 = v141;
        v39 = v131;
        (v131)(v140, v35, v141);
        v40 = v6;
        v41 = v139;
        v39(v139, v5, v37);
        v42 = sub_22F740DB0() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v129;
        v129(v43, v37);
        v44(v38, v37);
        ++v34;
        v35 += v135;
        v5 += v135;
        if ((v133 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v123;
      a3 = v124;
      v10 = v120;
      v21 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v36 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v36)
        {
          v45 = v135 * (v36 - 1);
          v5 = v36 * v135;
          v132 = v36;
          v46 = v36;
          v47 = v123;
          v48 = v123 * v135;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, &v50[v48], v141, v21);
              if (v48 < v45 || &v50[v48] >= &v50[v5])
              {
                v49 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v141;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v50[v45], v126, v49);
              a3 = v124;
              v21 = v127;
            }

            ++v47;
            v45 -= v135;
            v5 -= v135;
            v48 += v135;
          }

          while (v47 < v46);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v22 = v123;
          v36 = v132;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v127;
    }

    else
    {
      v21 = sub_22F13D970(0, *(v127 + 2) + 1, 1, v127);
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      v21 = sub_22F13D970((v52 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_22F30AF0C(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_22F3F5F98(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v142 = v93;
        sub_22F3F5F0C(v5);
        v21 = v142;
        v53 = *(v142 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v135 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = v100 - v36;
  v133 = v97;
  v125 = v98;
  a4 = v97 + v36 * v98;
  v128 = v5;
LABEL_85:
  v131 = v99;
  v132 = v36;
  v129 = a4;
  v130 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v140;
    v105 = v135;
    (v135)(v140, a4, v9, v21);
    v106 = v139;
    v105(v139, v103, v141);
    sub_22F173D18();
    v107 = sub_22F740DB0();
    v108 = *v137;
    v109 = v106;
    v9 = v141;
    (*v137)(v109, v141);
    v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v132 + 1;
      v99 = &v131[v125];
      v102 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v22 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v110 = *v136;
    v111 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22F30AF0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = sub_22F73F690();
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v54 = a3;
  v15 = (a2 - a1) / v13;
  v58 = a1;
  v57 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v17;
    if (v17 >= 1)
    {
      v28 = -v13;
      v47 = (v8 + 8);
      v48 = (v8 + 16);
      v29 = a4 + v17;
      v30 = v54;
      v45 = a1;
      v46 = a4;
      v49 = v28;
      do
      {
        v43 = v27;
        v31 = a2 + v28;
        v32 = v27;
        v50 = a2;
        v51 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v58 = a2;
            v27 = v43;
            goto LABEL_59;
          }

          v34 = v30;
          v44 = v32;
          v54 = v30 + v28;
          v35 = v29 + v28;
          v36 = *v48;
          v37 = v52;
          v38 = v29 + v28;
          v39 = v29;
          v40 = v55;
          (*v48)(v52, v38, v55);
          v41 = v53;
          (v36)(v53, v31, v40);
          sub_22F173D18();
          LOBYTE(v36) = sub_22F740DB0();
          v42 = *v47;
          (*v47)(v41, v40);
          v42(v37, v40);
          if (v36)
          {
            break;
          }

          v32 = v35;
          v30 = v54;
          if (v34 < v39 || v54 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
            a1 = v45;
          }

          else
          {
            v31 = v51;
            a1 = v45;
            if (v34 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v33 = v35 > v46;
          v28 = v49;
          a2 = v50;
          if (!v33)
          {
            v27 = v32;
            goto LABEL_58;
          }
        }

        v30 = v54;
        if (v34 < v50 || v54 >= v50)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v45;
          v29 = v39;
        }

        else
        {
          a2 = v51;
          a1 = v45;
          v29 = v39;
          if (v34 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v44;
        v28 = v49;
      }

      while (v29 > v46);
    }

LABEL_58:
    v58 = a2;
LABEL_59:
    v56 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v16;
    v56 = a4 + v16;
    if (v16 >= 1 && a2 < v54)
    {
      v49 = *(v8 + 16);
      v50 = v8 + 16;
      v47 = v13;
      v48 = (v8 + 8);
      do
      {
        v19 = v52;
        v20 = v55;
        v21 = v49;
        v49(v52, a2, v55);
        v22 = v53;
        v21(v53, a4, v20);
        sub_22F173D18();
        v23 = sub_22F740DB0();
        v24 = *v48;
        (*v48)(v22, v20);
        v24(v19, v20);
        if (v23)
        {
          v25 = v47;
          if (a1 < a2 || a1 >= v47 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v47;
          v26 = v47 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = v26;
          a4 += v25;
        }

        a1 += v25;
        v58 = a1;
      }

      while (a4 < v51 && a2 < v54);
    }
  }

  sub_22F3B662C(&v58, &v57, &v56);
}

uint64_t sub_22F30B49C(void **a1, void **a2, void **a3, void **a4, void *a5)
{
  v68 = swift_allocObject();
  *(v68 + 16) = a5;
  v9 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v9 = a2 - a1;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v10 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      memmove(a4, a2, 8 * v12);
    }

    v73 = a5;
    v13 = &a4[v12];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      goto LABEL_90;
    }

    v71 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v83 = a4;
LABEL_52:
    v79 = a2;
    v40 = a2 - 1;
    --a3;
    v41 = v13;
    v75 = v40;
    while (1)
    {
      v43 = *--v41;
      v42 = v43;
      v44 = *v40;
      v45 = *&v43[OBJC_IVAR___PGTripLocationScore__score];
      v46 = *(*v40 + OBJC_IVAR___PGTripLocationScore__score);
      if (v45 == v46)
      {
        v81 = v13;
        v47 = objc_opt_self();
        v48 = *&v42[OBJC_IVAR___PGTripLocationScore_locationNode];
        v49 = *&v73[v71];
        v77 = v42;
        v50 = v44;
        v51 = [v47 beautifiedLocationNodeStringWithPlaceNode:v48 locationHelper:v49];
        if (v51)
        {
          v52 = v51;
          v53 = sub_22F740E20();
          v55 = v54;
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        v56 = [v47 beautifiedLocationNodeStringWithPlaceNode:*&v50[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v49, v68}];
        if (v56)
        {
          v57 = v56;
          v58 = sub_22F740E20();
          v60 = v59;

          if (v55)
          {
            if (!v60)
            {
              a4 = v83;
              v13 = v81;
              v65 = v77;
LABEL_82:

              v40 = v75;
LABEL_83:
              if (a3 + 1 != v79)
              {
                *a3 = *v40;
              }

              if (v13 <= a4 || (a2 = v40, v40 <= a1))
              {
                a2 = v40;
                goto LABEL_90;
              }

              goto LABEL_52;
            }

            v70 = v50;
            v61 = sub_22F740F10();
            v62 = sub_22F740F10();
            if (v61 == v62)
            {
              if (v53 == v58 && v55 == v60)
              {

                a4 = v83;
                v13 = v81;
                v40 = v75;
              }

              else
              {
                v64 = sub_22F742040();

                a4 = v83;
                v13 = v81;
                v40 = v75;
                if (v64)
                {
                  goto LABEL_83;
                }
              }
            }

            else
            {
              v66 = v62;

              v39 = v61 < v66;
              a4 = v83;
              v13 = v81;
              v40 = v75;
              if (v39)
              {
                goto LABEL_83;
              }
            }

            goto LABEL_79;
          }

          a4 = v83;
          v13 = v81;
          v65 = v77;
        }

        else
        {
          a4 = v83;
          v13 = v81;
          v65 = v77;
          if (v55)
          {
            goto LABEL_82;
          }

          v60 = 0;
        }

        v40 = v75;
        if (!v60)
        {
          goto LABEL_83;
        }
      }

      else if (v46 < v45)
      {
        goto LABEL_83;
      }

LABEL_79:
      if (a3 + 1 != v13)
      {
        *a3 = *v41;
      }

      --a3;
      v13 = v41;
      if (v41 <= a4)
      {
        v13 = v41;
        a2 = v79;
        goto LABEL_90;
      }
    }
  }

  if (a4 != a1 || &a1[v10] <= a4)
  {
    memmove(a4, a1, 8 * v10);
  }

  v76 = a5;
  v13 = &a4[v10];
  if (a2 - a1 >= 8 && a2 < a3)
  {
    v74 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v80 = v13;
    while (1)
    {
      v14 = *a2;
      v15 = *a4;
      v16 = *(*a2 + OBJC_IVAR___PGTripLocationScore__score);
      v17 = *(*a4 + OBJC_IVAR___PGTripLocationScore__score);
      if (v16 != v17)
      {
        if (v17 < v16)
        {
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      v78 = a2;
      v82 = a4;
      v18 = objc_opt_self();
      v19 = *&v14[OBJC_IVAR___PGTripLocationScore_locationNode];
      v20 = *&v76[v74];
      v21 = v14;
      v22 = v15;
      v23 = [v18 beautifiedLocationNodeStringWithPlaceNode:v19 locationHelper:v20];
      if (v23)
      {
        v24 = v23;
        v25 = sub_22F740E20();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = [v18 beautifiedLocationNodeStringWithPlaceNode:*&v22[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v20, v68}];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = sub_22F740E20();
      v32 = v31;

      if (!v27)
      {
        a4 = v82;
        v13 = v80;
        goto LABEL_31;
      }

      if (!v32)
      {
        a4 = v82;
        v13 = v80;
LABEL_34:

        a2 = v78;
LABEL_35:
        v37 = a2;
        v35 = a1 == a2++;
        if (v35)
        {
          goto LABEL_37;
        }

LABEL_36:
        *a1 = *v37;
        goto LABEL_37;
      }

      v72 = v21;
      v33 = sub_22F740F10();
      v34 = sub_22F740F10();
      if (v33 == v34)
      {
        v35 = v25 == v30 && v27 == v32;
        if (v35)
        {

          a4 = v82;
          a2 = v78;
          v13 = v80;
        }

        else
        {
          v36 = sub_22F742040();

          a4 = v82;
          a2 = v78;
          v13 = v80;
          if (v36)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v38 = v34;

        v39 = v33 < v38;
        a4 = v82;
        a2 = v78;
        v13 = v80;
        if (v39)
        {
          goto LABEL_35;
        }
      }

LABEL_43:
      v37 = a4;
      v35 = a1 == a4++;
      if (!v35)
      {
        goto LABEL_36;
      }

LABEL_37:
      ++a1;
      if (a4 >= v13 || a2 >= a3)
      {
        goto LABEL_88;
      }
    }

    a4 = v82;
    v13 = v80;
    if (v27)
    {
      goto LABEL_34;
    }

    v32 = 0;
LABEL_31:

    a2 = v78;
    if (!v32)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

LABEL_88:
  a2 = a1;
LABEL_90:
  if (a2 != a4 || a2 >= (a4 + ((v13 - a4 + (v13 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v13 - a4));
  }

  return 1;
}

void sub_22F30BB8C(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_22F30BF7C(v7, v4, v2);
      MEMORY[0x2319033A0](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_22F30BCEC(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_22F30BCEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v27 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = [v14 label];
    if (!v15)
    {
      sub_22F740E20();
      goto LABEL_21;
    }

    v16 = v15;
    v17 = sub_22F740E20();
    v19 = v18;

    v20 = sub_22F740E20();
    if (v19)
    {
      if (v17 == v20 && v19 == v21)
      {

        v3 = a3;
LABEL_23:
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:
          sub_22F1B1C9C(a1, a2, v27, v3);
          return;
        }
      }

      else
      {
        v23 = sub_22F742040();

        v3 = a3;
        if (v23)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v3 = a3;
LABEL_21:
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_26;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22F30BEEC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22F30BFF4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22F30BF7C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_22F30BCEC(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t *sub_22F30BFF4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);

    v16 = a4(v15, v14);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_22F1B1A80(v19, a2, v20, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22F1B1A80(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22F30C15C(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22F30BFF4(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_22F30BEEC(v10, v6, v4, a2);
  result = MEMORY[0x2319033A0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_22F30C2DC(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v23 = MEMORY[0x277D84F98];
    v4 = sub_22F741CA0();
    v5 = sub_22F741D10();
    if (v5)
    {
      v6 = v5;
      sub_22F120634(0, &qword_2810A90E0, off_27887B100);
      v7 = v6;
      do
      {
        v21 = v7;
        swift_dynamicCast();
        type metadata accessor for MomentRelevanceData(0);
        swift_dynamicCast();
        if (!v22)
        {
          break;
        }

        v8 = v22;

        v9 = a2(v8, v21);

        if (v9)
        {
          v10 = v3[2];
          if (v3[3] <= v10)
          {
            sub_22F12B228(v10 + 1, 1);
          }

          v3 = v23;
          result = sub_22F741800();
          v12 = v23 + 64;
          v13 = -1 << *(v23 + 32);
          v14 = result & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v23 + 64 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v23 + 48) + 8 * v16) = v8;
          *(*(v23 + 56) + 8 * v16) = v21;
          ++*(v23 + 16);
        }

        else
        {
        }

        v7 = sub_22F741D10();
      }

      while (v7);
    }

    sub_22F0FF590(v4 | 0x8000000000000000);
  }

  else
  {
    v3 = sub_22F30C15C(a1, a2);
  }

  return v3;
}

uint64_t sub_22F30C574(double *__src, double *__dst, double *a3, double *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 4;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 4;
  if (v11 >= v13 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v14] <= a4)
    {
      memmove(a4, __dst, 16 * v14);
    }

    v15 = &v5[2 * v14];
    if (v12 < 16 || v7 <= v8)
    {
      goto LABEL_81;
    }

    v69 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v76 = v5;
LABEL_46:
    v67 = v7 - 2;
    v6 -= 2;
    v40 = v15;
    v78 = v7;
    while (1)
    {
      v42 = *(v40 - 16);
      v40 -= 16;
      v41 = v42;
      v43 = *(v40 + 8);
      v44 = *(v7 - 1);
      if (v43 == v44)
      {
        v74 = v15;
        v45 = *(v7 - 2);
        v46 = objc_opt_self();
        v47 = *(a5 + v69);
        v48 = v41;
        v49 = v45;
        v71 = v48;
        v50 = [v46 beautifiedLocationNodeStringWithPlaceNode:v48 locationHelper:v47];
        if (v50)
        {
          v51 = v50;
          v52 = sub_22F740E20();
          v54 = v53;
        }

        else
        {
          v52 = 0;
          v54 = 0;
        }

        v55 = [v46 beautifiedLocationNodeStringWithPlaceNode:v49 locationHelper:{v47, v67}];
        if (v55)
        {
          v56 = v55;
          v57 = sub_22F740E20();
          v59 = v58;

          if (v54)
          {
            if (!v59)
            {
              v62 = v71;
LABEL_73:

              v15 = v74;
              v5 = v76;
              v7 = v78;
LABEL_74:
              if (v6 + 2 != v7)
              {
                *v6 = *v67;
              }

              if (v15 <= v5 || (v7 = v67, v67 <= v8))
              {
                v7 = v67;
                goto LABEL_81;
              }

              goto LABEL_46;
            }

            v68 = v49;
            v60 = sub_22F740F10();
            v61 = sub_22F740F10();
            if (v60 == v61)
            {
              if (v52 == v57 && v54 == v59)
              {

                v15 = v74;
                v5 = v76;
                v7 = v78;
              }

              else
              {
                v65 = sub_22F742040();

                v15 = v74;
                v5 = v76;
                v7 = v78;
                if (v65)
                {
                  goto LABEL_74;
                }
              }
            }

            else
            {
              v63 = v61;

              v64 = v60 < v63;
              v15 = v74;
              v5 = v76;
              v7 = v78;
              if (v64)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_70;
          }

          v62 = v71;
        }

        else
        {
          v62 = v71;
          if (v54)
          {
            goto LABEL_73;
          }

          v59 = 0;
        }

        v15 = v74;
        v5 = v76;
        v7 = v78;
        if (!v59)
        {
          goto LABEL_74;
        }
      }

      else if (v44 < v43)
      {
        goto LABEL_74;
      }

LABEL_70:
      if (v6 + 2 != v15)
      {
        *v6 = *v40;
      }

      v6 -= 2;
      v15 = v40;
      if (v40 <= v5)
      {
        v15 = v40;
        goto LABEL_81;
      }
    }
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 16 * v11);
  }

  v15 = &v5[2 * v11];
  if (v9 >= 16 && v7 < v6)
  {
    v70 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v73 = &v5[2 * v11];
    while (1)
    {
      v16 = v7[1];
      v17 = v5[1];
      if (v16 != v17)
      {
        if (v17 < v16)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      v77 = v7;
      v18 = *v7;
      v75 = v5;
      v19 = *v5;
      v20 = objc_opt_self();
      v21 = *(a5 + v70);
      v22 = v18;
      v23 = v19;
      v24 = [v20 beautifiedLocationNodeStringWithPlaceNode:v22 locationHelper:v21];
      if (v24)
      {
        v25 = v24;
        v26 = sub_22F740E20();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v20 beautifiedLocationNodeStringWithPlaceNode:v23 locationHelper:v21];
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = sub_22F740E20();
      v33 = v32;

      if (!v28)
      {
        goto LABEL_28;
      }

      if (!v33)
      {
        goto LABEL_26;
      }

      v34 = sub_22F740F10();
      v35 = sub_22F740F10();
      if (v34 == v35)
      {
        if (v26 == v31 && v28 == v33)
        {

          v15 = v73;
          v5 = v75;
          v7 = v77;
        }

        else
        {
          v39 = sub_22F742040();

          v15 = v73;
          v5 = v75;
          v7 = v77;
          if (v39)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v38 = v35;

        v15 = v73;
        v5 = v75;
        v7 = v77;
        if (v34 < v38)
        {
          goto LABEL_33;
        }
      }

LABEL_29:
      v36 = v5;
      v37 = v8 == v5;
      v5 += 2;
      if (!v37)
      {
        goto LABEL_34;
      }

LABEL_35:
      v8 += 2;
      if (v5 >= v15 || v7 >= v6)
      {
        goto LABEL_79;
      }
    }

    if (v28)
    {
LABEL_26:

      v15 = v73;
      v5 = v75;
      v7 = v77;
LABEL_33:
      v36 = v7;
      v37 = v8 == v7;
      v7 += 2;
      if (v37)
      {
        goto LABEL_35;
      }

LABEL_34:
      *v8 = *v36;
      goto LABEL_35;
    }

    v33 = 0;
LABEL_28:

    v15 = v73;
    v5 = v75;
    v7 = v77;
    if (!v33)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_79:
  v7 = v8;
LABEL_81:
  if (v7 != v5 || v7 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v7, v5, 16 * ((v15 - v5) / 16));
  }

  return 1;
}

void sub_22F30CB90(char **a1, double *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_22F3F5F98(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 16 * *v10);
      __dst = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_22F30C574(__src, __dst, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_22F30CD30(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v7 = a3[1];
  v163 = MEMORY[0x277D84F90];
  if (v7 >= 1)
  {
    v152 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v144 = a5;
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8++;
      v145 = v9;
      if (v8 >= v7)
      {
        goto LABEL_43;
      }

      v11 = *a3;
      v12 = *a3 + 16 * v8;
      v13 = *(v12 + 8);
      v162[0] = *v12;
      v162[1] = v13;
      v14 = (v11 + 16 * v10);
      v15 = v10;
      v17 = v14[1];
      v161[0] = *v14;
      v16 = v161[0];
      v161[1] = v17;
      v18 = v162[0];
      v19 = *&v16;
      v20 = v6;
      v158 = sub_22F2FF4B4(v162, v161, v144);
      if (v6)
      {

LABEL_138:
        goto LABEL_139;
      }

      v8 = v15 + 2;
      v10 = v15;
      if (v15 + 2 >= v7)
      {
        goto LABEL_34;
      }

      v136 = v15;
      v21 = v14 + 3;
      v156 = v7;
      while (1)
      {
        v149 = v8;
        v24 = v21[2];
        if (v24 != *v21)
        {
          v22 = *v21 < v24;
          goto LABEL_10;
        }

        v25 = *(v21 + 1);
        v26 = *(v21 - 1);
        v27 = objc_opt_self();
        v28 = *&a5[v152];
        v29 = v25;
        v30 = v26;
        v31 = [v27 beautifiedLocationNodeStringWithPlaceNode:v29 locationHelper:v28];
        if (v31)
        {
          v32 = v31;
          v33 = sub_22F740E20();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        v36 = [v27 beautifiedLocationNodeStringWithPlaceNode:v30 locationHelper:{v28, v136}];
        if (!v36)
        {
          if (v35)
          {
LABEL_25:
            v8 = v149;
            v7 = v156;

            v9 = v145;
            if (!v158)
            {
              v10 = v136;
              goto LABEL_43;
            }

            goto LABEL_11;
          }

          v40 = 0;
LABEL_28:
          v7 = v156;

          v22 = v40 == 0;

          v9 = v145;
          goto LABEL_10;
        }

        v37 = v36;
        v38 = sub_22F740E20();
        v40 = v39;

        if (!v35)
        {
          goto LABEL_28;
        }

        if (!v40)
        {
          goto LABEL_25;
        }

        v41 = sub_22F740F10();
        v42 = sub_22F740F10();
        if (v41 != v42)
        {
          v43 = v42;

          v22 = v41 < v43;
          goto LABEL_31;
        }

        if (v33 != v38 || v35 != v40)
        {
          v22 = sub_22F742040();

LABEL_31:
          v6 = v20;
          v9 = v145;
          v7 = v156;
LABEL_10:
          v23 = v158 ^ v22;
          v8 = v149;
          if (v23)
          {
            goto LABEL_33;
          }

          goto LABEL_11;
        }

        v6 = v20;
        v9 = v145;
        v8 = v149;
        v7 = v156;
        if (v158)
        {
          break;
        }

LABEL_11:
        ++v8;
        v21 += 2;
        if (v7 == v8)
        {
          v8 = v7;
LABEL_33:
          v10 = v136;
LABEL_34:
          if (!v158)
          {
            goto LABEL_43;
          }

          if (v8 >= v10)
          {
            goto LABEL_36;
          }

LABEL_161:
          __break(1u);
LABEL_162:

          __break(1u);
LABEL_163:

          __break(1u);
LABEL_164:

          __break(1u);
LABEL_165:

          __break(1u);
          goto LABEL_166;
        }
      }

      v10 = v136;
      if (v149 < v136)
      {
        goto LABEL_161;
      }

LABEL_36:
      if (v10 < v8)
      {
        v44 = 0;
        v45 = 16 * v8;
        v46 = 16 * v10;
        v47 = v10;
        do
        {
          if (v47 != v8 + v44 - 1)
          {
            v52 = *a3;
            if (!*a3)
            {
              goto LABEL_164;
            }

            v48 = (v52 + v46);
            v49 = v52 + v45;
            v50 = *v48;
            v51 = v48[1];
            *v48 = *(v49 - 16);
            *(v49 - 16) = v50;
            *(v49 - 8) = v51;
          }

          ++v47;
          --v44;
          v45 -= 16;
          v46 += 16;
        }

        while (v47 < v8 + v44);
      }

LABEL_43:
      v53 = a3[1];
      if (v8 >= v53)
      {
        goto LABEL_81;
      }

      if (__OFSUB__(v8, v10))
      {
        goto LABEL_158;
      }

      if (v8 - v10 >= a4)
      {
        goto LABEL_81;
      }

      v54 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_159;
      }

      if (v54 >= v53)
      {
        v54 = a3[1];
      }

      if (v54 < v10)
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      if (v8 == v54)
      {
        goto LABEL_81;
      }

      v139 = v6;
      v159 = *a3;
      v55 = *a3 + 16 * v8;
      v137 = v10;
      v56 = v10 - v8;
      v141 = v54;
      while (2)
      {
        v150 = v8;
        v57 = v159 + 16 * v8;
        v58 = *v57;
        v59 = *(v57 + 8);
        v142 = v56;
        v143 = v55;
        while (2)
        {
          v60 = *(v55 - 16);
          v61 = *(v55 - 8);
          if (v59 != v61)
          {
            if (v61 >= v59)
            {
              goto LABEL_53;
            }

            goto LABEL_59;
          }

          v62 = objc_opt_self();
          v63 = *&a5[v152];
          v64 = v58;
          v65 = v60;
          v66 = [v62 beautifiedLocationNodeStringWithPlaceNode:v64 locationHelper:v63];
          if (v66)
          {
            v67 = v66;
            v154 = sub_22F740E20();
            v69 = v68;
          }

          else
          {
            v154 = 0;
            v69 = 0;
          }

          v71 = [v62 beautifiedLocationNodeStringWithPlaceNode:v65 locationHelper:{v63, v137}];
          if (!v71)
          {
            if (v69)
            {
LABEL_76:

              if (!v159)
              {
                goto LABEL_162;
              }
            }

            else
            {
              v75 = 0;
LABEL_74:

              if (v75)
              {
                goto LABEL_53;
              }

LABEL_59:
              if (!v159)
              {
                goto LABEL_162;
              }
            }

            v58 = *v55;
            v59 = *(v55 + 8);
            *v55 = *(v55 - 16);
            *(v55 - 8) = v59;
            *(v55 - 16) = v58;
            v55 -= 16;
            if (__CFADD__(v56++, 1))
            {
              goto LABEL_53;
            }

            continue;
          }

          break;
        }

        v72 = v71;
        v73 = sub_22F740E20();
        v75 = v74;

        if (!v69)
        {
          goto LABEL_74;
        }

        if (!v75)
        {
          goto LABEL_76;
        }

        v76 = sub_22F740F10();
        v77 = sub_22F740F10();
        v148 = v76;
        if (v76 != v77)
        {
          v79 = v77;

          if (v148 >= v79)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }

        if (v154 != v73 || v69 != v75)
        {
          v78 = sub_22F742040();

          if ((v78 & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }

LABEL_53:
        ++v8;
        v55 = v143 + 16;
        v56 = v142 - 1;
        if (v150 + 1 != v141)
        {
          continue;
        }

        break;
      }

      v8 = v141;
      v6 = v139;
      v9 = v145;
      v10 = v137;
LABEL_81:
      if (v8 < v10)
      {
        goto LABEL_157;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
      }

      v81 = *(v9 + 2);
      v80 = *(v9 + 3);
      v82 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        v9 = sub_22F13D970((v80 > 1), v81 + 1, 1, v9);
      }

      *(v9 + 2) = v82;
      v83 = v9 + 32;
      v84 = &v9[16 * v81 + 32];
      *v84 = v10;
      *(v84 + 1) = v8;
      v163 = v9;
      v157 = *a1;
      if (!*a1)
      {
        goto LABEL_165;
      }

      if (v81)
      {
        v146 = v9;
        v151 = v8;
        v155 = v9 + 32;
        while (1)
        {
          v85 = v82 - 1;
          if (v82 >= 4)
          {
            break;
          }

          if (v82 == 3)
          {
            v86 = *(v9 + 4);
            v87 = *(v9 + 5);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
LABEL_102:
            if (v89)
            {
              goto LABEL_148;
            }

            v102 = &v9[16 * v82];
            v104 = *v102;
            v103 = *(v102 + 1);
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_151;
            }

            v108 = &v83[16 * v85];
            v110 = *v108;
            v109 = *(v108 + 1);
            v96 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v96)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v106, v111))
            {
              goto LABEL_155;
            }

            if (v106 + v111 >= v88)
            {
              if (v88 < v111)
              {
                v85 = v82 - 2;
              }

              goto LABEL_123;
            }

            goto LABEL_116;
          }

          v112 = &v9[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v96 = __OFSUB__(v113, v114);
          v106 = v113 - v114;
          v107 = v96;
LABEL_116:
          if (v107)
          {
            goto LABEL_150;
          }

          v115 = &v83[16 * v85];
          v117 = *v115;
          v116 = *(v115 + 1);
          v96 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v96)
          {
            goto LABEL_153;
          }

          if (v118 < v106)
          {
            goto LABEL_3;
          }

LABEL_123:
          if (v85 - 1 >= v82)
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_163;
          }

          v124 = &v83[16 * v85 - 16];
          v125 = *v124;
          v126 = v85;
          v127 = &v83[16 * v85];
          v128 = *(v127 + 1);
          v129 = (v123 + 16 * *v124);
          v130 = (v123 + 16 * *v127);
          v160 = (v123 + 16 * v128);
          v131 = v144;
          sub_22F30C574(v129, v130, v160, v157, v131);
          if (v6)
          {

            goto LABEL_138;
          }

          v9 = v146;
          if (v128 < v125)
          {
            goto LABEL_143;
          }

          v132 = *(v146 + 2);
          if (v126 > v132)
          {
            goto LABEL_144;
          }

          *v124 = v125;
          *(v124 + 1) = v128;
          if (v126 >= v132)
          {
            goto LABEL_145;
          }

          v82 = v132 - 1;
          memmove(v127, v127 + 16, 16 * (v132 - 1 - v126));
          *(v146 + 2) = v132 - 1;
          v8 = v151;
          v83 = v155;
          if (v132 <= 2)
          {
LABEL_3:
            v163 = v9;
            goto LABEL_4;
          }
        }

        v90 = &v83[16 * v82];
        v91 = *(v90 - 8);
        v92 = *(v90 - 7);
        v96 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v96)
        {
          goto LABEL_146;
        }

        v95 = *(v90 - 6);
        v94 = *(v90 - 5);
        v96 = __OFSUB__(v94, v95);
        v88 = v94 - v95;
        v89 = v96;
        if (v96)
        {
          goto LABEL_147;
        }

        v97 = &v9[16 * v82];
        v99 = *v97;
        v98 = *(v97 + 1);
        v96 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v96)
        {
          goto LABEL_149;
        }

        v96 = __OFADD__(v88, v100);
        v101 = v88 + v100;
        if (v96)
        {
          goto LABEL_152;
        }

        if (v101 >= v93)
        {
          v119 = &v83[16 * v85];
          v121 = *v119;
          v120 = *(v119 + 1);
          v96 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v96)
          {
            goto LABEL_156;
          }

          if (v88 < v122)
          {
            v85 = v82 - 2;
          }

          goto LABEL_123;
        }

        goto LABEL_102;
      }

LABEL_4:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_135;
      }
    }
  }

  v133 = a5;
LABEL_135:
  v134 = *a1;
  if (*a1)
  {
    v135 = a5;
    sub_22F30CB90(&v163, v134, a3, v135);
    if (v6)
    {

      goto LABEL_138;
    }

LABEL_139:
  }

  else
  {
LABEL_166:

    __break(1u);
  }
}

void sub_22F30D778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v34 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v37 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = a1 - a3;
LABEL_6:
    v33 = a3;
    v7 = v37 + 16 * a3;
    v8 = *v7;
    v9 = *(v7 + 8);
    v31 = v6;
    v32 = v5;
    while (1)
    {
      v10 = *(v5 - 16);
      v11 = *(v5 - 8);
      if (v9 != v11)
      {
        break;
      }

      v12 = objc_opt_self();
      v13 = *(a5 + v34);
      v14 = v8;
      v15 = v10;
      v16 = [v12 beautifiedLocationNodeStringWithPlaceNode:v14 locationHelper:v13];
      if (v16)
      {
        v17 = v16;
        v36 = sub_22F740E20();
        v19 = v18;
      }

      else
      {
        v36 = 0;
        v19 = 0;
      }

      v21 = [v12 beautifiedLocationNodeStringWithPlaceNode:v15 locationHelper:v13];
      if (v21)
      {
        v22 = v21;
        v23 = sub_22F740E20();
        v25 = v24;

        if (!v19)
        {
          goto LABEL_26;
        }

        if (v25)
        {
          v26 = sub_22F740F10();
          v27 = sub_22F740F10();
          if (v26 == v27)
          {
            if (v36 == v23 && v19 == v25)
            {

LABEL_5:
              a3 = v33 + 1;
              v5 = v32 + 16;
              v6 = v31 - 1;
              if (v33 + 1 == a2)
              {
                return;
              }

              goto LABEL_6;
            }

            v28 = sub_22F742040();

            if ((v28 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v29 = v27;

            if (v26 >= v29)
            {
              goto LABEL_5;
            }
          }

          goto LABEL_11;
        }
      }

      else if (!v19)
      {
        v25 = 0;
LABEL_26:

        if (v25)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (!v37)
        {
          goto LABEL_32;
        }

        goto LABEL_12;
      }

      if (!v37)
      {
LABEL_32:
        __break(1u);
        return;
      }

LABEL_12:
      v8 = *v5;
      v9 = *(v5 + 8);
      *v5 = *(v5 - 16);
      *(v5 - 8) = v9;
      *(v5 - 16) = v8;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    if (v11 >= v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }
}

void sub_22F30DA30(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_22F742000();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1170, &qword_22F7715A8);
        v8 = sub_22F741200();
        *(v8 + 16) = v7;
      }

      v10[0] = (v8 + 32);
      v10[1] = v7;
      v9 = v4;
      sub_22F30CD30(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_22F30D778(0, v3, 1, a1, v4);
  }
}

void sub_22F30DB70(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F65BC(v3);
  }

  v5 = v3[2];
  v7[0] = (v3 + 4);
  v7[1] = v5;
  v6 = v4;
  sub_22F30DA30(v7, v6);

  *a1 = v3;
}

void sub_22F30DC08(void ***a1, uint64_t a2, void ***a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  *(swift_allocObject() + 16) = a5;
  v146 = a3;
  v8 = a3[1];
  v153 = v5;
  if (v8 < 1)
  {
    v127 = v5;
    v10 = MEMORY[0x277D84F90];
LABEL_134:
    v154 = *a1;
    if (!*a1)
    {
      goto LABEL_173;
    }

    *(swift_allocObject() + 16) = v5;
    v155 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_136;
    }

    goto LABEL_167;
  }

  v136 = a4;
  v154 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
  v145 = v5;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v141 = v10;
    if (v9 + 1 >= v8)
    {
      goto LABEL_41;
    }

    v13 = v9;
    v14 = *v146;
    v15 = (*v146)[v9];
    v16 = (*v146)[v12];
    v17 = v15;
    v151 = sub_22F300018(v16, v17, v145);

    v12 = v13 + 2;
    v137 = v13;
    if (v13 + 2 < v8)
    {
      v18 = &v14[v13 + 2];
      v143 = v8;
      while (1)
      {
        v20 = *(v18 - 1);
        v21 = *v18;
        v22 = *(*v18 + OBJC_IVAR___PGTripLocationScore__score);
        v23 = *&v20[OBJC_IVAR___PGTripLocationScore__score];
        if (v22 != v23)
        {
          v19 = v23 < v22;
          v10 = v141;
          goto LABEL_8;
        }

        v147 = v12;
        v24 = objc_opt_self();
        v25 = *&v21[OBJC_IVAR___PGTripLocationScore_locationNode];
        v26 = *(v154 + v5);
        v155 = v21;
        v27 = v20;
        v28 = [v24 beautifiedLocationNodeStringWithPlaceNode:v25 locationHelper:v26];
        if (v28)
        {
          v29 = v28;
          v30 = sub_22F740E20();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        v10 = v141;
        v33 = [v24 beautifiedLocationNodeStringWithPlaceNode:*&v27[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v26, v136}];
        if (!v33)
        {
          break;
        }

        v34 = v33;
        v35 = sub_22F740E20();
        v37 = v36;

        if (!v32)
        {
          goto LABEL_27;
        }

        if (!v37)
        {
          goto LABEL_24;
        }

        v38 = sub_22F740F10();
        v39 = sub_22F740F10();
        if (v38 == v39)
        {
          v40 = v30 == v35 && v32 == v37;
          v12 = v147;
          if (v40)
          {

            v5 = v153;
            v8 = v143;
            if (v151)
            {
              v11 = v137;
              goto LABEL_34;
            }

            goto LABEL_9;
          }

          v19 = sub_22F742040();

          v5 = v153;
          v8 = v143;
        }

        else
        {
          v41 = v39;

          v19 = v38 < v41;
          v5 = v153;
          v12 = v147;
          v8 = v143;
        }

LABEL_8:
        if ((v151 ^ v19))
        {
          goto LABEL_33;
        }

LABEL_9:
        ++v12;
        ++v18;
        if (v8 == v12)
        {
          v12 = v8;
          goto LABEL_32;
        }
      }

      if (v32)
      {
LABEL_24:
        v12 = v147;

        v8 = v143;
        if (!v151)
        {
          v11 = v137;
          goto LABEL_41;
        }

        goto LABEL_9;
      }

      v37 = 0;
LABEL_27:
      v12 = v147;

      v19 = v37 == 0;

      v8 = v143;
      goto LABEL_8;
    }

LABEL_32:
    v10 = v141;
LABEL_33:
    v11 = v137;
    if (v151)
    {
LABEL_34:
      if (v12 < v11)
      {
        goto LABEL_166;
      }

      if (v11 < v12)
      {
        v42 = 8 * v12 - 8;
        v43 = v11;
        v44 = v12;
        v45 = v11;
        do
        {
          if (v45 != --v44)
          {
            v46 = *v146;
            if (!*v146)
            {
              goto LABEL_170;
            }

            v47 = v46[v43];
            v46[v43] = *(v46 + v42);
            *(v46 + v42) = v47;
          }

          ++v45;
          v42 -= 8;
          ++v43;
        }

        while (v45 < v44);
      }
    }

LABEL_41:
    v48 = v146[1];
    if (v12 >= v48)
    {
      goto LABEL_81;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_163;
    }

    if (v12 - v11 >= v136)
    {
      goto LABEL_81;
    }

    v49 = (v11 + v136);
    if (__OFADD__(v11, v136))
    {
      goto LABEL_164;
    }

    if (v49 >= v48)
    {
      v49 = v146[1];
    }

    if (v49 < v11)
    {
      goto LABEL_165;
    }

    if (v12 == v49)
    {
      goto LABEL_81;
    }

    v155 = *v146;
    v5 = &(*v146)[v12 - 1];
    v138 = v11;
    v50 = v11 - v12;
    v140 = v49;
    while (2)
    {
      v148 = v12;
      v51 = v155[v12];
      v142 = v50;
      v144 = v5;
      while (1)
      {
        v52 = *v5;
        v53 = *&v51[OBJC_IVAR___PGTripLocationScore__score];
        v54 = *(*v5 + OBJC_IVAR___PGTripLocationScore__score);
        if (v53 != v54)
        {
          if (v54 >= v53)
          {
            goto LABEL_51;
          }

          goto LABEL_57;
        }

        v55 = objc_opt_self();
        v56 = *&v51[OBJC_IVAR___PGTripLocationScore_locationNode];
        v57 = *(v154 + v153);
        v58 = v51;
        v59 = v52;
        v60 = [v55 beautifiedLocationNodeStringWithPlaceNode:v56 locationHelper:v57];
        if (v60)
        {
          v61 = v60;
          v62 = sub_22F740E20();
          v64 = v63;
        }

        else
        {
          v62 = 0;
          v64 = 0;
        }

        v67 = [v55 beautifiedLocationNodeStringWithPlaceNode:*&v59[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v57, v136}];
        if (!v67)
        {
          if (v64)
          {
            goto LABEL_73;
          }

          v71 = 0;
LABEL_76:

          if (v71)
          {
            goto LABEL_51;
          }

LABEL_57:
          if (!v155)
          {
            goto LABEL_168;
          }

          goto LABEL_58;
        }

        v68 = v67;
        v69 = sub_22F740E20();
        v71 = v70;

        if (!v64)
        {
          goto LABEL_76;
        }

        if (v71)
        {
          break;
        }

LABEL_73:

        if (!v155)
        {
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
          return;
        }

LABEL_58:
        v65 = *v5;
        v51 = *(v5 + 8);
        *v5 = v51;
        *(v5 + 8) = v65;
        v5 -= 8;
        if (__CFADD__(v50++, 1))
        {
          goto LABEL_51;
        }
      }

      v152 = v58;
      v72 = sub_22F740F10();
      v73 = sub_22F740F10();
      if (v72 != v73)
      {
        v76 = v73;

        if (v72 >= v76)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      if (v62 != v69 || v64 != v71)
      {
        v75 = sub_22F742040();

        if ((v75 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

LABEL_51:
      v12 = v148 + 1;
      v5 = v144 + 8;
      v50 = v142 - 1;
      if ((v148 + 1) != v140)
      {
        continue;
      }

      break;
    }

    v12 = v140;
    v10 = v141;
    v11 = v138;
LABEL_81:
    if (v12 < v11)
    {
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
      v10 = sub_22F3F5F98(v10);
LABEL_136:
      v128 = *(v10 + 2);
      if (v128 < 2)
      {
LABEL_144:

        return;
      }

      while (1)
      {
        v129 = *v146;
        if (!*v146)
        {
          goto LABEL_171;
        }

        v130 = *&v10[16 * v128];
        v131 = v10;
        v5 = *&v10[16 * v128 + 24];
        v132 = &v129[v130];
        v10 = &v129[*&v10[16 * v128 + 16]];
        v133 = &v129[v5];
        v134 = v155;
        sub_22F30B49C(v132, v10, v133, v154, v134);
        if (v150)
        {

          goto LABEL_132;
        }

        if (v5 < v130)
        {
          goto LABEL_160;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_22F3F5F98(v131);
        }

        if (v128 - 2 >= *(v131 + 2))
        {
          goto LABEL_161;
        }

        v135 = &v131[16 * v128];
        *v135 = v130;
        *(v135 + 1) = v5;
        sub_22F3F5F0C(v128 - 1);
        v10 = v131;
        v128 = *(v131 + 2);
        if (v128 <= 1)
        {
          goto LABEL_144;
        }
      }
    }

    v149 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F13D970(0, *(v10 + 2) + 1, 1, v10);
    }

    v78 = *(v10 + 2);
    v77 = *(v10 + 3);
    v5 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v10 = sub_22F13D970((v77 > 1), v78 + 1, 1, v10);
    }

    *(v10 + 2) = v5;
    v79 = &v10[16 * v78];
    *(v79 + 4) = v11;
    *(v79 + 5) = v149;
    v155 = *a1;
    if (!*a1)
    {
      goto LABEL_172;
    }

    if (v78)
    {
      break;
    }

LABEL_3:
    v9 = v149;
    v8 = v146[1];
    v5 = v153;
    if (v149 >= v8)
    {
      goto LABEL_134;
    }
  }

  while (1)
  {
    v80 = v5 - 1;
    if (v5 >= 4)
    {
      v85 = &v10[16 * v5 + 32];
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_149;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_150;
      }

      v92 = &v10[16 * v5];
      v94 = *v92;
      v93 = *(v92 + 1);
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_152;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_155;
      }

      if (v96 >= v88)
      {
        v114 = &v10[16 * v80 + 32];
        v116 = *v114;
        v115 = *(v114 + 1);
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_159;
        }

        if (v83 < v117)
        {
          v80 = v5 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_101;
    }

    if (v5 == 3)
    {
      v81 = *(v10 + 4);
      v82 = *(v10 + 5);
      v91 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      v84 = v91;
LABEL_101:
      if (v84)
      {
        goto LABEL_151;
      }

      v97 = &v10[16 * v5];
      v99 = *v97;
      v98 = *(v97 + 1);
      v100 = __OFSUB__(v98, v99);
      v101 = v98 - v99;
      v102 = v100;
      if (v100)
      {
        goto LABEL_154;
      }

      v103 = &v10[16 * v80 + 32];
      v105 = *v103;
      v104 = *(v103 + 1);
      v91 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (v91)
      {
        goto LABEL_157;
      }

      if (__OFADD__(v101, v106))
      {
        goto LABEL_158;
      }

      if (v101 + v106 >= v83)
      {
        if (v83 < v106)
        {
          v80 = v5 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_115;
    }

    v107 = &v10[16 * v5];
    v109 = *v107;
    v108 = *(v107 + 1);
    v91 = __OFSUB__(v108, v109);
    v101 = v108 - v109;
    v102 = v91;
LABEL_115:
    if (v102)
    {
      goto LABEL_153;
    }

    v110 = &v10[16 * v80];
    v112 = *(v110 + 4);
    v111 = *(v110 + 5);
    v91 = __OFSUB__(v111, v112);
    v113 = v111 - v112;
    if (v91)
    {
      goto LABEL_156;
    }

    if (v113 < v101)
    {
      goto LABEL_3;
    }

LABEL_122:
    v118 = v80 - 1;
    if (v80 - 1 >= v5)
    {
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v119 = *v146;
    if (!*v146)
    {
      goto LABEL_169;
    }

    v120 = v10;
    v5 = *&v10[16 * v118 + 32];
    v121 = *&v10[16 * v80 + 32];
    v122 = *&v10[16 * v80 + 40];
    v10 = &v119[v5];
    v123 = &v119[v121];
    v124 = &v119[v122];
    v125 = v145;
    sub_22F30B49C(v10, v123, v124, v155, v125);
    if (v150)
    {
      break;
    }

    if (v122 < v5)
    {
      goto LABEL_147;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v120 = sub_22F3F5F98(v120);
    }

    if (v118 >= *(v120 + 2))
    {
      goto LABEL_148;
    }

    v126 = &v120[16 * v118];
    *(v126 + 4) = v5;
    *(v126 + 5) = v122;
    sub_22F3F5F0C(v80);
    v10 = v120;
    v5 = *(v120 + 2);
    if (v5 <= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_132:
}

void sub_22F30E770(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 8);
  v5 = a2;
  v6 = sub_22F742000();
  if (v6 < v4)
  {
    if (v4 >= -1)
    {
      v7 = v6;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TripLocationScore();
        v9 = sub_22F741200();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v50[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v50[1] = v8;
      v11 = v5;
      sub_22F30DC08(v50, v51, a1, v7, v11);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v4 < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:

    __break(1u);
    return;
  }

  if (!v4)
  {

    return;
  }

  *(swift_allocObject() + 16) = v5;
  if (v4 == 1)
  {
    v10 = v5;

    goto LABEL_44;
  }

  v12 = *a1;
  v48 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
  v41 = v5;
  v13 = -1;
  v14 = 1;
  v49 = v12;
  v47 = v5;
  v42 = v4;
  while (2)
  {
    v44 = v14;
    v45 = v13;
    v15 = v49[v14];
    v43 = v12;
    while (1)
    {
      v16 = *v12;
      v17 = *&v15[OBJC_IVAR___PGTripLocationScore__score];
      v18 = *(*v12 + OBJC_IVAR___PGTripLocationScore__score);
      if (v17 != v18)
      {
        if (v18 >= v17)
        {
          goto LABEL_14;
        }

        goto LABEL_39;
      }

      v19 = objc_opt_self();
      v20 = *&v15[OBJC_IVAR___PGTripLocationScore_locationNode];
      v21 = *&v5[v48];
      v22 = v15;
      v23 = v16;
      v24 = [v19 beautifiedLocationNodeStringWithPlaceNode:v20 locationHelper:{v21, v41}];
      if (v24)
      {
        v25 = v24;
        v26 = sub_22F740E20();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v19 beautifiedLocationNodeStringWithPlaceNode:*&v23[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:v21];
      if (!v29)
      {
        if (v28)
        {
          goto LABEL_33;
        }

        v33 = 0;
LABEL_36:

        v5 = v47;
        if (v33)
        {
          goto LABEL_14;
        }

LABEL_39:
        if (!v49)
        {
          goto LABEL_47;
        }

        goto LABEL_40;
      }

      v30 = v29;
      v31 = sub_22F740E20();
      v33 = v32;

      if (!v28)
      {
        goto LABEL_36;
      }

      if (v33)
      {
        break;
      }

LABEL_33:

      v5 = v47;
      if (!v49)
      {
        goto LABEL_47;
      }

LABEL_40:
      v39 = *v12;
      v15 = v12[1];
      *v12 = v15;
      v12[1] = v39;
      --v12;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_14;
      }
    }

    v46 = v22;
    v34 = sub_22F740F10();
    v35 = sub_22F740F10();
    if (v34 != v35)
    {
      v38 = v35;

      v5 = v47;
      if (v34 >= v38)
      {
        goto LABEL_14;
      }

      goto LABEL_39;
    }

    if (v26 != v31 || v28 != v33)
    {
      v37 = sub_22F742040();

      v5 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_39;
    }

    v5 = v47;
LABEL_14:
    v14 = v44 + 1;
    v12 = v43 + 1;
    v13 = v45 - 1;
    if (v44 + 1 != v42)
    {
      continue;
    }

    break;
  }

LABEL_44:
}

uint64_t sub_22F30EB94(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *a1;
  v5 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22F3F6724(v4);
    *a1 = v4;
  }

  v7 = *(v4 + 16);
  v10[0] = v4 + 32;
  v10[1] = v7;
  v8 = v5;
  sub_22F30E770(v10, v8);

  sub_22F741BB0();
}

unint64_t sub_22F30EC60(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F741E30();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F30ED14(uint64_t a1)
{
  result = sub_22F73F090();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22F30F024(uint64_t a1)
{
  result = sub_22F73F690();
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

uint64_t get_enum_tag_for_layout_string_11PhotosGraph22TripLocationScoreErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F30F160(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F30F1A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22F30F1F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_22F30F220()
{
  result = qword_27DAB35B0;
  if (!qword_27DAB35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB35B0);
  }

  return result;
}

unint64_t sub_22F30F274()
{
  result = qword_27DAB35B8;
  if (!qword_27DAB35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB35B8);
  }

  return result;
}

void sub_22F30F2F0(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t *a2, uint64_t a3)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v56 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v57 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v50 = isUniquelyReferenced_nonNull_bridgeObject;
    v54 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x277D84F90];
    v51 = v3;
    while (1)
    {
      if (v57)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2319016F0](v4, v50);
      }

      else
      {
        if (v4 >= *(v56 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v54 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR___PGTripLocationScore_momentNodes);
      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22F741A00();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_22F741A00();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

      v13 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = v10;
        goto LABEL_22;
      }

LABEL_21:
      v14 = v10;
      isUniquelyReferenced_nonNull_bridgeObject = sub_22F741B50();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        v18 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
        v13 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v14)
          {
            goto LABEL_44;
          }

          v19 = v14;
          v20 = v13 + 8 * v15 + 32;
          v58 = v13;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            v52 = v14;
            v60 = v5;
            sub_22F30F98C();
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
              v22 = sub_22F14E004(v63, i, v8);
              v24 = *v23;
              (v22)(v63, 0);
              *(v20 + 8 * i) = v24;
            }

            v5 = v60;
            v3 = v51;
            v19 = v52;
          }

          else
          {
            sub_22F120634(0, &qword_2810A90E0, off_27887B100);
            swift_arrayInitWithCopy();
          }

          if (v19 > 0)
          {
            v25 = *(v58 + 16);
            v7 = __OFADD__(v25, v19);
            v26 = v25 + v19;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v58 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      if (v14 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_22F741A00();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_49:
  v61 = v5;
  if (v5 >> 62)
  {
LABEL_82:
    v28 = sub_22F741A00();
    if (v28)
    {
      goto LABEL_51;
    }

LABEL_83:

    return;
  }

  v28 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_83;
  }

LABEL_51:
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v29 = 0;
  v30 = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  v31 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
  v55 = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  v53 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
  while (1)
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x2319016F0](v29, v61);
    }

    else
    {
      if (v29 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v32 = *(v61 + 32 + 8 * v29);
    }

    v33 = v32;
    v7 = __OFADD__(v29++, 1);
    if (v7)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v34 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {

      v35 = v33;
      v36 = sub_22F741A50();

      if (v36)
      {

        goto LABEL_54;
      }
    }

    else if (*(v34 + 16))
    {

      v37 = sub_22F741800();
      v38 = -1 << *(v34 + 32);
      v39 = v37 & ~v38;
      if ((*(v34 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        while (1)
        {
          v41 = *(*(v34 + 48) + 8 * v39);
          v42 = sub_22F741810();

          if (v42)
          {
            break;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v34 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v31 = v53;
        v30 = v55;
        goto LABEL_54;
      }

LABEL_68:

      v31 = v53;
      v30 = v55;
    }

    v43 = *(a3 + v30);
    v44 = 0.0;
    if (v43)
    {
      break;
    }

LABEL_53:
    *(a3 + v31) = v44 + *(a3 + v31);
    sub_22F10EEDC(v63, v33);

LABEL_54:
    if (v29 == v28)
    {
      goto LABEL_83;
    }
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    v45 = v33;

    v46 = sub_22F741D00();

    if (v46)
    {
      type metadata accessor for MomentRelevanceData(0);
      swift_dynamicCast();
      v47 = v63[0];
      goto LABEL_76;
    }

LABEL_52:

    goto LABEL_53;
  }

  if (!*(v43 + 16))
  {
    goto LABEL_53;
  }

  v48 = sub_22F1234BC(v33);
  if ((v49 & 1) == 0)
  {
    goto LABEL_52;
  }

  v47 = *(*(v43 + 56) + 8 * v48);

LABEL_76:

  if (!v47)
  {
    goto LABEL_53;
  }

  if ((v47[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8] & 1) == 0)
  {
    v44 = *&v47[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore];

    goto LABEL_53;
  }

  sub_22F741D40();
  __break(1u);
}

unint64_t sub_22F30F98C()
{
  result = qword_27DAB35E8;
  if (!qword_27DAB35E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB35E0, &qword_22F784750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB35E8);
  }

  return result;
}

void EntityTaggingServiceClient.init(supportedTagsAsStrings:log:)(uint64_t a1, void *a2)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3600, &qword_22F784770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_22F7409A0();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F7409C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(sub_22F740A10());
  v14 = sub_22F740A00();
  if (v2)
  {

    type metadata accessor for EntityTaggingServiceClient(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v9;
    v51 = v11;
    v52 = v6;
    v53 = a1;
    v54 = v7;
    v15 = v58;
    *&v58[OBJC_IVAR___PGGraphEntityTaggingServiceClient_etService] = v14;
    sub_22F740950();
    v16 = sub_22F740940();
    sub_22F740930();

    (*(v51 + 32))(&v15[OBJC_IVAR___PGGraphEntityTaggingServiceClient_personView], v13, v10);
    v17 = v56;
    *&v15[OBJC_IVAR___PGGraphEntityTaggingServiceClient_log] = v56;
    v18 = v53;
    v19 = v53 + 56;
    v20 = 1 << *(v53 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v53 + 56);
    v23 = (v20 + 63) >> 6;
    v24 = (v55 + 48);
    v51 = v55 + 32;
    v56 = v17;

    v25 = 0;
    v26 = v52;
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      v28 = v25;
      if (!v22)
      {
        break;
      }

LABEL_10:
      v22 &= v22 - 1;
      sub_22F740EA0();
      sub_22F740980();
      if ((*v24)(v26, 1, v54) == 1)
      {
        sub_22F120ADC(v26, &qword_27DAB3600, &qword_22F784770);
      }

      else
      {
        v49 = *v51;
        v49(v50, v26, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_22F13FAD8(0, *(v27 + 2) + 1, 1, v27);
        }

        v29 = v55;
        v31 = *(v27 + 2);
        v30 = *(v27 + 3);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v48 = v31 + 1;
          v33 = sub_22F13FAD8((v30 > 1), v31 + 1, 1, v27);
          v32 = v48;
          v29 = v55;
          v27 = v33;
        }

        *(v27 + 2) = v32;
        v49(&v27[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v31], v50, v54);
        v18 = v53;
      }
    }

    while (1)
    {
      v25 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return;
      }

      if (v25 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v25);
      ++v28;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    v34 = sub_22F152924(v27);

    v35 = v58;
    *&v58[OBJC_IVAR___PGGraphEntityTaggingServiceClient_entityTagsToIngest] = v34;
    v36 = type metadata accessor for EntityTaggingServiceClient(0);
    v57.receiver = v35;
    v57.super_class = v36;
    v37 = objc_msgSendSuper2(&v57, sel_init);
    v38 = sub_22F7415C0();
    v39 = *&v37[OBJC_IVAR___PGGraphEntityTaggingServiceClient_log];
    if (os_log_type_enabled(v39, v38))
    {

      v40 = v18;
      v41 = v37;
      v42 = v39;
      v43 = swift_slowAlloc();
      *v43 = 134218240;
      v44 = *(v40 + 16);

      *(v43 + 4) = v44;

      *(v43 + 12) = 2048;
      v45 = *(*&v41[OBJC_IVAR___PGGraphEntityTaggingServiceClient_entityTagsToIngest] + 16);

      *(v43 + 14) = v45;
      _os_log_impl(&dword_22F0FC000, v42, v38, "Supported graph tags: %ld, found matching IP tags: %ld", v43, 0x16u);
      MEMORY[0x2319033A0](v43, -1, -1);

      v46 = v56;
    }

    else
    {

      v46 = v37;
    }
  }
}

uint64_t type metadata accessor for EntityTaggingServiceClient(uint64_t a1)
{
  result = qword_2810AA1D0;
  if (!qword_2810AA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F310134(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_22F7409A0();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3610, &unk_22F784780);
  v3[11] = swift_task_alloc();
  v5 = sub_22F740970();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F310298, 0, 0);
}

uint64_t sub_22F310298()
{
  v20 = v0;
  sub_22F7409B0();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_22F120ADC(v3, &qword_27DAB3610, &unk_22F784780);
    v5 = sub_22F7415C0();
    v6 = *(v4 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_log);
    if (os_log_type_enabled(v6, v5))
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_22F145F20(v8, v7, &v19);
      _os_log_impl(&dword_22F0FC000, v6, v5, "No entity identifier for person uuid %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2319033A0](v10, -1, -1);
      MEMORY[0x2319033A0](v9, -1, -1);
    }

    v11 = sub_22F14E214(MEMORY[0x277D84F90]);

    v12 = v0[1];

    return v12(v11);
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);
    v14 = sub_22F740960();
    v16 = v15;
    v0[15] = v15;
    v18 = (*MEMORY[0x277D1F3D0] + MEMORY[0x277D1F3D0]);
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_22F3105B0;

    return v18(v14, v16, 0);
  }
}

uint64_t sub_22F3105B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_22F310C18;
  }

  else
  {
    v4 = sub_22F3106E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F3106E4()
{
  v55 = v0;
  v1 = *(v0 + 48);
  v2 = sub_22F7409F0();
  v3 = sub_22F7415C0();
  v4 = *(v1 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_log);
  v5 = v2 >> 62;
  v48 = v2;
  if (os_log_type_enabled(v4, v3))
  {

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 134218242;
    if (v5)
    {
      v8 = sub_22F741A00();
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    *(v6 + 4) = v8;

    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_22F145F20(v10, v9, &v54);
    _os_log_impl(&dword_22F0FC000, v4, v3, "%ld entity tags found for person %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2319033A0](v7, -1, -1);
    MEMORY[0x2319033A0](v6, -1, -1);
  }

  if (v5)
  {
    goto LABEL_29;
  }

  v11 = v2;
  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v13 = 0;
    v14 = *(*(v0 + 48) + OBJC_IVAR___PGGraphEntityTaggingServiceClient_entityTagsToIngest);
    v50 = v11 & 0xC000000000000001;
    v44 = v11 + 32;
    v45 = v11 & 0xFFFFFFFFFFFFFF8;
    v52 = v14 + 56;
    v46 = *(v0 + 64);
    v15 = (v46 + 8);
    v43 = MEMORY[0x277D84F98];
    v47 = i;
    v53 = v14;
    while (1)
    {
      if (v50)
      {
        v16 = MEMORY[0x2319016F0](v13, v11);
      }

      else
      {
        if (v13 >= *(v45 + 16))
        {
          goto LABEL_28;
        }

        v16 = *(v44 + 8 * v13);
      }

      v17 = v16;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      sub_22F7409D0();
      if (*(v14 + 16))
      {
        v51 = v17;
        sub_22F31123C(&qword_2810A94A0, MEMORY[0x277D1F378]);
        v19 = sub_22F740D40();
        v20 = -1 << *(v14 + 32);
        v21 = v19 & ~v20;
        if ((*(v52 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v49 = v13;
          v22 = ~v20;
          v23 = *(v46 + 72);
          v24 = *(v46 + 16);
          while (1)
          {
            v25 = *(v0 + 72);
            v26 = *(v0 + 56);
            v24(v25, *(v53 + 48) + v21 * v23, v26);
            sub_22F31123C(&unk_2810A9490, MEMORY[0x277D1F380]);
            v27 = sub_22F740DE0();
            v28 = *v15;
            (*v15)(v25, v26);
            if (v27)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v52 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              v11 = v48;
              v13 = v49;
              i = v47;
              goto LABEL_22;
            }
          }

          v28(*(v0 + 80), *(v0 + 56));
          sub_22F7409E0();
          if (v29 <= 0.0)
          {
          }

          else
          {
            v30 = *(v0 + 72);
            v31 = *(v0 + 56);
            sub_22F7409D0();
            v32 = sub_22F740990();
            v34 = v33;
            v28(v30, v31);
            *(v0 + 16) = v32;
            *(v0 + 24) = v34;
            sub_22F160DE4();
            v35 = sub_22F7418C0();
            v37 = v36;

            sub_22F7409E0();
            v39 = v38;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v54 = v43;
            sub_22F12FF10(v35, v37, isUniquelyReferenced_nonNull_native, v39);

            v43 = v54;
          }

          v11 = v48;
          v13 = v49;
          i = v47;
          v14 = v53;
        }

        else
        {
          v28 = *v15;
LABEL_22:
          v28(*(v0 + 80), *(v0 + 56));

          v14 = v53;
        }
      }

      else
      {
        (*v15)(*(v0 + 80), *(v0 + 56));
      }

      if (v13 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v11 = v48;
  }

  v43 = MEMORY[0x277D84F98];
LABEL_31:

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v41 = *(v0 + 8);

  return v41(v43);
}

uint64_t sub_22F310C18()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22F310E44(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22F740E20();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22F310F18;

  return sub_22F310134(v5, v7);
}

uint64_t sub_22F310F18(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_22F73F360();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_22F740C80();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id EntityTaggingServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EntityTaggingServiceClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityTaggingServiceClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F31123C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22F7409A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F311288(uint64_t a1, __n128 a2)
{
  result = sub_22F7409C0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of EntityTaggingServiceClient.entityTagsForPerson(personLocalIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F3114B0;

  return v9(a1, a2);
}

uint64_t sub_22F3114B0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22F3115AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22F12094C;

  return sub_22F310E44(v2, v3, v4);
}

void static MusicCuratorConfiguration.defaultConfiguration()(void *a1@<X8>)
{
  v33 = a1;
  v1 = sub_22F73F470();
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  sub_22F73EF30();
  swift_allocObject();
  sub_22F73EF20();
  v38 = [objc_allocWithZone(PGRemoteConfiguration) initWithTrialNamespace:4 onDiskResourceFile:0];
  type metadata accessor for MusicCurator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v11);
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_22F740DF0();
  v15 = sub_22F740DF0();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_22F73F430();

    (*(v36 + 32))(v10, v7, v35);
    v17 = sub_22F740DF0();
    v18 = sub_22F73F3F0();
    v19 = [v38 fileValueForKey:v17 withFallbackValue:v18];

    sub_22F73F430();
    v20 = v34;
    v21 = sub_22F73F480();
    if (v20)
    {

      v23 = *(v36 + 8);
      v24 = v4;
      v25 = v35;
      v23(v24, v35);
      v23(v10, v25);
    }

    else
    {
      v26 = v21;
      v27 = v22;
      v32 = v4;
      v34 = v10;
      v28 = v38;
      sub_22F311ABC();
      sub_22F73EF10();
      v29 = (v36 + 8);
      sub_22F133BF0(v26, v27);

      v30 = *v29;
      v31 = v35;
      (*v29)(v32, v35);
      v30(v34, v31);
      memcpy(v33, v37, 0x16CuLL);
    }
  }

  else
  {
    sub_22F311A68();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F311A68()
{
  result = qword_27DAB3618;
  if (!qword_27DAB3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3618);
  }

  return result;
}

unint64_t sub_22F311ABC()
{
  result = qword_2810AA238;
  if (!qword_2810AA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA238);
  }

  return result;
}

unint64_t sub_22F311B58(unsigned __int8 a1)
{
  v1 = 0xD000000000000023;
  if (a1 <= 3u)
  {
    v5 = 0xD00000000000002CLL;
    if (a1 != 2)
    {
      v5 = 0xD00000000000003CLL;
    }

    if (a1)
    {
      v1 = 0xD000000000000033;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v3 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22F311C60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F315E98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F311C88(uint64_t a1)
{
  v2 = sub_22F311FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F311CC4(uint64_t a1)
{
  v2 = sub_22F311FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.DisplayConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3620, &qword_22F784830);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F311FA4();
  sub_22F742200();
  if (!v2)
  {
    v32 = 0;
    v9 = sub_22F741EF0();
    v31 = 1;
    v10 = sub_22F741EF0();
    v30 = 2;
    v11 = sub_22F741EF0();
    v29 = 3;
    v23 = sub_22F741EF0();
    v28 = 4;
    v22 = sub_22F741EC0();
    v27 = 5;
    v21 = sub_22F741EF0();
    v26 = 6;
    v20 = sub_22F741EF0();
    v25 = 7;
    v19 = sub_22F741EF0();
    v24 = 8;
    v18 = sub_22F741EF0();
    (*(v6 + 8))(v8, v5);
    v13 = v22 & 1;
    *a2 = v9;
    *(a2 + 8) = v10;
    v14 = v23;
    *(a2 + 16) = v11;
    *(a2 + 24) = v14;
    *(a2 + 32) = v13;
    v15 = v20;
    *(a2 + 40) = v21;
    *(a2 + 48) = v15;
    v16 = v18;
    *(a2 + 56) = v19;
    *(a2 + 64) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F311FA4()
{
  result = qword_2810AA370;
  if (!qword_2810AA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA370);
  }

  return result;
}

unint64_t sub_22F312020()
{
  if (*v0)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

void sub_22F312058(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x800000022F79A730 == a2 || (sub_22F742040() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022F79A750 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_22F742040();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_22F31213C(uint64_t a1)
{
  v2 = sub_22F312354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312178(uint64_t a1)
{
  v2 = sub_22F312354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.PrefetchConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3628, &qword_22F784838);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F312354();
  sub_22F742200();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_22F741EF0();
    v13 = 1;
    v10 = sub_22F741EF0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F312354()
{
  result = qword_2810AA350;
  if (!qword_2810AA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA350);
  }

  return result;
}

uint64_t sub_22F3123C0(uint64_t a1)
{
  v2 = sub_22F31247C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3123FC(uint64_t a1)
{
  v2 = sub_22F31247C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F31247C()
{
  result = qword_2810AA2D0;
  if (!qword_2810AA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2D0);
  }

  return result;
}

uint64_t sub_22F312540(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6965576369706F74;
    v6 = 0x6557656C61636F6CLL;
    if (a1 != 3)
    {
      v6 = 0x65576D6F646E6172;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    if (!a1)
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD00000000000001DLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000021;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 6)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 == 5)
    {
      v3 = 0x6E656D69746E6573;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22F3126E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F316170(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F312708(uint64_t a1)
{
  v2 = sub_22F312A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312744(uint64_t a1)
{
  v2 = sub_22F312A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.MusicForTopicConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3638, &qword_22F784848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F312A8C();
  sub_22F742200();
  if (!v2)
  {
    v43 = 0;
    sub_22F741EE0();
    v10 = v9;
    v42 = 1;
    sub_22F741EE0();
    v12 = v11;
    v41 = 2;
    sub_22F741EE0();
    v14 = v13;
    v40 = 3;
    sub_22F741EE0();
    v16 = v15;
    v39 = 4;
    sub_22F741EE0();
    v18 = v17;
    v38 = 5;
    sub_22F741EE0();
    v20 = v19;
    v37 = 6;
    sub_22F741EE0();
    v22 = v21;
    v36 = 7;
    sub_22F741EE0();
    v32 = v24;
    v35 = 8;
    sub_22F741EE0();
    v26 = v25;
    v34 = 9;
    sub_22F741EE0();
    HIDWORD(v31) = v27;
    v33 = 10;
    v28 = sub_22F741EF0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 4) = v12;
    *(a2 + 8) = v14;
    *(a2 + 12) = v16;
    *(a2 + 16) = v18;
    *(a2 + 20) = v20;
    v29 = HIDWORD(v31);
    v30 = v32;
    *(a2 + 24) = v22;
    *(a2 + 28) = v30;
    *(a2 + 32) = v26;
    *(a2 + 36) = v29;
    *(a2 + 40) = v28;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F312A8C()
{
  result = qword_2810AA270;
  if (!qword_2810AA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA270);
  }

  return result;
}

uint64_t sub_22F312AF8(uint64_t a1)
{
  v2 = sub_22F312BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312B34(uint64_t a1)
{
  v2 = sub_22F312BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312BB4()
{
  result = qword_2810AA2B0;
  if (!qword_2810AA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2B0);
  }

  return result;
}

uint64_t sub_22F312C20(uint64_t a1)
{
  v2 = sub_22F312CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312C5C(uint64_t a1)
{
  v2 = sub_22F312CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312CDC()
{
  result = qword_2810AA310;
  if (!qword_2810AA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA310);
  }

  return result;
}

uint64_t sub_22F312D48(uint64_t a1)
{
  v2 = sub_22F312E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312D84(uint64_t a1)
{
  v2 = sub_22F312E04();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312E04()
{
  result = qword_2810AA2F0;
  if (!qword_2810AA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2F0);
  }

  return result;
}

uint64_t sub_22F312EB0(uint64_t a1)
{
  v2 = sub_22F312F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312EEC(uint64_t a1)
{
  v2 = sub_22F312F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312F6C()
{
  result = qword_2810AA330;
  if (!qword_2810AA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA330);
  }

  return result;
}

unint64_t sub_22F312FD8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0x65576D6F646E6172;
    if (v1 != 4)
    {
      v6 = 0x6E656D69746E6573;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6965576369706F74;
    if (v1 != 2)
    {
      v2 = 0x6557656C61636F6CLL;
    }

    v3 = 0xD000000000000018;
    if (!*v0)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22F313108(uint64_t a1)
{
  v2 = sub_22F31345C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F313144(uint64_t a1)
{
  v2 = sub_22F31345C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F3131C4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _DWORD *a6@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = &v32 - v11;
  v13 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  a4();
  sub_22F742200();
  if (!v6)
  {
    v41 = 0;
    v14 = v32;
    sub_22F741EE0();
    v16 = v15;
    v40 = 1;
    sub_22F741EE0();
    v18 = v17;
    v39 = 2;
    sub_22F741EE0();
    v20 = v19;
    v38 = 3;
    sub_22F741EE0();
    v22 = v21;
    v37 = 4;
    sub_22F741EE0();
    v24 = v23;
    v36 = 5;
    sub_22F741EE0();
    v26 = v25;
    v35 = 6;
    sub_22F741EE0();
    v29 = v28;
    v34 = 7;
    sub_22F741EE0();
    v31 = v30;
    (*(v10 + 8))(v12, v14);
    *a6 = v16;
    a6[1] = v18;
    a6[2] = v20;
    a6[3] = v22;
    a6[4] = v24;
    a6[5] = v26;
    a6[6] = v29;
    a6[7] = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

unint64_t sub_22F31345C()
{
  result = qword_2810AA290;
  if (!qword_2810AA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA290);
  }

  return result;
}

unint64_t sub_22F3134F8()
{
  v1 = *v0;
  v2 = 0x6E61526369706F74;
  v3 = 0x6E656D69746E6573;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6152656C61636F6CLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_22F3135D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F316798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F313600(uint64_t a1)
{
  v2 = sub_22F3138B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F31363C(uint64_t a1)
{
  v2 = sub_22F3138B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.DefaultScoresForRankersConfiguration.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3668, &qword_22F784878);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3138B8();
  sub_22F742200();
  if (!v2)
  {
    v28 = 0;
    sub_22F741EE0();
    v10 = v9;
    v27 = 1;
    sub_22F741EE0();
    v12 = v11;
    v26 = 2;
    sub_22F741EE0();
    v14 = v13;
    v25 = 3;
    sub_22F741EE0();
    v16 = v15;
    v24 = 4;
    sub_22F741EE0();
    v19 = v18;
    v23 = 5;
    sub_22F741EE0();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v16;
    a2[4] = v19;
    a2[5] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F3138B8()
{
  result = qword_2810AA3B0;
  if (!qword_2810AA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3B0);
  }

  return result;
}

unint64_t sub_22F31393C()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_22F313994@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F3169AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F3139BC(uint64_t a1)
{
  v2 = sub_22F313C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3139F8(uint64_t a1)
{
  v2 = sub_22F313C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.ScoreThresholdsForRankersConfiguration.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3670, &qword_22F784880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F313C0C();
  sub_22F742200();
  if (!v2)
  {
    v16[15] = 0;
    sub_22F741EE0();
    v10 = v9;
    v16[14] = 1;
    sub_22F741EE0();
    v13 = v12;
    v16[13] = 2;
    sub_22F741EE0();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F313C0C()
{
  result = qword_2810AA390;
  if (!qword_2810AA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA390);
  }

  return result;
}

__n128 MusicCuratorConfiguration.displayConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 MusicCuratorConfiguration.prefetchConfiguration.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

__n128 MusicCuratorConfiguration.musicForPerformer.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 88);
  v3 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForTopic.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  result = *(v1 + 152);
  *(a1 + 32) = result;
  return result;
}

__n128 MusicCuratorConfiguration.musicForYouFavorites.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 168);
  v3 = *(v1 + 184);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForYouChill.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 200);
  v3 = *(v1 + 216);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForYouGetUp.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 232);
  v3 = *(v1 + 248);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForLocation.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 264);
  v3 = *(v1 + 280);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForTime.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 296);
  v3 = *(v1 + 312);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double MusicCuratorConfiguration.defaultScores.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 328);
  result = *(v1 + 344);
  *(a1 + 16) = result;
  return result;
}

float MusicCuratorConfiguration.scoreThresholds.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 360);
  *a1 = *(v1 + 352);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F313D44(unsigned __int8 a1)
{
  v1 = 0x726F46636973756DLL;
  if (a1 <= 4u)
  {
    if (a1 != 3)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v4 = 0xD000000000000015;
    if (!a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0x53746C7561666564;
    if (a1 != 9)
    {
      v2 = 0x72685465726F6373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    if (a1 <= 7u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22F313ED8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F316AD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F313F00(uint64_t a1)
{
  v2 = sub_22F3144CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F313F3C(uint64_t a1)
{
  v2 = sub_22F3144CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3678, &qword_22F784888);
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v28 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3144CC();
  sub_22F742200();
  if (!v2)
  {
    v31 = a2;
    v57 = 0;
    sub_22F314520();
    sub_22F741F10();
    v80 = v60;
    v81 = v61;
    v82 = v62;
    v78 = v58;
    v79 = v59;
    LOBYTE(v55) = 1;
    sub_22F314574();
    sub_22F741F10();
    v8 = v53[0];
    v54 = 2;
    sub_22F3145C8();
    sub_22F741F10();
    v29 = *(&v8 + 1);
    v30 = v8;
    v76 = v55;
    v77 = v56;
    v52 = 3;
    sub_22F31461C();
    sub_22F741F10();
    v73 = v53[0];
    v74 = v53[1];
    v75 = v53[2];
    v49 = 4;
    sub_22F314670();
    sub_22F741F10();
    v71 = v50;
    v72 = v51;
    v46 = 5;
    sub_22F3146C4();
    sub_22F741F10();
    v69 = v47;
    v70 = v48;
    v43 = 6;
    sub_22F314718();
    sub_22F741F10();
    v67 = v44;
    v68 = v45;
    v40 = 7;
    sub_22F31476C();
    sub_22F741F10();
    v65 = v41;
    v66 = v42;
    v37 = 8;
    sub_22F3147C0();
    sub_22F741F10();
    v63 = v38;
    v64 = v39;
    v33 = 9;
    sub_22F314814();
    sub_22F741F10();
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v33 = 10;
    sub_22F314868();
    sub_22F741F10();
    (*(v5 + 8))(v7, v32);
    v13 = v35;
    v14 = v79;
    v15 = v81;
    v16 = v31;
    *(v31 + 32) = v80;
    *(v16 + 48) = v15;
    v17 = v82;
    v18 = v77;
    *v16 = v78;
    *(v16 + 16) = v14;
    v19 = v30;
    *(v16 + 64) = v17;
    *(v16 + 72) = v19;
    *(v16 + 80) = v29;
    v20 = v75;
    *(v16 + 88) = v76;
    *(v16 + 104) = v18;
    v21 = v73;
    v22 = v74;
    *(v16 + 152) = v20;
    *(v16 + 136) = v22;
    *(v16 + 120) = v21;
    v23 = v71;
    *(v16 + 184) = v72;
    *(v16 + 168) = v23;
    v24 = v69;
    *(v16 + 216) = v70;
    *(v16 + 200) = v24;
    v25 = v67;
    *(v16 + 248) = v68;
    *(v16 + 232) = v25;
    v26 = v66;
    *(v16 + 264) = v65;
    *(v16 + 280) = v26;
    v27 = v64;
    *(v16 + 296) = v63;
    *(v16 + 312) = v27;
    *(v16 + 328) = v10;
    *(v16 + 336) = v11;
    *&v26 = v34;
    *(v16 + 344) = v12;
    *(v16 + 352) = v26;
    *(v16 + 360) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F3144CC()
{
  result = qword_2810AA250;
  if (!qword_2810AA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA250);
  }

  return result;
}

unint64_t sub_22F314520()
{
  result = qword_2810AA358;
  if (!qword_2810AA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA358);
  }

  return result;
}

unint64_t sub_22F314574()
{
  result = qword_2810AA338;
  if (!qword_2810AA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA338);
  }

  return result;
}

unint64_t sub_22F3145C8()
{
  result = qword_2810AA2B8;
  if (!qword_2810AA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2B8);
  }

  return result;
}

unint64_t sub_22F31461C()
{
  result = qword_2810AA258;
  if (!qword_2810AA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA258);
  }

  return result;
}

unint64_t sub_22F314670()
{
  result = qword_2810AA298;
  if (!qword_2810AA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA298);
  }

  return result;
}

unint64_t sub_22F3146C4()
{
  result = qword_2810AA2F8;
  if (!qword_2810AA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2F8);
  }

  return result;
}

unint64_t sub_22F314718()
{
  result = qword_2810AA2D8;
  if (!qword_2810AA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2D8);
  }

  return result;
}

unint64_t sub_22F31476C()
{
  result = qword_2810AA318;
  if (!qword_2810AA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA318);
  }

  return result;
}

unint64_t sub_22F3147C0()
{
  result = qword_2810AA278;
  if (!qword_2810AA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA278);
  }

  return result;
}

unint64_t sub_22F314814()
{
  result = qword_2810AA398;
  if (!qword_2810AA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA398);
  }

  return result;
}

unint64_t sub_22F314868()
{
  result = qword_2810AA378;
  if (!qword_2810AA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA378);
  }

  return result;
}

id sub_22F314958(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  (a3)(__src, a1, a2);
  v3 = type metadata accessor for MusicCuratorConfigurationWrapper();
  v4 = objc_allocWithZone(v3);
  memcpy(&v4[OBJC_IVAR___PGMusicCuratorConfigurationWrapper_configuration], __src, 0x16CuLL);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id sub_22F314A0C(void (*a1)(void *__return_ptr))
{
  a1(__src);
  v1 = type metadata accessor for MusicCuratorConfigurationWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___PGMusicCuratorConfigurationWrapper_configuration], __src, 0x16CuLL);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

void static MusicCuratorConfiguration.memoryCreationConfiguration()(uint64_t a1@<X8>)
{
  static MusicCuratorConfiguration.defaultConfiguration()(v15);
  if (!v1)
  {
    v14 = v30;
    v12 = v17;
    v13 = v31;
    v3 = v32;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v4 = sub_22F740B90();
    __swift_project_value_buffer(v4, qword_2810B4D90);
    v5 = sub_22F740B70();
    v6 = sub_22F7415C0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22F0FC000, v5, v6, "[MemoriesMusic] Using memoryCreationMusicForTopicConfiguration", v7, 2u);
      MEMORY[0x2319033A0](v7, -1, -1);
    }

    v8 = v15[3];
    *(a1 + 32) = v15[2];
    *(a1 + 48) = v8;
    *(a1 + 64) = v16;
    v9 = v15[1];
    *a1 = v15[0];
    *(a1 + 16) = v9;
    *(a1 + 72) = v12;
    *(a1 + 88) = v18;
    *(a1 + 104) = v19;
    *(a1 + 120) = xmmword_22F7847E0;
    *(a1 + 136) = xmmword_22F7847F0;
    *(a1 + 152) = 0x412000004E6E6B28;
    *(a1 + 160) = 1000;
    *(a1 + 184) = v21;
    *(a1 + 168) = v20;
    *(a1 + 216) = v23;
    *(a1 + 200) = v22;
    *(a1 + 248) = v25;
    *(a1 + 232) = v24;
    v10 = v27;
    *(a1 + 264) = v26;
    *(a1 + 280) = v10;
    v11 = v29;
    *(a1 + 296) = v28;
    *(a1 + 312) = v11;
    *(a1 + 328) = v14;
    *(a1 + 344) = v13;
    *(a1 + 360) = v3;
  }
}

id MusicCuratorConfigurationWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCuratorConfigurationWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicCuratorConfigurationWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F314DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 364))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22F314E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 364) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 364) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F314EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22F314F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicCuratorConfiguration.ScoreThresholdsForRankersConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicCuratorConfiguration.ScoreThresholdsForRankersConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_22F3151E4()
{
  result = qword_27DAB3688;
  if (!qword_27DAB3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3688);
  }

  return result;
}

unint64_t sub_22F31523C()
{
  result = qword_27DAB3690;
  if (!qword_27DAB3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3690);
  }

  return result;
}

unint64_t sub_22F315294()
{
  result = qword_27DAB3698;
  if (!qword_27DAB3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3698);
  }

  return result;
}

unint64_t sub_22F3152EC()
{
  result = qword_27DAB36A0;
  if (!qword_27DAB36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36A0);
  }

  return result;
}

unint64_t sub_22F315344()
{
  result = qword_27DAB36A8;
  if (!qword_27DAB36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36A8);
  }

  return result;
}

unint64_t sub_22F31539C()
{
  result = qword_27DAB36B0;
  if (!qword_27DAB36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36B0);
  }

  return result;
}

unint64_t sub_22F3153F4()
{
  result = qword_27DAB36B8;
  if (!qword_27DAB36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36B8);
  }

  return result;
}

unint64_t sub_22F31544C()
{
  result = qword_27DAB36C0;
  if (!qword_27DAB36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36C0);
  }

  return result;
}

unint64_t sub_22F3154A4()
{
  result = qword_27DAB36C8;
  if (!qword_27DAB36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36C8);
  }

  return result;
}

unint64_t sub_22F3154FC()
{
  result = qword_27DAB36D0;
  if (!qword_27DAB36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36D0);
  }

  return result;
}

unint64_t sub_22F315554()
{
  result = qword_27DAB36D8;
  if (!qword_27DAB36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36D8);
  }

  return result;
}

unint64_t sub_22F3155AC()
{
  result = qword_27DAB36E0;
  if (!qword_27DAB36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36E0);
  }

  return result;
}

unint64_t sub_22F315604()
{
  result = qword_27DAB36E8;
  if (!qword_27DAB36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36E8);
  }

  return result;
}

unint64_t sub_22F31565C()
{
  result = qword_2810AA240;
  if (!qword_2810AA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA240);
  }

  return result;
}

unint64_t sub_22F3156B4()
{
  result = qword_2810AA248;
  if (!qword_2810AA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA248);
  }

  return result;
}

unint64_t sub_22F31570C()
{
  result = qword_2810AA380;
  if (!qword_2810AA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA380);
  }

  return result;
}

unint64_t sub_22F315764()
{
  result = qword_2810AA388;
  if (!qword_2810AA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA388);
  }

  return result;
}

unint64_t sub_22F3157BC()
{
  result = qword_2810AA3A0;
  if (!qword_2810AA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3A0);
  }

  return result;
}

unint64_t sub_22F315814()
{
  result = qword_2810AA3A8;
  if (!qword_2810AA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3A8);
  }

  return result;
}

unint64_t sub_22F31586C()
{
  result = qword_2810AA280;
  if (!qword_2810AA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA280);
  }

  return result;
}

unint64_t sub_22F3158C4()
{
  result = qword_2810AA288;
  if (!qword_2810AA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA288);
  }

  return result;
}

unint64_t sub_22F31591C()
{
  result = qword_2810AA320;
  if (!qword_2810AA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA320);
  }

  return result;
}

unint64_t sub_22F315974()
{
  result = qword_2810AA328;
  if (!qword_2810AA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA328);
  }

  return result;
}

unint64_t sub_22F3159CC()
{
  result = qword_2810AA2E0;
  if (!qword_2810AA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2E0);
  }

  return result;
}

unint64_t sub_22F315A24()
{
  result = qword_2810AA2E8;
  if (!qword_2810AA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2E8);
  }

  return result;
}

unint64_t sub_22F315A7C()
{
  result = qword_2810AA300;
  if (!qword_2810AA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA300);
  }

  return result;
}

unint64_t sub_22F315AD4()
{
  result = qword_2810AA308;
  if (!qword_2810AA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA308);
  }

  return result;
}

unint64_t sub_22F315B2C()
{
  result = qword_2810AA2A0;
  if (!qword_2810AA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2A0);
  }

  return result;
}

unint64_t sub_22F315B84()
{
  result = qword_2810AA2A8;
  if (!qword_2810AA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2A8);
  }

  return result;
}

unint64_t sub_22F315BDC()
{
  result = qword_2810AA260;
  if (!qword_2810AA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA260);
  }

  return result;
}

unint64_t sub_22F315C34()
{
  result = qword_2810AA268;
  if (!qword_2810AA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA268);
  }

  return result;
}

unint64_t sub_22F315C8C()
{
  result = qword_2810AA2C0;
  if (!qword_2810AA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2C0);
  }

  return result;
}

unint64_t sub_22F315CE4()
{
  result = qword_2810AA2C8;
  if (!qword_2810AA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2C8);
  }

  return result;
}

unint64_t sub_22F315D3C()
{
  result = qword_2810AA340;
  if (!qword_2810AA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA340);
  }

  return result;
}

unint64_t sub_22F315D94()
{
  result = qword_2810AA348;
  if (!qword_2810AA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA348);
  }

  return result;
}

unint64_t sub_22F315DEC()
{
  result = qword_2810AA360;
  if (!qword_2810AA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA360);
  }

  return result;
}

unint64_t sub_22F315E44()
{
  result = qword_2810AA368;
  if (!qword_2810AA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA368);
  }

  return result;
}

uint64_t sub_22F315E98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000023 && 0x800000022F79A780 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000033 && 0x800000022F79A7B0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002CLL && 0x800000022F79A7F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000003CLL && 0x800000022F79A820 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x800000022F79A860 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022F79A890 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022F79A8C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022F79A8E0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79A900 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_22F742040();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22F316170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x800000022F79A920 == a2;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022F79A940 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965576369706F74 && a2 == 0xEB00000000746867 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6557656C61636F6CLL && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65576D6F646E6172 && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xEF74686769655774 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79A960 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F79A980 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022F79A9A0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022F79A9C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022F79A9E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_22F3164F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x800000022F79A920 == a2;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022F79A940 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965576369706F74 && a2 == 0xEB00000000746867 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6557656C61636F6CLL && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65576D6F646E6172 && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xEF74686769655774 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79A960 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F79A980 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_22F316798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000022F78D4B0 == a2;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61526369706F74 && a2 == 0xEB0000000072656BLL || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6152656C61636F6CLL && a2 == 0xEC00000072656B6ELL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xEF72656B6E615274 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79AA10 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F79AA30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22F3169AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000022F79AA50 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022F79AA70 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022F79AA90 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_22F742040();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F316AD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000022F79AAC0 == a2;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022F79AAE0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7924F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xED00006369706F54 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F79AB00 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79AB20 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79AB40 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F7991C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEC000000656D6954 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xED00007365726F63 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEF73646C6F687365)
  {

    return 10;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void __swiftcall GraphEntityRanker.Options.init(biasTerm:minimumAssetsPerMoment:minimumAssetsPerScene:birthdayBoost:disableNormalization:)(PhotosGraph::GraphEntityRanker::Options *__return_ptr retstr, Swift::Double biasTerm, Swift::Int minimumAssetsPerMoment, Swift::Int minimumAssetsPerScene, Swift::Double birthdayBoost, Swift::Bool disableNormalization)
{
  retstr->biasTerm = biasTerm;
  retstr->minimumAssetsPerMoment = minimumAssetsPerMoment;
  retstr->minimumAssetsPerScene = minimumAssetsPerScene;
  retstr->birthdayBoost = birthdayBoost;
  retstr->disableNormalization = disableNormalization;
}

uint64_t GraphEntityRanker.__allocating_init()()
{
  v0 = swift_allocObject();
  GraphEntityRanker.init()();
  return v0;
}

void *GraphEntityRanker.init()()
{
  v1 = v0;
  v26 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_22F73FA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = sub_22F73F7D0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x277CC9830], v14, v16);
  sub_22F73F7E0();
  (*(v15 + 8))(v18, v14);
  sub_22F73F9C0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22F120ADC(v6, &qword_27DAB24E0, &unk_22F77C6B0);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    swift_beginAccess();
    sub_22F73F980();
    swift_endAccess();
    (*(v8 + 8))(v13, v7);
  }

  v19 = v25;
  sub_22F73F780();
  v20 = sub_22F73F7C0();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  swift_beginAccess();
  sub_22F73F960();
  swift_endAccess();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v21);
  *(v1 + OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_bundle) = [objc_opt_self() bundleForClass_];
  return v1;
}

void GraphEntityRanker.rankEntities(in:with:currentDate:progressReporter:)(void *a1, __int128 *a2, void *a3)
{
  v8 = a2[1];
  v127 = *a2;
  v128 = v8;
  v9 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v10 = qword_2810B4DF0;
  *&v11 = CACurrentMediaTime();
  sub_22F1B560C("GraphEntityRanker.rankEntities", 30, 2u, v11, 0, v10, v123);
  v12 = sub_22F741670();
  v13 = [a1 numberOfMomentNodes];
  if (v13 < 1)
  {

    sub_22F1B2BBC(0);

    return;
  }

  v14 = v13;
  v122 = MEMORY[0x277D84F90];
  v111 = v12 & 0xC000000000000001;
  v112 = v3;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2319016F0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v15 = *(v12 + 32);
  }

  v16 = v15;
  *&v17 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphPersonEntities", 23, 2u, v17, 0, v10, v124);
  sub_22F741690();
  if (v4)
  {

    sub_22F1B2BBC(0);

LABEL_18:
    sub_22F1B2BBC(0);

    return;
  }

  v110 = v10;
  v109 = a1;
  v18 = [objc_opt_self() namedPersonNodesInGraph_];
  v121 = MEMORY[0x277D84F90];
  v19 = swift_allocObject();
  v20 = v14;
  v14 = v9;
  v9 = v19;
  v107 = v20;
  *(v19 + 16) = v20;
  v21 = a2[1];
  *(v19 + 24) = *a2;
  *(v19 + 40) = v21;
  *(v19 + 56) = v14;
  *(v19 + 64) = v3;
  *(v19 + 72) = 0;
  *(v19 + 80) = 0;
  *(v19 + 88) = &v121;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22F31E30C;
  *(v22 + 24) = v9;
  v119 = sub_22F26B650;
  v120 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  *(&aBlock + 1) = 1107296256;
  *&v118 = sub_22F322D74;
  *(&v118 + 1) = &block_descriptor_29;
  v23 = _Block_copy(&aBlock);

  [v18 enumerateUsingBlock_];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
    goto LABEL_60;
  }

  v108 = v14;
  if ((v14 & 1) == 0)
  {

    v25 = sub_22F31E70C(v24);

    v121 = v25;
  }

  sub_22F7416A0();

  v26 = v121;
  sub_22F1B2BBC(0);

  sub_22F1458B4(v26);
  if (v111)
  {
    v27 = MEMORY[0x2319016F0](1, v12);
    v14 = v109;
  }

  else
  {
    v14 = v109;
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v27 = *(v12 + 40);
  }

  *&v28 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphPetEntities", 20, 2u, v28, 0, v10, v125);
  sub_22F741690();
  v29 = [objc_opt_self() namedPetNodesInGraph_];
  v121 = MEMORY[0x277D84F90];
  v30 = swift_allocObject();
  v30[2] = v107;
  v30[3] = 0;
  v30[4] = 0;
  v30[5] = &v121;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_22F31E974;
  *(v31 + 24) = v30;
  v119 = sub_22F1F68E8;
  v120 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v118 = sub_22F322D74;
  *(&v118 + 1) = &block_descriptor_12_0;
  v32 = _Block_copy(&aBlock);

  [v29 enumerateUsingBlock_];
  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    goto LABEL_72;
  }

  if ((v108 & 1) == 0)
  {

    v34 = sub_22F31E70C(v33);

    v121 = v34;
  }

  sub_22F7416A0();

  v35 = v121;
  sub_22F1B2BBC(0);

  sub_22F1458B4(v35);
  aBlock = v127;
  v118 = v128;
  LOBYTE(v9) = v108;
  LOBYTE(v119) = v108;
  if (v111)
  {
    v36 = MEMORY[0x2319016F0](2, v12);
    v37 = v112;
  }

  else
  {
    v37 = v3;
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v36 = *(v12 + 48);
  }

  v38 = sub_22F31E980(v14, &aBlock);

  sub_22F1458B4(v38);
  aBlock = v127;
  v118 = v128;
  LOBYTE(v119) = v108;
  if (v111)
  {
    v39 = MEMORY[0x2319016F0](3, v12);
  }

  else
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
      goto LABEL_128;
    }

    v39 = *(v12 + 56);
  }

  v40 = v39;
  v41 = sub_22F31ED48(v14, &aBlock);

  sub_22F1458B4(v41);
  aBlock = v127;
  v118 = v128;
  LOBYTE(v119) = v108;
  if (v111)
  {
    v42 = MEMORY[0x2319016F0](4, v12);
    v43 = a3;
  }

  else
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
    {
      __break(1u);
      goto LABEL_131;
    }

    v42 = *(v12 + 64);
    v43 = a3;
  }

  sub_22F3184E0(v14, &aBlock, v107, v43, v42);
  v45 = v44;

  sub_22F1458B4(v45);
  aBlock = v127;
  v118 = v128;
  LOBYTE(v119) = v108;
  if (v111)
  {
    v46 = MEMORY[0x2319016F0](5, v12);
    goto LABEL_40;
  }

LABEL_38:
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
  {
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
    goto LABEL_136;
  }

  v46 = *(v12 + 72);
LABEL_40:
  v47 = v46;
  v105 = sub_22F320284(v14, &aBlock);
  if (v4)
  {

    goto LABEL_18;
  }

  v48 = *(v105 + 16);
  if (!v48)
  {
LABEL_60:

LABEL_61:
    aBlock = v127;
    v118 = v128;
    LOBYTE(v119) = v9;
    if (v111)
    {
      v62 = MEMORY[0x2319016F0](6, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v62 = *(v12 + 80);
    }

    v63 = v62;
    v64 = sub_22F32071C(v14, &aBlock, v107, a3, v62);

    sub_22F1458B4(v64);
    aBlock = v127;
    v118 = v128;
    LOBYTE(v119) = v9;
    if (v111)
    {
      v65 = MEMORY[0x2319016F0](7, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 8uLL)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v65 = *(v12 + 88);
    }

    v66 = v65;
    v67 = sub_22F3211F0(v109, &aBlock);

    sub_22F1458B4(v67);
    aBlock = v127;
    v118 = v128;
    LOBYTE(v119) = v108;
    if (v111)
    {
      v68 = MEMORY[0x2319016F0](8, v12);
LABEL_75:
      v69 = v68;
      v70 = sub_22F321BD8(v109, &aBlock);

      v71 = *(v70 + 16);
      if (v71)
      {
        v72 = v122;
        v73 = 32;
        v115 = v70;
        while (1)
        {
          v74 = *(v115 + v73);
          v75 = *(v74 + 16);
          v76 = *(v72 + 2);
          v77 = v76 + v75;
          if (__OFADD__(v76, v75))
          {
            goto LABEL_132;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v77 > *(v72 + 3) >> 1)
          {
            if (v76 <= v77)
            {
              v79 = v76 + v75;
            }

            else
            {
              v79 = v76;
            }

            v72 = sub_22F13FB00(isUniquelyReferenced_nonNull_native, v79, 1, v72);
          }

          if (*(v74 + 16))
          {
            if ((*(v72 + 3) >> 1) - *(v72 + 2) < v75)
            {
              goto LABEL_134;
            }

            swift_arrayInitWithCopy();

            if (v75)
            {
              v80 = *(v72 + 2);
              v60 = __OFADD__(v80, v75);
              v81 = v80 + v75;
              if (v60)
              {
                goto LABEL_135;
              }

              *(v72 + 2) = v81;
            }
          }

          else
          {

            if (v75)
            {
              goto LABEL_133;
            }
          }

          v73 += 8;
          if (!--v71)
          {

            v122 = v72;
            goto LABEL_93;
          }
        }
      }

LABEL_93:
      aBlock = v127;
      v118 = v128;
      LOBYTE(v119) = v108;
      if (v111)
      {
        v82 = MEMORY[0x2319016F0](9, v12);
      }

      else
      {
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xAuLL)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v82 = *(v12 + 104);
      }

      v83 = v82;
      v113 = sub_22F3223D0(v109, &aBlock, v107);

      v84 = *(v113 + 16);
      if (v84)
      {
        v116 = v122;
        v85 = 32;
        while (1)
        {
          v86 = *(v113 + v85);
          v87 = *(v86 + 16);
          v88 = *(v116 + 2);
          v89 = v88 + v87;
          if (__OFADD__(v88, v87))
          {
            goto LABEL_137;
          }

          v90 = swift_isUniquelyReferenced_nonNull_native();
          if (!v90 || v89 > *(v116 + 3) >> 1)
          {
            if (v88 <= v89)
            {
              v91 = v88 + v87;
            }

            else
            {
              v91 = v88;
            }

            v116 = sub_22F13FB00(v90, v91, 1, v116);
          }

          if (*(v86 + 16))
          {
            if ((*(v116 + 3) >> 1) - *(v116 + 2) < v87)
            {
              goto LABEL_139;
            }

            swift_arrayInitWithCopy();

            if (v87)
            {
              v92 = *(v116 + 2);
              v60 = __OFADD__(v92, v87);
              v93 = v92 + v87;
              if (v60)
              {
                goto LABEL_140;
              }

              *(v116 + 2) = v93;
            }
          }

          else
          {

            if (v87)
            {
              goto LABEL_138;
            }
          }

          v85 += 8;
          if (!--v84)
          {

            v122 = v116;
            goto LABEL_118;
          }
        }
      }

LABEL_117:

LABEL_118:
      if (v111)
      {
        v94 = MEMORY[0x2319016F0](10, v12);
      }

      else
      {
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xBuLL)
        {
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          return;
        }

        v94 = *(v12 + 112);
      }

      v37 = v94;

      *&v95 = CACurrentMediaTime();
      sub_22F1B560C("rankGraphHomeWorkEntities", 25, 2u, v95, 0, v110, v126);
      sub_22F741690();
      v96 = [v109 localeIdentifier];
      v97 = sub_22F740E20();
      v99 = v98;

      sub_22F120634(0, &qword_2810A8F90, off_27887AE30);
      v10 = [swift_getObjCClassFromMetadata(v100) nodesInGraph_];
      v121 = MEMORY[0x277D84F90];
      v101 = swift_allocObject();
      v101[2] = v107;
      v101[3] = &v121;
      v101[4] = v97;
      v101[5] = v99;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_22F3227A8;
      *(v102 + 24) = v101;
      v119 = sub_22F26B650;
      v120 = v102;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = v5;
      *&v118 = sub_22F322D74;
      *(&v118 + 1) = &block_descriptor_21_1;
      v103 = _Block_copy(&aBlock);

      [v10 enumerateUsingBlock_];
      _Block_release(v103);
      LOBYTE(v103) = swift_isEscapingClosureAtFileLocation();

      if ((v103 & 1) == 0)
      {
        v14 = v121;

        if ((v108 & 1) == 0)
        {
          v104 = sub_22F31E70C(v14);

          v14 = v104;
        }

        sub_22F7416A0();
        goto LABEL_129;
      }

      goto LABEL_145;
    }

LABEL_73:
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 9uLL)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v68 = *(v12 + 96);
    goto LABEL_75;
  }

  v49 = v122;
  v50 = 32;
  while (1)
  {
    v106 = v48;
    v52 = *(v105 + v50);
    v53 = *(v52 + 16);
    v37 = *(v49 + 2);
    v54 = &v37[v53];
    if (__OFADD__(v37, v53))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v10 = v14;

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v49;
    if (!v55 || v54 > *(v49 + 3) >> 1)
    {
      if (v37 <= v54)
      {
        v57 = &v37[v53];
      }

      else
      {
        v57 = v37;
      }

      v56 = sub_22F13FB00(v55, v57, 1, v49);
    }

    if (!*(v52 + 16))
    {
      v51 = v56;

      v49 = v51;
      if (v53)
      {
        goto LABEL_115;
      }

      goto LABEL_45;
    }

    if ((*(v56 + 3) >> 1) - *(v56 + 2) < v53)
    {
      break;
    }

    v58 = v56;
    swift_arrayInitWithCopy();

    v49 = v58;
    if (v53)
    {
      v59 = *(v58 + 2);
      v60 = __OFADD__(v59, v53);
      v61 = v59 + v53;
      if (v60)
      {
        goto LABEL_127;
      }

      *(v58 + 2) = v61;
    }

LABEL_45:
    v50 += 8;
    v48 = v106 - 1;
    if (v106 == 1)
    {

      v122 = v49;
      LOBYTE(v9) = v108;
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:

  sub_22F1B2BBC(0);

  sub_22F1458B4(v14);
  sub_22F1B2BBC(0);
}

void sub_22F3184E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a4;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v88 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = &v71 - v13;
  v14 = sub_22F73F9B0();
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v17 = qword_2810B4DF0;
  *&v18 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphSeasonEntities", 23, 2u, v18, 0, v17, v98);
  sub_22F741690();
  if (v5)
  {
    sub_22F1B2BBC(0);

LABEL_9:

    return;
  }

  v79 = a5;
  v19 = [a1 localeIdentifier];
  v80 = sub_22F740E20();
  v21 = v20;

  if ((a3 * 10) >> 64 != (10 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v72 = v10;
  v73 = v9;
  v74 = 0;
  v22 = 1.0 / (10 * a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3708, &qword_22F785BF8);
  inited = swift_initStackObject();
  v85 = xmmword_22F7727B0;
  *(inited + 16) = xmmword_22F7727B0;
  *(inited + 32) = 1;
  *(inited + 40) = sub_22F740E20();
  *(inited + 48) = v24;
  *(inited + 56) = 2;
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v25;
  *(inited + 80) = 3;
  *(inited + 88) = sub_22F740E20();
  *(inited + 96) = v26;
  *(inited + 104) = 4;
  v77 = a1;
  v78 = v21;
  *(inited + 112) = sub_22F740E20();
  *(inited + 120) = v27;
  v81 = sub_22F150118(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3710, &qword_22F785C00);
  swift_arrayDestroy();
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3718, &qword_22F785C08);
  v29 = swift_initStackObject();
  *(v29 + 16) = v85;
  *(v29 + 32) = sub_22F740E20();
  *(v29 + 40) = v30;
  *(v29 + 48) = v22;
  *(v29 + 56) = sub_22F740E20();
  *(v29 + 64) = v31;
  *(v29 + 72) = v22;
  *(v29 + 80) = sub_22F740E20();
  *(v29 + 88) = v32;
  *(v29 + 96) = v22;
  *(v29 + 104) = sub_22F740E20();
  *(v29 + 112) = v33;
  *(v29 + 120) = v22;
  v34 = sub_22F14E214(v29);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3720, &qword_22F785C10);
  swift_arrayDestroy();
  *(v28 + 16) = v34;
  v76 = v28 + 16;
  v35 = sub_22F73F5B0();
  v36 = v91;
  v37 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v82 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  swift_beginAccess();
  v38 = v86;
  v39 = v87;
  v84 = *(v86 + 16);
  *&v85 = v86 + 16;
  v84(v16, v36 + v37, v87);
  v40 = sub_22F73F8E0();
  v86 = *(v38 + 8);
  (v86)(v16, v39);
  v41 = swift_allocObject();
  *(v41 + 16) = v81;
  *(v41 + 24) = v28;
  v96 = sub_22F322AA4;
  v97 = v41;
  v92 = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v83 = &v94;
  v94 = sub_22F31C650;
  v95 = &block_descriptor_89;
  v42 = _Block_copy(&v92);

  v43 = v28;

  PLSearchSeasonStringsForDate();
  _Block_release(v42);

  v44 = objc_opt_self();
  v75 = v44;
  v45 = sub_22F73F5B0();
  v46 = [v44 dateByAddingWeeksOfYear:-1 toDate:v45];

  sub_22F73F640();
  v47 = sub_22F73F5B0();
  v84(v16, v91 + v82, v39);
  v48 = sub_22F73F8E0();
  (v86)(v16, v39);
  v49 = swift_allocObject();
  v50 = v81;
  *(v49 + 16) = v81;
  *(v49 + 24) = v43;
  v51 = v43;
  *(v49 + 32) = v22;
  v96 = sub_22F322AAC;
  v97 = v49;
  v92 = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v94 = sub_22F31C650;
  v95 = &block_descriptor_95;
  v52 = _Block_copy(&v92);

  PLSearchSeasonStringsForDate();
  _Block_release(v52);

  v53 = sub_22F73F5B0();
  v54 = [v75 dateByAddingWeeksOfYear:4 toDate:v53];

  sub_22F73F640();
  v55 = sub_22F73F5B0();
  v84(v16, v91 + v82, v39);
  v56 = sub_22F73F8E0();
  (v86)(v16, v39);
  v57 = swift_allocObject();
  *(v57 + 16) = v50;
  *(v57 + 24) = v51;
  *(v57 + 32) = v22;
  v96 = sub_22F322D28;
  v97 = v57;
  v92 = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v94 = sub_22F31C650;
  v95 = &block_descriptor_101_0;
  v58 = _Block_copy(&v92);

  PLSearchSeasonStringsForDate();
  _Block_release(v58);

  sub_22F120634(0, &qword_2810A8FB8, off_27887B3B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v59);
  v61 = [ObjCClassFromMetadata nodesInGraph_];
  v99 = MEMORY[0x277D84F90];
  v62 = swift_allocObject();
  v63 = v80;
  v62[2] = v76;
  v62[3] = v63;
  v62[4] = v78;
  v62[5] = &v99;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_22F322B18;
  *(v64 + 24) = v62;
  v96 = sub_22F26B650;
  v97 = v64;
  v92 = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v94 = sub_22F322D74;
  v95 = &block_descriptor_110;
  v65 = _Block_copy(&v92);

  [v61 enumerateUsingBlock_];
  _Block_release(v65);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v66 = v74;
  sub_22F7416A0();
  if (v66)
  {

    v67 = v73;
    v68 = *(v72 + 8);
    v68(v88, v73);
    v68(v89, v67);

    sub_22F1B2BBC(0);

    goto LABEL_9;
  }

  v69 = v73;
  v70 = *(v72 + 8);
  v70(v88, v73);
  v70(v89, v69);

  sub_22F1B2BBC(0);
}