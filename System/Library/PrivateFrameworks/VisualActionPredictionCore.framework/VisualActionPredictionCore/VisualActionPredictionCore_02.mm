uint64_t sub_2262E3608(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22633941C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_226339D1C();
      goto LABEL_7;
    }

    sub_226336374(v15, a4 & 1);
    v26 = sub_22633941C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22634FF9C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2262E3068(v12, a2, a3, a1, v18);
}

uint64_t sub_2262E3788(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22633941C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226337500(v16, a4 & 1);
      v11 = sub_22633941C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_226350C8C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_22633A944();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2262E3900(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2263394D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22633A6C4();
      goto LABEL_7;
    }

    sub_226337124(v17, a3 & 1);
    v22 = sub_2263394D8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2262E3160(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_2262E3ACC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2263394D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ResourceManager.Record(0);
      return sub_2262E483C(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ResourceManager.Record);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_22633AAB0();
    goto LABEL_7;
  }

  sub_2263377A4(v17, a3 & 1);
  v24 = sub_2263394D8(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2262E3218(v14, v11, a1, v20);
}

uint64_t sub_2262E3CA0(uint64_t a1)
{
  v2 = type metadata accessor for ResourceManager.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2262E3CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22633941C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for VisualAction(0);
      return sub_2262E483C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for VisualAction);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22633AAEC();
    goto LABEL_7;
  }

  sub_2263377E0(v15, a4 & 1);
  v22 = sub_22633941C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2262E3308(v12, a2, a3, a1, v18);
}

uint64_t sub_2262E3E68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634F0EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226339680(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22633AD4C();
      goto LABEL_7;
    }

    sub_226337B58(v17, a3 & 1);
    v28 = sub_226339680(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2262E33B4(v14, v11, a1, v20, MEMORY[0x277D78248], MEMORY[0x277D78298]);
    }

LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_22634F10C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2262E4094(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634F34C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2263395AC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22633AD88();
      goto LABEL_7;
    }

    sub_226338000(v17, a3 & 1);
    v28 = sub_2263395AC(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2262E33B4(v14, v11, a1, v20, MEMORY[0x277D78638], MEMORY[0x277CC95F0]);
    }

LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_22634EEFC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2262E42C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22633941C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226338950(v16, a4 & 1);
      v11 = sub_22633941C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_226350C8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22633B15C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2262E443C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2263394D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22633B2CC();
      goto LABEL_7;
    }

    sub_226338BF8(v17, a3 & 1);
    v22 = sub_2263394D8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2262E3160(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_2262E4608(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2263394D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22633B54C();
      goto LABEL_7;
    }

    sub_226338FD4(v17, a3 & 1);
    v22 = sub_2263394D8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2262E3160(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_2262E47D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262E483C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262E48A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id VisualActionEvent.__allocating_init(actionId:outcome:bundleId:majorLabel:minorLabel:timestamp:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v19 = objc_allocWithZone(v10);
  v20 = *a3;
  *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
  v21 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  *v21 = a1;
  v21[1] = a2;
  v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v20;
  v22 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
  *v24 = a8;
  v24[1] = a10;
  *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = a9;
  v27.receiver = v19;
  v27.super_class = v10;
  return objc_msgSendSuper2(&v27, sel_init);
}

VisualActionPredictionCore::VisualActionEvent::Outcome_optional __swiftcall VisualActionEvent.Outcome.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VisualActionEvent.dataVersion.getter()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

void VisualActionEvent.dataVersion.setter(int a1)
{
  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id VisualActionEvent.init(actionId:outcome:bundleId:majorLabel:minorLabel:timestamp:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v20 = *a3;
  *&v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
  v21 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  *v21 = a1;
  v21[1] = a2;
  v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v20;
  v22 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
  *v24 = a8;
  v24[1] = a10;
  *&v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = a9;
  v27.receiver = v10;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t VisualActionEvent.serialize()()
{
  v0 = sub_22634F1EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_2262E5078(&v13[-v8]);
  sub_2262E6268(v9, v7);
  v10 = type metadata accessor for PBVisualActionEvent(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    sub_2262E62D8(v9);
    sub_2262E62D8(v7);
    return 0;
  }

  else
  {
    sub_22634F1DC();
    sub_2262E6340();
    v12 = sub_22634F26C();
    (*(v1 + 8))(v3, v0);
    sub_2262E62D8(v9);
    sub_2262E6398(v7);
    return v12;
  }
}

uint64_t sub_2262E5078@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PBVisualActionEvent(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634F19C();
  v7 = &v6[v3[5]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v6[v3[6]];
  *v8 = 0;
  *(v8 + 4) = 256;
  v9 = &v6[v3[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v6[v3[8]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v6[v3[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = v3[10];
  v13 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId + 8);
  *v7 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId);
  *(v7 + 1) = v13;
  *v8 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome);
  *(v8 + 4) = 1;
  v14 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId + 8);
  *v9 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId);
  *(v9 + 1) = v14;
  v15 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel + 8);
  if (v15)
  {
    *v10 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel);
    *(v10 + 1) = v15;
  }

  v16 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel + 8);
  if (v16)
  {
    *v11 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel);
    *(v11 + 1) = v16;
  }

  v17 = &v6[v12];
  *v17 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp);
  v17[8] = 0;
  sub_2262E6C44(v6, a1);
  (*(v4 + 56))(a1, 0, 1, v3);
}

id VisualActionEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2262E52F4()
{
  v1 = *v0;
  v2 = 0x7372655661746164;
  v3 = 0x62614C726F6E696DLL;
  if (v1 != 5)
  {
    v3 = 0x6D617473656D6974;
  }

  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x62614C726F6A616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64496E6F69746361;
  if (v1 != 1)
  {
    v5 = 0x656D6F6374756FLL;
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

uint64_t sub_2262E53E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2262E698C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2262E5424(uint64_t a1)
{
  v2 = sub_2262E63F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262E5460(uint64_t a1)
{
  v2 = sub_2262E63F4();

  return MEMORY[0x2821FE720](a1, v2);
}

id VisualActionEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VisualActionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793278, &qword_2263525F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262E63F4();
  sub_226350D2C();
  swift_beginAccess();
  v11 = 0;
  sub_226350BFC();
  if (!v2)
  {
    v11 = 1;
    sub_226350BBC();
    v11 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome);
    v10[6] = 2;
    sub_2262E6448();
    sub_226350BEC();
    v11 = 3;
    sub_226350BBC();
    v11 = 4;
    sub_226350B7C();
    v11 = 5;
    sub_226350B7C();
    v11 = 6;
    sub_226350BDC();
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *VisualActionEvent.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793290, &qword_226352600);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  v7 = v1;
  *&v1[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
  v8 = a1[3];
  v28 = a1;
  v9 = a1;
  v11 = &v27 - v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_2262E63F4();
  sub_226350D1C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = 0;
    v12 = sub_226350B4C();
    swift_beginAccess();
    *&v7[v6] = v12;
    v33 = 1;
    v13 = sub_226350B0C();
    v15 = &v7[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
    *v15 = v13;
    v15[1] = v16;
    v32 = 2;
    sub_2262E649C();
    sub_226350B3C();
    v7[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v33;
    v33 = 3;
    v17 = sub_226350B0C();
    v18 = &v7[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
    *v18 = v17;
    v18[1] = v19;
    v33 = 4;
    v20 = sub_226350ACC();
    v21 = &v7[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
    *v21 = v20;
    v21[1] = v22;
    v33 = 5;
    v23 = sub_226350ACC();
    v24 = &v7[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
    *v24 = v23;
    v24[1] = v25;
    v33 = 6;
    sub_226350B2C();
    *&v7[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v26;
    v30.receiver = v7;
    v30.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v30, sel_init);
    (*(v5 + 8))(v11, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return v7;
}

_BYTE *sub_2262E5C88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = VisualActionEvent.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

int *sub_2262E5CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v5 = type metadata accessor for PBVisualActionEvent(0);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2262E6268(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2262E62D8(v4);
    sub_2262E6CA8();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    sub_2262E62D8(a1);
  }

  else
  {
    sub_2262E6C44(v4, v8);
    v10 = &v8[v5[8]];
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *v10 & 0xFFFFFFFFFFFFLL;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v12)
      {
        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      if (v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v52 = v17;
      v53 = v18;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    v19 = &v8[v5[9]];
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = *v19 & 0xFFFFFFFFFFFFLL;
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23;
    }

    if (v25)
    {
      if (v21)
      {
        v26 = v20;
      }

      else
      {
        v26 = 0;
      }

      if (v21)
      {
        v27 = v21;
      }

      else
      {
        v27 = 0xE000000000000000;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v28 = &v8[v5[6]];
    if (v28[9])
    {
      v49 = 0;
    }

    else
    {
      if ((v28[8] & 1) == 0)
      {

        sub_2262E6CA8();
        swift_allocError();
        *v47 = 0;
        swift_willThrow();
        sub_2262E62D8(a1);
        sub_2262E6398(v8);
        return v5;
      }

      v49 = *v28;
    }

    v51 = a1;
    v29 = &v8[v5[5]];
    v30 = *(v29 + 1);
    if (v30)
    {
      v48 = *v29;
      v31 = v30;
    }

    else
    {
      v48 = 0;
      v31 = 0xE000000000000000;
    }

    v50 = v27;
    v32 = &v8[v5[7]];
    if (*(v32 + 1))
    {
      v33 = *v32;
      v34 = *(v32 + 1);
    }

    else
    {
      v33 = 0;
      v34 = 0xE000000000000000;
    }

    v35 = &v8[v5[10]];
    if (v35[8])
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *v35;
    }

    v37 = type metadata accessor for VisualActionEvent();
    v38 = objc_allocWithZone(v37);
    *&v38[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
    v39 = &v38[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
    v40 = v49;
    *v39 = v48;
    v39[1] = v31;
    v38[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v40;
    v41 = &v38[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
    *v41 = v33;
    v41[1] = v34;
    v42 = &v38[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
    v43 = v53;
    *v42 = v52;
    v42[1] = v43;
    v44 = &v38[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
    v45 = v50;
    *v44 = v26;
    v44[1] = v45;
    *&v38[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v36;
    v54.receiver = v38;
    v54.super_class = v37;

    v5 = objc_msgSendSuper2(&v54, sel_init);
    sub_2262E62D8(v51);
    sub_2262E6398(v8);
  }

  return v5;
}

int *_s26VisualActionPredictionCore0aB5EventC5event4with11dataVersionACXDSg10Foundation4DataV_s6UInt32VtFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22634F1CC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for PBVisualActionEvent(0);
  sub_2262D6170(a1, a2);
  sub_22634F1BC();
  sub_2262E6340();
  sub_22634F27C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return sub_2262E5CFC(v7);
}

uint64_t sub_2262E6268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262E62D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2262E6340()
{
  result = qword_27D793270;
  if (!qword_27D793270)
  {
    type metadata accessor for PBVisualActionEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793270);
  }

  return result;
}

uint64_t sub_2262E6398(uint64_t a1)
{
  v2 = type metadata accessor for PBVisualActionEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2262E63F4()
{
  result = qword_27D793280;
  if (!qword_27D793280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793280);
  }

  return result;
}

unint64_t sub_2262E6448()
{
  result = qword_27D793288;
  if (!qword_27D793288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793288);
  }

  return result;
}

unint64_t sub_2262E649C()
{
  result = qword_27D793298;
  if (!qword_27D793298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793298);
  }

  return result;
}

unint64_t sub_2262E64F4()
{
  result = qword_27D7932A0;
  if (!qword_27D7932A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7932A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionEvent.Outcome(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VisualActionEvent.Outcome(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VisualActionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2262E6888()
{
  result = qword_27D793310;
  if (!qword_27D793310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793310);
  }

  return result;
}

unint64_t sub_2262E68E0()
{
  result = qword_27D793318;
  if (!qword_27D793318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793318);
  }

  return result;
}

unint64_t sub_2262E6938()
{
  result = qword_27D793320;
  if (!qword_27D793320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793320);
  }

  return result;
}

uint64_t sub_2262E698C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372655661746164 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x62614C726F6A616DLL && a2 == 0xEA00000000006C65 || (sub_226350C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x62614C726F6E696DLL && a2 == 0xEA00000000006C65 || (sub_226350C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 6;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_2262E6BF0()
{
  result = qword_27D793328;
  if (!qword_27D793328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793328);
  }

  return result;
}

uint64_t sub_2262E6C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBVisualActionEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2262E6CA8()
{
  result = qword_27D793330;
  if (!qword_27D793330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionEvent.Failure(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VisualActionEvent.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2262E6E50()
{
  result = qword_27D793338;
  if (!qword_27D793338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793338);
  }

  return result;
}

void *sub_2262E6EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v34 - v3;
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = v34 - v9;
  v10 = sub_22634FC4C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v43 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = v34 - v14;
  v42 = type metadata accessor for RankedVisualBundle(0);
  v15 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2262E739C(a1);
  v19 = sub_2262EAF24(v18);

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v34[1] = v19;
    v22 = v19 + v21;
    v23 = v6;
    v24 = *(v15 + 72);
    v36 = (v23 + 16);
    v37 = (v23 + 32);
    v35 = (v23 + 8);
    v40 = v11;
    v46 = (v11 + 32);
    v47 = (v23 + 48);
    v25 = MEMORY[0x277D84F90];
    v41 = v10;
    v38 = v24;
    v39 = v4;
    do
    {
      sub_2262EB6C4(v22, v17);
      sub_22634F48C();
      if ((*v47)(v4, 1, v5) == 1)
      {
        sub_2262EB728(v17);
        sub_2262D67D8(v4, &qword_27D793010, &unk_226354CE0);
      }

      else
      {
        v26 = v44;
        (*v37)(v44, v4, v5);
        (*v36)(v45, v26, v5);
        v27 = v10;
        v28 = v43;
        sub_22634FC2C();
        (*v35)(v26, v5);
        sub_2262EB728(v17);
        v29 = *v46;
        (*v46)(v48, v28, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2262DCF74(0, v25[2] + 1, 1, v25);
        }

        v31 = v25[2];
        v30 = v25[3];
        v4 = v39;
        if (v31 >= v30 >> 1)
        {
          v25 = sub_2262DCF74((v30 > 1), v31 + 1, 1, v25);
        }

        v24 = v38;
        v25[2] = v31 + 1;
        v32 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31;
        v10 = v41;
        v29(v32, v48, v41);
      }

      v22 += v24;
      --v20;
    }

    while (v20);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v49 = v25;

  sub_2262E86BC(&v49);

  return v49;
}

void *sub_2262E739C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v107 - v3;
  v113 = sub_22635004C();
  v5 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RankedVisualBundle(0);
  v129 = *(v8 - 8);
  v130 = v8;
  MEMORY[0x28223BE20](v8);
  v140 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v107 - v11;
  v126 = sub_22634F0EC();
  v13 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22634F06C();
  v15 = *(v124 - 8);
  v16 = MEMORY[0x28223BE20](v124);
  v115 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v107 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v107 - v20;
  v138 = sub_22634F51C();
  v22 = MEMORY[0x28223BE20](v138);
  MEMORY[0x28223BE20](v22);
  v142 = &v107 - v25;
  v26 = *(a1 + 16);
  if (v26)
  {
    v117 = v7;
    v116 = v24;
    v108 = v4;
    v137 = 0;
    v28 = *(v23 + 16);
    v27 = v23 + 16;
    v141 = v28;
    v29 = (a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64)));
    v122 = (v13 + 16);
    v123 = v15;
    v121 = v15 + 32;
    v135 = (v27 - 8);
    v112 = (v5 + 8);
    v30 = MEMORY[0x277D84F90];
    v134 = *(v27 + 56);
    v120 = *MEMORY[0x277D78238];
    v119 = *MEMORY[0x277D78288];
    *(&v31 + 1) = 2;
    v118 = xmmword_226351C90;
    *&v31 = 136315394;
    v107 = v31;
    v132 = v21;
    v133 = v12;
    v139 = v27;
    v28(v142, v29, v138);
    while (1)
    {
      sub_22634F4AC();
      v33 = sub_22634FA8C();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v21, 1, v33) == 1)
      {
        sub_2262D67D8(v21, &qword_27D793018, &unk_2263552F0);
        v35 = 0.0;
      }

      else
      {
        v36 = sub_22634FA7C();
        v38 = v37;
        (*(v34 + 8))(v21, v33);
        v39 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v39 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (v39)
        {
          v40 = *(v127 + 32);
          (*v122)(v125, v40 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v126);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
          v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
          v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
          v43 = swift_allocObject();
          *(v43 + 16) = v118;
          v44 = v43 + v42;
          v45 = (v44 + v41[14]);
          v46 = sub_22634F0CC();
          (*(*(v46 - 8) + 104))(v44, v120, v46);
          *v45 = v36;
          v45[1] = v38;
          v47 = sub_22634F10C();
          v48 = *(v47 - 8);
          (*(v48 + 104))(v45, v119, v47);
          (*(v48 + 56))(v45, 0, 1, v47);
          sub_22634F05C();
          v49 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
          v51 = v49[2];
          v50 = v49[3];
          v136 = v30;
          if (v51 >= v50 >> 1)
          {
            v49 = sub_2262DC96C((v50 > 1), v51 + 1, 1, v49);
          }

          v52 = v137;
          v49[2] = v51 + 1;
          (*(v123 + 32))(v49 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v51, v128, v124);
          v143 = v49;

          v54 = sub_226302A38(v53, &v143, v40);
          v21 = v132;
          v12 = v133;
          if (v52)
          {
LABEL_25:
            v131 = v26;

            v78 = v52;
            v137 = 0;
            v59 = v138;
            v79 = v117;
            sub_22634FFBC();
            v80 = v116;
            v81 = v142;
            v141(v116, v142, v59);
            v82 = v52;
            v83 = sub_22635003C();
            v84 = sub_22635073C();

            v114 = v84;
            if (os_log_type_enabled(v83, v84))
            {
              v111 = v83;
              v85 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v143 = v110;
              *v85 = v107;
              v86 = v108;
              sub_22634F48C();
              v87 = sub_22634EEFC();
              v88 = *(v87 - 8);
              if ((*(v88 + 48))(v86, 1, v87) == 1)
              {
                sub_2262D67D8(v86, &qword_27D793010, &unk_226354CE0);
                v89 = 0;
                v90 = 0xE000000000000000;
              }

              else
              {
                v89 = sub_22634EEDC();
                v90 = v97;
                (*(v88 + 8))(v86, v87);
              }

              v26 = v131;
              v98 = *v135;
              v99 = v138;
              (*v135)(v116, v138);
              v100 = sub_226345004(v89, v90, &v143);

              *(v85 + 4) = v100;
              *(v85 + 12) = 2112;
              v101 = v78;
              v102 = _swift_stdlib_bridgeErrorToNSError();
              *(v85 + 14) = v102;
              v103 = v109;
              *v109 = v102;
              v104 = v111;
              _os_log_impl(&dword_2262B6000, v111, v114, "Error ranking bundle %s: %@", v85, 0x16u);
              sub_2262D67D8(v103, &qword_27D793CC0, qword_226352A00);
              MEMORY[0x22AA7D570](v103, -1, -1);
              v105 = v110;
              __swift_destroy_boxed_opaque_existential_1Tm(v110);
              MEMORY[0x22AA7D570](v105, -1, -1);
              MEMORY[0x22AA7D570](v85, -1, -1);

              (*v112)(v117, v113);
              v81 = v142;
              v98(v142, v99);
              v59 = v99;
              v21 = v132;
              v12 = v133;
            }

            else
            {

              v32 = *v135;
              (*v135)(v80, v59);
              (*v112)(v79, v113);
              v32(v81, v59);
              v26 = v131;
            }

            v30 = v136;
            goto LABEL_5;
          }

          v55 = v54;
          v137 = 0;

          v35 = v55;
          v30 = v136;
        }

        else
        {

          v35 = 0.0;
        }
      }

      sub_22634F4FC();
      v56 = sub_22634F47C();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v12, 1, v56) == 1)
      {
        sub_2262D67D8(v12, &qword_27D792FE0, &unk_226351C10);
        v58 = 0.0;
        v59 = v138;
      }

      else
      {
        v60 = sub_22634F46C();
        v62 = v61;
        (*(v57 + 8))(v12, v56);
        v63 = HIBYTE(v62) & 0xF;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v63 = v60 & 0xFFFFFFFFFFFFLL;
        }

        if (v63)
        {
          v64 = *(v127 + 32);
          (*v122)(v125, v64 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v126);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
          v65 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
          v66 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
          v67 = swift_allocObject();
          *(v67 + 16) = v118;
          v68 = v67 + v66;
          v69 = (v68 + v65[14]);
          v70 = sub_22634F0CC();
          (*(*(v70 - 8) + 104))(v68, v120, v70);
          *v69 = v60;
          v69[1] = v62;
          v71 = sub_22634F10C();
          v72 = *(v71 - 8);
          (*(v72 + 104))(v69, v119, v71);
          (*(v72 + 56))(v69, 0, 1, v71);
          sub_22634F05C();
          v73 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
          v75 = v73[2];
          v74 = v73[3];
          v136 = v30;
          if (v75 >= v74 >> 1)
          {
            v73 = sub_2262DC96C((v74 > 1), v75 + 1, 1, v73);
          }

          v52 = v137;
          v73[2] = v75 + 1;
          (*(v123 + 32))(v73 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v75, v115, v124);
          v143 = v73;

          v77 = sub_226302A38(v76, &v143, v64);
          v21 = v132;
          v12 = v133;
          if (v52)
          {
            goto LABEL_25;
          }

          v91 = v77;
          v137 = 0;

          v58 = v91;
          v59 = v138;
          v30 = v136;
        }

        else
        {

          v58 = 0.0;
          v59 = v138;
        }
      }

      v92 = v140;
      v81 = v142;
      v141(v140, v142, v59);
      v93 = v130;
      v94 = (v92 + *(v130 + 20));
      *v94 = v35;
      v94[1] = v58;
      *(v92 + *(v93 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2262DCF4C(0, v30[2] + 1, 1, v30);
      }

      v96 = v30[2];
      v95 = v30[3];
      if (v96 >= v95 >> 1)
      {
        v30 = sub_2262DCF4C((v95 > 1), v96 + 1, 1, v30);
      }

      (*v135)(v81, v59);
      v30[2] = v96 + 1;
      sub_2262EB7DC(v140, v30 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v96);
LABEL_5:
      v29 += v134;
      if (!--v26)
      {
        return v30;
      }

      v141(v81, v29, v59);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2262E839C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v1 = v0 - 8;
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = (&v24 - v5);
  v7 = sub_22634EEFC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  sub_22634FC3C();
  v15 = v14;
  sub_22634FC1C();
  sub_22634FC3C();
  v17 = v16;
  sub_22634FC1C();
  *v6 = v15;
  v18 = *(v1 + 56);
  v25 = v13;
  v26 = v8;
  v19 = *(v8 + 16);
  v19(v6 + v18, v13, v7);
  *v4 = v17;
  v20 = v4 + *(v1 + 56);
  v27 = v11;
  v19(v20, v11, v7);
  if (v15 == v17)
  {
    sub_2262EB784();
    v21 = sub_22635043C();
  }

  else
  {
    v21 = v17 < v15;
  }

  sub_2262D67D8(v4, &qword_27D793340, &unk_2263529E0);
  sub_2262D67D8(v6, &qword_27D793340, &unk_2263529E0);
  v22 = *(v26 + 8);
  v22(v27, v7);
  v22(v25, v7);
  return v21 & 1;
}

uint64_t sub_2262E8610()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2262E86BC(void *a1)
{
  v2 = *(sub_22634FC4C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2262DF570(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2262E8764(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2262E8764(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_226350C0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22634FC4C();
        v6 = sub_22635059C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22634FC4C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2262E8DC8(v8, v9, a1, v4);
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
    return sub_2262E8890(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2262E8890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v8 = MEMORY[0x28223BE20](v73);
  v72 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v52 - v10);
  v71 = sub_22634EEFC();
  v12 = *(v71 - 8);
  v13 = MEMORY[0x28223BE20](v71);
  v77 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v52 - v15;
  v16 = sub_22634FC4C();
  v17 = MEMORY[0x28223BE20](v16);
  v62 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v75 = &v52 - v20;
  result = MEMORY[0x28223BE20](v19);
  v24 = &v52 - v22;
  v54 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v66 = (v12 + 16);
    v67 = v27;
    v64 = (v26 - 8);
    v65 = (v12 + 8);
    v69 = v26;
    v60 = (v26 + 16);
    v61 = v25;
    v29 = v25 + v28 * (a3 - 1);
    v59 = -v28;
    v30 = a1 - a3;
    v53 = v28;
    v31 = v25 + v28 * a3;
    v70 = v16;
    v68 = &v52 - v22;
    v63 = v11;
LABEL_5:
    v58 = a3;
    v55 = v31;
    v56 = v30;
    v57 = v29;
    v32 = v29;
    v33 = v11;
    while (1)
    {
      v74 = v30;
      v34 = v67;
      v67(v24, v31, v16);
      v34(v75, v32, v16);
      sub_22634FC3C();
      v36 = v35;
      v37 = v76;
      sub_22634FC1C();
      sub_22634FC3C();
      v39 = v38;
      v40 = v77;
      sub_22634FC1C();
      *v33 = v36;
      v41 = v73;
      v42 = *v66;
      v43 = v71;
      (*v66)(v33 + *(v73 + 48), v37, v71);
      v44 = v72;
      *v72 = v39;
      v42((v44 + *(v41 + 48)), v40, v43);
      if (v36 == v39)
      {
        sub_2262EB784();
        v33 = v63;
        v45 = sub_22635043C();
      }

      else
      {
        v45 = v39 < v36;
        v33 = v63;
      }

      sub_2262D67D8(v44, &qword_27D793340, &unk_2263529E0);
      sub_2262D67D8(v33, &qword_27D793340, &unk_2263529E0);
      v46 = *v65;
      (*v65)(v77, v43);
      v46(v76, v43);
      v47 = *v64;
      v16 = v70;
      (*v64)(v75, v70);
      v24 = v68;
      result = v47(v68, v16);
      v48 = v74;
      if ((v45 & 1) == 0)
      {
LABEL_4:
        v11 = v33;
        a3 = v58 + 1;
        v29 = v57 + v53;
        v30 = v56 - 1;
        v31 = v55 + v53;
        if (v58 + 1 == v54)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v49 = *v60;
      v50 = v62;
      (*v60)(v62, v31, v16);
      swift_arrayInitWithTakeFrontToBack();
      result = (v49)(v32, v50, v16);
      v32 += v59;
      v31 += v59;
      v51 = __CFADD__(v48, 1);
      v30 = v48 + 1;
      if (v51)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2262E8DC8(double **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v168 = a1;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v8 = MEMORY[0x28223BE20](v194);
  v190 = (&v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v163 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v163 - v14);
  MEMORY[0x28223BE20](v13);
  v164 = (&v163 - v16);
  v165 = sub_22634EEFC();
  v17 = *(v165 - 8);
  v18 = MEMORY[0x28223BE20](v165);
  v203 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v202 = &v163 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v184 = &v163 - v23;
  MEMORY[0x28223BE20](v22);
  v183 = &v163 - v24;
  v197 = sub_22634FC4C();
  v25 = MEMORY[0x28223BE20](v197);
  v173 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v188 = &v163 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v201 = &v163 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v200 = &v163 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v182 = &v163 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v181 = &v163 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  result = MEMORY[0x28223BE20](v37);
  v42 = *(a3 + 8);
  v179 = v41;
  if (v42 < 1)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_102:
    v12 = *v168;
    if (!*v168)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_104;
  }

  v169 = &v163 - v39;
  v163 = v40;
  v43 = 0;
  v195 = v41 + 16;
  v196 = (v41 + 8);
  v192 = (v17 + 8);
  v193 = (v17 + 16);
  v191 = (v41 + 32);
  v44 = MEMORY[0x277D84F90];
  v170 = a3;
  v167 = a4;
  v176 = v15;
  while (1)
  {
    v45 = a3;
    v180 = v44;
    v172 = v43;
    if (v43 + 1 >= v42)
    {
      a3 = v43 + 1;
    }

    else
    {
      v185 = v42;
      v46 = *a3;
      v47 = *(v179 + 72);
      v48 = *(v179 + 16);
      v199 = (v46 + v47 * (v43 + 1));
      v49 = v197;
      v48(v169);
      v198 = v46;
      v187 = v47;
      v50 = v46 + v47 * v43;
      v51 = v163;
      v178 = v48;
      (v48)(v163, v50, v49);
      LODWORD(v186) = sub_2262E839C();
      if (v5)
      {
        v162 = *v196;
        (*v196)(v51, v49);
        v162(v169, v49);
      }

      v166 = 0;
      v52 = *v196;
      (*v196)(v51, v49);
      v177 = v52;
      result = (v52)(v169, v49);
      v53 = v43 + 2;
      v54 = v199;
      v55 = v187;
      v56 = (v198 + v187 * (v43 + 2));
      v57 = v164;
      v58 = v165;
      a3 = v185;
      while (a3 != v53)
      {
        v198 = v53;
        v189 = v56;
        v63 = v178;
        v178(v181);
        v199 = v54;
        v63(v182, v54, v49);
        sub_22634FC3C();
        v65 = v64;
        v66 = v183;
        sub_22634FC1C();
        sub_22634FC3C();
        v68 = v67;
        v69 = v58;
        v70 = v184;
        sub_22634FC1C();
        *v57 = v65;
        v71 = v194;
        v72 = *v193;
        (*v193)(v57 + *(v194 + 48), v66, v69);
        v73 = v176;
        *v176 = v68;
        v72((v73 + *(v71 + 48)), v70, v69);
        if (v65 == v68)
        {
          sub_2262EB784();
          v59 = sub_22635043C();
        }

        else
        {
          v59 = v68 < v65;
        }

        v58 = v69;
        sub_2262D67D8(v73, &qword_27D793340, &unk_2263529E0);
        sub_2262D67D8(v57, &qword_27D793340, &unk_2263529E0);
        v60 = *v192;
        (*v192)(v184, v69);
        v60(v183, v69);
        v49 = v197;
        v61 = v177;
        (v177)(v182, v197);
        result = v61(v181, v49);
        v53 = v198 + 1;
        v55 = v187;
        v56 = &v189[v187];
        v54 = &v199[v187];
        v62 = (v186 & 1) == (v59 & 1);
        v44 = v180;
        a3 = v185;
        if (!v62)
        {
          a3 = v198;
          break;
        }
      }

      v5 = v166;
      v45 = v170;
      a4 = v167;
      if (v186)
      {
        if (a3 < v172)
        {
          goto LABEL_135;
        }

        if (v172 < a3)
        {
          v74 = v55 * (a3 - 1);
          v75 = a3 * v55;
          v185 = a3;
          v76 = v172;
          v77 = v172 * v55;
          do
          {
            if (v76 != --a3)
            {
              v79 = *v170;
              if (!*v170)
              {
                goto LABEL_139;
              }

              v199 = *v191;
              (v199)(v173, v79 + v77, v197);
              if (v77 < v74 || v79 + v77 >= (v79 + v75))
              {
                v78 = v197;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v78 = v197;
                if (v77 != v74)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v199)(v79 + v74, v173, v78);
              v44 = v180;
              v55 = v187;
            }

            ++v76;
            v74 -= v55;
            v75 -= v55;
            v77 += v55;
          }

          while (v76 < a3);
          v5 = v166;
          v45 = v170;
          a4 = v167;
          a3 = v185;
        }
      }
    }

    v80 = v45[1];
    if (a3 < v80)
    {
      if (__OFSUB__(a3, v172))
      {
        goto LABEL_132;
      }

      if (a3 - v172 < a4)
      {
        if (__OFADD__(v172, a4))
        {
          goto LABEL_133;
        }

        if (v172 + a4 >= v80)
        {
          v81 = v45[1];
        }

        else
        {
          v81 = v172 + a4;
        }

        if (v81 < v172)
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          result = sub_2262DECA8(v44);
          v44 = result;
LABEL_104:
          v204 = v44;
          v158 = *(v44 + 2);
          if (v158 >= 2)
          {
            while (*a3)
            {
              v159 = *&v44[16 * v158];
              v160 = *&v44[16 * v158 + 24];
              sub_2262E9D90(*a3 + *(v179 + 72) * v159, (*a3 + *(v179 + 72) * *&v44[16 * v158 + 16]), *a3 + *(v179 + 72) * v160, v12);
              if (v5)
              {
              }

              if (v160 < v159)
              {
                goto LABEL_129;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v44 = sub_2262DECA8(v44);
              }

              if (v158 - 2 >= *(v44 + 2))
              {
                goto LABEL_130;
              }

              v161 = &v44[16 * v158];
              *v161 = v159;
              *(v161 + 1) = v160;
              v204 = v44;
              result = sub_2262DEC1C(v158 - 1);
              v44 = v204;
              v158 = *(v204 + 2);
              if (v158 <= 1)
              {
              }
            }

            goto LABEL_140;
          }
        }

        if (a3 != v81)
        {
          break;
        }
      }
    }

    v82 = a3;
LABEL_38:
    if (v82 < v172)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v174 = v82;
    if ((result & 1) == 0)
    {
      result = sub_2262DCB70(0, *(v44 + 2) + 1, 1, v44);
      v44 = result;
    }

    v84 = *(v44 + 2);
    v83 = *(v44 + 3);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      result = sub_2262DCB70((v83 > 1), v84 + 1, 1, v44);
      v44 = result;
    }

    *(v44 + 2) = v85;
    v86 = &v44[16 * v84];
    v87 = v174;
    *(v86 + 4) = v172;
    *(v86 + 5) = v87;
    if (!*v168)
    {
      goto LABEL_141;
    }

    if (v84)
    {
      v88 = *v168;
      while (1)
      {
        v89 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v90 = *(v44 + 4);
          v91 = *(v44 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_59:
          if (v93)
          {
            goto LABEL_120;
          }

          v106 = &v44[16 * v85];
          v108 = *v106;
          v107 = *(v106 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_123;
          }

          v112 = &v44[16 * v89 + 32];
          v114 = *v112;
          v113 = *(v112 + 1);
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_127;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v89 = v85 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v116 = &v44[16 * v85];
        v118 = *v116;
        v117 = *(v116 + 1);
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_73:
        if (v111)
        {
          goto LABEL_122;
        }

        v119 = &v44[16 * v89];
        v121 = *(v119 + 4);
        v120 = *(v119 + 5);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_125;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_80:
        v127 = v89 - 1;
        if (v89 - 1 >= v85)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v45)
        {
          goto LABEL_138;
        }

        v128 = *&v44[16 * v127 + 32];
        a3 = *&v44[16 * v89 + 40];
        sub_2262E9D90(*v45 + *(v179 + 72) * v128, (*v45 + *(v179 + 72) * *&v44[16 * v89 + 32]), *v45 + *(v179 + 72) * a3, v88);
        if (v5)
        {
        }

        if (a3 < v128)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2262DECA8(v44);
        }

        if (v127 >= *(v44 + 2))
        {
          goto LABEL_117;
        }

        v129 = &v44[16 * v127];
        *(v129 + 4) = v128;
        *(v129 + 5) = a3;
        v204 = v44;
        result = sub_2262DEC1C(v89);
        v44 = v204;
        v85 = *(v204 + 2);
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = &v44[16 * v85 + 32];
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_118;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_119;
      }

      v101 = &v44[16 * v85];
      v103 = *v101;
      v102 = *(v101 + 1);
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_121;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_124;
      }

      if (v105 >= v97)
      {
        v123 = &v44[16 * v89 + 32];
        v125 = *v123;
        v124 = *(v123 + 1);
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_128;
        }

        if (v92 < v126)
        {
          v89 = v85 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    a3 = v45;
    v42 = v45[1];
    v43 = v174;
    a4 = v167;
    if (v174 >= v42)
    {
      goto LABEL_102;
    }
  }

  v166 = v5;
  v130 = *v45;
  v131 = *(v179 + 72);
  v189 = *(v179 + 16);
  v132 = (v130 + v131 * (a3 - 1));
  v186 = -v131;
  v133 = (v172 - a3);
  v187 = v130;
  v171 = v131;
  v134 = v130 + a3 * v131;
  v135 = v197;
  v136 = v165;
  v174 = v81;
LABEL_91:
  v185 = a3;
  v175 = v134;
  v137 = v134;
  v177 = v133;
  v138 = v133;
  v178 = v132;
  while (1)
  {
    v198 = v137;
    v199 = v138;
    v139 = v189;
    (v189)(v200, v137, v135);
    v139(v201, v132, v135);
    sub_22634FC3C();
    v141 = v140;
    v142 = v202;
    sub_22634FC1C();
    sub_22634FC3C();
    v144 = v143;
    v145 = v203;
    sub_22634FC1C();
    *v12 = v141;
    v146 = v194;
    v147 = *v193;
    (*v193)(v12 + *(v194 + 48), v142, v136);
    v148 = v12;
    v149 = v190;
    *v190 = v144;
    v147((v149 + *(v146 + 48)), v145, v136);
    if (v141 == v144)
    {
      sub_2262EB784();
      v150 = sub_22635043C();
    }

    else
    {
      v150 = v144 < v141;
    }

    sub_2262D67D8(v149, &qword_27D793340, &unk_2263529E0);
    sub_2262D67D8(v148, &qword_27D793340, &unk_2263529E0);
    v151 = *v192;
    (*v192)(v203, v136);
    v151(v202, v136);
    v135 = v197;
    v152 = *v196;
    (*v196)(v201, v197);
    result = (v152)(v200, v135);
    v12 = v148;
    if ((v150 & 1) == 0)
    {
LABEL_90:
      a3 = v185 + 1;
      v132 = (v178 + v171);
      v133 = v177 - 1;
      v134 = v175 + v171;
      v82 = v174;
      if (v185 + 1 != v174)
      {
        goto LABEL_91;
      }

      v5 = v166;
      v45 = v170;
      v44 = v180;
      goto LABEL_38;
    }

    v153 = v199;
    if (!v187)
    {
      break;
    }

    v154 = *v191;
    v155 = v188;
    v156 = v198;
    (*v191)(v188, v198, v135);
    swift_arrayInitWithTakeFrontToBack();
    v154(v132, v155, v135);
    v132 = (v132 + v186);
    v137 = v156 + v186;
    v157 = __CFADD__(v153, 1);
    v138 = v153 + 1;
    if (v157)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_2262E9D90(unint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v109 = a4;
  v100 = a3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v6 = MEMORY[0x28223BE20](v103);
  v93 = (v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v92 = (v88 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (v88 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = (v88 - v13);
  v102 = sub_22634EEFC();
  v15 = *(v102 - 8);
  v16 = MEMORY[0x28223BE20](v102);
  v99 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v98 = v88 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v106 = v88 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v88 - v22;
  v24 = sub_22634FC4C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v97 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v96 = v88 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v105 = v88 - v31;
  result = MEMORY[0x28223BE20](v30);
  v104 = v88 - v33;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_67;
  }

  v36 = v100 - a2;
  if (v100 - a2 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_68;
  }

  v108 = v15;
  v94 = v12;
  v95 = v35;
  v37 = a2;
  v38 = &a2[-a1] / v35;
  v112 = a1;
  v39 = v109;
  v111 = v109;
  if (v38 >= v36 / v35)
  {
    v41 = v36 / v35 * v35;
    if (v109 < v37 || &v37[v41] <= v109)
    {
      swift_arrayInitWithTakeFrontToBack();
      v42 = v100;
    }

    else
    {
      v42 = v100;
      if (v109 != v37)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v63 = v39 + v41;
    if (v41 < 1)
    {
      v66 = v37;
      v67 = v63;
    }

    else
    {
      v64 = -v95;
      v94 = (v108 + 16);
      v95 = v25 + 16;
      v91 = (v108 + 8);
      v90 = (v25 + 8);
      v65 = (v39 + v41);
      v66 = v37;
      v67 = v63;
      v100 = v64;
      v101 = v24;
      v107 = a1;
      do
      {
        v88[0] = v67;
        v68 = v66;
        v69 = v66 + v64;
        v108 = v69;
        v104 = v68;
        while (1)
        {
          if (v68 <= a1)
          {
            v112 = v68;
            v110 = v88[0];
            goto LABEL_65;
          }

          v70 = v42;
          v89 = v67;
          v71 = *v95;
          v105 = &v65[v64];
          v106 = v65;
          v71(v96);
          (v71)(v97, v69, v24);
          sub_22634FC3C();
          v73 = v72;
          v74 = v98;
          sub_22634FC1C();
          sub_22634FC3C();
          v76 = v75;
          v77 = v99;
          sub_22634FC1C();
          v78 = v102;
          v79 = v103;
          v80 = v92;
          *v92 = v73;
          v81 = *v94;
          (*v94)(v80 + *(v79 + 48), v74, v78);
          v82 = v93;
          *v93 = v76;
          v81((v82 + *(v79 + 48)), v77, v78);
          if (v73 == v76)
          {
            sub_2262EB784();
            v83 = sub_22635043C();
          }

          else
          {
            v83 = v76 < v73;
          }

          v84 = v80;
          v64 = v100;
          v42 = &v70[v100];
          sub_2262D67D8(v82, &qword_27D793340, &unk_2263529E0);
          sub_2262D67D8(v84, &qword_27D793340, &unk_2263529E0);
          v85 = *v91;
          (*v91)(v99, v78);
          v85(v98, v78);
          v86 = *v90;
          v24 = v101;
          (*v90)(v97, v101);
          v86(v96, v24);
          a1 = v107;
          if (v83)
          {
            break;
          }

          v87 = v105;
          v67 = v105;
          v69 = v108;
          if (v70 < v106 || v42 >= v106)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v106)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v65 = v67;
          v68 = v104;
          if (v87 <= v109)
          {
            v66 = v104;
            goto LABEL_64;
          }
        }

        v66 = v108;
        if (v70 < v104 || v42 >= v104)
        {
          swift_arrayInitWithTakeFrontToBack();
          v67 = v89;
          v65 = v106;
        }

        else
        {
          v67 = v89;
          v65 = v106;
          if (v70 != v104)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v65 > v109);
    }

LABEL_64:
    v112 = v66;
    v110 = v67;
  }

  else
  {
    v40 = v38 * v35;
    if (v109 < a1 || a1 + v40 <= v109)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v109 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v99 = (v39 + v40);
    v110 = v39 + v40;
    if (v40 >= 1 && v37 < v100)
    {
      v44 = v37;
      v45 = *(v25 + 16);
      v96 = (v108 + 16);
      v97 = v45;
      v93 = (v108 + 8);
      v98 = (v25 + 16);
      v92 = (v25 + 8);
      v101 = v24;
      do
      {
        v107 = a1;
        v108 = v44;
        v46 = v97;
        (v97)(v104, v44, v24);
        v109 = v39;
        (v46)(v105, v39, v24);
        sub_22634FC3C();
        v48 = v47;
        sub_22634FC1C();
        sub_22634FC3C();
        v50 = v49;
        v51 = v106;
        sub_22634FC1C();
        *v14 = v48;
        v52 = v102;
        v53 = v103;
        v54 = *v96;
        v55 = v23;
        (*v96)(v14 + *(v103 + 48), v23, v102);
        v56 = v94;
        *v94 = v50;
        v54(v56 + *(v53 + 48), v51, v52);
        if (v48 == v50)
        {
          sub_2262EB784();
          v57 = sub_22635043C();
        }

        else
        {
          v57 = v50 < v48;
        }

        sub_2262D67D8(v56, &qword_27D793340, &unk_2263529E0);
        sub_2262D67D8(v14, &qword_27D793340, &unk_2263529E0);
        v58 = *v93;
        (*v93)(v106, v52);
        v23 = v55;
        v58(v55, v52);
        v59 = *v92;
        v24 = v101;
        (*v92)(v105, v101);
        v59(v104, v24);
        v39 = v109;
        v60 = v107;
        if (v57)
        {
          v61 = v95;
          v44 = (v108 + v95);
          if (v107 < v108 || v107 >= v44)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v107 != v108)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v61 = v95;
          v62 = v109 + v95;
          v44 = v108;
          if (v107 < v109 || v107 >= v62)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v107 != v109)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v111 = v62;
          v39 += v61;
        }

        a1 = v60 + v61;
        v112 = a1;
      }

      while (v39 < v99 && v44 < v100);
    }
  }

LABEL_65:
  sub_2262EA8A8(&v112, &v111, &v110, MEMORY[0x277D78B20]);
  return 1;
}

uint64_t sub_2262EA7B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2262EA8A8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

char *sub_2262EA990(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  if (!a1[2])
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v58 = a1[2];
  v3 = a1[4];
  v61 = a1 + 4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_3:
  v4 = v2;
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = v4[3];
  v8 = v7 >> 1;
  v9 = v5 + 1;
  if (v7 >> 1 <= v5)
  {
    v6 = sub_2262DCDA0((v7 > 1), v5 + 1, 1, v6);
    v7 = v6[3];
    v8 = v7 >> 1;
  }

  v6[2] = v9;
  v6[v5 + 4] = &unk_283977F38;
  v10 = v5 + 2;
  if (v8 < (v5 + 2))
  {
    v2 = sub_2262DCDA0((v7 > 1), v5 + 2, 1, v6);
  }

  else
  {
    v2 = v6;
  }

  *(v2 + 16) = v10;
  *(v2 + 8 * v9 + 32) = &unk_283977F68;

  v11 = 0;
  v60 = v3;
  v12 = v1;
  while (2)
  {
    v59 = v3;
    do
    {
      if (v10 == v11)
      {
        v27 = 0;
        while (1)
        {
          do
          {
            if (v10 == v27)
            {
              v2 = v58;
              sub_226316610(0, v58, 0);
              v41 = v58;
              v42 = 0;
              v43 = v12;
              v44 = v3 + 32;
              v1 = (v60 + 32);
              while (v42 != v41)
              {
                v3 = v61[v42];
                v45 = *(v3 + 2);
                if (v45)
                {
                  v62 = v42;
                  v63 = v43;
                  v64 = v12;

                  sub_2263165F0(0, v45, 0);
                  v46 = v59;
                  v47 = v60;
                  v2 = 0;
                  v48 = *(v3 + 2);
                  v49 = v64;
                  while (v48 != v2)
                  {
                    if (v2 >= *(v3 + 2))
                    {
                      goto LABEL_76;
                    }

                    if (v2 >= *(v46 + 2))
                    {
                      goto LABEL_77;
                    }

                    if (v2 >= *(v47 + 2))
                    {
                      goto LABEL_78;
                    }

                    v50 = *&v44[8 * v2];
                    v51 = *(v1 + 8 * v2);
                    v52 = 0.0;
                    if (v51 != v50)
                    {
                      v52 = (*&v3[8 * v2 + 32] - v50) / (v51 - v50);
                    }

                    v54 = *(v64 + 16);
                    v53 = *(v64 + 24);
                    if (v54 >= v53 >> 1)
                    {
                      sub_2263165F0((v53 > 1), v54 + 1, 1);
                      v46 = v59;
                      v47 = v60;
                    }

                    ++v2;
                    *(v64 + 16) = v54 + 1;
                    *(v64 + 8 * v54 + 32) = v52;
                    if (v45 == v2)
                    {

                      v12 = MEMORY[0x277D84F90];
                      v41 = v58;
                      v42 = v62;
                      v43 = v63;
                      goto LABEL_70;
                    }
                  }

                  __break(1u);
LABEL_76:
                  __break(1u);
LABEL_77:
                  __break(1u);
LABEL_78:
                  __break(1u);
                  goto LABEL_79;
                }

                v49 = v12;
LABEL_70:
                v65 = v43;
                v2 = *(v43 + 16);
                v55 = *(v43 + 24);
                v3 = (v2 + 1);
                if (v2 >= v55 >> 1)
                {
                  v56 = v42;
                  sub_226316610((v55 > 1), v2 + 1, 1);
                  v42 = v56;
                  v41 = v58;
                  v43 = v65;
                }

                ++v42;
                *(v43 + 16) = v3;
                *(v43 + 8 * v2 + 32) = v49;
                if (v42 == v41)
                {
                  v57 = v43;

                  return v57;
                }
              }

              goto LABEL_81;
            }

            if (v27 >= *(v2 + 16))
            {
              goto LABEL_80;
            }

            v28 = *(v2 + 8 * v27++ + 32);
            v1 = *(v28 + 16);
          }

          while (!v1);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2262E866C(v60);
            v60 = result;
          }

          if (v1 > *(v60 + 2))
          {
            goto LABEL_85;
          }

          if (v1 >= 4 && ((v60 + 32) < v28 + 8 * v1 + 32 ? (v29 = v28 + 32 >= &v60[8 * v1 + 32]) : (v29 = 1), v29))
          {
            v30 = v1 & 0x7FFFFFFFFFFFFFFCLL;
            v31 = (v28 + 48);
            v32 = (v60 + 48);
            v33 = v1 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v34 = vbslq_s8(vcgeq_f64(*v31, *v32), *v31, *v32);
              v32[-1] = vbslq_s8(vcgeq_f64(v31[-1], v32[-1]), v31[-1], v32[-1]);
              *v32 = v34;
              v31 += 2;
              v32 += 2;
              v33 -= 4;
            }

            while (v33);
            if (v1 == v30)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v30 = 0;
          }

          v35 = v1 - v30;
          v36 = 8 * v30;
          v37 = &v60[8 * v30 + 32];
          v38 = (v28 + v36 + 32);
          do
          {
            v39 = *v38++;
            v40 = v39;
            if (*v37 > v39)
            {
              v40 = *v37;
            }

            *v37++ = v40;
            --v35;
          }

          while (v35);
LABEL_54:

          v3 = v59;
        }
      }

      if (v11 >= *(v2 + 16))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v2 = sub_2262DCDA0(0, v58 + 1, 1, v2);
        goto LABEL_3;
      }

      v13 = *(v2 + 8 * v11++ + 32);
      v1 = *(v13 + 16);
    }

    while (!v1);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v3;
    }

    else
    {
      result = sub_2262E866C(v3);
    }

    if (v1 <= *(result + 2))
    {
      if (v1 >= 4 && ((result + 32) < v13 + 8 * v1 + 32 ? (v15 = v13 + 32 >= &result[8 * v1 + 32]) : (v15 = 1), v15))
      {
        v16 = v1 & 0x7FFFFFFFFFFFFFFCLL;
        v17 = (v13 + 48);
        v3 = result;
        v18 = (result + 48);
        v19 = v1 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v20 = vbslq_s8(vcgtq_f64(*v18, *v17), *v17, *v18);
          v18[-1] = vbslq_s8(vcgtq_f64(v18[-1], v17[-1]), v17[-1], v18[-1]);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v1 != v16)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v3 = result;
        v16 = 0;
LABEL_26:
        v21 = v1 - v16;
        v22 = 8 * v16;
        v23 = &v3[8 * v16 + 32];
        v24 = (v13 + v22 + 32);
        do
        {
          v25 = *v24++;
          v26 = v25;
          if (v25 >= *v23)
          {
            v26 = *v23;
          }

          *v23++ = v26;
          --v21;
        }

        while (v21);
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

size_t sub_2262EAF24(void *a1)
{
  v2 = sub_22635004C();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RankedVisualBundle(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[2];
  v10 = MEMORY[0x277D84F90];
  v80 = a1;
  v81 = v6;
  v78 = v9;
  v79 = v5;
  if (v9)
  {
    v85 = MEMORY[0x277D84F90];
    sub_226316610(0, v9, 0);
    v4 = v81;
    v11 = v85;
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    v83 = xmmword_226352970;
    v14 = v9;
    do
    {
      sub_2262EB6C4(v12, v8);
      v15 = &v8[*(v4 + 20)];
      v16 = *v15;
      v17 = *(v15 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
      v18 = swift_allocObject();
      *(v18 + 16) = v83;
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;
      sub_2262EB728(v8);
      v85 = v11;
      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_226316610((v19 > 1), v20 + 1, 1);
        v4 = v81;
        v11 = v85;
      }

      *(v11 + 2) = v20 + 1;
      *&v11[8 * v20 + 32] = v18;
      v12 += v13;
      --v14;
    }

    while (v14);
    v9 = v78;
    if (v78 != 1)
    {
      v21 = sub_2262EA990(v11);

      v11 = v21;
      v4 = v81;
    }

    v5 = v79;
    a1 = v80;
    v10 = MEMORY[0x277D84F90];
    v22 = *(v11 + 2);
    if (v22)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
LABEL_9:
      v85 = v10;
      result = sub_2263165F0(0, v22, 0);
      v24 = 0;
      v25 = v85;
      v82 = v22;
      *&v83 = v11 + 32;
      while (1)
      {
        if (v24 >= *(v11 + 2))
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          return result;
        }

        v26 = *(v83 + 8 * v24);
        v27 = *(v26 + 16);
        v28 = v27 >= 2 ? 2 : *(v26 + 16);
        v84 = v10;

        result = sub_2263165F0(0, v28, 0);
        v29 = v84;
        if (v27)
        {
          v30 = *(v26 + 16);
          if (!v30)
          {
            goto LABEL_73;
          }

          v31 = *(v26 + 32);
          v32 = *&qword_283977FB8;
          v34 = *(v84 + 2);
          v33 = *(v84 + 3);
          v35 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            result = sub_2263165F0((v33 > 1), v34 + 1, 1);
            v29 = v84;
          }

          *(v29 + 2) = v35;
          *&v29[8 * v34 + 32] = v31 * v32;
          if (v27 == 1)
          {
            v36 = 0;
            v37 = 1;
          }

          else
          {
            if (v30 == 1)
            {
              goto LABEL_73;
            }

            if (*(v26 + 16) < 2uLL)
            {
              goto LABEL_76;
            }

            v38 = *(v26 + 40);
            v39 = *&qword_283977FC0;
            v84 = v29;
            v40 = *(v29 + 3);
            if (v35 >= v40 >> 1)
            {
              result = sub_2263165F0((v40 > 1), v34 + 2, 1);
              v29 = v84;
            }

            *(v29 + 2) = v34 + 2;
            *&v29[8 * v35 + 32] = v38 * v39;
            v36 = 1;
            v37 = 2;
          }
        }

        else
        {
          v36 = 0;
          v37 = 0;
        }

        v41 = *(v26 + 16);
        if (v37 != v41)
        {
          if (v37 >= v41)
          {
            goto LABEL_74;
          }

          if (!v36)
          {
            v42 = v26 + 32;
            v43 = *(v26 + 32 + 8 * v37);
            v44 = *(&unk_283977F98 + v37 + 4);
            v84 = v29;
            v46 = *(v29 + 2);
            v45 = *(v29 + 3);
            if (v46 >= v45 >> 1)
            {
              result = sub_2263165F0((v45 > 1), v46 + 1, 1);
              v29 = v84;
            }

            v47 = v37 + 1;
            *(v29 + 2) = v46 + 1;
            *&v29[8 * v46 + 32] = v43 * v44;
            v48 = *(v26 + 16);
            v10 = MEMORY[0x277D84F90];
            if (v37 + 1 != v48)
            {
              if (v37 + 1 >= v48)
              {
                goto LABEL_74;
              }

              if (v37 != 1)
              {
                v49 = *(v42 + 8 * v47);
                v50 = *(&unk_283977F98 + v47 + 4);
                v84 = v29;
                v52 = *(v29 + 2);
                v51 = *(v29 + 3);
                if (v52 >= v51 >> 1)
                {
                  result = sub_2263165F0((v51 > 1), v52 + 1, 1);
                  v29 = v84;
                }

                v53 = v37 + 2;
                *(v29 + 2) = v52 + 1;
                *&v29[8 * v52 + 32] = v49 * v50;
                v54 = *(v26 + 16);
                v10 = MEMORY[0x277D84F90];
                if (v37 + 2 != v54)
                {
                  if (v37 + 2 >= v54)
                  {
                    goto LABEL_74;
                  }

                  if (v27)
                  {
                    v55 = *(v42 + 8 * v53);
                    v56 = *(&unk_283977F98 + v53 + 4);
                    v84 = v29;
                    v58 = *(v29 + 2);
                    v57 = *(v29 + 3);
                    if (v58 >= v57 >> 1)
                    {
                      sub_2263165F0((v57 > 1), v58 + 1, 1);
                      v29 = v84;
                    }

                    *(v29 + 2) = v58 + 1;
                    *&v29[8 * v58 + 32] = v55 * v56;
                  }
                }
              }
            }
          }
        }

        v59 = *(v29 + 2);
        if (v59)
        {
          break;
        }

        v61 = 0.0;
LABEL_52:

        v85 = v25;
        v68 = *(v25 + 2);
        v67 = *(v25 + 3);
        if (v68 >= v67 >> 1)
        {
          result = sub_2263165F0((v67 > 1), v68 + 1, 1);
          v25 = v85;
        }

        ++v24;
        *(v25 + 2) = v68 + 1;
        *&v25[8 * v68 + 32] = v61;
        if (v24 == v82)
        {

          a1 = v80;
          v4 = v81;
          v9 = v78;
          v5 = v79;
          goto LABEL_58;
        }
      }

      if (v59 > 3)
      {
        v60 = v59 & 0x7FFFFFFFFFFFFFFCLL;
        v62 = (v29 + 48);
        v61 = 0.0;
        v63 = v59 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v61 = v61 + *(v62 - 2) + *(v62 - 1) + *v62 + v62[1];
          v62 += 4;
          v63 -= 4;
        }

        while (v63);
        if (v59 == v60)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v60 = 0;
        v61 = 0.0;
      }

      v64 = v59 - v60;
      v65 = &v29[8 * v60 + 32];
      do
      {
        v66 = *v65++;
        v61 = v61 + v66;
        --v64;
      }

      while (v64);
LABEL_51:

      goto LABEL_52;
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_58:
  if (v9 == *(v25 + 2))
  {
    if (v9)
    {

      v69 = 0;
      while (1)
      {
        v70 = *&v25[8 * v69 + 32];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2262E86A8(a1);
          a1 = result;
        }

        if (v69 >= a1[2])
        {
          goto LABEL_75;
        }

        *(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v69++ + *(v4 + 24)) = v70;
        if (v9 == v69)
        {
          goto LABEL_70;
        }
      }
    }

LABEL_70:
  }

  else
  {

    v71 = v75;
    sub_22634FFBC();
    v72 = sub_22635003C();
    v73 = sub_22635073C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2262B6000, v72, v73, "Bundle ranking error: mismatched count of bundles and scores", v74, 2u);
      MEMORY[0x22AA7D570](v74, -1, -1);
    }

    (*(v76 + 8))(v71, v77);
    return MEMORY[0x277D84F90];
  }

  return a1;
}

uint64_t sub_2262EB6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedVisualBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262EB728(uint64_t a1)
{
  v2 = type metadata accessor for RankedVisualBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2262EB784()
{
  result = qword_28137FA48;
  if (!qword_28137FA48)
  {
    sub_22634EEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137FA48);
  }

  return result;
}

uint64_t sub_2262EB7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedVisualBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for VisualBundleFeatures(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VisualBundleFeatures(uint64_t result, int a2, int a3)
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

uint64_t sub_2262EB938(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793218, &unk_2263525E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = sub_22635004C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = type metadata accessor for Analytics.Interval(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2262F0408();
  v17 = v16;
  v53 = type metadata accessor for Analytics(0);
  v18 = v2;
  v19 = *(v2 + *(v53 + 56));
  if (*(v19 + 16) && (v20 = sub_2263393B0(a1), (v21 & 1) != 0))
  {
    sub_2262F4934(*(v19 + 56) + *(v14 + 72) * v20, v56, type metadata accessor for Analytics.Interval);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v52;
      sub_22635000C();

      v23 = sub_22635003C();
      v24 = sub_22635074C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v58 = v26;
        *v25 = 136315394;
        v27 = sub_226345004(v51, v17, &v58);

        *(v25 + 4) = v27;
        *(v25 + 12) = 2080;
        v57 = a1;
        v28 = sub_2263504CC();
        v30 = sub_226345004(v28, v29, &v58);

        *(v25 + 14) = v30;
        _os_log_impl(&dword_2262B6000, v23, v24, "%s Analytics: Programming error: Step was already completed. Cannot start again. stepKind: %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v26, -1, -1);
        MEMORY[0x22AA7D570](v25, -1, -1);
      }

      else
      {
      }

      (*(v54 + 8))(v22, v55);
      v42 = *(v53 + 60);
      v43 = *(v18 + v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2262DC850(0, *(v43 + 2) + 1, 1, v43);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_2262DC850((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v43[v45 + 32] = 2;
      *(v18 + v42) = v43;
      return sub_2262F4AEC(v56, type metadata accessor for Analytics.Interval);
    }

    else
    {
      sub_22635000C();

      v33 = sub_22635003C();
      v34 = sub_22635074C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = a1;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v58 = v37;
        *v36 = 136315394;
        v38 = sub_226345004(v51, v17, &v58);

        *(v36 + 4) = v38;
        *(v36 + 12) = 2080;
        v57 = v35;
        v39 = sub_2263504CC();
        v41 = sub_226345004(v39, v40, &v58);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_2262B6000, v33, v34, "%s Analytics: Programming error: Step was already started. Cannot start again. stepKind: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v37, -1, -1);
        MEMORY[0x22AA7D570](v36, -1, -1);
      }

      else
      {
      }

      (*(v54 + 8))(v12, v55);
      v46 = *(v53 + 60);
      v47 = *(v18 + v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_2262DC850(0, *(v47 + 2) + 1, 1, v47);
      }

      v49 = *(v47 + 2);
      v48 = *(v47 + 3);
      if (v49 >= v48 >> 1)
      {
        v47 = sub_2262DC850((v48 > 1), v49 + 1, 1, v47);
      }

      *(v47 + 2) = v49 + 1;
      v47[v49 + 32] = 1;
      *(v18 + v46) = v47;
      v50 = sub_22634EECC();
      return (*(*(v50 - 8) + 8))(v56, v50);
    }
  }

  else
  {

    v31 = sub_22634EECC();
    (*(*(v31 - 8) + 16))(v7, a2, v31);
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(v7, 0, 1, v13);
    return sub_2262DF6F4(v7, a1);
  }
}

uint64_t sub_2262EBFE0(uint64_t a1, _BYTE *a2)
{
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793218, &unk_2263525E0);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v60[-v5];
  v62 = type metadata accessor for Analytics.Interval.Complete(0);
  MEMORY[0x28223BE20](v62);
  v7 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = sub_22634EECC();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22635004C();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v67 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v60[-v13];
  v15 = type metadata accessor for Analytics.Interval(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_2262F0408();
  v20 = v19;
  v69 = type metadata accessor for Analytics(0);
  v21 = *(v69 + 56);
  v72 = v2;
  v22 = *(v2 + v21);
  if (*(v22 + 16) && (v23 = sub_2263393B0(a1), (v24 & 1) != 0))
  {
    v61 = a1;
    sub_2262F4934(*(v22 + 56) + *(v16 + 72) * v23, v18, type metadata accessor for Analytics.Interval);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v67;
      sub_22635000C();

      v26 = sub_22635003C();
      v27 = sub_22635074C();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v61;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v74 = v31;
        *v30 = 136315394;
        v32 = sub_226345004(v68, v20, &v74);

        *(v30 + 4) = v32;
        *(v30 + 12) = 2080;
        v73 = v29;
        v33 = sub_2263504CC();
        v35 = sub_226345004(v33, v34, &v74);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_2262B6000, v26, v27, "%s Analytics: Programming error: Tried to end a step that has already been ended. %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v31, -1, -1);
        MEMORY[0x22AA7D570](v30, -1, -1);
      }

      else
      {
      }

      (*(v70 + 8))(v25, v71);
      v55 = v72;
      v56 = *(v69 + 60);
      v57 = *(v72 + v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_2262DC850(0, *(v57 + 2) + 1, 1, v57);
      }

      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      if (v59 >= v58 >> 1)
      {
        v57 = sub_2262DC850((v58 > 1), v59 + 1, 1, v57);
      }

      *(v57 + 2) = v59 + 1;
      v57[v59 + 32] = 4;
      *(v55 + v56) = v57;
      return sub_2262F4AEC(v18, type metadata accessor for Analytics.Interval);
    }

    else
    {

      v51 = v63;
      v52 = v65;
      (*(v63 + 32))(v9, v18, v65);
      v53 = *(v51 + 16);
      v53(v7, v9, v52);
      v53(&v7[*(v62 + 20)], v64, v52);
      v54 = v66;
      sub_2262F4934(v7, v66, type metadata accessor for Analytics.Interval.Complete);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 56))(v54, 0, 1, v15);
      sub_2262DF6F4(v54, v61);
      sub_2262F4AEC(v7, type metadata accessor for Analytics.Interval.Complete);
      return (*(v51 + 8))(v9, v52);
    }
  }

  else
  {
    v36 = a1;
    sub_22635000C();

    v37 = sub_22635003C();
    v38 = sub_22635074C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v74 = v40;
      *v39 = 136315394;
      v41 = sub_226345004(v68, v20, &v74);

      *(v39 + 4) = v41;
      *(v39 + 12) = 2080;
      v73 = v36;
      v42 = sub_2263504CC();
      v44 = sub_226345004(v42, v43, &v74);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_2262B6000, v37, v38, "%s Analytics: Programming error: Tried to end a step that hasn't start yet. %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v40, -1, -1);
      MEMORY[0x22AA7D570](v39, -1, -1);
    }

    else
    {
    }

    (*(v70 + 8))(v14, v71);
    v45 = v72;
    v46 = *(v69 + 60);
    v47 = *(v72 + v46);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2262DC850(0, *(v47 + 16) + 1, 1, v47);
      v47 = result;
    }

    v50 = *(v47 + 16);
    v49 = *(v47 + 24);
    if (v50 >= v49 >> 1)
    {
      result = sub_2262DC850((v49 > 1), v50 + 1, 1, v47);
      v47 = result;
    }

    *(v47 + 16) = v50 + 1;
    *(v47 + v50 + 32) = 3;
    *(v45 + v46) = v47;
  }

  return result;
}

uint64_t sub_2262EC7A0()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_2262F0408();
  v10 = v9;
  v11 = *(type metadata accessor for Analytics(0) + 64);
  if (*(v0 + v11) == 1)
  {
    sub_22635000C();

    v12 = sub_22635003C();
    v13 = sub_22635074C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      v16 = sub_226345004(v8, v10, &v26);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_2262B6000, v12, v13, "%s Analytics: Programming error: Already logged to Core Analytics and/or PowerLog. Not logging again.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x22AA7D570](v15, -1, -1);
      MEMORY[0x22AA7D570](v14, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v7, v1);
  }

  else
  {
    *(v0 + v11) = 1;
    sub_2262F0FE0();
    v17 = sub_22635045C();
    sub_2262DA244();
    v18 = sub_2263503DC();

    AnalyticsSendEvent();

    sub_22635000C();

    v19 = sub_22635003C();
    v20 = sub_22635072C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = sub_226345004(v8, v10, &v26);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_2262B6000, v19, v20, "%s Analytics: Finished logging", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x22AA7D570](v22, -1, -1);
      MEMORY[0x22AA7D570](v21, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_2262ECB10()
{
  v1 = 0x736575737369;
  if (*v0 != 1)
  {
    v1 = 0x646567676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746E4970657473;
  }
}

uint64_t sub_2262ECB70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2262F3B9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2262ECBA4(uint64_t a1)
{
  v2 = sub_2262F38CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262ECBE0(uint64_t a1)
{
  v2 = sub_2262F38CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262ECC1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2262ECC80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935B8, &qword_2263531F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F38CC();
  sub_226350D2C();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
  sub_2262F4C48();
  sub_226350BEC();
  if (!v2)
  {
    v11 = *(v3 + 24);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    sub_2262F4D58(&qword_27D7934D8, sub_2262F4DD0, MEMORY[0x277D83948]);
    sub_226350BEC();
    LOBYTE(v11) = 2;
    sub_226350BCC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t getEnumTagSinglePayload for Analytics.Issue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.Issue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2262ED004(uint64_t a1)
{
  sub_2262ED078();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Analytics.Interval.Complete(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2262ED078()
{
  if (!qword_28137FA58)
  {
    v0 = sub_22634EECC();
    if (!v1)
    {
      atomic_store(v0, &qword_28137FA58);
    }
  }
}

uint64_t sub_2262ED108(uint64_t a1)
{
  result = sub_22634EECC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2262ED1BC(uint64_t a1)
{
  sub_22634EEFC();
  if (v1 <= 0x3F)
  {
    sub_2262ED4E8(319, &qword_28137DFE8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2262ED4E8(319, qword_28137E358, &type metadata for Analytics.ErrorAnalytics, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2262ED4E8(319, &qword_28137E350, &type metadata for Analytics.ExitReason, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2262ED4E8(319, &qword_28137E030, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2262ED4E8(319, qword_28137EE20, &type metadata for VisualActionEvent.Outcome, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2262ED4E8(319, &qword_28137DFF8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_2262BA32C(319);
                if (v8 <= 0x3F)
                {
                  sub_22634FDFC();
                  if (v9 <= 0x3F)
                  {
                    sub_2262ED428(319);
                    if (v10 <= 0x3F)
                    {
                      sub_2262ED4E8(319, &qword_28137E028, &type metadata for Analytics.Issue, MEMORY[0x277D83940]);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2262ED428(uint64_t a1)
{
  if (!qword_28137E048)
  {
    type metadata accessor for Analytics.Interval(255);
    sub_2262ED494();
    v1 = sub_2263503FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28137E048);
    }
  }
}

unint64_t sub_2262ED494()
{
  result = qword_28137E210[0];
  if (!qword_28137E210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28137E210);
  }

  return result;
}

void sub_2262ED4E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2262ED55C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2262ED5A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2262ED624(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793370, &qword_2263530F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v1 + 24) = v9;
  *(v1 + 32) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F38CC();
  sub_226350D1C();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
    v13 = 0;
    sub_2262F3920();
    sub_226350B3C();
    *(v1 + 16) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    v13 = 1;
    sub_2262F4D58(&qword_27D7933A8, sub_2262F3A30, MEMORY[0x277D83978]);
    sub_226350B3C();
    *(v1 + 24) = v14;

    LOBYTE(v14) = 2;
    v11 = sub_226350B1C();
    (*(v6 + 8))(v8, v5);
    *(v3 + 32) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_2262ED8C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Analytics.State();
  swift_allocObject();
  result = sub_2262ED624(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2262ED9F8(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793580, &qword_2263531B8);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793588, &qword_2263531C0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793590, &qword_2263531C8);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793598, &qword_2263531D0);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935A0, &qword_2263531D8);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935A8, &qword_2263531E0);
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935B0, &qword_2263531E8);
  v18 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F53EC();
  sub_226350D2C();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_2262F54E8();
      v24 = v34;
      v25 = v43;
      sub_226350B6C();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_2262F5494();
      v24 = v37;
      v25 = v43;
      sub_226350B6C();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_2262F5440();
      v24 = v40;
      v25 = v43;
      sub_226350B6C();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_2262F5590();
      v22 = v43;
      sub_226350B6C();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_2262F553C();
    v25 = v43;
    sub_226350B6C();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_2262F55E4();
    v25 = v43;
    sub_226350B6C();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

uint64_t sub_2262EDFF8(uint64_t a1)
{
  v2 = sub_2262F5440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE034(uint64_t a1)
{
  v2 = sub_2262F5440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE070()
{
  v1 = *v0;
  v2 = 0x6974636964657270;
  v3 = 0x6C69626967696C65;
  v4 = 0x676E696B6E6172;
  if (v1 != 4)
  {
    v4 = 0x6152656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F69747563657865;
  if (v1 != 1)
  {
    v5 = 0x6B63616264656566;
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

uint64_t sub_2262EE148@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2262F3CB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2262EE17C(uint64_t a1)
{
  v2 = sub_2262F53EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE1B8(uint64_t a1)
{
  v2 = sub_2262F53EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE1F4(uint64_t a1)
{
  v2 = sub_2262F54E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE230(uint64_t a1)
{
  v2 = sub_2262F54E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE26C(uint64_t a1)
{
  v2 = sub_2262F5590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE2A8(uint64_t a1)
{
  v2 = sub_2262F5590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE2E4(uint64_t a1)
{
  v2 = sub_2262F553C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE320(uint64_t a1)
{
  v2 = sub_2262F553C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE35C(uint64_t a1)
{
  v2 = sub_2262F55E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE398(uint64_t a1)
{
  v2 = sub_2262F55E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE3D4(uint64_t a1)
{
  v2 = sub_2262F5494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE410(uint64_t a1)
{
  v2 = sub_2262F5494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE44C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2262F3ECC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_2262EE498()
{
  result = qword_27D793358;
  if (!qword_27D793358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793358);
  }

  return result;
}

uint64_t sub_2262EE4EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793440, &qword_226353150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F48E0();
  sub_226350D2C();
  v8[15] = 0;
  sub_22634EECC();
  sub_2262F47DC(&qword_27D793428, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_226350BEC();
  if (!v1)
  {
    type metadata accessor for Analytics.Interval.Complete(0);
    v8[14] = 1;
    sub_226350BEC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2262EE6B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = sub_22634EECC();
  v26 = *(v30 - 8);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793430, &qword_226353148);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for Analytics.Interval.Complete(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F48E0();
  sub_226350D1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_2262F47DC(&qword_27D793400, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v16 = v27;
  v17 = v28;
  sub_226350B3C();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  sub_226350B3C();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_2262F4934(v19, v25, type metadata accessor for Analytics.Interval.Complete);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_2262F4AEC(v19, type metadata accessor for Analytics.Interval.Complete);
}

uint64_t sub_2262EEA74()
{
  if (*v0)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_2262EEAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_226350C4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_226350C4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2262EEB98(uint64_t a1)
{
  v2 = sub_2262F48E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EEBD4(uint64_t a1)
{
  v2 = sub_2262F48E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EEC40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793408, &qword_226353130);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v24 - v3;
  v27 = type metadata accessor for Analytics.Interval.Complete(0);
  MEMORY[0x28223BE20](v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793410, &qword_226353138);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v24 = sub_22634EECC();
  v33 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Analytics.Interval(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793418, &qword_226353140);
  v13 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F4734();
  sub_226350D2C();
  sub_2262F4934(v32, v12, type metadata accessor for Analytics.Interval);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v28;
    sub_2262F4878(v12, v28, type metadata accessor for Analytics.Interval.Complete);
    v36 = 1;
    sub_2262F4788();
    v17 = v29;
    v18 = v34;
    sub_226350B6C();
    sub_2262F47DC(&qword_27D793420, type metadata accessor for Analytics.Interval.Complete, &unk_226352F14);
    v19 = v31;
    sub_226350BEC();
    (*(v30 + 8))(v17, v19);
    sub_2262F4AEC(v16, type metadata accessor for Analytics.Interval.Complete);
    return (*(v13 + 8))(v15, v18);
  }

  else
  {
    v21 = v24;
    (*(v33 + 32))(v9, v12, v24);
    v35 = 0;
    sub_2262F4824();
    v22 = v34;
    sub_226350B6C();
    sub_2262F47DC(&qword_27D793428, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v23 = v26;
    sub_226350BEC();
    (*(v25 + 8))(v7, v23);
    (*(v33 + 8))(v9, v21);
    return (*(v13 + 8))(v15, v22);
  }
}

uint64_t sub_2262EF198@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933C0, &qword_226353110);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v44 = v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933C8, &qword_226353118);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933D0, &qword_226353120);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v9 = type metadata accessor for Analytics.Interval(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v34 - v16;
  v18 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2262F4734();
  v19 = v45;
  sub_226350D1C();
  if (!v19)
  {
    v35 = v17;
    v36 = v12;
    v45 = v15;
    v20 = v44;
    v21 = v9;
    v22 = v42;
    v23 = sub_226350B5C();
    if (*(v23 + 16) == 1)
    {
      v34[1] = v23;
      v47 = 1;
      sub_2262F4788();
      v24 = v20;
      sub_226350AAC();
      type metadata accessor for Analytics.Interval.Complete(0);
      sub_2262F47DC(&qword_27D7933F0, type metadata accessor for Analytics.Interval.Complete, &unk_226352F3C);
      v25 = v36;
      v26 = v24;
      v27 = v38;
      sub_226350B3C();
      (*(v41 + 8))(v26, v27);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v33 = v35;
      sub_2262F4878(v25, v35, type metadata accessor for Analytics.Interval);
      sub_2262F4878(v33, v37, type metadata accessor for Analytics.Interval);
    }

    else
    {
      v28 = v8;
      v29 = sub_22635099C();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933E0, &qword_226353128);
      *v31 = v21;
      sub_226350ABC();
      sub_22635098C();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v22 + 8))(v28, v6);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v46);
}

uint64_t sub_2262EF7B4()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x656C706D6F636E69;
  }
}

uint64_t sub_2262EF7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C706D6F636E69 && a2 == 0xEA00000000006574;
  if (v6 || (sub_226350C4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_226350C4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2262EF8D8(uint64_t a1)
{
  v2 = sub_2262F4734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EF914(uint64_t a1)
{
  v2 = sub_2262F4734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EF95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_226350C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2262EF9DC(uint64_t a1)
{
  v2 = sub_2262F4788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EFA18(uint64_t a1)
{
  v2 = sub_2262F4788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EFA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_226350C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2262EFB00(uint64_t a1)
{
  v2 = sub_2262F4824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EFB3C(uint64_t a1)
{
  v2 = sub_2262F4824();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2262EFBA8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2262F46D0(*a1);
  *a2 = result;
  return result;
}

void *sub_2262EFC84@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2262EFD54()
{
  v1 = sub_22635004C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_2263504BC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_22634ED4C();
  swift_allocObject();
  sub_22634ED3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935E0, &qword_226353218);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226351C80;
  v4 = *(v0 + 8);
  *(v3 + 32) = *v0;
  *(v3 + 40) = v4;
  v5 = *(v0 + 24);
  *(v3 + 48) = *(v0 + 16);
  *(v3 + 56) = v5;
  v6 = *(v0 + 40);
  *(v3 + 64) = *(v0 + 32);
  *(v3 + 72) = v6;
  v16 = *(v0 + 48);
  *(v3 + 80) = v16;
  v15 = v3;

  sub_2262D66FC(&v16, v14, &qword_27D793140, &qword_226353220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935E8, &qword_226353228);
  sub_2262F5638();
  v7 = sub_22634ED2C();
  v9 = v8;

  sub_2263504AC();
  v10 = sub_22635048C();
  v12 = v11;
  sub_2262D611C(v7, v9);
  if (v12)
  {
    return v10;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_2262F0068(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793500, &qword_226353178);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F52DC();
  sub_226350D2C();
  v8[15] = 0;
  sub_226350BBC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_226350BBC();
  v8[13] = 2;
  sub_226350BBC();
  v8[12] = 3;
  sub_226350B7C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2262F0228()
{
  v1 = 0x6E69616D6F64;
  v2 = 1701080931;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697469646461;
  }

  if (*v0)
  {
    v1 = 0x6D614E7373616C63;
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

uint64_t sub_2262F02A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2262F4E78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2262F02DC(uint64_t a1)
{
  v2 = sub_2262F52DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262F0318(uint64_t a1)
{
  v2 = sub_2262F52DC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2262F0354@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2262F4FE8(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_2262F03B4()
{
  result = qword_27D793360;
  if (!qword_27D793360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793360);
  }

  return result;
}

uint64_t sub_2262F0408()
{
  sub_22635096C();

  strcpy(v12, "[requestKind: ");
  HIBYTE(v12[1]) = -18;
  v1 = 0xEA00000000006E6FLL;
  v2 = 0x6974636964657270;
  v3 = 0xE800000000000000;
  v4 = 0x6B63616264656566;
  if (*v0 != 2)
  {
    v4 = 0x6152656C646E7562;
    v3 = 0xED0000676E696B6ELL;
  }

  if (*v0)
  {
    v2 = 0x6F69747563657865;
    v1 = 0xE90000000000006ELL;
  }

  if (*v0 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v0 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x22AA7C5B0](v5, v6);

  MEMORY[0x22AA7C5B0](0x203A74207C20, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930C8, &unk_226351F90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226351C90;
  v8 = sub_2262F05BC();
  v9 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = sub_22635049C();
  MEMORY[0x22AA7C5B0](v10);

  MEMORY[0x22AA7C5B0](23923, 0xE200000000000000);
  return v12[0];
}

double sub_2262F05BC()
{
  v1 = sub_22634EECC();
  v91 = *(v1 - 8);
  v92 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v88 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v87 = &v79 - v4;
  v5 = type metadata accessor for Analytics.Interval.Complete(0);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Analytics.Interval(0);
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v81 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v83 = &v79 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v79 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v82 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v80 = &v79 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C20, &unk_226351F80);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v90 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v79 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v79 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v79 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v79 - v40;
  MEMORY[0x28223BE20](v39);
  v89 = &v79 - v42;
  v43 = *v0;
  v44 = *&v0[*(type metadata accessor for Analytics(0) + 56)];
  v45 = *(v44 + 16);
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v50 = v91;
      v52 = v92;
      if (v45)
      {
        v53 = sub_2263393B0(2);
        if (v54)
        {
          v55 = *(v44 + 56) + *(v85 + 72) * v53;
          v56 = v82;
          sub_2262F4934(v55, v82, type metadata accessor for Analytics.Interval);
          sub_2262F4934(v56, v14, type metadata accessor for Analytics.Interval);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v46 = v89;
          if (EnumCaseMultiPayload == 1)
          {
            v58 = v84;
            sub_2262F4878(v14, v84, type metadata accessor for Analytics.Interval.Complete);
            (*(v50 + 16))(v35, v58, v52);
            sub_2262F4AEC(v58, type metadata accessor for Analytics.Interval.Complete);
          }

          else
          {
            (*(v50 + 32))(v35, v14, v52);
          }

          sub_2262F4AEC(v56, type metadata accessor for Analytics.Interval);
          (*(v50 + 56))(v35, 0, 1, v52);
          v41 = v35;
          goto LABEL_36;
        }
      }

      (*(v50 + 56))(v35, 1, 1, v52);
      v41 = v35;
    }

    else
    {
      v50 = v91;
      v52 = v92;
      if (v45 && (v65 = sub_2263393B0(5), (v66 & 1) != 0))
      {
        v67 = *(v44 + 56) + *(v85 + 72) * v65;
        v68 = v83;
        sub_2262F4934(v67, v83, type metadata accessor for Analytics.Interval);
        v69 = v81;
        sub_2262F4934(v68, v81, type metadata accessor for Analytics.Interval);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v70 = v84;
          sub_2262F4878(v69, v84, type metadata accessor for Analytics.Interval.Complete);
          (*(v50 + 16))(v32, v70, v52);
          sub_2262F4AEC(v70, type metadata accessor for Analytics.Interval.Complete);
        }

        else
        {
          (*(v50 + 32))(v32, v69, v52);
        }

        sub_2262F4AEC(v68, type metadata accessor for Analytics.Interval);
        (*(v50 + 56))(v32, 0, 1, v52);
      }

      else
      {
        (*(v50 + 56))(v32, 1, 1, v52);
      }

      v41 = v32;
    }

    v46 = v89;
    goto LABEL_36;
  }

  if (v43)
  {
    v46 = v89;
    if (v45 && (v59 = sub_2263393B0(1), (v60 & 1) != 0))
    {
      v61 = *(v44 + 56) + *(v85 + 72) * v59;
      v62 = v80;
      sub_2262F4934(v61, v80, type metadata accessor for Analytics.Interval);
      sub_2262F4934(v62, v19, type metadata accessor for Analytics.Interval);
      v63 = swift_getEnumCaseMultiPayload();
      v50 = v91;
      v52 = v92;
      if (v63 == 1)
      {
        v64 = v84;
        sub_2262F4878(v19, v84, type metadata accessor for Analytics.Interval.Complete);
        (*(v50 + 16))(v38, v64, v52);
        sub_2262F4AEC(v64, type metadata accessor for Analytics.Interval.Complete);
      }

      else
      {
        (*(v91 + 32))(v38, v19, v92);
      }

      sub_2262F4AEC(v62, type metadata accessor for Analytics.Interval);
      (*(v50 + 56))(v38, 0, 1, v52);
    }

    else
    {
      v50 = v91;
      v52 = v92;
      (*(v91 + 56))(v38, 1, 1, v92);
    }

    v41 = v38;
  }

  else
  {
    v46 = v89;
    if (v45 && (v47 = sub_2263393B0(0), (v48 & 1) != 0))
    {
      sub_2262F4934(*(v44 + 56) + *(v85 + 72) * v47, v26, type metadata accessor for Analytics.Interval);
      sub_2262F4934(v26, v24, type metadata accessor for Analytics.Interval);
      v49 = swift_getEnumCaseMultiPayload();
      v50 = v91;
      if (v49 == 1)
      {
        v51 = v84;
        sub_2262F4878(v24, v84, type metadata accessor for Analytics.Interval.Complete);
        v52 = v92;
        (*(v50 + 16))(v41, v51, v92);
        sub_2262F4AEC(v51, type metadata accessor for Analytics.Interval.Complete);
      }

      else
      {
        v71 = v24;
        v52 = v92;
        (*(v91 + 32))(v41, v71, v92);
      }

      sub_2262F4AEC(v26, type metadata accessor for Analytics.Interval);
      (*(v50 + 56))(v41, 0, 1, v52);
    }

    else
    {
      v50 = v91;
      v52 = v92;
      (*(v91 + 56))(v41, 1, 1, v92);
    }
  }

LABEL_36:
  sub_2262D6764(v41, v46, &qword_27D793C20, &unk_226351F80);
  v72 = v90;
  sub_2262D66FC(v46, v90, &qword_27D793C20, &unk_226351F80);
  if ((*(v50 + 48))(v72, 1, v52) == 1)
  {
    sub_2262D67D8(v46, &qword_27D793C20, &unk_226351F80);
    v73 = 0.0;
    v46 = v72;
  }

  else
  {
    v74 = v87;
    (*(v50 + 32))(v87, v72, v52);
    v75 = v88;
    sub_22634EEBC();
    sub_22634EE6C();
    v73 = v76;
    v77 = *(v50 + 8);
    v77(v75, v52);
    v77(v74, v52);
  }

  sub_2262D67D8(v46, &qword_27D793C20, &unk_226351F80);
  return v73;
}

uint64_t sub_2262F0FE0()
{
  v1 = v0;
  v2 = sub_22635004C();
  v3 = *(v2 - 8);
  v175 = v2;
  v176 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Analytics.Interval.Complete(0);
  MEMORY[0x28223BE20](v164);
  v167 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Analytics.Interval(0);
  v171 = *(v177 - 8);
  v7 = MEMORY[0x28223BE20](v177);
  v179 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v170 = &v160 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935C0, &qword_2263531F8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v182 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v180 = &v160 - v13;
  v184 = sub_22634F47C();
  v181 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v163 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  MEMORY[0x28223BE20](v15 - 8);
  v172 = &v160 - v16;
  v17 = type metadata accessor for Analytics(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2262F4934(v1, v19, type metadata accessor for Analytics);
  v169 = sub_2262F0408();
  v21 = v20;
  sub_2262F4AEC(v19, type metadata accessor for Analytics);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935C8, &unk_226353200);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4B74736575716572;
  v173 = (inited + 32);
  *(inited + 16) = xmmword_226352B00;
  *(inited + 40) = 0xEB00000000646E69;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000226356B50;
  v183 = v17;
  v23 = &v1[*(v17 + 24)];
  v24 = 0x277CBE000uLL;
  v25 = &off_27858F000;
  if (v23[8])
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v174 = v5;
  *(inited + 72) = v26;
  *(inited + 80) = 0x726F727265;
  *(inited + 88) = 0xE500000000000000;
  v27 = &v1[v183[7]];
  if (*(v27 + 1))
  {
    v28 = *(v27 + 1);
    v189 = *v27;
    v190 = v28;
    v29 = *(v27 + 3);
    v191 = *(v27 + 2);
    v192 = v29;
    sub_2262EFD54();
    v30 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v31 = sub_22635045C();
    v32 = [v30 initWithString_];

    v24 = 0x277CBE000;
    v25 = &off_27858F000;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  *(inited + 96) = v32;
  *(inited + 104) = 0x7361655274697865;
  *(inited + 112) = 0xEA00000000006E6FLL;
  v33 = v1[v183[8]];
  if (v33 == 2)
  {
    v34 = [objc_allocWithZone(*(v24 + 2920)) v25[125]];
  }

  else
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  *(inited + 120) = v34;
  strcpy((inited + 128), "groundingLabel");
  *(inited + 143) = -18;
  v35 = &v1[v183[9]];
  v36 = *(v35 + 1);
  v178 = v21;
  if (v36)
  {
    v37 = *v35;
    v38 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v39 = sub_22635045C();
    v40 = [v38 initWithString_];

    v41 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v41 = v37 & 0xFFFFFFFFFFFFLL;
    }

    v36 = v41 != 0;
  }

  else
  {
    v40 = [objc_allocWithZone(*(v24 + 2920)) v25[125]];
  }

  *(inited + 144) = v40;
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x8000000226356B70;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x8000000226356B90;
  v42 = v183;
  *&v168 = v183[12];
  v43 = v172;
  sub_2262D66FC(&v1[v168], v172, &qword_27D792FE0, &unk_226351C10);
  v44 = *(v181 + 48);
  v165 = v181 + 48;
  v166 = v44;
  v45 = v44(v43, 1, v184) != 1;
  sub_2262D67D8(v43, &qword_27D792FE0, &unk_226351C10);
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 200), "sessionOutcome");
  *(inited + 215) = -18;
  v46 = v42[10];
  v185 = v1;
  v47 = v1[v46];
  if (v47 == 3)
  {
    v48 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v49 = v179;
  *(inited + 216) = v48;
  *(inited + 224) = 0x556E6F6973736573;
  *(inited + 232) = 0xEB00000000444955;
  v50 = v183;
  v51 = v185;
  sub_22634EEDC();
  v52 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v53 = sub_22635045C();
  v54 = [v52 initWithString_];

  *(inited + 240) = v54;
  *(inited + 248) = 0xD000000000000017;
  *(inited + 256) = 0x8000000226356BB0;
  v55 = v51[v50[11]];
  if (v55 == 2)
  {
    v56 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v56 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v58 = v184;
  v57 = v185;
  *(inited + 264) = v56;
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = 0x8000000226356BD0;
  v59 = v168;
  if (v166(&v57[v168], 1, v58))
  {
    v60 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v61 = 0x277CCA000;
    v62 = &off_27858F000;
  }

  else
  {
    v63 = v181;
    v64 = v163;
    (*(v181 + 16))(v163, &v57[v59], v58);
    v65 = sub_22634F44C();
    (*(v63 + 8))(v64, v58);
    v61 = 0x277CCA000uLL;
    v62 = &off_27858F000;
    v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v66 = v176;
  *(inited + 288) = v60;
  *(inited + 296) = 0x776F6C666B726F77;
  *(inited + 304) = 0xE800000000000000;
  v67 = v183;
  v68 = v185;
  *(inited + 312) = [objc_allocWithZone(*(v61 + 2992)) v62[146]];
  v184 = sub_2262FE32C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D0, &qword_226355E70);
  swift_arrayDestroy();
  v69 = *&v68[v67[14]];
  v70 = v69 + 64;
  v71 = 1 << *(v69 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v69 + 64);
  v181 = (v71 + 63) >> 6;
  v173 = (v66 + 8);
  v165 = 0x8000000226356BF0;
  v162 = 0x8000000226356C30;
  v163 = 0x8000000226356C10;
  v160 = 0x8000000226356C70;
  v161 = 0x8000000226356C50;
  v172 = v69;

  v74 = 0;
  *&v75 = 136315394;
  v168 = v75;
  v76 = v182;
  v176 = v70;
  while (1)
  {
    if (!v73)
    {
      if (v181 <= v74 + 1)
      {
        v79 = v74 + 1;
      }

      else
      {
        v79 = v181;
      }

      v80 = v79 - 1;
      while (1)
      {
        v78 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v78 >= v181)
        {
          v77 = v49;
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D8, &qword_226353210);
          (*(*(v105 - 8) + 56))(v76, 1, 1, v105);
          v73 = 0;
          v74 = v80;
          goto LABEL_38;
        }

        v73 = *(v70 + 8 * v78);
        ++v74;
        if (v73)
        {
          v77 = v49;
          v74 = v78;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_89;
    }

    v77 = v49;
    v78 = v74;
LABEL_37:
    v81 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v82 = v81 | (v78 << 6);
    v83 = *(*(v172 + 48) + v82);
    v84 = v170;
    sub_2262F4934(*(v172 + 56) + *(v171 + 72) * v82, v170, type metadata accessor for Analytics.Interval);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D8, &qword_226353210);
    v86 = *(v85 + 48);
    *v76 = v83;
    sub_2262F4878(v84, &v76[v86], type metadata accessor for Analytics.Interval);
    (*(*(v85 - 8) + 56))(v76, 0, 1, v85);
LABEL_38:
    v87 = v180;
    sub_2262D6764(v76, v180, &qword_27D7935C0, &qword_2263531F8);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D8, &qword_226353210);
    if ((*(*(v88 - 8) + 48))(v87, 1, v88) == 1)
    {
      break;
    }

    v89 = *v87;
    v49 = v77;
    sub_2262F4878(&v87[*(v88 + 48)], v77, type metadata accessor for Analytics.Interval);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2262F4878(v77, v167, type metadata accessor for Analytics.Interval.Complete);
      if (v89 > 2)
      {
        if (v89 == 3)
        {
          v106 = 0xD000000000000013;
          v107 = v163;
        }

        else if (v89 == 4)
        {
          v106 = 0x44676E696B6E6172;
          v107 = 0xEF6E6F6974617275;
        }

        else
        {
          v106 = 0xD000000000000015;
          v107 = v165;
        }
      }

      else if (v89)
      {
        if (v89 == 1)
        {
          v106 = 0xD000000000000011;
          v107 = v161;
        }

        else
        {
          v106 = 0xD000000000000010;
          v107 = v162;
        }
      }

      else
      {
        v106 = 0xD000000000000012;
        v107 = v160;
      }

      v76 = v182;
      sub_22634EE5C();
      v109 = v108;
      sub_22634EE5C();
      v166 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v111 = v184;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v187 = v111;
      v113 = sub_22633941C(v106, v107);
      v115 = *(v111 + 16);
      v116 = (v114 & 1) == 0;
      v117 = __OFADD__(v115, v116);
      v118 = v115 + v116;
      if (v117)
      {
        goto LABEL_91;
      }

      v119 = v114;
      if (*(v111 + 24) >= v118)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_64;
        }

        v124 = v113;
        sub_22633A944();
        v113 = v124;
        if ((v119 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_65:
        v121 = v113;

        v184 = v187;
        v122 = *(v187 + 56);
        v123 = *(v122 + 8 * v121);
        *(v122 + 8 * v121) = v166;

        sub_2262F4AEC(v167, type metadata accessor for Analytics.Interval.Complete);
        v70 = v176;
      }

      else
      {
        sub_226337500(v118, isUniquelyReferenced_nonNull_native);
        v113 = sub_22633941C(v106, v107);
        if ((v119 & 1) != (v120 & 1))
        {
          goto LABEL_93;
        }

LABEL_64:
        if (v119)
        {
          goto LABEL_65;
        }

LABEL_67:
        v125 = v187;
        *(v187 + 8 * (v113 >> 6) + 64) |= 1 << v113;
        v126 = (v125[6] + 16 * v113);
        *v126 = v106;
        v126[1] = v107;
        *(v125[7] + 8 * v113) = v166;
        sub_2262F4AEC(v167, type metadata accessor for Analytics.Interval.Complete);
        v127 = v125[2];
        v117 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v117)
        {
          goto LABEL_92;
        }

        v184 = v125;
        v125[2] = v128;
        v70 = v176;
      }
    }

    else
    {
      v90 = v174;
      sub_22635000C();
      v91 = v178;

      v92 = sub_22635003C();
      v93 = sub_22635074C();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v187 = v95;
        *v94 = v168;
        *(v94 + 4) = sub_226345004(v169, v91, &v187);
        *(v94 + 12) = 2080;
        LOBYTE(v186) = v89;
        v96 = sub_2263504CC();
        v98 = sub_226345004(v96, v97, &v187);

        *(v94 + 14) = v98;
        _os_log_impl(&dword_2262B6000, v92, v93, "%s Analytics: Programming error: Attempting to log to core analytics while a step is still pending: %s", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v95, -1, -1);
        MEMORY[0x22AA7D570](v94, -1, -1);
      }

      (*v173)(v90, v175);
      v99 = v183[15];
      v100 = *&v185[v99];
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v49 = v179;
      if ((v101 & 1) == 0)
      {
        v100 = sub_2262DC850(0, *(v100 + 2) + 1, 1, v100);
      }

      v103 = *(v100 + 2);
      v102 = *(v100 + 3);
      if (v103 >= v102 >> 1)
      {
        v100 = sub_2262DC850((v102 > 1), v103 + 1, 1, v100);
      }

      *(v100 + 2) = v103 + 1;
      v100[v103 + 32] = 0;
      *&v185[v99] = v100;
      v104 = sub_22634EECC();
      (*(*(v104 - 8) + 8))(v49, v104);
      v76 = v182;
      v70 = v176;
    }
  }

  v129 = *&v185[v183[15]];
  v130 = *(v129 + 16);
  if (v130 >= 3)
  {
    v131 = 3;
  }

  else
  {
    v131 = *(v129 + 16);
  }

  if (v130)
  {

    v132 = 0;
    v133 = 0x277CCA000;
    while (1)
    {
      v136 = *(v129 + v132 + 32);
      v186 = v132;
      v187 = 0x6575737369;
      v188 = 0xE500000000000000;
      v137 = sub_226350C1C();
      MEMORY[0x22AA7C5B0](v137);

      v139 = v187;
      v138 = v188;
      v140 = [objc_allocWithZone(*(v133 + 2992)) initWithInteger_];
      v141 = v184;
      v142 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v141;
      v143 = sub_22633941C(v139, v138);
      v145 = *(v141 + 16);
      v146 = (v144 & 1) == 0;
      v117 = __OFADD__(v145, v146);
      v147 = v145 + v146;
      if (v117)
      {
        break;
      }

      v148 = v144;
      if (*(v141 + 24) >= v147)
      {
        if ((v142 & 1) == 0)
        {
          v154 = v143;
          sub_22633A944();
          v143 = v154;
        }
      }

      else
      {
        sub_226337500(v147, v142);
        v143 = sub_22633941C(v139, v138);
        if ((v148 & 1) != (v149 & 1))
        {
          goto LABEL_93;
        }
      }

      v150 = v187;
      v184 = v187;
      if (v148)
      {
        v134 = *(v187 + 56);
        v135 = *(v134 + 8 * v143);
        *(v134 + 8 * v143) = v140;
      }

      else
      {
        *(v187 + 8 * (v143 >> 6) + 64) |= 1 << v143;
        v151 = (v150[6] + 16 * v143);
        *v151 = v139;
        v151[1] = v138;
        *(v150[7] + 8 * v143) = v140;
        v152 = v150[2];
        v117 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v117)
        {
          goto LABEL_90;
        }

        v150[2] = v153;
      }

      ++v132;
      v133 = 0x277CCA000uLL;
      if (v131 == v132)
      {

        v155 = *(v129 + 16);
        goto LABEL_87;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v155 = 0;
LABEL_87:
  v156 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v157 = v184;
  v158 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v157;
  sub_2262E3788(v156, 0x756F436575737369, 0xEA0000000000746ELL, v158);
  return v187;
}

unint64_t sub_2262F234C(char a1)
{
  result = 0x4B74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x556E6F6973736573;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x7361655274697865;
      break;
    case 5:
      result = 0x6E69646E756F7267;
      break;
    case 6:
      result = 0x4F6E6F6973736573;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x776F6C666B726F77;
      break;
    case 10:
      result = 0x65746E4970657473;
      break;
    case 11:
      result = 0x736575737369;
      break;
    case 12:
      result = 0x646567676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2262F24E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793488, &qword_226353168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F499C();
  sub_226350D2C();
  LOBYTE(v24[0]) = *v3;
  LOBYTE(v20) = 0;
  sub_2262F4B4C();
  sub_226350BEC();
  if (!v2)
  {
    v9 = type metadata accessor for Analytics(0);
    LOBYTE(v24[0]) = 1;
    sub_22634EEFC();
    sub_2262F47DC(&qword_27D793498, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_226350BEC();
    v27 = 2;
    sub_226350B9C();
    v10 = &v3[v9[7]];
    v11 = v10[1];
    v24[0] = *v10;
    v24[1] = v11;
    v12 = v10[3];
    v14 = *v10;
    v13 = v10[1];
    v24[2] = v10[2];
    v24[3] = v12;
    v20 = v14;
    v21 = v13;
    v15 = v10[3];
    v22 = v10[2];
    v23 = v15;
    v26 = 3;
    sub_2262D66FC(v24, v19, &qword_27D793048, &qword_226351F00);
    sub_2262F4BA0();
    sub_226350BAC();
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    sub_2262D67D8(v19, &qword_27D793048, &qword_226351F00);
    LOBYTE(v18) = v3[v9[8]];
    v25 = 4;
    sub_2262F4BF4();
    sub_226350BAC();
    LOBYTE(v18) = 5;
    sub_226350B7C();
    LOBYTE(v18) = v3[v9[10]];
    v25 = 6;
    sub_2262E6448();
    sub_226350BAC();
    LOBYTE(v18) = 7;
    sub_226350B8C();
    LOBYTE(v18) = 8;
    sub_22634F47C();
    sub_2262F47DC(&qword_27D7934B0, MEMORY[0x277D78738], MEMORY[0x277D78740]);
    sub_226350BAC();
    LOBYTE(v18) = 9;
    sub_22634FDFC();
    sub_2262F47DC(&qword_27D7934B8, MEMORY[0x277D78CF0], MEMORY[0x277D78CF8]);
    sub_226350BEC();
    v18 = *&v3[v9[14]];
    v25 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
    sub_2262F4C48();
    sub_226350BEC();
    v18 = *&v3[v9[15]];
    v25 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    sub_2262F4D58(&qword_27D7934D8, sub_2262F4DD0, MEMORY[0x277D83948]);
    sub_226350BEC();
    LOBYTE(v18) = 12;
    sub_226350BCC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2262F2AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v58 = sub_22634FDFC();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_22634EEFC();
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793448, &unk_226353158);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = &v48 - v10;
  v12 = type metadata accessor for Analytics(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[v13[7]];
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v62 = v16;
  v17 = v13[10];
  v15[v17] = 3;
  v59 = v13;
  v18 = v13[12];
  v19 = sub_22634F47C();
  v20 = *(*(v19 - 8) + 56);
  v63 = v18;
  v64 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_2262F499C();
  v56 = v11;
  v22 = v60;
  sub_226350D1C();
  if (v22)
  {
    v24 = v64;
    v25 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v26 = *(v25 + 1);
    v71 = *v25;
    v72 = v26;
    v27 = *(v25 + 3);
    v73 = *(v25 + 2);
    v74 = v27;
    sub_2262D67D8(&v71, &qword_27D793048, &qword_226351F00);

    sub_2262D67D8(&v24[v63], &qword_27D792FE0, &unk_226351C10);
  }

  else
  {
    v50 = v17;
    v49 = v6;
    v23 = v54;
    v60 = v7;
    LOBYTE(v70[0]) = 0;
    sub_2262F49F0();
    sub_226350B3C();
    v28 = v64;
    *v64 = v71;
    LOBYTE(v71) = 1;
    sub_2262F47DC(&qword_27D793460, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v29 = v60;
    sub_226350B3C();
    v30 = v62;
    v31 = v9;
    v32 = v59;
    (*(v53 + 32))(&v28[v59[5]], v31, v29);
    LOBYTE(v71) = 2;
    v33 = sub_226350AEC();
    v34 = &v28[v32[6]];
    *v34 = v33;
    v34[8] = v35 & 1;
    v76 = 3;
    sub_2262F4A44();
    sub_226350AFC();
    v66 = v71;
    v67 = v72;
    v68 = v73;
    v69 = v74;
    v36 = *(v30 + 1);
    v70[0] = *v30;
    v70[1] = v36;
    v37 = *(v30 + 3);
    v70[2] = *(v30 + 2);
    v70[3] = v37;
    sub_2262D67D8(v70, &qword_27D793048, &qword_226351F00);
    v38 = v67;
    *v30 = v66;
    *(v30 + 1) = v38;
    v39 = v69;
    *(v30 + 2) = v68;
    *(v30 + 3) = v39;
    v75 = 4;
    sub_2262F4A98();
    sub_226350AFC();
    v28[v59[8]] = v65;
    LOBYTE(v65) = 5;
    v40 = sub_226350ACC();
    v41 = &v28[v59[9]];
    *v41 = v40;
    v41[1] = v42;
    v48 = v42;
    v75 = 6;
    sub_2262E649C();
    sub_226350AFC();
    v28[v50] = v65;
    LOBYTE(v65) = 7;
    v28[v59[11]] = sub_226350ADC();
    LOBYTE(v65) = 8;
    sub_2262F47DC(&qword_27D793478, MEMORY[0x277D78738], MEMORY[0x277D78758]);
    sub_226350AFC();
    sub_2262D5F90(v49, &v28[v63]);
    LOBYTE(v65) = 9;
    sub_2262F47DC(&qword_27D793480, MEMORY[0x277D78CF0], MEMORY[0x277D78D08]);
    sub_226350B3C();
    (*(v57 + 32))(&v64[v59[13]], v52, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
    v75 = 10;
    sub_2262F3920();
    sub_226350B3C();
    *&v64[v59[14]] = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    v75 = 11;
    sub_2262F4D58(&qword_27D7933A8, sub_2262F3A30, MEMORY[0x277D83978]);
    sub_226350B3C();
    *&v64[v59[15]] = v65;
    LOBYTE(v65) = 12;
    v43 = sub_226350B1C();
    v44 = v59[16];
    (*(v23 + 8))(v56, v55);
    v45 = v43 & 1;
    v46 = v64;
    v64[v44] = v45;
    sub_2262F4934(v46, v51, type metadata accessor for Analytics);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    return sub_2262F4AEC(v46, type metadata accessor for Analytics);
  }
}

uint64_t sub_2262F3740@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2262F66F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2262F3774(uint64_t a1)
{
  v2 = sub_2262F499C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262F37B0(uint64_t a1)
{
  v2 = sub_2262F499C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2262F3820()
{
  result = qword_28137E208;
  if (!qword_28137E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137E208);
  }

  return result;
}

unint64_t sub_2262F3878()
{
  result = qword_27D793368;
  if (!qword_27D793368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793368);
  }

  return result;
}

unint64_t sub_2262F38CC()
{
  result = qword_27D793378;
  if (!qword_27D793378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793378);
  }

  return result;
}

unint64_t sub_2262F3920()
{
  result = qword_27D793388;
  if (!qword_27D793388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793380, &qword_226353100);
    sub_2262F39DC();
    sub_2262F47DC(&qword_27D793398, type metadata accessor for Analytics.Interval, &unk_226352F8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793388);
  }

  return result;
}

unint64_t sub_2262F39DC()
{
  result = qword_27D793390;
  if (!qword_27D793390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793390);
  }

  return result;
}

unint64_t sub_2262F3A30()
{
  result = qword_27D7933B0;
  if (!qword_27D7933B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933B0);
  }

  return result;
}

void sub_2262F3A84(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_22634ED9C();
  v8 = [v7 domain];
  v9 = sub_22635046C();
  v11 = v10;

  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793078, &qword_226351F28);
  v12 = sub_2263504CC();
  v14 = v13;
  [v7 code];
  v15 = sub_226350C1C();
  v17 = v16;

  *a4 = v9;
  a4[1] = v11;
  a4[2] = v12;
  a4[3] = v14;
  a4[4] = v15;
  a4[5] = v17;
  a4[6] = a2;
  a4[7] = a3;
}

uint64_t sub_2262F3B9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746E4970657473 && a2 == 0xED0000736C617672;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646567676F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2262F3CB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974636964657270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xE90000000000006ELL || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69626967696C65 && a2 == 0xEB00000000797469 || (sub_226350C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6152656C646E7562 && a2 == 0xED0000676E696B6ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_226350C4C();

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

uint64_t sub_2262F3ECC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793510, &qword_226353180);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v37[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793518, &qword_226353188);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v51 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793520, &qword_226353190);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v54 = &v37[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793528, &qword_226353198);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v37[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793530, &qword_2263531A0);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793538, &qword_2263531A8);
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793540, &qword_2263531B0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v37[-v20];
  v22 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2262F53EC();
  v23 = v55;
  sub_226350D1C();
  if (v23)
  {
    goto LABEL_9;
  }

  v39 = v15;
  v24 = v14;
  v26 = v53;
  v25 = v54;
  v55 = v19;
  v27 = sub_226350B5C();
  if (*(v27 + 16) != 1 || (v28 = *(v27 + 32), v28 == 6))
  {
    v30 = sub_22635099C();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933E0, &qword_226353128);
    *v32 = &type metadata for Analytics.StepKind;
    sub_226350ABC();
    sub_22635098C();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v55 + 8))(v21, v18);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    return 0;
  }

  v38 = *(v27 + 32);
  if (v28 > 2)
  {
    if (v28 != 3)
    {
      v29 = v55;
      if (v28 == 4)
      {
        v61 = 4;
        sub_2262F5494();
        v34 = v51;
        sub_226350AAC();
        (*(v48 + 8))(v34, v47);
      }

      else
      {
        v62 = 5;
        sub_2262F5440();
        v36 = v52;
        sub_226350AAC();
        (*(v49 + 8))(v36, v50);
      }

      goto LABEL_17;
    }

    v60 = 3;
    sub_2262F54E8();
    sub_226350AAC();
    v35 = v55;
    (*(v46 + 8))(v25, v45);
    (*(v35 + 8))(v21, v18);
  }

  else
  {
    if (v28)
    {
      if (v28 == 1)
      {
        v58 = 1;
        sub_2262F5590();
        sub_226350AAC();
        v29 = v55;
        (*(v41 + 8))(v24, v42);
      }

      else
      {
        v59 = 2;
        sub_2262F553C();
        sub_226350AAC();
        v29 = v55;
        (*(v43 + 8))(v26, v44);
      }

LABEL_17:
      (*(v29 + 8))(v21, v18);
      goto LABEL_18;
    }

    v57 = 0;
    sub_2262F55E4();
    sub_226350AAC();
    (*(v40 + 8))(v17, v39);
    (*(v55 + 8))(v21, v18);
  }

LABEL_18:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v38;
}

unint64_t sub_2262F46D0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_2262F46E0()
{
  result = qword_27D7933B8;
  if (!qword_27D7933B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933B8);
  }

  return result;
}

unint64_t sub_2262F4734()
{
  result = qword_27D7933D8;
  if (!qword_27D7933D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933D8);
  }

  return result;
}

unint64_t sub_2262F4788()
{
  result = qword_27D7933E8;
  if (!qword_27D7933E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933E8);
  }

  return result;
}

uint64_t sub_2262F47DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2262F4824()
{
  result = qword_27D7933F8;
  if (!qword_27D7933F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933F8);
  }

  return result;
}

uint64_t sub_2262F4878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2262F48E0()
{
  result = qword_27D793438;
  if (!qword_27D793438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793438);
  }

  return result;
}

uint64_t sub_2262F4934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2262F499C()
{
  result = qword_27D793450;
  if (!qword_27D793450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793450);
  }

  return result;
}

unint64_t sub_2262F49F0()
{
  result = qword_27D793458;
  if (!qword_27D793458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793458);
  }

  return result;
}

unint64_t sub_2262F4A44()
{
  result = qword_27D793468;
  if (!qword_27D793468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793468);
  }

  return result;
}

unint64_t sub_2262F4A98()
{
  result = qword_27D793470;
  if (!qword_27D793470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793470);
  }

  return result;
}

uint64_t sub_2262F4AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2262F4B4C()
{
  result = qword_27D793490;
  if (!qword_27D793490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793490);
  }

  return result;
}

unint64_t sub_2262F4BA0()
{
  result = qword_27D7934A0;
  if (!qword_27D7934A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934A0);
  }

  return result;
}

unint64_t sub_2262F4BF4()
{
  result = qword_27D7934A8;
  if (!qword_27D7934A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934A8);
  }

  return result;
}

unint64_t sub_2262F4C48()
{
  result = qword_27D7934C0;
  if (!qword_27D7934C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793380, &qword_226353100);
    sub_2262F4D04();
    sub_2262F47DC(&qword_27D7934D0, type metadata accessor for Analytics.Interval, &unk_226352F64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934C0);
  }

  return result;
}

unint64_t sub_2262F4D04()
{
  result = qword_27D7934C8;
  if (!qword_27D7934C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934C8);
  }

  return result;
}

uint64_t sub_2262F4D58(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7933A0, &qword_226353108);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2262F4DD0()
{
  result = qword_27D7934E0;
  if (!qword_27D7934E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934E0);
  }

  return result;
}

unint64_t sub_2262F4E24()
{
  result = qword_27D7934E8;
  if (!qword_27D7934E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934E8);
  }

  return result;
}

uint64_t sub_2262F4E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E7373616C63 && a2 == 0xE900000000000065 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2262F4FE8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7934F0, &qword_226353170);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F52DC();
  sub_226350D1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_226350B0C();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_226350B0C();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_226350B0C();
  v25 = v13;
  v33 = 3;
  v14 = sub_226350ACC();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_2262F5330(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_2262F5368(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_2262F52DC()
{
  result = qword_27D7934F8;
  if (!qword_27D7934F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934F8);
  }

  return result;
}

unint64_t sub_2262F5398()
{
  result = qword_27D793508;
  if (!qword_27D793508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793508);
  }

  return result;
}

unint64_t sub_2262F53EC()
{
  result = qword_27D793548;
  if (!qword_27D793548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793548);
  }

  return result;
}

unint64_t sub_2262F5440()
{
  result = qword_27D793550;
  if (!qword_27D793550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793550);
  }

  return result;
}

unint64_t sub_2262F5494()
{
  result = qword_27D793558;
  if (!qword_27D793558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793558);
  }

  return result;
}

unint64_t sub_2262F54E8()
{
  result = qword_27D793560;
  if (!qword_27D793560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793560);
  }

  return result;
}

unint64_t sub_2262F553C()
{
  result = qword_27D793568;
  if (!qword_27D793568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793568);
  }

  return result;
}

unint64_t sub_2262F5590()
{
  result = qword_27D793570;
  if (!qword_27D793570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793570);
  }

  return result;
}

unint64_t sub_2262F55E4()
{
  result = qword_27D793578;
  if (!qword_27D793578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793578);
  }

  return result;
}

unint64_t sub_2262F5638()
{
  result = qword_27D7935F0;
  if (!qword_27D7935F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7935E8, &qword_226353228);
    sub_2262F56BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7935F0);
  }

  return result;
}

unint64_t sub_2262F56BC()
{
  result = qword_27D7935F8;
  if (!qword_27D7935F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793140, &qword_226353220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7935F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkManager.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkManager.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Analytics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2262F5A9C()
{
  result = qword_27D793600;
  if (!qword_27D793600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793600);
  }

  return result;
}

unint64_t sub_2262F5AF4()
{
  result = qword_27D793608;
  if (!qword_27D793608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793608);
  }

  return result;
}

unint64_t sub_2262F5B4C()
{
  result = qword_27D793610;
  if (!qword_27D793610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793610);
  }

  return result;
}

unint64_t sub_2262F5BA4()
{
  result = qword_27D793618;
  if (!qword_27D793618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793618);
  }

  return result;
}

unint64_t sub_2262F5BFC()
{
  result = qword_27D793620;
  if (!qword_27D793620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793620);
  }

  return result;
}

unint64_t sub_2262F5C54()
{
  result = qword_27D793628;
  if (!qword_27D793628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793628);
  }

  return result;
}

unint64_t sub_2262F5CAC()
{
  result = qword_27D793630;
  if (!qword_27D793630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793630);
  }

  return result;
}

unint64_t sub_2262F5D04()
{
  result = qword_27D793638;
  if (!qword_27D793638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793638);
  }

  return result;
}

unint64_t sub_2262F5D5C()
{
  result = qword_27D793640;
  if (!qword_27D793640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793640);
  }

  return result;
}

unint64_t sub_2262F5DB4()
{
  result = qword_27D793648;
  if (!qword_27D793648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793648);
  }

  return result;
}

unint64_t sub_2262F5E0C()
{
  result = qword_27D793650;
  if (!qword_27D793650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793650);
  }

  return result;
}

unint64_t sub_2262F5E64()
{
  result = qword_27D793658;
  if (!qword_27D793658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793658);
  }

  return result;
}

unint64_t sub_2262F5EBC()
{
  result = qword_27D793660;
  if (!qword_27D793660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793660);
  }

  return result;
}

unint64_t sub_2262F5F14()
{
  result = qword_27D793668;
  if (!qword_27D793668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793668);
  }

  return result;
}

unint64_t sub_2262F5F6C()
{
  result = qword_27D793670;
  if (!qword_27D793670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793670);
  }

  return result;
}

unint64_t sub_2262F5FC4()
{
  result = qword_27D793678;
  if (!qword_27D793678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793678);
  }

  return result;
}

unint64_t sub_2262F601C()
{
  result = qword_27D793680;
  if (!qword_27D793680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793680);
  }

  return result;
}

unint64_t sub_2262F6074()
{
  result = qword_27D793688;
  if (!qword_27D793688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793688);
  }

  return result;
}

unint64_t sub_2262F60CC()
{
  result = qword_27D793690;
  if (!qword_27D793690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793690);
  }

  return result;
}

unint64_t sub_2262F6124()
{
  result = qword_27D793698;
  if (!qword_27D793698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793698);
  }

  return result;
}

unint64_t sub_2262F617C()
{
  result = qword_27D7936A0;
  if (!qword_27D7936A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936A0);
  }

  return result;
}

unint64_t sub_2262F61D4()
{
  result = qword_27D7936A8;
  if (!qword_27D7936A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936A8);
  }

  return result;
}

unint64_t sub_2262F622C()
{
  result = qword_27D7936B0;
  if (!qword_27D7936B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936B0);
  }

  return result;
}

unint64_t sub_2262F6284()
{
  result = qword_27D7936B8;
  if (!qword_27D7936B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936B8);
  }

  return result;
}

unint64_t sub_2262F62DC()
{
  result = qword_27D7936C0;
  if (!qword_27D7936C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936C0);
  }

  return result;
}

unint64_t sub_2262F6334()
{
  result = qword_27D7936C8;
  if (!qword_27D7936C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936C8);
  }

  return result;
}

unint64_t sub_2262F638C()
{
  result = qword_27D7936D0;
  if (!qword_27D7936D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936D0);
  }

  return result;
}

unint64_t sub_2262F63E4()
{
  result = qword_27D7936D8;
  if (!qword_27D7936D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936D8);
  }

  return result;
}

unint64_t sub_2262F643C()
{
  result = qword_27D7936E0;
  if (!qword_27D7936E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936E0);
  }

  return result;
}

unint64_t sub_2262F6494()
{
  result = qword_27D7936E8;
  if (!qword_27D7936E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936E8);
  }

  return result;
}

unint64_t sub_2262F64EC()
{
  result = qword_27D7936F0;
  if (!qword_27D7936F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936F0);
  }

  return result;
}

unint64_t sub_2262F6544()
{
  result = qword_27D7936F8;
  if (!qword_27D7936F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936F8);
  }

  return result;
}

unint64_t sub_2262F659C()
{
  result = qword_27D793700;
  if (!qword_27D793700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793700);
  }

  return result;
}

unint64_t sub_2262F65F4()
{
  result = qword_27D793708;
  if (!qword_27D793708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793708);
  }

  return result;
}

unint64_t sub_2262F664C()
{
  result = qword_27D793710;
  if (!qword_27D793710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793710);
  }

  return result;
}

unint64_t sub_2262F66A4()
{
  result = qword_27D793718;
  if (!qword_27D793718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793718);
  }

  return result;
}

uint64_t sub_2262F66F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B74736575716572 && a2 == 0xEB00000000646E69;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000226356B50 == a2 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7361655274697865 && a2 == 0xEA00000000006E6FLL || (sub_226350C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69646E756F7267 && a2 == 0xEE006C6562614C67 || (sub_226350C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4F6E6F6973736573 && a2 == 0xEE00656D6F637475 || (sub_226350C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000226356BB0 == a2 || (sub_226350C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000226356BD0 == a2 || (sub_226350C4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65746E4970657473 && a2 == 0xED0000736C617672 || (sub_226350C4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x646567676F6CLL && a2 == 0xE600000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_2262F6B70()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v3 = v2;
  if (v2 == 1)
  {
    sub_2263501DC();
    v3 = sub_2263501CC();
    v4 = *(v1 + 112);
    *(v1 + 112) = v3;

    sub_2262FB3EC(v4);
  }

  sub_2262FB3FC(v2);
  return v3;
}

uint64_t sub_2262F6C00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2263501FC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22635015C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for VisualAction.Kind.SystemTool(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for VisualAction.Kind(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262F6D78, v1, 0);
}

uint64_t sub_2262F6D78()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v2 + *(v3 + 20), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = v0[12];
      sub_2262FAB0C();
      swift_allocError();
      *v16 = 3;
      swift_willThrow();
      sub_2262D90E8(v15, type metadata accessor for VisualAction.Kind);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v5 = v0[12];
      sub_2262FAB0C();
      swift_allocError();
      *v6 = 3;
      swift_willThrow();
      v7 = sub_22634FBEC();
      (*(*(v7 - 8) + 8))(v5, v7);
LABEL_12:

      v18 = v0[1];

      return v18();
    }

LABEL_11:
    sub_2262FAB0C();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    sub_2262D90E8(v0[12], type metadata accessor for VisualAction.Kind);
    goto LABEL_11;
  }

  v8 = v0[10];
  v9 = v0[2];
  sub_2262D902C(v0[12], v8);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  sub_2263501EC();
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_2262F7028;
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[7];

  return MEMORY[0x2821DADD0](v12, v13, &unk_2263540C0, v10, v14);
}

uint64_t sub_2262F7028()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[3];
    v7 = sub_2262F727C;
  }

  else
  {
    v9 = v2[8];
    v8 = v2[9];
    v10 = v2[7];
    v11 = v2[3];
    (*(v9 + 8))(v8, v10);

    v7 = sub_2262F71D0;
    v6 = v11;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2262F71D0()
{
  sub_2262D90E8(*(v0 + 80), type metadata accessor for VisualAction.Kind.SystemTool);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2262F727C()
{
  v1 = *(v0 + 80);

  sub_2262D90E8(v1, type metadata accessor for VisualAction.Kind.SystemTool);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2262F7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937C8, &qword_2263540C8);
  v5[12] = swift_task_alloc();
  v6 = sub_2263500DC();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_2263500FC();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262F748C, 0, 0);
}

uint64_t sub_2262F748C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 80), *(v0 + 104));
  v3 = type metadata accessor for VisualAction(0);
  sub_2262F7B48(*(v2 + *(v3 + 24)));
  v4 = sub_22635019C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_2263500EC();
  ObjectType = swift_getObjectType();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_2262F7658;
  v7 = *(v0 + 144);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return MEMORY[0x2821DAA58](v9, v7, v0 + 16, ObjectType, v8);
}

uint64_t sub_2262F7658()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  sub_2262D67D8(v2 + 16, &qword_27D7937D0, &qword_2263540D0);
  if (v0)
  {
    v3 = sub_2262F7820;
  }

  else
  {
    v3 = sub_2262F7784;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2262F7784()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2262F7820()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

void sub_2262F78BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937E8, &qword_2263540E8);
    v2 = sub_226350A9C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_2262FB40C(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_2262B8FD8(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937F0, &unk_2263540F0);
        swift_dynamicCast();
        sub_2262B8FD8(&v23, v25);
        sub_2262B8FD8(v25, v26);
        sub_2262B8FD8(v26, &v24);
        v17 = sub_22633941C(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_1Tm(v9);
          sub_2262B8FD8(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_2262B8FD8(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2262F7B48(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937D8, &qword_2263540D8);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - v4;
  v48 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937E0, &qword_2263540E0);
    v5 = sub_226350A9C();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v6 = v48 + 64;
  v7 = 1 << *(v48 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v48 + 64);
  v10 = (v7 + 63) >> 6;
  v42 = v5 + 64;

  v11 = 0;
  v44 = v5;
  v43 = v6;
  while (v9)
  {
    v15 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v48 + 56);
    v19 = (*(v48 + 48) + 16 * v17);
    v21 = *v19;
    v49 = v19[1];
    v20 = v49;
    v22 = sub_22635027C();
    v23 = *(v22 - 8);
    v24 = v18 + *(v23 + 72) * v17;
    v25 = v47;
    v26 = v45;
    (*(v23 + 16))(&v45[*(v47 + 48)], v24, v22);
    *v26 = v21;
    v26[1] = v20;
    v27 = v26;
    v28 = v46;
    sub_2262FB300(v27, v46);
    v29 = *(v25 + 48);
    v30 = *v28;
    v31 = v28[1];
    v51 = v22;
    v52 = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    (*(v23 + 32))(boxed_opaque_existential_1, v28 + v29, v22);
    sub_2262FB3D4(&v50, v54);
    v33 = v30;
    sub_2262FB3D4(v54, v55);
    sub_2262FB3D4(v55, &v53);

    v34 = v30;
    v35 = v44;
    v36 = sub_22633941C(v34, v31);
    if (v37)
    {
      v12 = (v35[6] + 16 * v36);
      *v12 = v33;
      v12[1] = v31;
      v13 = v36;

      v14 = (v35[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      sub_2262FB3D4(&v53, v14);
    }

    else
    {
      if (v35[2] >= v35[3])
      {
        goto LABEL_20;
      }

      *(v42 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v38 = (v35[6] + 16 * v36);
      *v38 = v33;
      v38[1] = v31;
      sub_2262FB3D4(&v53, v35[7] + 40 * v36);
      v39 = v35[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_21;
      }

      v35[2] = v41;
    }

    v11 = v15;
    v6 = v43;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2262F7F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v147 = a2;
  v114 = a3;
  v4 = sub_22635004C();
  v141 = *(v4 - 8);
  v142 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v120 = v108 - v8;
  v113 = sub_2263500DC();
  v112 = *(v113 - 8);
  v9 = MEMORY[0x28223BE20](v113);
  v111 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = v108 - v11;
  v12 = sub_22635022C();
  v129 = *(v12 - 8);
  v130 = v12;
  MEMORY[0x28223BE20](v12);
  v128 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2263502EC();
  v137 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_2263500AC();
  v122 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v121 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22635005C();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = (v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793728, &qword_226353FB0);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = v108 - v17;
  v135 = sub_22635014C();
  v138 = *(v135 - 8);
  v18 = MEMORY[0x28223BE20](v135);
  v116 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v134 = v108 - v21;
  MEMORY[0x28223BE20](v20);
  v125 = v108 - v22;
  v23 = sub_22634EF3C();
  v24 = *(v23 - 8);
  v148 = v23;
  v149 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v123 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v145 = v108 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793730, &qword_226353FB8);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (v108 - v30);
  v32 = sub_22635031C();
  v143 = *(v32 - 8);
  KeyPath = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = v108 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793738, &qword_226353FC0);
  MEMORY[0x28223BE20](v38 - 8);
  v150 = (v108 - v39);
  v40 = sub_2263502BC();
  v139 = *(v40 - 8);
  v140 = v40;
  MEMORY[0x28223BE20](v40);
  v136 = v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2262F6B70();
  if (v42)
  {
    v43 = v42;
    sub_22635030C();
    swift_getKeyPath();
    v44 = swift_allocObject();
    v109 = a1;
    *(v44 + 16) = a1;
    *(v44 + 24) = v147;
    *v31 = v44;
    v45 = *(v29 + 104);
    v110 = *MEMORY[0x277D721C8];
    v45(v31);
    sub_2262FB1F4(&qword_27D793748, MEMORY[0x277D73330], MEMORY[0x277D73328]);
    sub_2262FAE80(&qword_27D793750, &qword_27D793730, &qword_226353FB8);

    sub_22635021C();

    (*(v29 + 8))(v31, v28);
    v46 = KeyPath;
    v47 = *(v143 + 1);
    v47(v35, KeyPath);
    v48 = v145;
    sub_22634EF1C();
    v49 = v146;
    sub_2263501BC();
    if (v49)
    {

      (*(v149 + 8))(v48, v148);
      return (v47)(v37, v46);
    }

    else
    {
      v55 = v149 + 8;
      v56 = *(v149 + 8);
      v56(v48, v148);
      v47(v37, v46);
      v58 = v139;
      v57 = v140;
      if ((*(v139 + 48))(v150, 1, v140) == 1)
      {
        sub_2262D67D8(v150, &qword_27D793738, &qword_226353FC0);
        v59 = v120;
        sub_22634FFDC();
        v60 = sub_22635003C();
        v61 = sub_22635073C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_2262B6000, v60, v61, "No container found for bundle id", v62, 2u);
          MEMORY[0x22AA7D570](v62, -1, -1);
        }

        (*(v141 + 8))(v59, v142);
        sub_2262FAB0C();
        swift_allocError();
        *v63 = 1;
        swift_willThrow();
      }

      else
      {
        v146 = v56;
        v149 = v55;
        v108[1] = v43;
        v64 = v136;
        (*(v58 + 32))(v136, v150, v57);
        v65 = v116;
        sub_22635013C();
        swift_getKeyPath();
        v66 = swift_allocBox();
        (*(v58 + 16))(v67, v64, v57);
        v68 = v117;
        *v117 = v66;
        v69 = v118;
        v70 = v119;
        (*(v118 + 104))(v68, v110, v119);
        v71 = sub_2262FB1F4(&qword_27D793760, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
        sub_2262FAE80(&qword_27D793770, &qword_27D793728, &qword_226353FB0);
        v145 = v71;
        sub_22635021C();

        (*(v69 + 8))(v68, v70);
        v150 = *(v138 + 8);
        v138 += 8;
        v150(v65, v135);
        KeyPath = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793758, &qword_226354028);
        v72 = sub_22635007C();
        v73 = *(v72 - 8);
        v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_226351C90;
        if (qword_27D792EA0 != -1)
        {
          swift_once();
        }

        v76 = __swift_project_value_buffer(v133, qword_27D793ED8);
        v77 = *(v137 + 16);
        v141 = v76;
        v137 += 16;
        v120 = v77;
        (v77)(v132);
        v142 = "ResultsInAppIntent";
        v143 = "onRegistrationRequest(_:)";
        v78 = v121;
        sub_22635032C();
        v79 = v122;
        v80 = *(v122 + 104);
        LODWORD(v118) = *MEMORY[0x277D72148];
        v81 = v131;
        v119 = v122 + 104;
        v117 = v80;
        (v80)(v78);
        sub_22635008C();
        (*(v79 + 8))(v78, v81);
        v82 = sub_2262FAB60(v75);
        swift_setDeallocating();
        (*(v73 + 8))(v75 + v74, v72);
        swift_deallocClassInstance();
        v83 = v124;
        *v124 = v82;
        v84 = v126;
        v85 = v127;
        (*(v126 + 104))(v83, *MEMORY[0x277D720A8], v127);
        sub_2262FB1F4(&qword_27D793768, MEMORY[0x277D720C0], MEMORY[0x277D720B8]);
        v86 = v125;
        v87 = v134;
        sub_22635021C();

        (*(v84 + 8))(v83, v85);
        v88 = v135;
        v150(v87, v135);
        v89 = v123;
        sub_22634EF1C();
        v91 = v129;
        v90 = v130;
        v92 = v128;
        (*(v129 + 104))(v128, *MEMORY[0x277D72858], v130);
        v93 = sub_2263501AC();
        v94 = *(v91 + 8);
        v145 = v93;
        v94(v92, v90);
        v146(v89, v148);
        v150(v86, v88);
        if (*(v145 + 2))
        {
          v95 = v112;
          v96 = *(v112 + 16);
          v97 = v111;
          v98 = v113;
          v96(v111, &v145[(*(v112 + 80) + 32) & ~*(v112 + 80)], v113);

          v99 = v115;
          (*(v95 + 32))(v115, v97, v98);
          v100 = type metadata accessor for VisualAction(0);
          v101 = v114;
          v102 = v114 + v100[5];
          v96(v102, v99, v98);
          v103 = *(type metadata accessor for VisualAction.Kind.SystemTool(0) + 20);
          (v120)(v132, v141, v133);

          sub_22635032C();
          (v117)(&v102[v103], v118, v131);
          type metadata accessor for VisualAction.Kind(0);
          swift_storeEnumTagMultiPayload();
          v104 = sub_2262FE430(MEMORY[0x277D84F90]);

          (*(v95 + 8))(v115, v98);
          result = (*(v139 + 8))(v136, v140);
          v105 = v147;
          *v101 = v109;
          v101[1] = v105;
          *(v101 + v100[6]) = v104;
          v106 = MEMORY[0x277D84F98];
          *(v101 + v100[7]) = MEMORY[0x277D84F98];
          *(v101 + v100[8]) = v106;
        }

        else
        {

          sub_2262FAB0C();
          swift_allocError();
          *v107 = 2;
          swift_willThrow();

          return (*(v139 + 8))(v136, v140);
        }
      }
    }
  }

  else
  {
    sub_22634FFDC();
    v51 = sub_22635003C();
    v52 = sub_22635073C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2262B6000, v51, v52, "No tool database", v53, 2u);
      MEMORY[0x22AA7D570](v53, -1, -1);
    }

    (*(v141 + 8))(v7, v142);
    sub_2262FAB0C();
    swift_allocError();
    *v54 = 0;
    return swift_willThrow();
  }

  return result;
}