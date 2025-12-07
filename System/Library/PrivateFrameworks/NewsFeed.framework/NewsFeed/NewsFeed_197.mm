void sub_1D6D2EA3C(uint64_t a1, unsigned int a2)
{
  v5 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (a2 >> 5) & 3;
  if (!v13)
  {
    sub_1D5FB543C();
    if (v2)
    {
      return;
    }

    v16[14] = a2;
    sub_1D6CCD0FC(v12);
    v14 = type metadata accessor for FeedHeadline;
    v15 = v12;
    goto LABEL_7;
  }

  if (v13 == 1)
  {
    sub_1D5FB51BC();
    if (v2)
    {
      return;
    }

    v16[15] = a2 & 0x9F;
    sub_1D67C8650(v8);
    v14 = type metadata accessor for FeedPuzzleStatistic;
    v15 = v8;
LABEL_7:
    sub_1D5BDDC48(v15, v14);
    return;
  }

  sub_1D6D2E6DC(a1, a2 & 0x9F);
}

void FormatBindingFloatExpression.logic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1D62B5230(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

BOOL sub_1D6D2EC28(uint64_t a1, unsigned int a2, unsigned __int8 a3, uint64_t a4)
{
  v8 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (a2 >> 5) & 3;
  if (!v16)
  {
    sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v15);
    LOBYTE(v28) = a2;
    v18 = sub_1D6CCD0FC(v15);
    v19 = type metadata accessor for FeedHeadline;
    v20 = v15;
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    sub_1D6B7B9A4(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v11);
    LOBYTE(v28) = a2 & 0x9F;
    sub_1D67C8650(v11);
    v18 = v17;
    v19 = type metadata accessor for FeedPuzzleStatistic;
    v20 = v11;
LABEL_5:
    sub_1D5BDDC48(v20, v19);
    goto LABEL_7;
  }

  v18 = sub_1D6D2E564(a1, a2 & 0x9F, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
LABEL_7:
  if (a3 == 12)
  {
    return 0;
  }

  if (a3 == 13)
  {
    return 1;
  }

  v27[1] = a4;
  v28 = a1;
  v22 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v23 = v22();
  FormatFloat.value(contextLayoutOptions:)(v23);
  v25 = v24;

  if (a3 > 5u)
  {
    if (a3 <= 8u)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          return v18 < v25;
        }

        return v18 != v25;
      }

      return v18 == v25;
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        goto LABEL_23;
      }

      return v25 < v18;
    }
  }

  else
  {
    if (a3 <= 2u)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return v18 < v25;
        }

        return v18 != v25;
      }

      return v18 == v25;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
LABEL_23:
        v26 = v25 > v18;
        return !v26;
      }

      return v25 < v18;
    }
  }

  v26 = v18 > v25;
  return !v26;
}

BOOL _s8NewsFeed28FormatBindingFloatExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a2;
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v8 = (v2 >> 5) & 3;
  v9 = v5 & 0x60;
  if (!v8)
  {
    if (v2 != v5 || v9 != 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v8 == 1)
  {
    v10 = (v5 ^ v2) & 0xFFFFFF9F;
    if (v9 != 32 || v10 != 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v9 != 64)
  {
    return 0;
  }

  if ((v2 & 0x80) == 0)
  {
    if ((v5 & 0x80) != 0 || ((v5 ^ v2) & 0x1F) != 0)
    {
      return 0;
    }

LABEL_13:
    if (v4 == 12)
    {
      if (*(a2 + 1) == 12)
      {
LABEL_23:
        sub_1D62B50D4(*(a2 + 1));
        sub_1D62B5230(v4, v3);
        sub_1D62B5230(v7, v6);
        return 1;
      }
    }

    else
    {
      if (v4 == 13)
      {
        if (*(a2 + 1) != 13)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if ((v7 & 0xFE) != 0xC)
      {
        v17[0] = v4;
        v18 = v3;
        v15[0] = v7;
        v16 = v6;
        sub_1D62B50D4(v7);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v7);
        v14 = _s8NewsFeed40FormatBindingFloatExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(v17, v15);
        sub_1D62B5230(v4, v3);
        sub_1D62B5230(v7, v6);
        sub_1D62B5230(v7, v6);
        sub_1D62B5230(v4, v3);
        return (v14 & 1) != 0;
      }
    }

LABEL_26:
    sub_1D62B50D4(v4);
    sub_1D62B50D4(v7);
    sub_1D62B5230(v4, v3);
    sub_1D62B5230(v7, v6);
    return 0;
  }

  result = 0;
  if ((v5 & 0x80) != 0 && ((v5 ^ v2) & 0x1F) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1D6D2F108(uint64_t a1)
{
  result = sub_1D6D2F130();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D2F130()
{
  result = qword_1EC895418;
  if (!qword_1EC895418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895418);
  }

  return result;
}

unint64_t sub_1D6D2F184(void *a1)
{
  a1[1] = sub_1D6677C44();
  a1[2] = sub_1D67011EC();
  result = sub_1D6D2F1BC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D2F1BC()
{
  result = qword_1EC895420;
  if (!qword_1EC895420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895420);
  }

  return result;
}

uint64_t sub_1D6D2F210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 24))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xD)
  {
    v4 = 13;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 14;
  if (v3 < 0xC)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D6D2F264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 13;
    }
  }

  return result;
}

uint64_t sub_1D6D2F2B8()
{
  sub_1D5B87E10(v0 + 16);
  sub_1D5B87E10(v0 + 32);

  return swift_deallocClassInstance();
}

double UserActionObservationManager.remove(monitor:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        swift_unknownObjectRelease();
        if (v8 == a1)
        {

          swift_beginAccess();
          sub_1D5EC4C00();
          swift_endAccess();

          return result;
        }
      }

      ++v5;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t UserActionObservationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10UserActionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6D2F4FC(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6D2F54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

void sub_1D6D2F5DC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = v1[2];
  if (v3 >> 62)
  {
LABEL_35:
    v4 = sub_1D7263BFC();
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = v3 & 0xC000000000000001;

  v6 = 0;
  v17 = v3;
  do
  {
    if (v5)
    {
      v7 = MEMORY[0x1DA6FB460](v6, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v6 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v8 = *(v7 + 24);
      ObjectType = swift_getObjectType();
      v10 = ObjectType;
      if (v2)
      {
        v11 = sub_1D725A5FC();
        (*(v8 + 8))(v2, v11, v10, v8);
        v3 = v17;
      }

      else
      {
        (*(v8 + 16))(ObjectType, v8);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    ++v6;
  }

  while (v4 != v6);

LABEL_17:
  v12 = v1[2];
  v18 = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
    v13 = sub_1D7263BFC();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = v1;
    v3 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1DA6FB460](v3, v12);
        v15 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          v16 = v18;
          v1 = v14;
          goto LABEL_33;
        }
      }

      else
      {
        if (v3 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v2 = *(v12 + 8 * v3 + 32);

        v15 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_30;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        v1 = &v18;
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v3;
      if (v15 == v13)
      {
        goto LABEL_31;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v1[2] = v16;
}

uint64_t sub_1D6D2F8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, __n128 a6)
{
  sub_1D6D47228(a1, a2, a3, a4, a5, a6);
  v7 = v6;

  return v7;
}

uint64_t sub_1D6D2F930(uint64_t a1)
{
  v85 = type metadata accessor for DebugFormatCacheFile(0);
  v2 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v3);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v87 = &v70 - v11;
  sub_1D6D48AAC(0);
  v86 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v75 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v83 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v82 = &v70 - v20;
  v77 = MEMORY[0x1E69E7CC8];
  v89 = MEMORY[0x1E69E7CC8];
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(a1 + 64);
  v25 = (v22 + 63) >> 6;
  v81 = v2 + 56;
  v84 = v2;
  v80 = v2 + 48;
  v88 = a1;

  v27 = 0;
  v79 = a1 + 64;
  for (i = v25; ; v25 = i)
  {
    v28 = v27;
    if (!v24)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v27 = v28;
LABEL_10:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v27 << 6);
      v31 = (*(v88 + 48) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = v84;
      v35 = v86;
      v36 = v82;
      sub_1D6D49454(*(v88 + 56) + *(v84 + 72) * v30, &v82[*(v86 + 48)], type metadata accessor for DebugFormatCacheFile);
      *v36 = v33;
      v36[1] = v32;
      v37 = v83;
      sub_1D6D491B0(v36, v83, sub_1D6D48AAC);
      v38 = *(v35 + 48);
      v39 = v37;
      v40 = v37 + v38;
      v41 = v87;
      sub_1D6D49454(v40, v87, type metadata accessor for DebugFormatCacheFile);
      v42 = v85;
      (*(v34 + 56))(v41, 0, 1, v85);
      sub_1D6D485F4(v41, v8, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
      if ((*(v34 + 48))(v8, 1, v42) != 1)
      {
        break;
      }

      sub_1D6D494BC(v41, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D494BC(v8, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      result = sub_1D6D49218(v39, sub_1D6D48AAC);
      v28 = v27;
      v21 = v79;
      v25 = i;
      if (!v24)
      {
LABEL_7:
        while (1)
        {
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v27 >= v25)
          {

            return v77;
          }

          v24 = *(v21 + 8 * v27);
          ++v28;
          if (v24)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    v43 = v76;
    sub_1D6D491B0(v8, v76, type metadata accessor for DebugFormatCacheFile);
    v44 = *(v43 + 8);
    v72 = *v43;
    v45 = *(v43 + 16);
    v74 = *(v43 + 24);
    v46 = *(v43 + 40);
    v73 = *(v43 + 32);
    v47 = *(v43 + 48);
    v70 = v44;
    if (v47)
    {
      swift_beginAccess();

      v48 = v46;

      sub_1D6C4CF94(v49);
      v71 = v50;
    }

    else
    {

      v48 = v46;

      v71 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6D494BC(v87, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49218(v76, type metadata accessor for DebugFormatCacheFile);
    v51 = v39;
    v52 = v75;
    sub_1D6D491B0(v51, v75, sub_1D6D48AAC);
    v53 = v77[2];
    if (v77[3] <= v53)
    {
      sub_1D6D7503C(v53 + 1, 1);
    }

    v54 = v89;
    v56 = *v52;
    v55 = v52[1];
    sub_1D7264A0C();
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v57 = v54 + 64;
    v77 = v54;
    v58 = -1 << *(v54 + 32);
    v59 = result & ~v58;
    v60 = v59 >> 6;
    if (((-1 << v59) & ~*(v54 + 64 + 8 * (v59 >> 6))) == 0)
    {
      break;
    }

    v61 = __clz(__rbit64((-1 << v59) & ~*(v54 + 64 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    v66 = *(v86 + 48);
    *(v57 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    v67 = v77;
    v68 = (v77[6] + 16 * v61);
    *v68 = v56;
    v68[1] = v55;
    v69 = v67[7] + (v61 << 7);
    *v69 = v72;
    *(v69 + 8) = v70;
    *(v69 + 16) = v45;
    *(v69 + 24) = v74;
    *(v69 + 32) = v73;
    *(v69 + 40) = v48;
    *(v69 + 48) = 0u;
    *(v69 + 64) = 0u;
    *(v69 + 80) = v71;
    *(v69 + 88) = 0u;
    *(v69 + 104) = 0u;
    *(v69 + 120) = 0;
    ++v67[2];
    result = sub_1D6D49218(v52 + v66, type metadata accessor for DebugFormatCacheFile);
    v21 = v79;
  }

  v62 = 0;
  v63 = (63 - v58) >> 6;
  while (++v60 != v63 || (v62 & 1) == 0)
  {
    v64 = v60 == v63;
    if (v60 == v63)
    {
      v60 = 0;
    }

    v62 |= v64;
    v65 = *(v57 + 8 * v60);
    if (v65 != -1)
    {
      v61 = __clz(__rbit64(~v65)) + (v60 << 6);
      goto LABEL_28;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D6D30108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 64);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (a2 & 1) != 0) && (sub_1D5B68374(*(v5 + 56) + 40 * v6, v27), sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType), swift_dynamicCast()))
  {
    v8 = *&v28[8];
    v7 = *v28;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1D6D307EC(a2, &v26[1]);
  v26[0] = 0;
  memset(&v26[8], 0, 80);
  if (v7)
  {
    swift_unknownObjectRetain();
  }

  v22 = *&v26[32];
  v23 = *&v26[48];
  v24 = *&v26[64];
  v25 = *&v26[80];
  v20 = *v26;
  v21 = *&v26[16];
  sub_1D6D4635C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  swift_retain_n();
  sub_1D5CF6A5C(v26, v28);
  v9 = sub_1D725A80C();
  *&v28[40] = v22;
  *&v28[56] = v23;
  *&v28[72] = v24;
  *&v28[8] = v20;
  *v28 = a1;
  *&v28[88] = v25;
  *&v29 = v7;
  *&v28[24] = v21;
  *(&v29 + 1) = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1D725BDCC();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a1;
  v12 = *&v28[80];
  *(v11 + 96) = *&v28[64];
  *(v11 + 112) = v12;
  *(v11 + 128) = v29;
  v13 = *&v28[16];
  *(v11 + 32) = *v28;
  *(v11 + 48) = v13;
  v14 = *&v28[48];
  *(v11 + 64) = *&v28[32];
  *(v11 + 80) = v14;

  sub_1D5D056DC(v28, &v19);
  v15 = sub_1D725B92C();
  sub_1D6D493A8(0, &qword_1EC895428, &type metadata for FeedFontLoadResult, MEMORY[0x1E69E62F8]);
  sub_1D725BA7C();

  v16 = sub_1D725B92C();
  type metadata accessor for FormatPackageInventory(0);
  v17 = sub_1D725BA8C();

  sub_1D5D05738(v28);
  sub_1D5D09C48(v26);
  sub_1D5F587AC(v7, v8);
  return v17;
}

uint64_t sub_1D6D3047C(uint64_t a1, char a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  sub_1D6D478DC(0);
  sub_1D725BDCC();
  v3 = swift_allocObject();
  *(v3 + 16) = v8;
  *(v3 + 17) = a2;
  v4 = sub_1D725B92C();
  sub_1D6A86060(0);
  sub_1D725BA9C();

  v5 = sub_1D725B92C();
  v6 = sub_1D725BB5C();

  return v6;
}

uint64_t sub_1D6D30634(uint64_t a1, char a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  sub_1D6D478DC(0);
  sub_1D725BDCC();
  v3 = swift_allocObject();
  *(v3 + 16) = v8;
  *(v3 + 17) = a2;
  v4 = sub_1D725B92C();
  sub_1D6A85FC8(0);
  sub_1D725BAAC();

  v5 = sub_1D725B92C();
  v6 = sub_1D725BB5C();

  return v6;
}

void sub_1D6D307EC(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 72);
  if (v4 == 8)
  {
    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D5B71130(&qword_1EC895430, a1, type metadata accessor for DebugFormatManager, &unk_1D734D9D4);
    sub_1D725964C();
    LOBYTE(v4) = v5;
    *(v2 + 72) = v5;
  }

  *a2 = v4;
}

void *sub_1D6D308DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  v4 = sub_1D726307C();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v14 = sub_1D725A7AC();
  v15 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = v14;
  *(v2 + 24) = v15;
  *(v2 + 32) = v15;
  *(v2 + 40) = v15;
  type metadata accessor for DebugFormatService();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v2 + 48) = v16;
  *(v2 + 72) = 8;
  v21 = sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  sub_1D7261AFC();
  v17 = MEMORY[0x1E69E8030];
  sub_1D6D4635C(0, &unk_1EC88DEC8, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7273AE0;
  sub_1D726303C();
  v26 = v18;
  sub_1D5B71130(&qword_1EDF1AA50, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D6D4635C(0, &unk_1EDF1AE90, v17, MEMORY[0x1E69E62F8]);
  sub_1D5B6D5F8(&qword_1EDF1AE80, &unk_1EDF1AE90, v17);
  sub_1D7263B6C();
  (*(v22 + 104))(v7, *MEMORY[0x1E69E8090], v23);
  v3[10] = sub_1D72630BC();
  v19 = v25;
  v3[7] = v24;
  v3[8] = v19;
  return v3;
}

uint64_t sub_1D6D30CA8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v36 = a4;
  v33 = a2;
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 16);
  v31 = v11;
  v32 = v13;
  v34 = v8 + 16;
  v29 = v7;
  (v13)(v12, a2, v7, v10);
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v35 = a3;
  *(v15 + 17) = 0;
  v30 = *(v8 + 32);
  v30(v15 + ((v14 + 18) & ~v14), v12, v7);
  type metadata accessor for DebugFormatManagerIndex(0);
  v28[1] = type metadata accessor for DebugFormatManager();
  v28[2] = a1;
  sub_1D725BDBC();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 17) = 0;
  v17 = sub_1D725B92C();
  sub_1D725BA9C();

  v18 = v29;
  v32(v12, v33, v29);
  v19 = (v14 + 16) & ~v14;
  v20 = v19 + v31;
  v21 = swift_allocObject();
  v30(v21 + v19, v12, v18);
  *(v21 + v20) = 0;
  v22 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  sub_1D725BA9C();

  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v36;
  *(v23 + 17) = v24;
  v25 = sub_1D725B92C();
  sub_1D6D478DC(0);
  v26 = sub_1D725BAAC();

  return v26;
}

uint64_t sub_1D6D31030(uint64_t a1, uint64_t a2, int a3, int a4, __n128 a5)
{
  v31 = a3;
  v32 = a4;
  sub_1D6D478DC(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugFormatManagerIndex(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v30 - v19;
  sub_1D6D49454(a1, v11, sub_1D6D478DC);
  v21 = *&v11[*(v8 + 56)];
  v22 = *&v11[*(v8 + 72)];
  sub_1D6D491B0(v11, v20, type metadata accessor for DebugFormatManagerIndex);
  v33 = v21;
  v34 = a2;
  sub_1D6D48DD8(0);
  sub_1D725BDCC();

  v23 = sub_1D725B92C();
  sub_1D5EF3A64(0);
  sub_1D725BA8C();

  sub_1D6D49454(v20, v16, type metadata accessor for DebugFormatManagerIndex);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v31;
  *(v25 + 17) = v26;
  *(v25 + 24) = v22;
  sub_1D6D491B0(v16, v25 + v24, type metadata accessor for DebugFormatManagerIndex);
  v27 = sub_1D725B92C();
  sub_1D6A86060(0);
  v28 = sub_1D725BA8C();

  sub_1D6D49218(v20, type metadata accessor for DebugFormatManagerIndex);
  return v28;
}

uint64_t sub_1D6D31304@<X0>(uint64_t *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v25 = a3;
  v10 = type metadata accessor for DebugFormatManagerIndex(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = 0;
  v19 = 0;
  v20 = *a1;
  if ((a2 & 1) == 0 && (v25 & 1) == 0)
  {

    v18 = 1;
    v19 = a4;
  }

  sub_1D6D49454(v26, v13, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v13, v17);
  v21 = *(v14 + 20);
  sub_1D6A86060(0);
  sub_1D6D49454(&v17[v21], a6 + *(v22 + 28), type metadata accessor for DebugFormatFileDirectoryMetadata);

  result = sub_1D6D49218(v17, type metadata accessor for DebugFormatFileDirectory);
  *a6 = v20;
  *(a6 + 8) = v19;
  *(a6 + 16) = v18;
  return result;
}

uint64_t sub_1D6D314E8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v36 = a4;
  v33 = a2;
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 16);
  v31 = v11;
  v32 = v13;
  v34 = v8 + 16;
  v29 = v7;
  (v13)(v12, a2, v7, v10);
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v35 = a3;
  *(v15 + 17) = 1;
  v30 = *(v8 + 32);
  v30(v15 + ((v14 + 18) & ~v14), v12, v7);
  type metadata accessor for DebugFormatManagerIndex(0);
  v28[1] = type metadata accessor for DebugFormatManager();
  v28[2] = a1;
  sub_1D725BDBC();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 17) = 1;
  v17 = sub_1D725B92C();
  sub_1D725BA9C();

  v18 = v29;
  v32(v12, v33, v29);
  v19 = (v14 + 16) & ~v14;
  v20 = v19 + v31;
  v21 = swift_allocObject();
  v30(v21 + v19, v12, v18);
  *(v21 + v20) = 1;
  v22 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  sub_1D725BA9C();

  v23 = swift_allocObject();
  v24 = v35;
  v23[16] = v36;
  v23[17] = v24;
  v23[18] = 1;
  v25 = sub_1D725B92C();
  sub_1D6D478DC(0);
  v26 = sub_1D725BAAC();

  return v26;
}

void sub_1D6D3187C(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v33 = a3;
  v34 = a2;
  v32 = a4;
  v6 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D478DC(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DebugFormatManagerIndex(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v31 - v21;
  sub_1D6D49454(a1, v14, sub_1D6D478DC);
  v23 = *&v14[*(v11 + 56)];
  v24 = *&v14[*(v11 + 72)];
  sub_1D6D491B0(v14, v22, type metadata accessor for DebugFormatManagerIndex);
  v25 = sub_1D6D47A68(v23);
  if (v4)
  {
    sub_1D6D49218(v22, type metadata accessor for DebugFormatManagerIndex);
  }

  else
  {
    v31 = v25;
    v26 = v33;
    v27 = v32;

    if (v34 & 1) != 0 || (v26)
    {

      v24 = 0;
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    sub_1D6D491B0(v22, v18, type metadata accessor for DebugFormatManagerIndex);
    sub_1D6D47A1C(v18, v9);
    v29 = *(v6 + 20);
    sub_1D6A85FC8(0);
    sub_1D6D49454(&v9[v29], v27 + *(v30 + 28), type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D6D49218(v9, type metadata accessor for DebugFormatFileDirectory);
    *v27 = v31;
    *(v27 + 8) = v24;
    *(v27 + 16) = v28;
  }
}

char *sub_1D6D31B5C(void *a1, uint64_t (*a2)(void, __n128), void (*a3)(void))
{
  v33 = a3;
  v32 = type metadata accessor for DebugFormatFileDirectory(0);
  v6 = MEMORY[0x1EEE9AC00](v32, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(0, v6);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  sub_1D6D4635C(0, &qword_1EC895448, type metadata accessor for DebugFormatManagerError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for DebugFormatManagerIndex(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v31 - v23;
  v34 = a1;
  v25 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v26 = type metadata accessor for DebugFormatManagerError(0);
  v27 = swift_dynamicCast();
  v28 = *(*(v26 - 8) + 56);
  if (!v27)
  {
    v28(v16, 1, 1, v26);
    sub_1D6D494BC(v16, &qword_1EC895448, type metadata accessor for DebugFormatManagerError);
LABEL_6:
    swift_willThrow();
    v29 = a1;
    return v20;
  }

  v28(v16, 0, 1, v26);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D6D49218(v16, type metadata accessor for DebugFormatManagerError);
    goto LABEL_6;
  }

  sub_1D6D491B0(v16, v24, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D49454(v24, v20, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v20, v8);
  sub_1D6D49454(&v8[*(v32 + 20)], &v12[*(v9 + 28)], type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49218(v8, type metadata accessor for DebugFormatFileDirectory);
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 2;
  v33(0);
  swift_allocObject();
  v20 = sub_1D725BB1C();
  sub_1D6D49218(v24, type metadata accessor for DebugFormatManagerIndex);
  return v20;
}

uint64_t sub_1D6D31F1C(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v11 = a2[4];
  v12 = v3;
  v13 = a2[6];
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  v5 = a2[3];
  v9 = a2[2];
  v10 = v5;
  result = FormatPackageInventory.resources(context:)(&v7, &v14);
  if (!v2)
  {
    v7 = v14;
    *&v8 = v15;
    sub_1D6D493A8(0, &qword_1EDF17A38, &type metadata for FormatPrefetchResources, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  return result;
}

void sub_1D6D31FD4(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = *a1;
  sub_1D6D493A8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D72816C0;
  v9 = a4[5];
  v14[4] = a4[4];
  v14[5] = v9;
  v14[6] = a4[6];
  v10 = a4[1];
  v14[0] = *a4;
  v14[1] = v10;
  v11 = a4[3];
  v14[2] = a4[2];
  v14[3] = v11;
  v12 = sub_1D6D3210C(v7, a3, v14);
  if (v4)
  {
    *(v8 + 16) = 0;
  }

  else
  {
    v13 = v12;
    sub_1D6D493A8(0, &qword_1EDF3B9B0, &type metadata for FeedFontLoadResult, MEMORY[0x1E69D6B18]);
    *(v8 + 32) = v13;
    sub_1D725BA4C();
  }
}

char *sub_1D6D3210C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v116 = a2;
  v110 = sub_1D7261ABC();
  v113 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v5);
  v109 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1D7261B2C();
  v112 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725891C();
  v119 = *(v10 - 8);
  v11 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v13 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v87 - v16;
  v18 = a3[5];
  v124[4] = a3[4];
  v124[5] = v18;
  v124[6] = a3[6];
  v19 = a3[1];
  v124[0] = *a3;
  v124[1] = v19;
  v20 = a3[3];
  v124[2] = a3[2];
  v124[3] = v20;
  sub_1D5D056DC(v124, &v121);
  v21 = v118;
  sub_1D6D46E88(a1, v124);
  v23 = v22;
  v24 = v21;
  sub_1D5D05738(v124);
  if (v21)
  {
    return v13;
  }

  v117 = v10;
  v118 = v11;
  v115 = v17;
  v105 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v9;
  v25 = sub_1D5D06170(v23);

  v26 = *(v114 + 56);
  sub_1D725A76C();
  swift_beginAccess();

  v28 = sub_1D5D06650(v27);

  if ((v25 & 0xC000000000000001) != 0)
  {
    v29 = sub_1D7263BFC();
    v30 = swift_unknownObjectRetain();
    v31 = sub_1D6E14AA0(v30, v29);
  }

  else
  {

    v31 = v25;
  }

  v32 = v116;
  v33 = v117;
  v34 = v119;
  v35 = sub_1D5D06DD0(v28, v31);

  sub_1D725A77C();

  if ((v35 & 0xC000000000000001) == 0)
  {
    if (*(v35 + 16))
    {
      goto LABEL_7;
    }

LABEL_10:

    v121 = MEMORY[0x1E69E7CC0];
    v122 = MEMORY[0x1E69E7CC0];
    sub_1D6D493A8(0, &qword_1EDF3B9B0, &type metadata for FeedFontLoadResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_10;
  }

LABEL_7:
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x6863746566657250, 0xEC00000020676E69);
  v114 = v35 & 0xC000000000000001;
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = sub_1D7263BFC();
  }

  else
  {
    v36 = *(v35 + 16);
  }

  v120 = v36;
  v37 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v37);

  MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73F1B10);
  v104 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  v38 = *(v32 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v38 <= 2)
  {
    v39 = 0xE600000000000000;
    if (*(v32 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v38 == 1)
      {
        v40 = 0x726564616568;
      }

      else
      {
        v40 = 0x7265746F6F66;
      }
    }

    else
    {
      v40 = 0x74756F79616CLL;
    }
  }

  else if (*(v32 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v38 == 5)
    {
      v39 = 0xE700000000000000;
      v40 = 0x7972617262696CLL;
    }

    else
    {
      v40 = 0x756F72676B636162;
      v39 = 0xEA0000000000646ELL;
    }
  }

  else if (v38 == 3)
  {
    v39 = 0xE700000000000000;
    v40 = 0x6C6C6177796170;
  }

  else
  {
    v39 = 0xE500000000000000;
    v40 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v40, v39);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v41 = *(v116 + 16);
  v102 = *(v116 + 24);
  v103 = v41;
  MEMORY[0x1DA6F9910]();
  v42 = v121;
  v43 = v122;
  if (qword_1EC87D498 == -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v86 = v42;
    swift_once();
    v42 = v86;
LABEL_26:
    v89 = v26;
    v90 = v24;
    v101 = qword_1EC9BA710;
    sub_1D5F5EBA0(2, 0, 0, v42, v43);

    v44 = v113;
    v88 = v35;
    if (v114)
    {

      sub_1D7263BBC();
      sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
      sub_1D5D062B0();
      sub_1D7262B8C();
      v45 = v123[12];
      v26 = v123[13];
      v46 = v123[14];
      v43 = v123[15];
      v35 = v123[16];
    }

    else
    {
      v47 = -1 << *(v35 + 32);
      v26 = v35 + 56;
      v46 = ~v47;
      v48 = -v47;
      v49 = v48 < 64 ? ~(-1 << v48) : -1;
      v35 = v49 & *(v35 + 56);

      v43 = 0;
    }

    v87 = v46;
    v50 = (v46 + 64) >> 6;
    v98 = " fonts from inventory, role=";
    v97 = v34 + 16;
    v96 = v118 + 7;
    v94 = v123;
    v95 = v34 + 32;
    v92 = (v112 + 8);
    v93 = (v44 + 8);
    v91 = v34 + 8;
    v107 = v45;
    v99 = v50;
    v100 = v26;
    if (v45 < 0)
    {
      break;
    }

LABEL_33:
    v51 = v43;
    v52 = v35;
    v24 = v43;
    if (v35)
    {
LABEL_37:
      v53 = (v52 - 1) & v52;
      v54 = *(*(v45 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v52)))));
      if (v54)
      {
        goto LABEL_41;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v24 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v24 >= v50)
      {
        goto LABEL_63;
      }

      v52 = *(v26 + 8 * v24);
      ++v51;
      if (v52)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v55 = sub_1D7263C2C();
    if (!v55)
    {
      break;
    }

    v120 = v55;
    sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
    swift_dynamicCast();
    v54 = v121;
    v24 = v43;
    v53 = v35;
    if (!v121)
    {
      break;
    }

LABEL_41:
    v114 = v53;
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000025, v98 | 0x8000000000000000);
    v56 = *(v116 + v104);
    v57 = 0x7972617262696CLL;
    if (v56 != 5)
    {
      v57 = 0x756F72676B636162;
    }

    v58 = 0xEA0000000000646ELL;
    if (v56 == 5)
    {
      v58 = 0xE700000000000000;
    }

    v59 = 0x656D656874;
    if (v56 == 3)
    {
      v59 = 0x6C6C6177796170;
    }

    v60 = 0xE500000000000000;
    if (v56 == 3)
    {
      v60 = 0xE700000000000000;
    }

    if (*(v116 + v104) <= 4u)
    {
      v57 = v59;
      v58 = v60;
    }

    v61 = 0x726564616568;
    if (v56 != 1)
    {
      v61 = 0x7265746F6F66;
    }

    if (!*(v116 + v104))
    {
      v61 = 0x74756F79616CLL;
    }

    if (*(v116 + v104) <= 2u)
    {
      v62 = v61;
    }

    else
    {
      v62 = v57;
    }

    if (*(v116 + v104) <= 2u)
    {
      v63 = 0xE600000000000000;
    }

    else
    {
      v63 = v58;
    }

    MEMORY[0x1DA6F9910](v62, v63);

    MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
    MEMORY[0x1DA6F9910](v103, v102);
    MEMORY[0x1DA6F9910](0x3D746E6F66202CLL, 0xE700000000000000);
    v64 = [v54 description];
    v65 = sub_1D726207C();
    v67 = v66;

    MEMORY[0x1DA6F9910](v65, v67);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    v111 = v121;
    v118 = v122;
    v68 = v115;
    sub_1D725890C();
    v113 = v54;
    v69 = v101;
    v112 = *(v101 + 40);
    v70 = v105;
    (*(v34 + 16))(v105, v68, v33);
    v71 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v72 = (v96 + v71) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    (*(v119 + 32))(v74 + v71, v70, v117);
    v75 = (v74 + v72);
    v76 = v118;
    *v75 = v111;
    v75[1] = v76;
    *(v74 + v73) = 2;
    *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
    v123[2] = sub_1D6D476B8;
    v123[3] = v74;
    v121 = MEMORY[0x1E69E9820];
    v122 = 1107296256;
    v123[0] = sub_1D5B6B06C;
    v123[1] = &block_descriptor_95;
    v77 = _Block_copy(&v121);

    v78 = v106;
    sub_1D7261AEC();
    v120 = MEMORY[0x1E69E7CC0];
    sub_1D5B71130(&qword_1EDF3A8F0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v79 = MEMORY[0x1E69E7F60];
    sub_1D6D4635C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D5B6D5F8(&qword_1EDF1B560, &qword_1EDF1B570, v79);
    v80 = v109;
    v81 = v110;
    v34 = v119;
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v78, v80, v77);
    _Block_release(v77);
    v82 = v80;
    v33 = v117;
    (*v93)(v82, v81);
    (*v92)(v78, v108);
    (*(v34 + 8))(v115, v33);

    v43 = v24;
    v35 = v114;
    v50 = v99;
    v26 = v100;
    v45 = v107;
    if ((v107 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_63:
  sub_1D5B87E38(v107);
  FeedFontManager.load(fonts:downloadIfNeeded:)(v88, 1);

  v83 = sub_1D725B92C();
  sub_1D725BA8C();

  v84 = sub_1D725B92C();
  v13 = sub_1D725BACC();

  return v13;
}

uint64_t sub_1D6D32DCC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v40 = a4;
  LODWORD(v43) = a2;
  v42 = sub_1D72585BC();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42, v8);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v44 = type metadata accessor for DebugFormatManagerIndex(0);
  MEMORY[0x1EEE9AC00](v44, v13);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D4635C(0, &qword_1EC8954A8, type metadata accessor for DebugFormatFileDirectory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for DebugFormatFileDirectory(0);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v43)
  {
    v38 = a1;
    LODWORD(v43) = a3;
    sub_1D71117E0(a3 & 1, &unk_1F5119808, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1D6D494BC(v18, &qword_1EC8954A8, type metadata accessor for DebugFormatFileDirectory);
    }

    else
    {
      sub_1D6D47A1C(v18, v24);
      if (*(*v24 + 16))
      {
        sub_1D6D49454(v24, v39, type metadata accessor for DebugFormatFileDirectory);
        swift_storeEnumTagMultiPayload();
        sub_1D6D4635C(0, &qword_1EC895490, type metadata accessor for DebugFormatManagerIndex, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v25 = sub_1D725BB1C();
        sub_1D6D49218(v24, type metadata accessor for DebugFormatFileDirectory);
        return v25;
      }

      sub_1D6D49218(v24, type metadata accessor for DebugFormatFileDirectory);
    }

    LOBYTE(a3) = v43;
    a1 = v38;
  }

  v26 = *(a1 + 48);
  if (a3)
  {
    v27 = sub_1D725849C();
    v29 = v42;
  }

  else
  {
    v29 = v42;
    v27 = (*(v6 + 16))(v12, v40, v42, v22);
  }

  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v37 - 4) = v26;
  *(&v37 - 3) = v12;
  v43 = v26;
  *(&v37 - 2) = &unk_1F5119830;
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = &unk_1F5119830;
  v30 = sub_1D725B92C();
  sub_1D6D48B84(0);
  sub_1D725BA8C();

  v31 = v41;
  (*(v6 + 16))(v41, v12, v29);
  v32 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 10;
  (*(v6 + 32))(v33 + v32, v31, v29);
  *(v33 + ((v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = &unk_1F5119830;
  v34 = sub_1D725B92C();
  type metadata accessor for DebugFormatService();
  sub_1D725BB7C();

  (*(v6 + 8))(v12, v29);
  v35 = sub_1D725B92C();
  v25 = sub_1D725BA8C();

  return v25;
}

double sub_1D6D333A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6D49454(a1, a2, type metadata accessor for DebugFormatFileDirectory);
  type metadata accessor for DebugFormatManagerIndex(0);
  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t sub_1D6D33400(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = type metadata accessor for DebugFormatManagerIndex(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_1D6D49454(a1, v14, type metadata accessor for DebugFormatManagerIndex);
    sub_1D6D47A1C(v14, v18);
    sub_1D6D336A8(v18, a4 & 1);
    sub_1D6D49218(v18, type metadata accessor for DebugFormatFileDirectory);
    sub_1D6D49454(a1, v10, type metadata accessor for DebugFormatManagerIndex);
    v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v20 = swift_allocObject();
    sub_1D6D491B0(v10, v20 + v19, type metadata accessor for DebugFormatManagerIndex);
    v21 = sub_1D725B92C();
    v22 = sub_1D725BA8C();

    return v22;
  }

  else
  {
    sub_1D6D49454(a1, v10, type metadata accessor for DebugFormatManagerIndex);
    sub_1D6D4635C(0, &qword_1EC895490, type metadata accessor for DebugFormatManagerIndex, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6D336A8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1D7263D4C();

    type metadata accessor for DebugFormatFileDirectory(0);
    v2 = sub_1D6E56610();
    MEMORY[0x1DA6F9910](v2);

    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(2, 0, 0, 0xD00000000000002BLL, 0x80000001D73F1C20);

    MEMORY[0x1EEE9AC00](v3, v4);
    sub_1D6D4635C(0, &qword_1EC895498, sub_1D6D47994, MEMORY[0x1E69E6720]);
    sub_1D725BDCC();
    v5 = sub_1D725B92C();
  }

  else
  {
    sub_1D7263D4C();

    type metadata accessor for DebugFormatFileDirectory(0);
    v6 = sub_1D6E56610();
    MEMORY[0x1DA6F9910](v6);

    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(2, 0, 0, 0xD000000000000024, 0x80000001D73F1C50);

    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1D6D4635C(0, &qword_1EC895498, sub_1D6D47994, MEMORY[0x1E69E6720]);
    sub_1D725BDCC();
    v5 = sub_1D725B92C();
  }

  v9 = sub_1D725BAAC();

  return v9;
}

uint64_t sub_1D6D33A14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for DebugFormatManagerIndex(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D49454(a1, v14, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v14, v18);
  sub_1D6D33C7C(a3, v18, a4 & 1);
  sub_1D6D49218(v18, type metadata accessor for DebugFormatFileDirectory);
  sub_1D6D49454(a1, v10, type metadata accessor for DebugFormatManagerIndex);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_1D6D491B0(v10, v20 + v19, type metadata accessor for DebugFormatManagerIndex);
  v21 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  v22 = sub_1D725BA8C();

  return v22;
}

uint64_t sub_1D6D33C7C(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for DebugFormatCacheFileMetadata(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DebugFormatFileDirectory(0);
  sub_1D6D49454(a2 + *(v21 + 20), v15, type metadata accessor for DebugFormatFileDirectoryMetadata);
  v22 = sub_1D725BD1C();
  (*(*(v22 - 8) + 16))(v20, v15, v22);
  sub_1D6D49454(v15, v11, type metadata accessor for DebugFormatFileDirectoryMetadata);
  if (v11[*(v8 + 44)])
  {
    v23 = &unk_1F5119858;
  }

  else
  {
    v23 = &unk_1F5119880;
  }

  sub_1D6D49218(v11, type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49218(v15, type metadata accessor for DebugFormatFileDirectoryMetadata);
  *&v20[*(v17 + 28)] = v23;
  v24 = a3 & 1;
  sub_1D6D34CA0(a2, v24, v20);
  v27 = v26;
  if (*(v25 + 16))
  {
    MEMORY[0x1EEE9AC00](v25, v26);
    v31[-6] = v28;
    LOBYTE(v31[-5]) = v24;
    v31[-4] = a1;
    v31[-3] = v3;
    v31[-2] = v20;
    v31[-1] = v27;
    sub_1D6D4818C(0);
    v29 = sub_1D725BDCC();
  }

  else
  {

    v31[1] = MEMORY[0x1E69E7CC0];
    v31[2] = v27;
    v31[3] = MEMORY[0x1E69E7CC0];
    sub_1D6D4635C(0, &qword_1EC895478, sub_1D6D4818C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v29 = sub_1D725BB1C();
  }

  sub_1D6D49218(v20, type metadata accessor for DebugFormatCacheFileMetadata);
  return v29;
}

uint64_t sub_1D6D33F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  v9 = (a3 + *(v8 + 48));
  sub_1D6D49454(a2, a3, type metadata accessor for DebugFormatManagerIndex);
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;
}

void sub_1D6D3403C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v48 = a6;
  v56 = a5;
  v57 = a3;
  v50 = a4;
  v54 = a2;
  v55 = a1;
  v53 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  MEMORY[0x1EEE9AC00](v53, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v52, v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - v13;
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v47 - v18;
  v51 = type metadata accessor for DebugFormatManagerIndex(0);
  MEMORY[0x1EEE9AC00](v51, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v47 - v29;
  sub_1D6D485F4(v55, v19, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC, sub_1D6D48490);
  v31 = &v19[*(v16 + 56)];
  v33 = *v31;
  v32 = v31[1];
  v34 = v31[2];
  sub_1D6D491B0(v19, v30, type metadata accessor for DebugFormatManagerIndex);
  if ((v57 & 1) != 0 || (v50 & 1) != 0 || *(v33 + 16))
  {
  }

  else
  {
    v45 = *(v32 + 16);

    if (!v45)
    {

      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      sub_1D6D49454(v30, v46, type metadata accessor for DebugFormatManagerIndex);
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }
  }

  sub_1D6D49454(v30, v26, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v26, v14);
  sub_1D6D49454(&v14[*(v52 + 20)], v8, type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49218(v14, type metadata accessor for DebugFormatFileDirectory);
  if (v8[*(v53 + 36)])
  {
    v35 = &unk_1F51198A8;
  }

  else
  {
    v35 = &unk_1F51198D0;
  }

  sub_1D6D49218(v8, type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49454(v30, v22, type metadata accessor for DebugFormatManagerIndex);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v49;
    sub_1D6D47A1C(v22, v49);
    v37 = v56 & 1;
    sub_1D7111E38(v36, v37, v35);
    sub_1D6D49218(v36, type metadata accessor for DebugFormatFileDirectory);
  }

  else
  {
    sub_1D6D49218(v22, type metadata accessor for DebugFormatManagerIndex);
    v37 = v56 & 1;
  }

  v38 = sub_1D6D345A0(v33, v37, v35);

  if (*(v34 + 16))
  {

    if (*(v34 + 16))
    {
      v39 = *(v34 + 32);

LABEL_14:
      swift_willThrow();
      sub_1D6D49218(v30, type metadata accessor for DebugFormatManagerIndex);
      return;
    }

    __break(1u);
  }

  else
  {

    sub_1D6D478DC(0);
    v41 = *(v40 + 48);
    v42 = *(v40 + 64);
    v43 = v30;
    v44 = v48;
    sub_1D6D491B0(v43, v48, type metadata accessor for DebugFormatManagerIndex);
    *(v44 + v41) = v38;
    *(v44 + v42) = v33;
  }
}

uint64_t sub_1D6D345A0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  LODWORD(v5) = a2;
  v7 = type metadata accessor for DebugFormatCacheFile(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v59 - v16);
  v18 = *(v3 + 16);
  sub_1D725A76C();
  v19 = *(a1 + 16);
  if (v19)
  {
    v59 = v18;
    v62 = (v4 + 32);
    v63 = (v4 + 24);
    v20 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    v60 = v5;
    v61 = v21;
    do
    {
      sub_1D6D49454(v20, v17, type metadata accessor for DebugFormatCacheFile);
      v23 = *v17;
      v22 = v17[1];
      if (v5)
      {
        v24 = v62;
        swift_beginAccess();
        sub_1D6D49454(v17, v66, type metadata accessor for DebugFormatCacheFile);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *v24;
        v26 = v67;
        *v24 = 0x8000000000000000;
        v27 = sub_1D5B69D90(v23, v22);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v31 = __OFADD__(v29, v30);
        v32 = v29 + v30;
        if (v31)
        {
          goto LABEL_35;
        }

        v33 = v28;
        if (v26[3] >= v32)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v55 = v27;
            sub_1D6D83E4C();
            v27 = v55;
          }
        }

        else
        {
          sub_1D6D70CA4(v32, isUniquelyReferenced_nonNull_native);
          v27 = sub_1D5B69D90(v23, v22);
          if ((v33 & 1) != (v34 & 1))
          {
            goto LABEL_38;
          }
        }

        v46 = v61;
        v47 = v67;
        if (v33)
        {
          sub_1D67D381C(v66, v67[7] + v27 * v61);
        }

        else
        {
          v67[(v27 >> 6) + 8] |= 1 << v27;
          v48 = (v47[6] + 16 * v27);
          *v48 = v23;
          v48[1] = v22;
          sub_1D6D491B0(v66, v47[7] + v27 * v46, type metadata accessor for DebugFormatCacheFile);
          v49 = v47[2];
          v31 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v31)
          {
            goto LABEL_36;
          }

          v47[2] = v50;
        }

        *v62 = v47;

        swift_endAccess();
      }

      else
      {
        v5 = v4;
        v35 = v63;
        swift_beginAccess();
        sub_1D6D49454(v17, v65, type metadata accessor for DebugFormatCacheFile);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v67 = *v35;
        v37 = v67;
        *v35 = 0x8000000000000000;
        v39 = sub_1D5B69D90(v23, v22);
        v40 = v37[2];
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          result = sub_1D726493C();
          __break(1u);
          return result;
        }

        v43 = v38;
        if (v37[3] >= v42)
        {
          if ((v36 & 1) == 0)
          {
            sub_1D6D83E4C();
          }
        }

        else
        {
          sub_1D6D70CA4(v42, v36);
          v44 = sub_1D5B69D90(v23, v22);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_38;
          }

          v39 = v44;
        }

        v46 = v61;
        v51 = v67;
        if (v43)
        {
          sub_1D67D381C(v65, v67[7] + v39 * v61);
        }

        else
        {
          v67[(v39 >> 6) + 8] |= 1 << v39;
          v52 = (v51[6] + 16 * v39);
          *v52 = v23;
          v52[1] = v22;
          sub_1D6D491B0(v65, v51[7] + v39 * v46, type metadata accessor for DebugFormatCacheFile);
          v53 = v51[2];
          v31 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v31)
          {
            goto LABEL_37;
          }

          v51[2] = v54;
        }

        *v63 = v51;

        swift_endAccess();
        v4 = v5;
        LOBYTE(v5) = v60;
      }

      sub_1D7113024(v17, v5 & 1, v64);
      sub_1D6D49218(v17, type metadata accessor for DebugFormatCacheFile);
      v20 += v46;
      --v19;
    }

    while (v19);
    if (v5)
    {
      v56 = v62;
    }

    else
    {
      v56 = v63;
    }
  }

  else if (v5)
  {
    v56 = (v4 + 32);
  }

  else
  {
    v56 = (v4 + 24);
  }

  swift_beginAccess();
  v57 = *v56;

  sub_1D725A77C();
  return v57;
}

uint64_t *sub_1D6D34AB8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    sub_1D725A76C();
    swift_beginAccess();
    type metadata accessor for DebugFormatCacheFile(0);
    sub_1D725B73C();
    swift_endAccess();
    sub_1D6D2F930(v2);
    swift_beginAccess();
    sub_1D725B73C();
    swift_endAccess();

    return sub_1D725A77C();
  }

  return result;
}

uint64_t *sub_1D6D34BAC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    sub_1D725A76C();
    swift_beginAccess();
    type metadata accessor for DebugFormatCacheFile(0);
    sub_1D725B73C();
    swift_endAccess();
    sub_1D6D2F930(v2);
    swift_beginAccess();
    sub_1D725B73C();
    swift_endAccess();

    return sub_1D725A77C();
  }

  return result;
}

void sub_1D6D34CA0(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v90 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v89 = &v88 - v13;
  v92 = *(v3 + 16);
  sub_1D725A76C();
  v102 = MEMORY[0x1E69E7CD0];
  v14 = *a1;
  v97 = &v102;
  v98 = a2 & 1;
  v99 = v4;
  v100 = a3;

  sub_1D62EE328(sub_1D6D48870, v96, v14);
  v91 = v15;
  v93 = v4;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v52 = *(v4 + 24);
    v55 = *(v52 + 64);
    v54 = v52 + 64;
    v53 = v55;
    v56 = 1 << *(*(v4 + 24) + 32);
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v58 = v57 & v53;
    v59 = (v56 + 63) >> 6;
    v94 = *(v4 + 24);

    v60 = 0;
    v95 = MEMORY[0x1E69E7CC0];
    if (v58)
    {
      goto LABEL_43;
    }

    do
    {
LABEL_39:
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_66;
      }

      if (v61 >= v59)
      {
LABEL_64:

        sub_1D725A77C();
        return;
      }

      v58 = *(v54 + 8 * v61);
      ++v60;
    }

    while (!v58);
    v60 = v61;
LABEL_43:
    while (1)
    {
      v62 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v63 = (*(v94 + 48) + ((v60 << 10) | (16 * v62)));
      v65 = *v63;
      v64 = v63[1];
      v66 = v102;
      if (!*(v102 + 16))
      {
        break;
      }

      sub_1D7264A0C();

      sub_1D72621EC();
      v67 = sub_1D7264A5C();
      v68 = -1 << *(v66 + 32);
      v69 = v67 & ~v68;
      if ((*(v66 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
      {
        v70 = ~v68;
        while (1)
        {
          v71 = (*(v66 + 48) + 16 * v69);
          v72 = *v71 == v65 && v71[1] == v64;
          if (v72 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v69 = (v69 + 1) & v70;
          if (((*(v66 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        if (!v58)
        {
          goto LABEL_39;
        }
      }

      else
      {
LABEL_52:
        v73 = v93;
        swift_beginAccess();
        v74 = sub_1D5B69D90(v65, v64);
        if (v75)
        {
          v76 = v74;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = *(v73 + 24);
          v101 = v78;
          *(v73 + 24) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D6D83E4C();
            v78 = v101;
          }

          v79 = *(v78 + 56);
          v90 = type metadata accessor for DebugFormatCacheFile(0);
          v88 = *(v90 - 8);
          v80 = v79 + *(v88 + 72) * v76;
          v81 = v89;
          sub_1D6D491B0(v80, v89, type metadata accessor for DebugFormatCacheFile);
          sub_1D6714B34(v76, v78, v82);
          *(v73 + 24) = v78;

          (*(v88 + 56))(v81, 0, 1, v90);
        }

        else
        {
          v83 = type metadata accessor for DebugFormatCacheFile(0);
          v81 = v89;
          (*(*(v83 - 8) + 56))(v89, 1, 1, v83);
        }

        swift_endAccess();
        sub_1D6D494BC(v81, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1D5B858EC(0, *(v95 + 2) + 1, 1, v95);
        }

        v85 = *(v95 + 2);
        v84 = *(v95 + 3);
        if (v85 >= v84 >> 1)
        {
          v95 = sub_1D5B858EC((v84 > 1), v85 + 1, 1, v95);
        }

        v86 = v95;
        *(v95 + 2) = v85 + 1;
        v87 = &v86[16 * v85];
        *(v87 + 4) = v65;
        *(v87 + 5) = v64;
        if (!v58)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_52;
  }

  swift_beginAccess();
  v16 = *(v4 + 32);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(v4 + 32) + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v94 = *(v4 + 32);

  v24 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = (*(v94 + 48) + ((v24 << 10) | (16 * v26)));
      v29 = *v27;
      v28 = v27[1];
      v30 = v102;
      if (!*(v102 + 16))
      {

        goto LABEL_21;
      }

      sub_1D7264A0C();

      sub_1D72621EC();
      v31 = sub_1D7264A5C();
      v32 = -1 << *(v30 + 32);
      v33 = v31 & ~v32;
      if ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        break;
      }

LABEL_21:
      v37 = v93;
      swift_beginAccess();
      v38 = sub_1D5B69D90(v29, v28);
      if (v39)
      {
        v40 = v38;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v37 + 32);
        v101 = v42;
        *(v37 + 32) = 0x8000000000000000;
        if (!v41)
        {
          sub_1D6D83E4C();
          v42 = v101;
        }

        v43 = *(v42 + 56);
        v89 = type metadata accessor for DebugFormatCacheFile(0);
        v88 = *(v89 - 8);
        v44 = v43 + *(v88 + 72) * v40;
        v45 = v90;
        sub_1D6D491B0(v44, v90, type metadata accessor for DebugFormatCacheFile);
        sub_1D6714B34(v40, v42, v46);
        *(v37 + 32) = v42;

        (*(v88 + 56))(v45, 0, 1, v89);
      }

      else
      {
        v47 = type metadata accessor for DebugFormatCacheFile(0);
        v45 = v90;
        (*(*(v47 - 8) + 56))(v90, 1, 1, v47);
      }

      swift_endAccess();
      sub_1D6D494BC(v45, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1D5B858EC(0, *(v95 + 2) + 1, 1, v95);
      }

      v49 = *(v95 + 2);
      v48 = *(v95 + 3);
      if (v49 >= v48 >> 1)
      {
        v95 = sub_1D5B858EC((v48 > 1), v49 + 1, 1, v95);
      }

      v50 = v95;
      *(v95 + 2) = v49 + 1;
      v51 = &v50[16 * v49];
      *(v51 + 4) = v29;
      *(v51 + 5) = v28;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v34 = ~v32;
    while (1)
    {
      v35 = (*(v30 + 48) + 16 * v33);
      v36 = *v35 == v29 && v35[1] == v28;
      if (v36 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v33 = (v33 + 1) & v34;
      if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  while (v22);
LABEL_8:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      goto LABEL_64;
    }

    v22 = *(v18 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_1D6D355B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D72626EC();
  v16[16] = a2 & 1;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  sub_1D5ECD96C(sub_1D6D48298, v16, v11);

  v12 = sub_1D725B92C();
  type metadata accessor for DebugFormatCacheFile(0);
  sub_1D725BEFC();

  *(swift_allocObject() + 16) = a6;

  v13 = sub_1D725B92C();
  sub_1D6D4818C(0);
  v14 = sub_1D725BA8C();

  return v14;
}

uint64_t sub_1D6D35734@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v82 = a5;
  v89 = a4;
  v90 = a3;
  v7 = type metadata accessor for DebugFormatCacheFileMetadata(0);
  v77 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v87 = v9;
  v80 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D72585BC();
  v76 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v10);
  v75 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v68 - v14;
  v86 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v68 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  v88 = *(a1 + 24);
  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1D7263D4C();

  v91 = 0x676E696863746546;
  v92 = 0xE900000000000020;
  v81 = a2;
  if (a2)
  {
    v24 = 0x636170736B726F77;
  }

  else
  {
    v24 = 0x6567616B636170;
  }

  if (a2)
  {
    v25 = 0xEA00000000007365;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v24, v25);

  MEMORY[0x1DA6F9910](0x2F3D68746170202CLL, 0xE800000000000000);
  MEMORY[0x1DA6F9910](v21, v22);
  v26 = v91;
  v27 = v92;
  if (qword_1EC87D498 != -1)
  {
    v67 = v91;
    swift_once();
    v26 = v67;
  }

  sub_1D5F5EBA0(2, 0, 0, v26, v27);

  v84 = v21;
  v72 = v22;
  sub_1D725849C();
  v28 = v75;
  sub_1D725849C();
  sub_1D725849C();
  v29 = v76;
  v30 = *(v76 + 8);
  v78 = v76 + 8;
  v79 = v30;
  v31 = v83;
  v32 = v30(v28, v83);
  v73 = *(v90 + 48);
  v33 = *(v89 + *(v7 + 20));
  MEMORY[0x1EEE9AC00](v32, v34);
  v68[-4] = v35;
  v68[-3] = v15;
  v68[-2] = v33;
  sub_1D725BDCC();
  v36 = swift_allocObject();
  v85 = v20;
  *(v36 + 16) = v33;

  v37 = sub_1D725B92C();
  v38 = v15;
  v74 = v15;
  v39 = v37;
  sub_1D6D48318();
  v68[1] = sub_1D725BA8C();

  v69 = *(v29 + 16);
  v40 = v28;
  v69(v28, v38, v31);
  v41 = *(v29 + 80);
  v42 = (v41 + 24) & ~v41;
  v71 = v41 | 7;
  v43 = (v86 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = 10;
  v70 = *(v29 + 32);
  v70(v44 + v42, v40, v31);
  *(v44 + v43) = v33;

  v45 = sub_1D725B92C();
  type metadata accessor for DebugFormatService();
  v76 = sub_1D725BB7C();

  v46 = v40;
  v47 = v31;
  v69(v40, v85, v31);
  v73 = type metadata accessor for DebugFormatCacheFileMetadata;
  v48 = v80;
  sub_1D6D49454(v89, v80, type metadata accessor for DebugFormatCacheFileMetadata);
  v49 = (v41 + 41) & ~v41;
  v50 = *(v77 + 80);
  v51 = (v49 + v86 + v50) & ~v50;
  v52 = swift_allocObject();
  v53 = v72;
  *(v52 + 16) = v84;
  *(v52 + 24) = v53;
  *(v52 + 32) = v23;
  *(v52 + 40) = v88;
  v70(v52 + v49, v46, v47);
  sub_1D6D491B0(v48, v52 + v51, type metadata accessor for DebugFormatCacheFileMetadata);
  v54 = v53;

  v55 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v86 = type metadata accessor for DebugFormatManager();
  sub_1D725BA9C();

  sub_1D6D49454(v89, v48, v73);
  v56 = (v50 + 49) & ~v50;
  v57 = swift_allocObject();
  LOBYTE(v53) = v81 & 1;
  *(v57 + 16) = v81 & 1;
  v58 = v84;
  *(v57 + 24) = v84;
  *(v57 + 32) = v54;
  v59 = v54;
  *(v57 + 40) = v23;
  LOBYTE(v54) = v88;
  *(v57 + 48) = v88;
  sub_1D6D491B0(v48, v57 + v56, type metadata accessor for DebugFormatCacheFileMetadata);

  v60 = sub_1D725B92C();
  type metadata accessor for DebugFormatCacheFile(0);
  sub_1D725BAAC();

  v61 = swift_allocObject();
  *(v61 + 16) = v53;
  *(v61 + 24) = v58;
  *(v61 + 32) = v59;
  *(v61 + 40) = v23;
  *(v61 + 48) = v54;

  v62 = sub_1D725B92C();
  v63 = sub_1D725BACC();

  v64 = v83;
  v65 = v79;
  v79(v85, v83);
  result = v65(v74, v64);
  *v82 = v63;
  return result;
}

uint64_t sub_1D6D35F58(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v32 = a6;
  v34 = sub_1D72585BC();
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v34, v17);
  v18 = a1[1];
  v45 = *a1;
  v46 = v18;
  v47 = *(a1 + 4);
  v44[0] = *(a2 + 16);
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a8;
  v42 = a5;
  v43 = &v45;
  sub_1D725A7BC();

  sub_1D725B7CC();

  v33 = *(a2 + 48);
  v19 = v33;
  v20 = *(a7 + *(type metadata accessor for DebugFormatCacheFileMetadata(0) + 20));
  v35 = v19;
  v21 = v32;
  v36 = v32;
  v37 = v20;
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = v20;

  v22 = sub_1D725B92C();
  sub_1D60CF7A4(0);
  sub_1D725BA8C();

  v23 = v34;
  (*(v15 + 16))(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v34);
  v24 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 10;
  (*(v15 + 32))(v25 + v24, &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  *(v25 + ((v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v26 = sub_1D725B92C();
  type metadata accessor for DebugFormatService();
  sub_1D725BB7C();

  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 16) = v45;
  *(v27 + 32) = v28;
  *(v27 + 48) = v47;
  sub_1D6D49454(&v45, v44, sub_1D6D48318);
  v29 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v30 = sub_1D725BA8C();

  return v30;
}

uint64_t sub_1D6D36354(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, double a6)
{
  v13 = *a5;
  *&v12[7] = v13;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a6;
  v16 = a4;
  *v17 = *v12;
  *&v17[15] = *(&v13 + 1);
  memset(&v17[23], 0, 32);
  v19 = 0u;
  v20 = 0u;
  v18 = MEMORY[0x1E69E7CC0];
  v21 = 0;
  swift_beginAccess();

  sub_1D5E422A8(&v13, &v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1D6D7C178(&v14, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v11;
  return swift_endAccess();
}

uint64_t sub_1D6D36448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v7 = a3 + *(v6 + 48);
  sub_1D6D49454(a1, a3, sub_1D60CF7A4);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  return sub_1D6D49454(a2, v10, sub_1D6D48318);
}

uint64_t sub_1D6D36520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v67 = a7;
  v70 = a6;
  v65 = a4;
  v62 = a3;
  v60 = a8;
  v61 = a2;
  v12 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v72 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DebugFormatCacheFile(0);
  MEMORY[0x1EEE9AC00](v66, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DebugFormatCacheFileMetadata(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v74 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D48490(0, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v60 - v24;
  sub_1D60CF7A4(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v60 - v32;
  sub_1D6D485F4(a1, v25, &qword_1EC895488, sub_1D60CF7A4, sub_1D6D48318, sub_1D6D48490);
  v34 = &v25[*(v22 + 56)];
  v35 = *(v34 + 1);
  v63 = *v34;
  v64 = v35;
  v36 = *(v34 + 3);
  v68 = *(v34 + 2);
  v69 = v36;
  v71 = *(v34 + 4);
  sub_1D6D491B0(v25, v33, sub_1D60CF7A4);
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1D7263D4C();

  v76 = 0xD000000000000015;
  v77 = 0x80000001D73F1B90;
  if (v62)
  {
    v37 = 0x636170736B726F77;
  }

  else
  {
    v37 = 0x6567616B636170;
  }

  if (v62)
  {
    v38 = 0xEA00000000007365;
  }

  else
  {
    v38 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v37, v38);

  MEMORY[0x1DA6F9910](0x3D646E696B202CLL, 0xE700000000000000);
  FormatFile.kind.getter(&v75);
  v39 = FormatFileKind.rawValue.getter();
  MEMORY[0x1DA6F9910](v39);

  MEMORY[0x1DA6F9910](0x2F3D68746170202CLL, 0xE800000000000000);
  v40 = v65;
  MEMORY[0x1DA6F9910]();
  v41 = v76;
  v42 = v77;
  if (qword_1EC87D498 != -1)
  {
    v59 = v76;
    swift_once();
    v41 = v59;
  }

  sub_1D5F5EBA0(2, 0, 0, v41, v42);

  v43 = v74;
  sub_1D6D49454(v67, v74, type metadata accessor for DebugFormatCacheFileMetadata);
  sub_1D6D49454(v33, v29, sub_1D60CF7A4);
  v67 = v33;
  v44 = v66;
  v45 = *(v66 + 28);
  sub_1D6D49454(v43, &v17[v45], type metadata accessor for DebugFormatCacheFileMetadata);
  v46 = *(v44 + 32);
  sub_1D6D49454(v29, &v17[v46], sub_1D60CF7A4);
  v47 = v40;
  *v17 = v40;
  *(v17 + 1) = a5;
  *(v17 + 2) = a9;
  v17[24] = v70 & 1;
  v48 = v64;
  *(v17 + 4) = v63;
  *(v17 + 5) = v48;
  v49 = v72;
  sub_1D6D49454(v29, v72, type metadata accessor for FormatFile);
  v76 = 47;
  v77 = 0xE100000000000000;

  MEMORY[0x1DA6F9910](v47, a5);
  v50 = v73;
  sub_1D70E46A0(v49, v76, v77);
  if (v50)
  {

    sub_1D5B952F8(v68, v69);

    sub_1D6D49218(v29, sub_1D60CF7A4);
    sub_1D6D49218(v74, type metadata accessor for DebugFormatCacheFileMetadata);
    sub_1D6D49218(v67, sub_1D60CF7A4);

    sub_1D6D49218(&v17[v45], type metadata accessor for DebugFormatCacheFileMetadata);
    v52 = &v17[v46];
  }

  else
  {
    v53 = v51;
    sub_1D6D49218(v29, sub_1D60CF7A4);
    sub_1D6D49218(v74, type metadata accessor for DebugFormatCacheFileMetadata);
    *(v17 + 6) = v53;
    v54 = v60;
    v55 = sub_1D6D491B0(v17, v60, type metadata accessor for DebugFormatCacheFile);
    v76 = *(v61 + 16);
    MEMORY[0x1EEE9AC00](v55, v56);
    *(&v60 - 2) = v57;
    *(&v60 - 1) = v54;
    sub_1D725A7BC();

    sub_1D725B7CC();

    sub_1D5B952F8(v68, v69);

    v52 = v67;
  }

  return sub_1D6D49218(v52, sub_1D60CF7A4);
}

uint64_t sub_1D6D36BB4(uint64_t a1, uint64_t *a2)
{
  v33 = a1;
  v3 = type metadata accessor for DebugFormatCacheFile(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  v17 = a2[1];
  v32 = *a2;
  sub_1D6D49454(a2, &v30 - v15, type metadata accessor for DebugFormatCacheFile);
  (*(v4 + 56))(v16, 0, 1, v3);
  sub_1D6D485F4(v16, v12, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8, sub_1D6D4635C);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {

    sub_1D6D494BC(v16, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D494BC(v12, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D607F0A4(&v42);
    v18 = v17;
  }

  else
  {
    v18 = v17;
    sub_1D6D491B0(v12, v7, type metadata accessor for DebugFormatCacheFile);
    v20 = *v7;
    v19 = *(v7 + 1);
    v21 = *(v7 + 2);
    v22 = v7[24];
    v23 = *(v7 + 5);
    v31 = *(v7 + 4);
    if (*(v7 + 6))
    {
      swift_beginAccess();

      sub_1D6C4CF94(v24);
      v26 = v25;
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6D494BC(v16, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49218(v7, type metadata accessor for DebugFormatCacheFile);
    *&v36 = v20;
    *(&v36 + 1) = v19;
    *&v37 = v21;
    BYTE8(v37) = v22;
    *&v38 = v31;
    *(&v38 + 1) = v23;
    v39 = 0u;
    v40 = 0u;
    *(v41 + 8) = 0u;
    *(&v41[1] + 8) = 0u;
    *&v41[0] = v26;
    *(&v41[2] + 1) = 0;
    nullsub_1();
    v46 = v40;
    v47 = v41[0];
    v48 = v41[1];
    v49 = v41[2];
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v39;
  }

  v27 = v33;
  swift_beginAccess();
  v35[4] = v46;
  v35[5] = v47;
  v35[6] = v48;
  v35[7] = v49;
  v35[0] = v42;
  v35[1] = v43;
  v35[2] = v44;
  v35[3] = v45;
  if (sub_1D5DEA380(v35) == 1)
  {
    sub_1D607EB94(v32, v18, v34);

    v40 = v34[4];
    v41[0] = v34[5];
    v41[1] = v34[6];
    v41[2] = v34[7];
    v36 = v34[0];
    v37 = v34[1];
    v38 = v34[2];
    v39 = v34[3];
    sub_1D6D48668(&v36, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
  }

  else
  {
    v40 = v46;
    v41[0] = v47;
    v41[1] = v48;
    v41[2] = v49;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v39 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = *(v27 + 40);
    sub_1D6D7C178(&v36, v32, v18, isUniquelyReferenced_nonNull_native);

    *(v27 + 40) = *&v34[0];
  }

  return swift_endAccess();
}

double sub_1D6D370A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73F1C00);
  if (a2)
  {
    v8 = 0x636170736B726F77;
  }

  else
  {
    v8 = 0x6567616B636170;
  }

  if (a2)
  {
    v9 = 0xEA00000000007365;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v8, v9);

  MEMORY[0x1DA6F9910](0x2F3D68746170202CLL, 0xE800000000000000);
  MEMORY[0x1DA6F9910](a3, a4);
  MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(a1, 0, 0, 0, 0xE000000000000000);

  return result;
}

uint64_t sub_1D6D37258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = a2;
  a3[2] = v3;
}

uint64_t sub_1D6D3729C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v30 = a4;
  v29 = a3;
  v31 = type metadata accessor for DebugFormatCacheFile(0);
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v7);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);

  sub_1D5B860D0(&v32, v18, v19);

  sub_1D6D37608(v29 & 1, v30, v18, v19, v17);
  v22 = v9;
  v23 = v31;
  sub_1D6D485F4(v17, v13, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v22, sub_1D6D4635C);
  if ((*(v6 + 48))(v13, 1, v23) == 1)
  {
    sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D494BC(v13, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  }

  else
  {
    v24 = v28;
    sub_1D6D491B0(v13, v28, type metadata accessor for DebugFormatCacheFile);
    if (*(v24 + 16) == v20 && v21 == *(v24 + 24) && (sub_1D725BCBC() & 1) != 0)
    {
      type metadata accessor for DebugFormatCacheFileMetadata(0);
      v25 = sub_1D670933C();
      sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      if (v25)
      {
        sub_1D6D49218(v24, type metadata accessor for DebugFormatCacheFile);
        return 0;
      }
    }

    else
    {
      sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    }

    sub_1D6D49218(v24, type metadata accessor for DebugFormatCacheFile);
  }

  return 1;
}

uint64_t sub_1D6D37608@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    v9 = *(a2 + 32);
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(a2 + 24);
    if (!*(v9 + 16))
    {
LABEL_7:
      v16 = type metadata accessor for DebugFormatCacheFile(0);
      (*(*(v16 - 8) + 56))(a5, 1, 1, v16);
      return swift_endAccess();
    }
  }

  v10 = sub_1D5B69D90(a3, a4);
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for DebugFormatCacheFile(0);
  v15 = *(v14 - 8);
  sub_1D6D49454(v13 + *(v15 + 72) * v12, a5, type metadata accessor for DebugFormatCacheFile);
  (*(v15 + 56))(a5, 0, 1, v14);
  return swift_endAccess();
}

uint64_t sub_1D6D37788(uint64_t a1, void *a2)
{
  v46 = a2;
  v42 = *a2;
  v3 = type metadata accessor for FormatPackage(0);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v34 - v8;
  v47 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v47, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugFormatCacheFile(0);
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  v19 = *(a1 + 64);
  v49 = MEMORY[0x1E69E7CC0];
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v39 = v4 + 7;

  v25 = 0;
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      break;
    }

LABEL_8:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_1D6D49454(*(a1 + 56) + *(v48 + 72) * (v27 | (v25 << 6)), v18, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49454(&v18[*(v12 + 32)], v11, type metadata accessor for FormatFile);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v37 = type metadata accessor for FormatPackage;
      v28 = v44;
      sub_1D6D491B0(v11, v44, type metadata accessor for FormatPackage);
      v38 = v46[10];
      sub_1D6D49454(v28, v45, type metadata accessor for FormatPackage);
      sub_1D6D49454(v18, v43, type metadata accessor for DebugFormatCacheFile);
      v34 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v35 = (v39 + v34) & 0xFFFFFFFFFFFFFFF8;
      v36 = (*(v48 + 80) + v35 + 8) & ~*(v48 + 80);
      v29 = swift_allocObject();
      sub_1D6D491B0(v45, v29 + v34, v37);
      v30 = v36;
      *(v29 + v35) = a1;
      sub_1D6D491B0(v43, v29 + v30, type metadata accessor for DebugFormatCacheFile);
      type metadata accessor for DebugFormatPackageInventory();

      v38 = sub_1D725BDBC();

      sub_1D6D49218(v44, type metadata accessor for FormatPackage);
      v31 = sub_1D6D49218(v18, type metadata accessor for DebugFormatCacheFile);
      MEMORY[0x1DA6F9CE0](v31);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D726272C();
      }

      result = sub_1D726278C();
    }

    else
    {
      sub_1D6D49218(v18, type metadata accessor for DebugFormatCacheFile);
      result = sub_1D6D49218(v11, type metadata accessor for FormatFile);
    }
  }

  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v32 = sub_1D725B92C();
      type metadata accessor for DebugFormatPackageInventory();
      v33 = sub_1D725BEFC();

      return v33;
    }

    v22 = *(a1 + 64 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6D37CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D6D4635C(0, &qword_1EC8954D8, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

double sub_1D6D37D68(void (*a1)(uint64_t (**)(uint64_t a1)), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v21 = a3;
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  v23[0] = MEMORY[0x1E69E7CD0];
  sub_1D6D49454(a8, &v21 - v16, type metadata accessor for DebugFormatCacheFile);
  v18 = type metadata accessor for DebugFormatCacheFile(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = sub_1D6D38070(a6, a7, v17, v23);
  sub_1D6D494BC(v17, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

  v22 = v19;
  a1(&v22);

  return result;
}

uint64_t (*sub_1D6D38070(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, char *a4))(uint64_t a1)
{
  v733 = a4;
  v663 = a3;
  v732 = a2;
  v736 = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D6D4635C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v678 = &v631 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v665 = &v631 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v664 = &v631 - v13;
  v683 = sub_1D725BD1C();
  v681 = *(v683 - 8);
  MEMORY[0x1EEE9AC00](v683, v14);
  v673 = &v631 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v677 = &v631 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v676 = &v631 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v680 = &v631 - v24;
  sub_1D5C2AFF4(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v700 = &v631 - v27;
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v4);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v687 = &v631 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v684 = &v631 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v689 = &v631 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v690 = &v631 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v693 = &v631 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v695 = &v631 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v696 = &v631 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v699 = &v631 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v662 = &v631 - v54;
  v731 = type metadata accessor for DebugFormatCacheFile(0);
  v729 = *(v731 - 1);
  MEMORY[0x1EEE9AC00](v731, v55);
  v686 = &v631 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v685 = &v631 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v688 = &v631 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v691 = &v631 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v692 = &v631 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v694 = &v631 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v697 = &v631 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v698 = &v631 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v652 = &v631 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v651 = &v631 - v83;
  sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
  v654 = v84;
  v666 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v85);
  v703 = &v631 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v88);
  v701 = &v631 - v89;
  sub_1D5C2AFF4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
  v702 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90 - 8, v91);
  v711 = &v631 - v92;
  v661 = type metadata accessor for FormatCompilerOptions(0);
  v667 = *(v661 - 1);
  MEMORY[0x1EEE9AC00](v661, v93);
  v650 = &v631 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95, v96);
  v679 = &v631 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v715 = (&v631 - v100);
  MEMORY[0x1EEE9AC00](v101, v102);
  v649 = &v631 - v103;
  MEMORY[0x1EEE9AC00](v104, v105);
  v660 = &v631 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v730 = (&v631 - v109);
  MEMORY[0x1EEE9AC00](v110, v111);
  v682 = &v631 - v112;
  sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
  v658 = v113;
  v668 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v114);
  v706 = &v631 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116, v117);
  v710 = &v631 - v118;
  sub_1D5C2AFF4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v712 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119 - 8, v120);
  v718 = &v631 - v121;
  sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
  v659 = v122;
  v669 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v123);
  v705 = &v631 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v125, v126);
  v713 = &v631 - v127;
  sub_1D5C2AFF4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v714 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128 - 8, v129);
  v720 = &v631 - v130;
  sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
  v653 = v131;
  v670 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v132);
  v704 = &v631 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134, v135);
  v716 = &v631 - v136;
  sub_1D5C2AFF4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  *&v717 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137 - 8, v138);
  v723 = (&v631 - v139);
  sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
  v657 = v140;
  v671 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v141);
  v707 = &v631 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143, v144);
  v719 = &v631 - v145;
  sub_1D5C2AFF4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v721 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146 - 8, v147);
  v727 = &v631 - v148;
  sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
  v656 = v149;
  v672 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v150);
  v708 = &v631 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v152, v153);
  v722 = &v631 - v154;
  sub_1D6D48FEC(0, &unk_1EDF33820, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatObject);
  v724 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155 - 8, v156);
  v728 = &v631 - v157;
  sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
  v655 = v158;
  v674 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v159);
  v709 = &v631 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v161, v162);
  v725 = &v631 - v163;
  sub_1D5C2AFF4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v726 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164 - 8, v165);
  v167 = (&v631 - v166);
  sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
  v169 = v168;
  v675 = *(v168 - 1);
  MEMORY[0x1EEE9AC00](v168, v170);
  v172 = &v631 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v173, v174);
  v176 = &v631 - v175;
  sub_1D5C2AFF4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v178 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177 - 8, v179);
  v181 = &v631 - v180;
  v758 = MEMORY[0x1E69E7CD0];
  v182 = *(v736 + 7);
  v183 = v735;

  v184 = v732;

  v185 = v182;
  v186 = v183;
  v187 = v184;
  v188 = v734;
  v190 = sub_1D6D2F8E0(v185, v186, v184, &v758, v733, v189);
  if (v188)
  {
    v735 = v188;
    goto LABEL_5;
  }

  *&v734 = v181;
  v647 = v172;
  v648 = v178;
  v191 = v176;
  v733 = v167;
  v646 = v169;
  v192 = v190;
  v193 = v736;
  v194 = v187;
  v195 = v735;
  v196 = sub_1D6D43ACC(*(v736 + 8), v187);
  v197 = sub_1D6D43E50(v193[9], v187);
  v199 = sub_1D6D441D4(v193[11], v187, v198);
  v200 = sub_1D6D44540(v193[10], v194);
  v645 = v196;
  v202 = v200;
  v203 = sub_1D6D448C4(v193[14], v194);
  v643 = v197;
  v204 = v203;
  v205 = sub_1D6D44C48(v193[13], v194);
  v637 = v202;
  v638 = v199;
  v206 = v205;
  v207 = sub_1D6D44FCC(v193[12], v194);
  v636 = v204;
  v208 = v207;
  v209 = sub_1D6D45350(v193[19], v194);
  v735 = 0;
  v210 = v209;
  v211 = sub_1D60A5CA4(v192);
  v212 = MEMORY[0x1E69E7CC0];
  v644 = v192;
  v633 = v210;
  v634 = v206;
  v635 = v208;
  v732 = v211;
  if (v211)
  {
    v213 = v211;
    v757[0] = MEMORY[0x1E69E7CC0];
    sub_1D6E76F94(v211);
    if ((v213 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_549;
    }

    if ((v192 & 0xC000000000000001) != 0)
    {
      v216 = 0;
      v217 = v757[0];
      do
      {
        v195 = MEMORY[0x1DA6FB460](v216, v192);
        v218 = (v195[2] + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
        swift_beginAccess();
        v219 = v218[1];
        v220 = v218[2];
        v642 = *v218;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = v757;
          sub_1D5D5AEFC(0, *(v217 + 16) + 1, 1);
          v217 = v757[0];
        }

        v222 = *(v217 + 16);
        v221 = *(v217 + 24);
        v194 = v222 + 1;
        if (v222 >= v221 >> 1)
        {
          v195 = v757;
          sub_1D5D5AEFC((v221 > 1), v222 + 1, 1);
          v217 = v757[0];
        }

        ++v216;
        *(v217 + 16) = v194;
        v223 = (v217 + 24 * v222);
        v223[4] = v642;
        v223[5] = v219;
        v223[6] = v220;
        v192 = v644;
      }

      while (v732 != v216);
    }

    else
    {
      v224 = v192 + 32;
      v217 = v757[0];
      v194 = v732;
      do
      {
        v225 = (*(*v224 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
        swift_beginAccess();
        v227 = *v225;
        v226 = v225[1];
        v195 = v225[2];

        v642 = v226;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D5D5AEFC(0, *(v217 + 16) + 1, 1);
          v217 = v757[0];
        }

        v192 = *(v217 + 16);
        v228 = *(v217 + 24);
        if (v192 >= v228 >> 1)
        {
          sub_1D5D5AEFC((v228 > 1), v192 + 1, 1);
          v217 = v757[0];
        }

        *(v217 + 16) = v192 + 1;
        v229 = (v217 + 24 * v192);
        v230 = v642;
        v229[4] = v227;
        v229[5] = v230;
        v229[6] = v195;
        v224 += 8;
        --v194;
      }

      while (v194);
    }

    v212 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v217 = MEMORY[0x1E69E7CC0];
  }

  v757[0] = v212;
  v208 = *(v217 + 16);
  if (v208)
  {
    v192 = 0;
    v231 = v217 + 32;
    do
    {
      if (v192 >= *(v217 + 16))
      {
        goto LABEL_532;
      }

      ++v192;
      v231 += 24;

      v195 = v757;
      sub_1D6985AC4(v232);
    }

    while (v208 != v192);
  }

  v632 = v757[0];
  v208 = v645;
  v233 = *(v645 + 16);
  v234 = MEMORY[0x1E69E7CC0];
  if (v233)
  {
    v757[0] = MEMORY[0x1E69E7CC0];
    v642 = v233;
    sub_1D6E77084(v233);
    v208 += (*(v675 + 80) + 32) & ~*(v675 + 80);
    v640 = *(v675 + 72);
    v234 = v757[0];
    v194 = &type metadata for FormatGroup;
    v639 = v191;
    v192 = v734;
    do
    {
      v641 = v234;
      v235 = v639;
      sub_1D6D4906C(v208, v639, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      sub_1D6D4906C(v235, v192, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v236 = v235;
      v234 = v641;
      sub_1D6D490E0(v236, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D699A27C(0, *(v234 + 16) + 1, 1);
        v234 = v757[0];
      }

      v238 = *(v234 + 16);
      v237 = *(v234 + 24);
      if (v238 >= v237 >> 1)
      {
        sub_1D699A27C((v237 > 1), v238 + 1, 1);
        v234 = v757[0];
      }

      *(v234 + 16) = v238 + 1;
      v192 = v734;
      sub_1D6D4913C(v734, v234 + ((*(v648 + 80) + 32) & ~*(v648 + 80)) + *(v648 + 72) * v238, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v208 += v640;
      --v642;
    }

    while (v642);
  }

  v213 = v732;
  v757[0] = v632;
  v195 = v757;
  sub_1D6985AC4(v234);
  v641 = v757[0];
  v239 = MEMORY[0x1E69E7CC0];
  if (!v213)
  {
    v217 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v756[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F7C(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_549:
    __break(1u);
    goto LABEL_550;
  }

  v240 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v240 + 32;
    v217 = v756[0];
    v194 = v732;
    do
    {
      v195 = *(*v208 + 16);
      v241 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
      swift_beginAccess();
      v734 = *(v195 + v241);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v756;
        sub_1D5D5B830(0, *(v217 + 16) + 1, 1);
        v217 = v756[0];
      }

      v243 = *(v217 + 16);
      v242 = *(v217 + 24);
      v192 = v243 + 1;
      if (v243 >= v242 >> 1)
      {
        v195 = v756;
        sub_1D5D5B830((v242 > 1), v243 + 1, 1);
        v217 = v756[0];
      }

      *(v217 + 16) = v192;
      *(v217 + 16 * v243 + 32) = v734;
      v208 += 8;
      --v194;
    }

    while (v194);
  }

  else
  {
    v192 = 0;
    v194 = v240 & 0xC000000000000001;
    do
    {
      if (v194)
      {
        v195 = MEMORY[0x1DA6FB460](v192, v644);
      }

      else
      {
        v195 = *(v644 + 8 * v192 + 32);
      }

      v412 = v195[2];
      v413 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
      swift_beginAccess();
      v734 = *(v412 + v413);

      v217 = v756[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v756;
        sub_1D5D5B830(0, *(v217 + 16) + 1, 1);
        v217 = v756[0];
      }

      v415 = *(v217 + 16);
      v414 = *(v217 + 24);
      v208 = v415 + 1;
      if (v415 >= v414 >> 1)
      {
        v195 = v756;
        sub_1D5D5B830((v414 > 1), v415 + 1, 1);
        v217 = v756[0];
      }

      ++v192;
      *(v217 + 16) = v208;
      *(v217 + 16 * v415 + 32) = v734;
    }

    while (v732 != v192);
  }

LABEL_47:
  v756[0] = v239;
  v244 = sub_1D60A7ADC(v217);
  if (v244)
  {
    v192 = v244;
    v208 = 0;
    v245 = v217 + 32;
    do
    {
      if (v208 >= *(v217 + 16))
      {
        goto LABEL_533;
      }

      ++v208;
      v245 += 16;

      v195 = v756;
      sub_1D6985A88(v246);
    }

    while (v192 != v208);
  }

  v247 = v756[0];
  v248 = sub_1D60A7ADC(v643);
  if (!v248)
  {
    v260 = MEMORY[0x1E69E7CC0];
    v213 = v732;
    goto LABEL_62;
  }

  v640 = v247;
  v756[0] = MEMORY[0x1E69E7CC0];
  v213 = v248;
  sub_1D6E7706C(v248);
  *&v734 = v213;
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_550:
    __break(1u);
    goto LABEL_551;
  }

  v249 = v643 + ((*(v674 + 80) + 32) & ~*(v674 + 80));
  v642 = *(v674 + 72);
  v192 = v756[0];
  v250 = &type metadata for FormatItem;
  v251 = v733;
  do
  {
    v648 = v249;
    v252 = v725;
    sub_1D6D4906C(v249, v725, &qword_1EC88F198, sub_1D5B4AD74, v250, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v252, v251, &qword_1EDF338A0, sub_1D5B4AD74, v250, type metadata accessor for FormatObject);
    sub_1D6D490E0(v252, &qword_1EC88F198, sub_1D5B4AD74, v250, type metadata accessor for DebugFormatObject);
    v253 = v250;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A25C(0, *(v192 + 16) + 1, 1);
      v192 = v756[0];
    }

    v254 = v726;
    v255 = v734;
    v257 = *(v192 + 16);
    v256 = *(v192 + 24);
    v208 = v257 + 1;
    v251 = v733;
    if (v257 >= v256 >> 1)
    {
      sub_1D699A25C((v256 > 1), v257 + 1, 1);
      v251 = v733;
      v254 = v726;
      v192 = v756[0];
    }

    *(v192 + 16) = v208;
    sub_1D6D4913C(v251, v192 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v257, &qword_1EDF338A0, sub_1D5B4AD74, v253, type metadata accessor for FormatObject);
    v249 = v648 + v642;
    v259 = v255 - 1;
    v258 = v259 == 0;
    *&v734 = v259;
    v250 = v253;
  }

  while (!v258);
  v260 = v192;
  v213 = v732;
  v247 = v640;
LABEL_62:
  v756[0] = v247;
  v195 = v756;
  sub_1D6985A88(v260);
  v261 = MEMORY[0x1E69E7CC0];
  v648 = v756[0];
  if (!v213)
  {
    v217 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  v755[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F64(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_551:
    __break(1u);
    goto LABEL_552;
  }

  v262 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v262 + 32;
    v217 = v755[0];
    v263 = v732;
    do
    {
      v195 = *(*v208 + 16);
      v264 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
      swift_beginAccess();
      v734 = *(v195 + v264);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v755;
        sub_1D5D5BEA8(0, *(v217 + 16) + 1, 1);
        v217 = v755[0];
      }

      v266 = *(v217 + 16);
      v265 = *(v217 + 24);
      v192 = v266 + 1;
      if (v266 >= v265 >> 1)
      {
        v195 = v755;
        sub_1D5D5BEA8((v265 > 1), v266 + 1, 1);
        v217 = v755[0];
      }

      *(v217 + 16) = v192;
      *(v217 + 16 * v266 + 32) = v734;
      v208 += 8;
      --v263;
    }

    while (v263);
  }

  else
  {
    v192 = 0;
    v416 = v262 & 0xC000000000000001;
    do
    {
      if (v416)
      {
        v195 = MEMORY[0x1DA6FB460](v192, v644);
      }

      else
      {
        v195 = *(v644 + 8 * v192 + 32);
      }

      v417 = v195[2];
      v418 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
      swift_beginAccess();
      v734 = *(v417 + v418);

      v217 = v755[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v755;
        sub_1D5D5BEA8(0, *(v217 + 16) + 1, 1);
        v217 = v755[0];
      }

      v420 = *(v217 + 16);
      v419 = *(v217 + 24);
      v208 = v420 + 1;
      if (v420 >= v419 >> 1)
      {
        v195 = v755;
        sub_1D5D5BEA8((v419 > 1), v420 + 1, 1);
        v217 = v755[0];
      }

      ++v192;
      *(v217 + 16) = v208;
      *(v217 + 16 * v420 + 32) = v734;
    }

    while (v732 != v192);
  }

LABEL_73:
  v194 = v638;
  v755[0] = v261;
  v267 = sub_1D60A7ADC(v217);
  if (v267)
  {
    v192 = v267;
    v208 = 0;
    v268 = v217 + 32;
    do
    {
      if (v208 >= *(v217 + 16))
      {
        goto LABEL_534;
      }

      ++v208;
      v268 += 16;

      v195 = v755;
      sub_1D6985A40(v269);
    }

    while (v192 != v208);
  }

  v270 = v755[0];
  v271 = sub_1D60A7ADC(v194);
  v272 = MEMORY[0x1E69E7CC0];
  if (!v271)
  {
    v213 = v732;
    goto LABEL_87;
  }

  v213 = v271;
  v733 = v270;
  v755[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E77054(v271);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_552:
    __break(1u);
    goto LABEL_553;
  }

  v192 = v194 + ((*(v672 + 80) + 32) & ~*(v672 + 80));
  *&v734 = *(v672 + 72);
  v272 = v755[0];
  v208 = &qword_1EC88F188;
  v273 = v728;
  do
  {
    v274 = v722;
    sub_1D6D49278(v192, v722, &qword_1EC88F188, type metadata accessor for DebugFormatObject);
    sub_1D6D49278(v274, v273, &unk_1EDF33820, type metadata accessor for FormatObject);
    sub_1D6D493F8(v274, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A20C(0, *(v272 + 16) + 1, 1);
      v272 = v755[0];
    }

    v275 = v724;
    v277 = *(v272 + 16);
    v276 = *(v272 + 24);
    v194 = v277 + 1;
    if (v277 >= v276 >> 1)
    {
      sub_1D699A20C((v276 > 1), v277 + 1, 1);
      v275 = v724;
      v272 = v755[0];
    }

    *(v272 + 16) = v194;
    v278 = v272 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v277;
    v273 = v728;
    sub_1D6D49310(v728, v278, &unk_1EDF33820, type metadata accessor for FormatObject);
    v192 += v734;
    --v213;
  }

  while (v213);
  v213 = v732;
  v270 = v733;
LABEL_87:
  v755[0] = v270;
  v195 = v755;
  sub_1D6985A40(v272);
  v726 = v755[0];
  v279 = MEMORY[0x1E69E7CC0];
  if (!v213)
  {
    v217 = MEMORY[0x1E69E7CC0];
    goto LABEL_98;
  }

  v754[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F4C(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_553:
    __break(1u);
    goto LABEL_554;
  }

  v280 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v280 + 32;
    v217 = v754[0];
    v194 = v732;
    do
    {
      v195 = *(*v208 + 16);
      v281 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      swift_beginAccess();
      v734 = *(v195 + v281);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v754;
        sub_1D5D5C33C(0, *(v217 + 16) + 1, 1);
        v217 = v754[0];
      }

      v283 = *(v217 + 16);
      v282 = *(v217 + 24);
      v192 = v283 + 1;
      if (v283 >= v282 >> 1)
      {
        v195 = v754;
        sub_1D5D5C33C((v282 > 1), v283 + 1, 1);
        v217 = v754[0];
      }

      *(v217 + 16) = v192;
      *(v217 + 16 * v283 + 32) = v734;
      v208 += 8;
      --v194;
    }

    while (v194);
  }

  else
  {
    v192 = 0;
    v421 = v280 & 0xC000000000000001;
    v194 = &qword_1EDF3EFA0[12];
    do
    {
      if (v421)
      {
        v195 = MEMORY[0x1DA6FB460](v192, v644);
      }

      else
      {
        v195 = *(v644 + 8 * v192 + 32);
      }

      v422 = v195[2];
      v423 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      swift_beginAccess();
      v734 = *(v422 + v423);

      v217 = v754[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v754;
        sub_1D5D5C33C(0, *(v217 + 16) + 1, 1);
        v217 = v754[0];
      }

      v425 = *(v217 + 16);
      v424 = *(v217 + 24);
      v208 = v425 + 1;
      if (v425 >= v424 >> 1)
      {
        v195 = v754;
        sub_1D5D5C33C((v424 > 1), v425 + 1, 1);
        v217 = v754[0];
      }

      ++v192;
      *(v217 + 16) = v208;
      *(v217 + 16 * v425 + 32) = v734;
    }

    while (v732 != v192);
  }

LABEL_98:
  v284 = v637;
  v754[0] = v279;
  v285 = sub_1D60A7ADC(v217);
  if (v285)
  {
    v192 = v285;
    v208 = 0;
    v286 = v217 + 32;
    do
    {
      if (v208 >= *(v217 + 16))
      {
        goto LABEL_535;
      }

      ++v208;
      v286 += 16;

      v195 = v754;
      sub_1D6985A04(v287);
    }

    while (v192 != v208);
  }

  v288 = v754[0];
  v289 = sub_1D60A7ADC(v284);
  if (!v289)
  {
    v299 = MEMORY[0x1E69E7CC0];
    v213 = v732;
    goto LABEL_113;
  }

  v725 = v288;
  v754[0] = MEMORY[0x1E69E7CC0];
  v213 = v289;
  sub_1D6E7703C(v289);
  *&v734 = v213;
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_554:
    __break(1u);
    goto LABEL_555;
  }

  v290 = (v284 + ((*(v671 + 80) + 32) & ~*(v671 + 80)));
  v728 = *(v671 + 72);
  v192 = v754[0];
  v291 = &type metadata for FormatStyle;
  v292 = v727;
  do
  {
    v733 = v290;
    v293 = v719;
    sub_1D6D4906C(v290, v719, &qword_1EC88F178, sub_1D5B4CBD8, v291, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v293, v292, &qword_1EDF33860, sub_1D5B4CBD8, v291, type metadata accessor for FormatObject);
    sub_1D6D490E0(v293, &qword_1EC88F178, sub_1D5B4CBD8, v291, type metadata accessor for DebugFormatObject);
    v294 = v291;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A1EC(0, *(v192 + 16) + 1, 1);
      v192 = v754[0];
    }

    v295 = v721;
    v296 = v734;
    v208 = *(v192 + 16);
    v297 = *(v192 + 24);
    v292 = v727;
    if (v208 >= v297 >> 1)
    {
      sub_1D699A1EC((v297 > 1), v208 + 1, 1);
      v292 = v727;
      v295 = v721;
      v192 = v754[0];
    }

    *(v192 + 16) = v208 + 1;
    v194 = &qword_1EDF33860;
    sub_1D6D4913C(v292, v192 + ((*(v295 + 80) + 32) & ~*(v295 + 80)) + *(v295 + 72) * v208, &qword_1EDF33860, sub_1D5B4CBD8, v294, type metadata accessor for FormatObject);
    v290 = (v733 + v728);
    v298 = v296 - 1;
    v258 = v298 == 0;
    *&v734 = v298;
    v291 = v294;
  }

  while (!v258);
  v299 = v192;
  v213 = v732;
  v288 = v725;
LABEL_113:
  v754[0] = v288;
  v195 = v754;
  sub_1D6985A04(v299);
  v725 = v754[0];
  if (!v213)
  {
    v217 = MEMORY[0x1E69E7CC0];
    goto LABEL_124;
  }

  v753[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F34(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_555:
    __break(1u);
    goto LABEL_556;
  }

  v300 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v300 + 32;
    v217 = v753[0];
    v301 = v732;
    do
    {
      v195 = *(*v208 + 16);
      v302 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
      swift_beginAccess();
      v734 = *(v195 + v302);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v753;
        sub_1D5D5C638(0, *(v217 + 16) + 1, 1);
        v217 = v753[0];
      }

      v194 = *(v217 + 16);
      v303 = *(v217 + 24);
      v192 = v194 + 1;
      if (v194 >= v303 >> 1)
      {
        v195 = v753;
        sub_1D5D5C638((v303 > 1), v194 + 1, 1);
        v217 = v753[0];
      }

      *(v217 + 16) = v192;
      *(v217 + 16 * v194 + 32) = v734;
      v208 += 8;
      --v301;
    }

    while (v301);
  }

  else
  {
    v192 = 0;
    do
    {
      if ((v300 & 0xC000000000000001) != 0)
      {
        v195 = MEMORY[0x1DA6FB460](v192, v300);
      }

      else
      {
        v195 = *(v300 + 8 * v192 + 32);
      }

      v426 = v195[2];
      v427 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
      swift_beginAccess();
      v734 = *(v426 + v427);

      v217 = v753[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v753;
        sub_1D5D5C638(0, *(v217 + 16) + 1, 1);
        v217 = v753[0];
      }

      v194 = *(v217 + 16);
      v428 = *(v217 + 24);
      v208 = v194 + 1;
      if (v194 >= v428 >> 1)
      {
        v195 = v753;
        sub_1D5D5C638((v428 > 1), v194 + 1, 1);
        v217 = v753[0];
      }

      ++v192;
      *(v217 + 16) = v208;
      *(v217 + 16 * v194 + 32) = v734;
    }

    while (v732 != v192);
  }

LABEL_124:
  v753[0] = sub_1D663BD64(0);
  v304 = sub_1D60A7ADC(v217);
  if (v304)
  {
    v192 = v304;
    v208 = 0;
    v305 = v217 + 32;
    do
    {
      if (v208 >= *(v217 + 16))
      {
        goto LABEL_536;
      }

      ++v208;
      v305 += 16;

      v195 = v753;
      sub_1D69859BC(v306);
    }

    while (v192 != v208);
  }

  v213 = v732;
  v722 = v753[0];
  if (!v732)
  {
    v217 = sub_1D663BF04(0);
    goto LABEL_139;
  }

  v752[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F1C(v732);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_556:
    __break(1u);
    goto LABEL_557;
  }

  v307 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v307 + 32;
    v217 = v752[0];
    v308 = v732;
    do
    {
      v195 = *(*v208 + 16);
      v309 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
      swift_beginAccess();
      v734 = *(v195 + v309);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v752;
        sub_1D5D5CABC(0, *(v217 + 16) + 1, 1);
        v217 = v752[0];
      }

      v194 = *(v217 + 16);
      v310 = *(v217 + 24);
      if (v194 >= v310 >> 1)
      {
        v195 = v752;
        sub_1D5D5CABC((v310 > 1), v194 + 1, 1);
        v217 = v752[0];
      }

      *(v217 + 16) = v194 + 1;
      *(v217 + 16 * v194 + 32) = v734;
      v208 += 8;
      --v308;
    }

    while (v308);
  }

  else
  {
    v429 = 0;
    do
    {
      if ((v307 & 0xC000000000000001) != 0)
      {
        v195 = MEMORY[0x1DA6FB460](v429, v307);
      }

      else
      {
        v195 = *(v307 + 8 * v429 + 32);
      }

      v430 = v195[2];
      v431 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
      swift_beginAccess();
      v734 = *(v430 + v431);

      v217 = v752[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v752;
        sub_1D5D5CABC(0, *(v217 + 16) + 1, 1);
        v217 = v752[0];
      }

      v194 = *(v217 + 16);
      v432 = *(v217 + 24);
      v208 = v194 + 1;
      if (v194 >= v432 >> 1)
      {
        v195 = v752;
        sub_1D5D5CABC((v432 > 1), v194 + 1, 1);
        v217 = v752[0];
      }

      ++v429;
      *(v217 + 16) = v208;
      *(v217 + 16 * v194 + 32) = v734;
    }

    while (v732 != v429);
  }

LABEL_139:
  v752[0] = sub_1D663BD3C(0);
  v311 = sub_1D60A7ADC(v217);
  if (v311)
  {
    v192 = v311;
    v208 = 0;
    v312 = v217 + 32;
    do
    {
      if (v208 >= *(v217 + 16))
      {
        goto LABEL_537;
      }

      ++v208;
      v312 += 16;

      v195 = v752;
      sub_1D6985980(v313);
    }

    while (v192 != v208);
  }

  v314 = v752[0];
  v192 = v635;
  v315 = sub_1D60A7ADC(v635);
  if (!v315)
  {
    v325 = sub_1D663BD3C(0);
    v213 = v732;
    goto LABEL_154;
  }

  v727 = v314;
  v752[0] = MEMORY[0x1E69E7CC0];
  v213 = v315;
  sub_1D6E77024(v315);
  *&v734 = v213;
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_557:
    __break(1u);
    goto LABEL_558;
  }

  v316 = (v192 + ((*(v670 + 80) + 32) & ~*(v670 + 80)));
  v728 = *(v670 + 72);
  v192 = v752[0];
  v317 = &type metadata for FormatSupplementary;
  v318 = v723;
  do
  {
    v733 = v316;
    v319 = v716;
    sub_1D6D4906C(v316, v716, &qword_1EC88F148, sub_1D5B4BADC, v317, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v319, v318, &qword_1EDF338C0, sub_1D5B4BADC, v317, type metadata accessor for FormatObject);
    sub_1D6D490E0(v319, &qword_1EC88F148, sub_1D5B4BADC, v317, type metadata accessor for DebugFormatObject);
    v320 = v317;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A1CC(0, *(v192 + 16) + 1, 1);
      v192 = v752[0];
    }

    v321 = v717;
    v322 = v734;
    v208 = *(v192 + 16);
    v323 = *(v192 + 24);
    v318 = v723;
    if (v208 >= v323 >> 1)
    {
      sub_1D699A1CC((v323 > 1), v208 + 1, 1);
      v318 = v723;
      v321 = v717;
      v192 = v752[0];
    }

    *(v192 + 16) = v208 + 1;
    v194 = &qword_1EDF338C0;
    sub_1D6D4913C(v318, v192 + ((*(v321 + 80) + 32) & ~*(v321 + 80)) + *(v321 + 72) * v208, &qword_1EDF338C0, sub_1D5B4BADC, v320, type metadata accessor for FormatObject);
    v316 = (v733 + v728);
    v324 = v322 - 1;
    v258 = v324 == 0;
    *&v734 = v324;
    v317 = v320;
  }

  while (!v258);
  v325 = v192;
  v213 = v732;
  v314 = v727;
LABEL_154:
  v752[0] = v314;
  v195 = v752;
  sub_1D6985980(v325);
  v724 = v752[0];
  if (!v213)
  {
    v217 = sub_1D663BEF8(0);
    goto LABEL_165;
  }

  v751[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76F04(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_558:
    __break(1u);
    goto LABEL_559;
  }

  v326 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v326 + 32;
    v217 = v751[0];
    v327 = v732;
    do
    {
      v195 = *(*v208 + 16);
      v328 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v734 = *(v195 + v328);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v751;
        sub_1D5D5D1C4(0, *(v217 + 16) + 1, 1);
        v217 = v751[0];
      }

      v194 = *(v217 + 16);
      v329 = *(v217 + 24);
      v192 = v194 + 1;
      if (v194 >= v329 >> 1)
      {
        v195 = v751;
        sub_1D5D5D1C4((v329 > 1), v194 + 1, 1);
        v217 = v751[0];
      }

      *(v217 + 16) = v192;
      *(v217 + 16 * v194 + 32) = v734;
      v208 += 8;
      --v327;
    }

    while (v327);
  }

  else
  {
    v192 = 0;
    do
    {
      if ((v326 & 0xC000000000000001) != 0)
      {
        v195 = MEMORY[0x1DA6FB460](v192, v326);
      }

      else
      {
        v195 = *(v326 + 8 * v192 + 32);
      }

      v433 = v195[2];
      v434 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v734 = *(v433 + v434);

      v217 = v751[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v751;
        sub_1D5D5D1C4(0, *(v217 + 16) + 1, 1);
        v217 = v751[0];
      }

      v194 = *(v217 + 16);
      v435 = *(v217 + 24);
      v208 = v194 + 1;
      if (v194 >= v435 >> 1)
      {
        v195 = v751;
        sub_1D5D5D1C4((v435 > 1), v194 + 1, 1);
        v217 = v751[0];
      }

      ++v192;
      *(v217 + 16) = v208;
      *(v217 + 16 * v194 + 32) = v734;
    }

    while (v732 != v192);
  }

LABEL_165:
  v330 = v634;
  v751[0] = sub_1D663BBE8(0);
  v331 = sub_1D60A7ADC(v217);
  if (v331)
  {
    v192 = v331;
    v208 = 0;
    v332 = v217 + 32;
    do
    {
      if (v208 >= *(v217 + 16))
      {
        goto LABEL_538;
      }

      ++v208;
      v332 += 16;

      v195 = v751;
      sub_1D6985944(v333);
    }

    while (v192 != v208);
  }

  v334 = v751[0];
  v335 = sub_1D60A7ADC(v330);
  if (!v335)
  {
    v345 = sub_1D663BBE8(0);
    v213 = v732;
    goto LABEL_180;
  }

  v727 = v334;
  v751[0] = MEMORY[0x1E69E7CC0];
  v213 = v335;
  sub_1D6E7700C(v335);
  *&v734 = v213;
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_559:
    __break(1u);
    goto LABEL_560;
  }

  v336 = (v330 + ((*(v669 + 80) + 32) & ~*(v669 + 80)));
  v728 = *(v669 + 72);
  v192 = v751[0];
  v337 = &type metadata for FormatType;
  v338 = v720;
  do
  {
    v733 = v336;
    v339 = v713;
    sub_1D6D4906C(v336, v713, &qword_1EC88F158, sub_1D5B4C700, v337, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v339, v338, &qword_1EDF33890, sub_1D5B4C700, v337, type metadata accessor for FormatObject);
    sub_1D6D490E0(v339, &qword_1EC88F158, sub_1D5B4C700, v337, type metadata accessor for DebugFormatObject);
    v340 = v337;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A1AC(0, *(v192 + 16) + 1, 1);
      v192 = v751[0];
    }

    v341 = v714;
    v342 = v734;
    v208 = *(v192 + 16);
    v343 = *(v192 + 24);
    v338 = v720;
    if (v208 >= v343 >> 1)
    {
      sub_1D699A1AC((v343 > 1), v208 + 1, 1);
      v338 = v720;
      v341 = v714;
      v192 = v751[0];
    }

    *(v192 + 16) = v208 + 1;
    v194 = &qword_1EDF33890;
    sub_1D6D4913C(v338, v192 + ((*(v341 + 80) + 32) & ~*(v341 + 80)) + *(v341 + 72) * v208, &qword_1EDF33890, sub_1D5B4C700, v340, type metadata accessor for FormatObject);
    v336 = (v733 + v728);
    v344 = v342 - 1;
    v258 = v344 == 0;
    *&v734 = v344;
    v337 = v340;
  }

  while (!v258);
  v345 = v192;
  v213 = v732;
  v334 = v727;
LABEL_180:
  v751[0] = v334;
  v195 = v751;
  sub_1D6985944(v345);
  v721 = v751[0];
  if (!v213)
  {
    v217 = sub_1D663BEEC(0);
    goto LABEL_191;
  }

  v750[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76EEC(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_560:
    __break(1u);
    goto LABEL_561;
  }

  v346 = v644;
  if (sub_1D716A854(v644))
  {
    v347 = v346 + 32;
    v217 = v750[0];
    v194 = v732;
    do
    {
      v195 = *(*v347 + 16);
      v348 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
      swift_beginAccess();
      v349 = *(v195 + v348);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v750;
        sub_1D5D5D874(0, *(v217 + 16) + 1, 1);
        v217 = v750[0];
      }

      v351 = *(v217 + 16);
      v350 = *(v217 + 24);
      v208 = v351 + 1;
      if (v351 >= v350 >> 1)
      {
        v195 = v750;
        sub_1D5D5D874((v350 > 1), v351 + 1, 1);
        v217 = v750[0];
      }

      *(v217 + 16) = v208;
      *(v217 + 8 * v351 + 32) = v349;
      v347 += 8;
      --v194;
    }

    while (v194);
  }

  else
  {
    v436 = 0;
    v194 = v346 & 0xC000000000000001;
    do
    {
      if (v194)
      {
        v195 = MEMORY[0x1DA6FB460](v436, v644);
      }

      else
      {
        v195 = *(v644 + 8 * v436 + 32);
      }

      v437 = v195[2];
      v438 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
      swift_beginAccess();
      v208 = *(v437 + v438);

      v217 = v750[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v750;
        sub_1D5D5D874(0, *(v217 + 16) + 1, 1);
        v217 = v750[0];
      }

      v440 = *(v217 + 16);
      v439 = *(v217 + 24);
      if (v440 >= v439 >> 1)
      {
        v195 = v750;
        sub_1D5D5D874((v439 > 1), v440 + 1, 1);
        v217 = v750[0];
      }

      ++v436;
      *(v217 + 16) = v440 + 1;
      *(v217 + 8 * v440 + 32) = v208;
    }

    while (v732 != v436);
  }

LABEL_191:
  v750[0] = sub_1D663BC10(0);
  v352 = sub_1D60A7ADC(v217);
  if (v352)
  {
    v192 = v352;
    v353 = 0;
    v208 = v217 + 32;
    do
    {
      if (v353 >= *(v217 + 16))
      {
        goto LABEL_539;
      }

      v354 = v353 + 1;

      v195 = v750;
      sub_1D6985908(v355);
      v353 = v354;
    }

    while (v192 != v354);
  }

  v356 = v750[0];
  v192 = v636;
  v357 = sub_1D60A7ADC(v636);
  if (!v357)
  {
    v367 = sub_1D663BC10(0);
    v213 = v732;
    goto LABEL_206;
  }

  v727 = v356;
  v750[0] = MEMORY[0x1E69E7CC0];
  v213 = v357;
  sub_1D6E76FF4(v357);
  *&v734 = v213;
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_561:
    __break(1u);
    goto LABEL_562;
  }

  v358 = (v192 + ((*(v668 + 80) + 32) & ~*(v668 + 80)));
  v728 = *(v668 + 72);
  v192 = v750[0];
  v359 = &type metadata for FormatDecoration;
  v360 = v718;
  do
  {
    v733 = v358;
    v361 = v710;
    sub_1D6D4906C(v358, v710, &qword_1EC88F168, sub_1D5B4C8E0, v359, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v361, v360, qword_1EDF338D8, sub_1D5B4C8E0, v359, type metadata accessor for FormatObject);
    sub_1D6D490E0(v361, &qword_1EC88F168, sub_1D5B4C8E0, v359, type metadata accessor for DebugFormatObject);
    v362 = v359;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A18C(0, *(v192 + 16) + 1, 1);
      v192 = v750[0];
    }

    v363 = v712;
    v364 = v734;
    v208 = *(v192 + 16);
    v365 = *(v192 + 24);
    v360 = v718;
    if (v208 >= v365 >> 1)
    {
      sub_1D699A18C((v365 > 1), v208 + 1, 1);
      v360 = v718;
      v363 = v712;
      v192 = v750[0];
    }

    *(v192 + 16) = v208 + 1;
    v194 = qword_1EDF338D8;
    sub_1D6D4913C(v360, v192 + ((*(v363 + 80) + 32) & ~*(v363 + 80)) + *(v363 + 72) * v208, qword_1EDF338D8, sub_1D5B4C8E0, v362, type metadata accessor for FormatObject);
    v358 = (v733 + v728);
    v366 = v364 - 1;
    v258 = v366 == 0;
    *&v734 = v366;
    v359 = v362;
  }

  while (!v258);
  v367 = v192;
  v213 = v732;
  v356 = v727;
LABEL_206:
  v750[0] = v356;
  v195 = v750;
  sub_1D6985908(v367);
  v720 = v750[0];
  if (!v213)
  {
    v217 = sub_1D663BF74(0);
    goto LABEL_217;
  }

  v749[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76FDC(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_562:
    __break(1u);
    goto LABEL_563;
  }

  v368 = v644;
  if (sub_1D716A854(v644))
  {
    v369 = v368 + 32;
    v217 = v749[0];
    v194 = v732;
    do
    {
      v195 = *(*v369 + 16);
      v370 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
      swift_beginAccess();
      v192 = *(v195 + v370);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v749;
        sub_1D699A13C(0, *(v217 + 16) + 1, 1);
        v217 = v749[0];
      }

      v372 = *(v217 + 16);
      v371 = *(v217 + 24);
      v208 = v372 + 1;
      if (v372 >= v371 >> 1)
      {
        v195 = v749;
        sub_1D699A13C((v371 > 1), v372 + 1, 1);
        v217 = v749[0];
      }

      *(v217 + 16) = v208;
      *(v217 + 8 * v372 + 32) = v192;
      v369 += 8;
      --v194;
    }

    while (v194);
  }

  else
  {
    v192 = 0;
    v194 = v368 & 0xC000000000000001;
    do
    {
      if (v194)
      {
        v195 = MEMORY[0x1DA6FB460](v192, v644);
      }

      else
      {
        v195 = *(v644 + 8 * v192 + 32);
      }

      v441 = v195[2];
      v442 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
      swift_beginAccess();
      v208 = *(v441 + v442);

      v217 = v749[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v749;
        sub_1D699A13C(0, *(v217 + 16) + 1, 1);
        v217 = v749[0];
      }

      v444 = *(v217 + 16);
      v443 = *(v217 + 24);
      if (v444 >= v443 >> 1)
      {
        v195 = v749;
        sub_1D699A13C((v443 > 1), v444 + 1, 1);
        v217 = v749[0];
      }

      ++v192;
      *(v217 + 16) = v444 + 1;
      *(v217 + 8 * v444 + 32) = v208;
    }

    while (v732 != v192);
  }

LABEL_217:
  v749[0] = sub_1D663BE24(0);
  v373 = sub_1D60A7ADC(v217);
  if (v373)
  {
    v192 = v373;
    v374 = 0;
    v208 = v217 + 32;
    do
    {
      if (v374 >= *(v217 + 16))
      {
        goto LABEL_540;
      }

      v375 = v374 + 1;

      v195 = v749;
      sub_1D5D505F0(v376);
      v374 = v375;
    }

    while (v192 != v375);
  }

  v195 = v749;
  sub_1D5D505F0(v377);
  v213 = v732;
  v719 = v749[0];
  if (!v732)
  {
    v217 = sub_1D663BE60(0);
    goto LABEL_232;
  }

  v748[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76E8C(v732);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_563:
    __break(1u);
    goto LABEL_564;
  }

  v378 = v644;
  if (sub_1D716A854(v644))
  {
    v379 = v378 + 32;
    v217 = v748[0];
    v194 = v732;
    do
    {
      v195 = *(*v379 + 16);
      v380 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
      swift_beginAccess();
      v192 = *(v195 + v380);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v748;
        sub_1D6997840(0, *(v217 + 16) + 1, 1);
        v217 = v748[0];
      }

      v382 = *(v217 + 16);
      v381 = *(v217 + 24);
      v208 = v382 + 1;
      if (v382 >= v381 >> 1)
      {
        v195 = v748;
        sub_1D6997840((v381 > 1), v382 + 1, 1);
        v217 = v748[0];
      }

      *(v217 + 16) = v208;
      *(v217 + 8 * v382 + 32) = v192;
      v379 += 8;
      --v194;
    }

    while (v194);
  }

  else
  {
    v192 = 0;
    v217 = v748[0];
    do
    {
      v195 = MEMORY[0x1DA6FB460](v192, v378);
      v445 = v195[2];
      v446 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
      swift_beginAccess();
      v208 = *(v445 + v446);

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v748;
        sub_1D6997840(0, *(v217 + 16) + 1, 1);
        v217 = v748[0];
      }

      v194 = *(v217 + 16);
      v447 = *(v217 + 24);
      if (v194 >= v447 >> 1)
      {
        v195 = v748;
        sub_1D6997840((v447 > 1), v194 + 1, 1);
        v217 = v748[0];
      }

      ++v192;
      *(v217 + 16) = v194 + 1;
      *(v217 + 8 * v194 + 32) = v208;
    }

    while (v732 != v192);
  }

LABEL_232:
  v748[0] = sub_1D663BBC4(0);
  v383 = sub_1D60A7ADC(v217);
  if (v383)
  {
    v192 = v383;
    v384 = 0;
    v208 = v217 + 32;
    do
    {
      if (v384 >= *(v217 + 16))
      {
        goto LABEL_541;
      }

      v385 = v384 + 1;

      v195 = v748;
      sub_1D5D55274(v386);
      v384 = v385;
    }

    while (v192 != v385);
  }

  v195 = v748[0];
  v387 = sub_1D5B86020(v748[0]);

  v718 = sub_1D5D6021C(v388, v387);
  v213 = v732;
  if (!v732)
  {
    v217 = sub_1D663BEE0(0);
    goto LABEL_247;
  }

  v745[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76ED4(v732);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_564:
    __break(1u);
    goto LABEL_565;
  }

  v194 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v194 + 32;
    v217 = v745[0];
    v389 = v732;
    do
    {
      v195 = *(*v208 + 16);
      v390 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
      swift_beginAccess();
      v734 = *(v195 + v390);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v745;
        sub_1D5D5EC14(0, *(v217 + 16) + 1, 1);
        v217 = v745[0];
      }

      v194 = *(v217 + 16);
      v391 = *(v217 + 24);
      if (v194 >= v391 >> 1)
      {
        v195 = v745;
        sub_1D5D5EC14((v391 > 1), v194 + 1, 1);
        v217 = v745[0];
      }

      *(v217 + 16) = v194 + 1;
      *(v217 + 16 * v194 + 32) = v734;
      v208 += 8;
      --v389;
    }

    while (v389);
  }

  else
  {
    v448 = 0;
    v217 = v745[0];
    do
    {
      v195 = MEMORY[0x1DA6FB460](v448, v194);
      v449 = v195[2];
      v450 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
      swift_beginAccess();
      v734 = *(v449 + v450);

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = v745;
        sub_1D5D5EC14(0, *(v217 + 16) + 1, 1);
        v217 = v745[0];
      }

      v452 = *(v217 + 16);
      v451 = *(v217 + 24);
      v208 = v452 + 1;
      if (v452 >= v451 >> 1)
      {
        v195 = v745;
        sub_1D5D5EC14((v451 > 1), v452 + 1, 1);
        v217 = v745[0];
      }

      ++v448;
      *(v217 + 16) = v208;
      *(v217 + 16 * v452 + 32) = v734;
    }

    while (v732 != v448);
  }

LABEL_247:
  v745[0] = sub_1D663BD14(0);
  v392 = sub_1D60A7ADC(v217);
  if (v392)
  {
    v192 = v392;
    v208 = 0;
    v393 = v217 + 32;
    do
    {
      if (v208 >= *(v217 + 16))
      {
        goto LABEL_542;
      }

      ++v208;
      v393 += 16;

      v195 = v745;
      sub_1D698575C(v394);
    }

    while (v192 != v208);
  }

  v395 = v745[0];
  v192 = v633;
  v396 = sub_1D60A7ADC(v633);
  if (!v396)
  {
    v406 = sub_1D663BD14(0);
    v213 = v732;
    goto LABEL_262;
  }

  v727 = v395;
  v745[0] = MEMORY[0x1E69E7CC0];
  v213 = v396;
  sub_1D6E76FC4(v396);
  *&v734 = v213;
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_565:
    __break(1u);
    goto LABEL_566;
  }

  v397 = (v192 + ((*(v666 + 80) + 32) & ~*(v666 + 80)));
  v728 = *(v666 + 72);
  v192 = v745[0];
  v398 = &type metadata for FormatLocalization;
  v399 = v711;
  do
  {
    v733 = v397;
    v400 = v701;
    sub_1D6D4906C(v397, v701, &qword_1EC88F138, sub_1D5B55BC8, v398, type metadata accessor for DebugFormatObject);
    sub_1D6D4906C(v400, v399, &qword_1EDF338D0, sub_1D5B55BC8, v398, type metadata accessor for FormatObject);
    sub_1D6D490E0(v400, &qword_1EC88F138, sub_1D5B55BC8, v398, type metadata accessor for DebugFormatObject);
    v401 = v398;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D699A11C(0, *(v192 + 16) + 1, 1);
      v192 = v745[0];
    }

    v402 = v702;
    v403 = v734;
    v208 = *(v192 + 16);
    v404 = *(v192 + 24);
    v399 = v711;
    if (v208 >= v404 >> 1)
    {
      sub_1D699A11C((v404 > 1), v208 + 1, 1);
      v399 = v711;
      v402 = v702;
      v192 = v745[0];
    }

    *(v192 + 16) = v208 + 1;
    sub_1D6D4913C(v399, v192 + ((*(v402 + 80) + 32) & ~*(v402 + 80)) + *(v402 + 72) * v208, &qword_1EDF338D0, sub_1D5B55BC8, v401, type metadata accessor for FormatObject);
    v397 = (v733 + v728);
    v405 = v403 - 1;
    v258 = v405 == 0;
    *&v734 = v405;
    v398 = v401;
  }

  while (!v258);
  v406 = v192;
  v213 = v732;
  v395 = v727;
LABEL_262:
  v745[0] = v395;
  sub_1D698575C(v406);
  *&v717 = v745[0];
  if (!v213)
  {
    v727 = sub_1D663BE48(0);
    goto LABEL_374;
  }

  v745[0] = MEMORY[0x1E69E7CC0];
  sub_1D6E76E74(v213);
  if ((v213 & 0x8000000000000000) != 0)
  {
LABEL_566:
    __break(1u);
    goto LABEL_567;
  }

  v407 = v644;
  if (sub_1D716A854(v644))
  {
    v208 = v407 + 32;
    v408 = v745[0];
    v192 = v667;
    v409 = v650;
    do
    {
      sub_1D6D49454(*(*v208 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v409, type metadata accessor for FormatCompilerOptions);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D5D5F614(0, *(v408 + 16) + 1, 1);
        v408 = v745[0];
      }

      v411 = *(v408 + 16);
      v410 = *(v408 + 24);
      v213 = v411 + 1;
      if (v411 >= v410 >> 1)
      {
        sub_1D5D5F614((v410 > 1), v411 + 1, 1);
        v408 = v745[0];
      }

      *(v408 + 16) = v213;
      sub_1D6D491B0(v409, v408 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v411, type metadata accessor for FormatCompilerOptions);
      v208 += 8;
      --v732;
    }

    while (v732);
  }

  else
  {
    v213 = 0;
    v408 = v745[0];
    v192 = v667;
    v453 = v649;
    do
    {
      v454 = MEMORY[0x1DA6FB460](v213, v407);
      sub_1D6D49454(*(v454 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v453, type metadata accessor for FormatCompilerOptions);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D5D5F614(0, *(v408 + 16) + 1, 1);
        v408 = v745[0];
      }

      v456 = *(v408 + 16);
      v455 = *(v408 + 24);
      v208 = v456 + 1;
      if (v456 >= v455 >> 1)
      {
        sub_1D5D5F614((v455 > 1), v456 + 1, 1);
        v408 = v745[0];
      }

      ++v213;
      *(v408 + 16) = v208;
      sub_1D6D491B0(v453, v408 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v456, type metadata accessor for FormatCompilerOptions);
    }

    while (v732 != v213);
  }

  v727 = v408;
LABEL_374:
  v457 = v715;
  v458 = v736;
  v459 = v730;
  v723 = type metadata accessor for FormatPackage(0);
  sub_1D6D49454(v458 + v723[23], v459, type metadata accessor for FormatCompilerOptions);
  v460 = sub_1D60A7ADC(v727);
  if (!v460)
  {
    goto LABEL_378;
  }

  v208 = v460;
  if (v460 < 1)
  {
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    __break(1u);
LABEL_570:
    __break(1u);
LABEL_571:
    __break(1u);
LABEL_572:
    __break(1u);
LABEL_573:
    __break(1u);
LABEL_574:
    __break(1u);
LABEL_575:
    __break(1u);
    goto LABEL_576;
  }

  v192 = v660;
  v461 = v661;
  v462 = v661[7];
  *&v734 = v661[6];
  v733 = v462;
  v732 = v661[8];
  v463 = v727 + ((*(v667 + 80) + 32) & ~*(v667 + 80));
  v728 = *(v667 + 72);
  do
  {
    sub_1D6D49454(v463, v192, type metadata accessor for FormatCompilerOptions);
    v745[0] = *v459;

    sub_1D5D5F664(v464);
    v465 = v745[0];
    v745[0] = v459[1];

    sub_1D5D5F6AC(v466);
    v467 = v745[0];
    v468 = v700;
    sub_1D6D4906C(v730 + v734, v700, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D6D491B0(v468, v457 + v461[6], type metadata accessor for FormatCompilerOptions.Newsroom);
    sub_1D5D5F6F4(v733 + v730, v733 + v192, (v457 + v461[7]));
    v469 = *(v730 + v732);

    v471 = sub_1D5D5FCA0(v470, v469);
    sub_1D6D49218(v192, type metadata accessor for FormatCompilerOptions);
    v457 = v715;
    sub_1D6D49218(v730, type metadata accessor for FormatCompilerOptions);
    *v457 = v465;
    v457[1] = v467;
    v459 = v730;
    *(v457 + v461[8]) = v471;
    sub_1D6D491B0(v457, v459, type metadata accessor for FormatCompilerOptions);
    v463 += v728;
    --v208;
  }

  while (v208);
LABEL_378:

  sub_1D6D491B0(v459, v682, type metadata accessor for FormatCompilerOptions);
  v747 = MEMORY[0x1E69E7CC0];
  v472 = v662;
  sub_1D6D485F4(v663, v662, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
  v473 = *(v729 + 48);
  *&v734 = v729 + 48;
  v733 = v473;
  if ((v473)(v472, 1, v731) != 1)
  {
    v208 = v651;
    sub_1D6D491B0(v472, v651, type metadata accessor for DebugFormatCacheFile);
    v192 = v652;
    sub_1D6D49454(v208, v652, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D46BD0();
    v214 = v747;
    v213 = v747[2];
    v215 = v747[3];
    if (v213 < v215 >> 1)
    {
LABEL_381:
      sub_1D6D49218(v208, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D46C1C(v213, v192);
      nullsub_1();
      goto LABEL_382;
    }

LABEL_576:
    v747 = sub_1D6996084((v215 > 1), v213 + 1, 1, v214);
    goto LABEL_381;
  }

  sub_1D6D494BC(v472, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
LABEL_382:
  v194 = v644;
  v195 = sub_1D663BF5C(0);
  v745[0] = v195;
  v732 = sub_1D60A7AA0();
  if (!v732)
  {
    v476 = v195;
    goto LABEL_394;
  }

  v217 = 0;
  v208 = v194 & 0xC000000000000001;
  while (v208)
  {
    v474 = MEMORY[0x1DA6FB460](v217, v194);
    v475 = v217 + 1;
    if (__OFADD__(v217, 1))
    {
      goto LABEL_391;
    }

LABEL_387:
    v192 = *(v474 + 24);

    v195 = v745;
    sub_1D6988AB0(v192);
    ++v217;
    if (v475 == v732)
    {
      goto LABEL_392;
    }
  }

  if (v217 >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_543;
  }

  v474 = *(v194 + 8 * v217 + 32);

  v475 = v217 + 1;
  if (!__OFADD__(v217, 1))
  {
    goto LABEL_387;
  }

LABEL_391:
  __break(1u);
LABEL_392:
  v476 = v745[0];
LABEL_394:
  v213 = v645;
  sub_1D6988AB0(v476);
  v730 = sub_1D663BF5C(0);
  v477 = sub_1D60A7ADC(v213);
  if (v477)
  {
    v478 = v477;
    if (v477 >= 1)
    {
      v479 = v647;
      v728 = *(v646 + 9);
      v480 = v213 + ((*(v675 + 80) + 32) & ~*(v675 + 80));
      v727 = *(v675 + 72);
      do
      {
        v208 = type metadata accessor for DebugFormatObject;
        v192 = &type metadata for FormatGroup;
        sub_1D6D4906C(v480, v479, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
        v481 = v699;
        sub_1D6D485F4(v479 + v728, v699, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v479, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
        if ((v733)(v481, 1, v731) == 1)
        {
          sub_1D6D494BC(v481, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v481, v698, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v208 = *(v192 + 16);
          v482 = *(v192 + 24);
          if (v208 >= v482 >> 1)
          {
            v192 = sub_1D6996084((v482 > 1), v208 + 1, 1, v192);
          }

          *(v192 + 16) = v208 + 1;
          v483 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v698, v192 + v483 + *(v729 + 72) * v208, type metadata accessor for DebugFormatCacheFile);
        }

        v480 += v727;
        --v478;
        v479 = v647;
      }

      while (v478);
      goto LABEL_405;
    }

    goto LABEL_568;
  }

LABEL_405:

  sub_1D6988AB0(v730);
  v730 = sub_1D663BF5C(0);
  v213 = v643;
  v484 = sub_1D60A7ADC(v643);
  if (v484)
  {
    v485 = v484;
    if (v484 >= 1)
    {
      v728 = *(v655 + 36);
      v486 = v213 + ((*(v674 + 80) + 32) & ~*(v674 + 80));
      v727 = *(v674 + 72);
      v487 = v709;
      do
      {
        v208 = type metadata accessor for DebugFormatObject;
        v192 = &type metadata for FormatItem;
        sub_1D6D4906C(v486, v487, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
        v488 = v696;
        sub_1D6D485F4(v487 + v728, v696, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v487, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
        if ((v733)(v488, 1, v731) == 1)
        {
          sub_1D6D494BC(v488, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v488, v697, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v208 = *(v192 + 16);
          v489 = *(v192 + 24);
          if (v208 >= v489 >> 1)
          {
            v192 = sub_1D6996084((v489 > 1), v208 + 1, 1, v192);
          }

          *(v192 + 16) = v208 + 1;
          v490 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v697, v192 + v490 + *(v729 + 72) * v208, type metadata accessor for DebugFormatCacheFile);
        }

        v486 += v727;
        --v485;
        v487 = v709;
      }

      while (v485);
      goto LABEL_416;
    }

    goto LABEL_569;
  }

LABEL_416:

  sub_1D6988AB0(v730);
  v730 = sub_1D663BF5C(0);
  v213 = v638;
  v491 = sub_1D60A7ADC(v638);
  if (v491)
  {
    v492 = v491;
    if (v491 >= 1)
    {
      v728 = *(v656 + 36);
      v493 = v213 + ((*(v672 + 80) + 32) & ~*(v672 + 80));
      v727 = *(v672 + 72);
      v494 = v731;
      v495 = v708;
      do
      {
        v208 = type metadata accessor for DebugFormatObject;
        sub_1D6D49278(v493, v495, &qword_1EC88F188, type metadata accessor for DebugFormatObject);
        v496 = v695;
        v192 = &qword_1EC890010;
        sub_1D6D485F4(v495 + v728, v695, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D493F8(v495, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
        if ((v733)(v496, 1, v494) == 1)
        {
          sub_1D6D494BC(v496, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v496, v694, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v498 = *(v192 + 16);
          v497 = *(v192 + 24);
          if (v498 >= v497 >> 1)
          {
            v192 = sub_1D6996084((v497 > 1), v498 + 1, 1, v192);
          }

          *(v192 + 16) = v498 + 1;
          v499 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v694, v192 + v499 + *(v729 + 72) * v498, type metadata accessor for DebugFormatCacheFile);
          v494 = v731;
        }

        v493 += v727;
        --v492;
        v495 = v708;
      }

      while (v492);
      goto LABEL_427;
    }

    goto LABEL_570;
  }

LABEL_427:

  sub_1D6988AB0(v730);
  v730 = sub_1D663BF5C(0);
  v213 = v637;
  v500 = sub_1D60A7ADC(v637);
  if (v500)
  {
    v501 = v500;
    if (v500 >= 1)
    {
      v728 = *(v657 + 36);
      v502 = v213 + ((*(v671 + 80) + 32) & ~*(v671 + 80));
      v727 = *(v671 + 72);
      v503 = v707;
      do
      {
        v208 = type metadata accessor for DebugFormatObject;
        v192 = &type metadata for FormatStyle;
        sub_1D6D4906C(v502, v503, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
        v504 = v693;
        sub_1D6D485F4(v503 + v728, v693, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v503, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
        if ((v733)(v504, 1, v731) == 1)
        {
          sub_1D6D494BC(v504, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v504, v692, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v208 = *(v192 + 16);
          v505 = *(v192 + 24);
          if (v208 >= v505 >> 1)
          {
            v192 = sub_1D6996084((v505 > 1), v208 + 1, 1, v192);
          }

          *(v192 + 16) = v208 + 1;
          v506 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v692, v192 + v506 + *(v729 + 72) * v208, type metadata accessor for DebugFormatCacheFile);
        }

        v502 += v727;
        --v501;
        v503 = v707;
      }

      while (v501);
      goto LABEL_438;
    }

    goto LABEL_571;
  }

LABEL_438:

  sub_1D6988AB0(v730);
  v730 = sub_1D663BF5C(0);
  v213 = v636;
  v507 = sub_1D60A7ADC(v636);
  if (v507)
  {
    v508 = v507;
    if (v507 >= 1)
    {
      v728 = *(v658 + 36);
      v509 = v213 + ((*(v668 + 80) + 32) & ~*(v668 + 80));
      v727 = *(v668 + 72);
      v510 = v706;
      do
      {
        v208 = type metadata accessor for DebugFormatObject;
        v192 = &type metadata for FormatDecoration;
        sub_1D6D4906C(v509, v510, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
        v511 = v690;
        sub_1D6D485F4(v510 + v728, v690, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v510, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
        if ((v733)(v511, 1, v731) == 1)
        {
          sub_1D6D494BC(v511, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v511, v691, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v208 = *(v192 + 16);
          v512 = *(v192 + 24);
          if (v208 >= v512 >> 1)
          {
            v192 = sub_1D6996084((v512 > 1), v208 + 1, 1, v192);
          }

          *(v192 + 16) = v208 + 1;
          v513 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v691, v192 + v513 + *(v729 + 72) * v208, type metadata accessor for DebugFormatCacheFile);
        }

        v509 += v727;
        --v508;
        v510 = v706;
      }

      while (v508);
      goto LABEL_449;
    }

    goto LABEL_572;
  }

LABEL_449:

  sub_1D6988AB0(v730);
  v730 = sub_1D663BF5C(0);
  v213 = v634;
  v514 = sub_1D60A7ADC(v634);
  if (v514)
  {
    v515 = v514;
    if (v514 >= 1)
    {
      v728 = *(v659 + 36);
      v516 = v213 + ((*(v669 + 80) + 32) & ~*(v669 + 80));
      v727 = *(v669 + 72);
      v517 = v705;
      do
      {
        v208 = type metadata accessor for DebugFormatObject;
        v192 = &type metadata for FormatType;
        sub_1D6D4906C(v516, v517, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
        v518 = v689;
        sub_1D6D485F4(v517 + v728, v689, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v517, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
        if ((v733)(v518, 1, v731) == 1)
        {
          sub_1D6D494BC(v518, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v518, v688, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v208 = *(v192 + 16);
          v519 = *(v192 + 24);
          if (v208 >= v519 >> 1)
          {
            v192 = sub_1D6996084((v519 > 1), v208 + 1, 1, v192);
          }

          *(v192 + 16) = v208 + 1;
          v520 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v688, v192 + v520 + *(v729 + 72) * v208, type metadata accessor for DebugFormatCacheFile);
        }

        v516 += v727;
        --v515;
        v517 = v705;
      }

      while (v515);
      goto LABEL_460;
    }

    goto LABEL_573;
  }

LABEL_460:

  sub_1D6988AB0(v730);
  v730 = sub_1D663BF5C(0);
  v213 = v635;
  v521 = sub_1D60A7ADC(v635);
  if (v521)
  {
    v522 = v521;
    if (v521 >= 1)
    {
      v728 = *(v653 + 36);
      v523 = v213 + ((*(v670 + 80) + 32) & ~*(v670 + 80));
      v727 = *(v670 + 72);
      v524 = v704;
      do
      {
        v208 = type metadata accessor for DebugFormatObject;
        v192 = &type metadata for FormatSupplementary;
        sub_1D6D4906C(v523, v524, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
        v525 = v687;
        sub_1D6D485F4(v524 + v728, v687, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v524, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
        if ((v733)(v525, 1, v731) == 1)
        {
          sub_1D6D494BC(v525, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v525, v686, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v208 = *(v192 + 16);
          v526 = *(v192 + 24);
          if (v208 >= v526 >> 1)
          {
            v192 = sub_1D6996084((v526 > 1), v208 + 1, 1, v192);
          }

          *(v192 + 16) = v208 + 1;
          v527 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v686, v192 + v527 + *(v729 + 72) * v208, type metadata accessor for DebugFormatCacheFile);
        }

        v523 += v727;
        --v522;
        v524 = v704;
      }

      while (v522);
      goto LABEL_471;
    }

    goto LABEL_574;
  }

LABEL_471:

  sub_1D6988AB0(v730);
  v730 = sub_1D663BF5C(0);
  v213 = v633;
  v528 = sub_1D60A7ADC(v633);
  if (v528)
  {
    v529 = v528;
    if (v528 >= 1)
    {
      v728 = *(v654 + 36);
      v530 = v213 + ((*(v666 + 80) + 32) & ~*(v666 + 80));
      v727 = *(v666 + 72);
      v531 = v703;
      do
      {
        v192 = &type metadata for FormatLocalization;
        sub_1D6D4906C(v530, v531, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
        v532 = v684;
        sub_1D6D485F4(v531 + v728, v684, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
        sub_1D6D490E0(v531, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
        if ((v733)(v532, 1, v731) == 1)
        {
          sub_1D6D494BC(v532, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
        }

        else
        {
          sub_1D6D491B0(v532, v685, type metadata accessor for DebugFormatCacheFile);
          v192 = v730;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1D6996084(0, *(v192 + 16) + 1, 1, v192);
          }

          v534 = *(v192 + 16);
          v533 = *(v192 + 24);
          if (v534 >= v533 >> 1)
          {
            v192 = sub_1D6996084((v533 > 1), v534 + 1, 1, v192);
          }

          *(v192 + 16) = v534 + 1;
          v535 = (*(v729 + 80) + 32) & ~*(v729 + 80);
          v730 = v192;
          sub_1D6D491B0(v685, v192 + v535 + *(v729 + 72) * v534, type metadata accessor for DebugFormatCacheFile);
        }

        v530 += v727;
        --v529;
        v531 = v703;
      }

      while (v529);
      goto LABEL_482;
    }

    goto LABEL_575;
  }

LABEL_482:

  sub_1D6988AB0(v730);
  v536 = v736;
  v537 = *(v736 + 1);
  v713 = *v736;
  v712 = v537;
  v538 = v681[2];
  v539 = v736 + v723[24];
  v733 = v681 + 2;
  v731 = v538;
  (v538)(v680, v539, v683);
  LODWORD(v711) = *(v536 + 48);
  LODWORD(v708) = *(v536 + 49);
  v540 = *(v536 + 3);
  v709 = *(v536 + 2);
  v541 = *(v536 + 4);
  v542 = *(v536 + 5);
  v710 = v541;
  sub_1D6D49454(v682, v679, type metadata accessor for FormatCompilerOptions);
  v730 = v542;

  v729 = v540;

  v195 = sub_1D663BE3C(0);
  v217 = 0;
  v208 = v644 & 0xC000000000000001;
  v194 = v644 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v732 == v217)
    {

      v550 = v736;
      v217 = *(v736 + 20);
      v192 = *(v736 + 21);
      v551 = sub_1D60A7ADC(v195);
      if (v551)
      {
        v552 = v551;
        v194 = 0;
        v553 = (v195 + 5);
        v208 = v192;
        *&v734 = v217;
        while (v194 < v195[2])
        {
          if (v208 == 2)
          {
            v208 = *v553;
            *&v734 = *(v553 - 1);
            sub_1D62B5D30(v734, v208);
          }

          ++v194;
          v553 += 2;
          if (v552 == v194)
          {
            goto LABEL_503;
          }
        }

        goto LABEL_544;
      }

      *&v734 = v217;
      v208 = v192;
LABEL_503:
      sub_1D5D5FDA4(v217, v192);

      sub_1D6D4635C(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
      sub_1D5C2AB28(0);
      v732 = v554;
      v555 = swift_allocObject();
      v728 = sub_1D69D7B5C(v555, 1);
      v557 = v556;
      sub_1D6D49454(v550, v556, type metadata accessor for FormatPackage);
      v558 = v664;
      sub_1D725BD3C();
      v559 = v681;
      v560 = v681[6];
      v561 = v683;
      if (v560(v558, 1, v683) == 1)
      {
        sub_1D725BCDC();
        v562 = v560(v558, 1, v561);
        v563 = v677;
        v564 = v665;
        if (v562 != 1)
        {
          sub_1D6D494BC(v664, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (v559[4])(v676, v558, v561);
        v563 = v677;
        v564 = v665;
      }

      sub_1D725BD3C();
      if (v560(v564, 1, v561) == 1)
      {
        sub_1D725BCCC();
        if (v560(v564, 1, v561) != 1)
        {
          sub_1D6D494BC(v665, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (v559[4])(v563, v564, v561);
      }

      sub_1D725BD3C();
      v565 = sub_1D663BBD0(0);
      v566 = sub_1D60A7ADC(v565);
      v567 = v676;
      if (v566)
      {
        v727 = sub_1D5E26CE0(v565);
      }

      else
      {
        v727 = MEMORY[0x1E69E7CD0];
      }

      v568 = sub_1D663BBD0(0);
      if (sub_1D60A7ADC(v568))
      {
        v716 = sub_1D5E26CE0(v568);
      }

      else
      {
        v716 = MEMORY[0x1E69E7CD0];
      }

      v569 = sub_1D663BBDC(0);
      if (sub_1D60A7ADC(v569))
      {
        v714 = sub_1D5E268EC(v569);
      }

      else
      {
        v714 = MEMORY[0x1E69E7CD0];
      }

      v570 = sub_1D663BBDC(0);
      if (sub_1D60A7ADC(v570))
      {
        v571 = sub_1D5E268EC(v570);
      }

      else
      {
        v571 = MEMORY[0x1E69E7CD0];
      }

      sub_1D6D48490(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      v573 = (v557 + *(v572 + 48));
      v574 = type metadata accessor for FormatMetadata(0);
      *v573 = 0;
      *(v573 + 1) = 0;
      v575 = v559[4];
      v576 = v567;
      v577 = v683;
      v575(&v573[v574[5]], v576, v683);
      v575(&v573[v574[6]], v677, v577);
      sub_1D5C7F144(v678, &v573[v574[7]]);
      *&v573[v574[8]] = v727;
      *&v573[v574[9]] = v716;
      *&v573[v574[10]] = v714;
      *&v573[v574[11]] = v571;
      v578 = v577;
      swift_storeEnumTagMultiPayload();
      nullsub_1();
      v194 = v579;
      v217 = *(v736 + v723[26]);

      v746 = sub_1D5F62D3C(v725);
      v580 = v641;
      v581 = sub_1D5F62D78(v641);
      sub_1D6985734(v581);
      v582 = v648;
      v583 = sub_1D5F62DB4(v648);
      sub_1D6985734(v583);
      v584 = sub_1D5F62DF0(v724);
      sub_1D6985734(v584);
      v585 = sub_1D5F62FF8(v726);
      sub_1D6985734(v585);
      v586 = v673;
      v587 = v680;
      (v731)(v673, v680, v578);
      v588 = v735;
      sub_1D5C5D464(v580, v745);
      v735 = v588;
      if (v588)
      {

        sub_1D5C5D428(v734, v208);
        v589 = v681[1];
        v589(v586, v578);
        v169 = type metadata accessor for FormatCompilerOptions;
        sub_1D6D49218(v679, type metadata accessor for FormatCompilerOptions);
        v590 = v587;
        v591 = v578;
      }

      else
      {
        v736 = v745[0];
        v192 = v745[1];
        v195 = v745[2];
        sub_1D5CCCC20(v582, v744);
        v735 = 0;
        v732 = v744[0];
        v728 = v744[1];
        sub_1D5CA3FB0(v726, v743);
        v735 = 0;
        v723 = v743[0];
        v716 = v743[1];
        sub_1D5C4B5C8(v725, v742);
        v727 = v742[0];
        v726 = v742[1];
        v593 = v735;
        sub_1D5CAF23C(v722, v741);
        v735 = v593;
        if (!v593)
        {
          v725 = v741[0];
          v722 = v741[1];
          sub_1D5CA84CC(v724, v740);
          v735 = 0;
          goto LABEL_545;
        }

        sub_1D5C5D428(v734, v208);
        v589 = v681[1];
        v592 = v683;
        v589(v673, v683);
        v169 = type metadata accessor for FormatCompilerOptions;
        sub_1D6D49218(v679, type metadata accessor for FormatCompilerOptions);
        v590 = v680;
        v591 = v592;
      }

      v589(v590, v591);
      sub_1D6D49218(v682, type metadata accessor for FormatCompilerOptions);

      goto LABEL_4;
    }

    if (v208)
    {
      v543 = MEMORY[0x1DA6FB460](v217, v644);
      v544 = v217 + 1;
      if (__OFADD__(v217, 1))
      {
        break;
      }

      goto LABEL_487;
    }

    if (v217 >= *(v194 + 16))
    {
      goto LABEL_531;
    }

    v543 = *(v644 + 8 * v217 + 32);

    v544 = v217 + 1;
    if (!__OFADD__(v217, 1))
    {
LABEL_487:
      v545 = (*(v543 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
      v192 = *v545;
      v546 = v545[1];
      sub_1D5D5FDA4(*v545, v546);

      ++v217;
      if (v546 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = sub_1D698CA40(0, v195[2] + 1, 1, v195);
        }

        v548 = v195[2];
        v547 = v195[3];
        if (v548 >= v547 >> 1)
        {
          v195 = sub_1D698CA40((v547 > 1), v548 + 1, 1, v195);
        }

        v195[2] = v548 + 1;
        v549 = &v195[2 * v548];
        v549[4] = v192;
        v549[5] = v546;
        v217 = v544;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_531:
  __break(1u);
LABEL_532:
  __break(1u);
LABEL_533:
  __break(1u);
LABEL_534:
  __break(1u);
LABEL_535:
  __break(1u);
LABEL_536:
  __break(1u);
LABEL_537:
  __break(1u);
LABEL_538:
  __break(1u);
LABEL_539:
  __break(1u);
LABEL_540:
  __break(1u);
LABEL_541:
  __break(1u);
LABEL_542:
  __break(1u);
LABEL_543:
  __break(1u);
LABEL_544:
  __break(1u);
LABEL_545:
  v724 = v740[0];
  v714 = v740[1];
  v594 = v735;
  sub_1D6F1C000(v721, v746, v739);
  v735 = v594;
  if (v594)
  {

    sub_1D5C5D428(v734, v208);
    v595 = v681[1];
    v596 = v683;
    v595(v673, v683);
    v169 = type metadata accessor for FormatCompilerOptions;
    sub_1D6D49218(v679, type metadata accessor for FormatCompilerOptions);
    v595(v680, v596);
    sub_1D6D49218(v682, type metadata accessor for FormatCompilerOptions);
LABEL_4:

LABEL_5:
  }

  else
  {
    v721 = v739[0];
    v707 = v739[1];
    sub_1D5CB13C8(v717, &v738);
    v735 = 0;
    sub_1D6D49454(v679, v715, type metadata accessor for FormatCompilerOptions);
    type metadata accessor for FormatPackageInventory(0);
    v597 = swift_allocObject();
    v598 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
    *v598 = 0;
    v598[1] = 0;
    v599 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
    v706 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
    *v599 = 0;
    v599[1] = 0;
    v600 = v712;
    *(v597 + 16) = v713;
    *(v597 + 24) = v600;
    v717 = v738;
    (v731)(v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v673, v683);
    *(v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) = v711;
    v601 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
    swift_beginAccess();
    *(v597 + v601) = v708;
    swift_beginAccess();
    v602 = v729;
    *v598 = v709;
    v598[1] = v602;
    v603 = v712;

    v604 = v706;
    swift_beginAccess();
    v605 = v730;
    *v604 = v710;
    v604[1] = v605;

    v606 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
    swift_beginAccess();
    *v606 = v736;
    v606[1] = v192;
    v606[2] = v195;
    v607 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
    swift_beginAccess();
    v608 = v728;
    *v607 = v732;
    v607[1] = v608;
    v609 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
    swift_beginAccess();
    v610 = v716;
    *v609 = v723;
    v609[1] = v610;
    v611 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v612 = v726;
    *v611 = v727;
    v611[1] = v612;
    v613 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
    swift_beginAccess();
    v614 = v722;
    *v613 = v725;
    v613[1] = v614;
    v615 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
    swift_beginAccess();
    v616 = v714;
    *v615 = v724;
    v615[1] = v616;
    v617 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
    swift_beginAccess();
    v618 = v707;
    *v617 = v721;
    v617[1] = v618;
    v619 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
    swift_beginAccess();
    *(v597 + v619) = v720;
    v620 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
    swift_beginAccess();
    *(v597 + v620) = v719;
    v737[0] = v711;
    v621 = sub_1D5D5FDB4(v713, v603);
    v622 = sub_1D5BA8750(v621, v718);

    v623 = v681[1];
    v624 = v683;
    v623(v673, v683);
    v736 = type metadata accessor for FormatCompilerOptions;
    sub_1D6D49218(v679, type metadata accessor for FormatCompilerOptions);
    v623(v680, v624);
    v625 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
    swift_beginAccess();
    *(v597 + v625) = v622;
    v626 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
    swift_beginAccess();
    *(v597 + v626) = v717;
    sub_1D6D491B0(v715, v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, type metadata accessor for FormatCompilerOptions);
    v627 = (v597 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
    *v627 = v734;
    v627[1] = v208;
    v628 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
    swift_beginAccess();
    *(v597 + v628) = v194;
    v629 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
    swift_beginAccess();
    *(v597 + v629) = v217;
    v630 = v747;
    type metadata accessor for DebugFormatPackageInventory();
    swift_allocObject();
    v169 = sub_1D70CD85C(v597, v630);
    sub_1D6D49218(v682, v736);
  }

  return v169;
}

id sub_1D6D3E84C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    swift_willThrow();
    return v3;
  }

  else
  {
    *a2 = *a1;
  }
}

uint64_t sub_1D6D3E89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  *&v83 = a2;
  *&v86 = a1;
  v85 = type metadata accessor for DebugFormatCacheFile(0);
  v92 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v77 - v8;
  v10 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v82 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v81 = sub_1D72585BC();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v77 - v18;
  sub_1D6D4906C(v86, &v77 - v18, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF2DC48, &type metadata for FormatLocalization);
      v22 = *(v21 + 48);
      v23 = *v19;
      v24 = *(v19 + 1);
      v25 = *(v19 + 6);
      sub_1D5C2AFF4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
      v27 = *(v26 + 36);
      v28 = *(v19 + 2);
      v86 = *(v19 + 1);
      v83 = v28;
      v29 = &v19[v22];
      v30 = v84;
      sub_1D6D491B0(v29, v84 + v27, type metadata accessor for FormatMetadata);
      *v30 = v23;
      *(v30 + 8) = v24;
      v31 = v83;
      *(v30 + 16) = v86;
      *(v30 + 32) = v31;
      *(v30 + 48) = v25;
      sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
      return (*(v92 + 56))(v30 + *(v32 + 36), 1, 1, v85);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v79 = v5;
    *&v86 = v9;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v35 = *(v34 + 48);
    v36 = v80;
    v37 = v81;
    (*(v80 + 32))(v15, v19, v81);
    v38 = v82;
    sub_1D6D491B0(&v19[v35], v82, type metadata accessor for FormatMetadata);
    v39 = sub_1D72583DC();
    v41 = sub_1D5FD24A4(1uLL, v39, v40);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = MEMORY[0x1DA6F97E0](v41, v43, v45, v47);
    v50 = v49;

    v51 = v83;
    v52 = v38;
    v53 = v37;
    v54 = v36;
    v55 = v50;
    v56 = v15;
    if (*(v83 + 16) && (v57 = sub_1D5B69D90(v48, v55), (v58 & 1) != 0))
    {
      v78 = v48;
      v59 = v79;
      sub_1D6D49454(*(v51 + 56) + *(v92 + 72) * v57, v79, type metadata accessor for DebugFormatCacheFile);
      v60 = v86;
      sub_1D6D491B0(v59, v86, type metadata accessor for DebugFormatCacheFile);
      v61 = v85;
      sub_1D6BE292C(&v91);
      if (swift_dynamicCast())
      {
        if (*(&v87 + 1))
        {
          (*(v54 + 8))(v56, v53);

          v62 = v87;
          v63 = v90;
          sub_1D5C2AFF4(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
          v83 = v88;
          v81 = v89;
          v65 = v84;
          sub_1D6D491B0(v52, v84 + *(v64 + 36), type metadata accessor for FormatMetadata);
          *v65 = v62;
          v66 = v81;
          *(v65 + 16) = v83;
          *(v65 + 32) = v66;
          *(v65 + 48) = v63;
          sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
          v68 = *(v67 + 36);
          sub_1D6D491B0(v60, v65 + v68, type metadata accessor for DebugFormatCacheFile);
          return (*(v92 + 56))(v65 + v68, 0, 1, v61);
        }

        v75 = v87;
        v73 = *(&v88 + 1);
        v74 = v88;
        v71 = *(&v89 + 1);
        v72 = v89;
        v70 = v90;
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
      }

      sub_1D5EA0890(v75, 0, v74, v73, v72, v71, v70);
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v76 = v78;
      v76[1] = v55;
      v76[2] = 0xD000000000000012;
      v76[3] = 0x80000001D73BF9B0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v60, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v69 = v48;
      v69[1] = v55;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v52, type metadata accessor for FormatMetadata);
    return (*(v54 + 8))(v56, v53);
  }
}

uint64_t sub_1D6D3F148@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v76 = a2;
  v95 = a1;
  v77 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile(0);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v81 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v71 - v18);
  sub_1D6D4906C(v95, &v71 - v18, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF2BE08, &type metadata for FormatSupplementary);
      v22 = *(v21 + 48);
      v23 = v19[5];
      v93 = v19[4];
      v94[0] = v23;
      *(v94 + 9) = *(v19 + 89);
      v24 = v19[1];
      v89 = *v19;
      v90 = v24;
      v25 = v19[3];
      v91 = v19[2];
      v92 = v25;
      sub_1D5C2AFF4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      v27 = *(v26 + 36);
      v28 = v19 + v22;
      v29 = v77;
      sub_1D6D491B0(v28, v77 + v27, type metadata accessor for FormatMetadata);
      v30 = v94[0];
      v29[4] = v93;
      v29[5] = v30;
      *(v29 + 89) = *(v94 + 9);
      v31 = v90;
      *v29 = v89;
      v29[1] = v31;
      v32 = v92;
      v29[2] = v91;
      v29[3] = v32;
      sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v29 + *(v33 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v73 = v6;
    v95 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v36 = *(v35 + 48);
    v37 = v80;
    v38 = v74;
    (*(v81 + 32))(v80, v19, v74);
    v39 = v75;
    sub_1D6D491B0(v19 + v36, v75, type metadata accessor for FormatMetadata);
    v40 = sub_1D72583DC();
    v42 = sub_1D5FD24A4(1uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
    v51 = v50;

    v52 = v76;
    v53 = v81;
    if (*(v76 + 16) && (v54 = sub_1D5B69D90(v49, v51), (v55 & 1) != 0))
    {
      v72 = v51;
      v56 = v78;
      v57 = *(v52 + 56) + *(v78 + 72) * v54;
      v58 = v73;
      sub_1D6D49454(v57, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v95;
      sub_1D6D491B0(v58, v95, type metadata accessor for DebugFormatCacheFile);
      v60 = v79;
      sub_1D6BE292C(&v88);
      if (swift_dynamicCast())
      {
        if (*(&v89 + 1))
        {
          (*(v81 + 8))(v80, v38);

          v86 = v93;
          v87[0] = v94[0];
          *(v87 + 9) = *(v94 + 9);
          v82 = v89;
          v83 = v90;
          v84 = v91;
          v85 = v92;
          sub_1D5C2AFF4(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
          v62 = v77;
          sub_1D6D491B0(v39, v77 + *(v61 + 36), type metadata accessor for FormatMetadata);
          v63 = v87[0];
          v62[4] = v86;
          v62[5] = v63;
          *(v62 + 89) = *(v87 + 9);
          v64 = v83;
          *v62 = v82;
          v62[1] = v64;
          v65 = v85;
          v62[2] = v84;
          v62[3] = v65;
          sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
          v67 = *(v66 + 36);
          sub_1D6D491B0(v59, v62 + v67, type metadata accessor for DebugFormatCacheFile);
          return (*(v56 + 56))(v62 + v67, 0, 1, v60);
        }
      }

      else
      {
        v93 = 0u;
        memset(v94, 0, 25);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
      }

      v86 = v93;
      v87[0] = v94[0];
      *(v87 + 9) = *(v94 + 9);
      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      sub_1D6D48668(&v82, &qword_1EC880150, &type metadata for FormatSupplementary);
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      v69 = v72;
      *v70 = v49;
      v70[1] = v69;
      v70[2] = 0xD000000000000013;
      v70[3] = 0x80000001D73BF9F0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v81 + 8))(v80, v38);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v68 = v49;
      v68[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v53 + 8))(v37, v38);
    }
  }
}

uint64_t sub_1D6D3FA40@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v93 = a1;
  v77 = a3;
  v79 = type metadata accessor for DebugFormatCacheFile(0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v69 - v18;
  sub_1D6D4906C(v93, &v69 - v18, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF343F0, &type metadata for FormatType);
      v22 = *(v21 + 48);
      v23 = *(v19 + 4);
      v90 = *(v19 + 3);
      v91 = v23;
      v92 = v19[80];
      v24 = *(v19 + 2);
      v88 = *(v19 + 1);
      v89 = v24;
      v87 = *v19;
      sub_1D5C2AFF4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
      v26 = *(v25 + 36);
      v27 = &v19[v22];
      v28 = v77;
      sub_1D6D491B0(v27, v77 + v26, type metadata accessor for FormatMetadata);
      v29 = v90;
      *(v28 + 32) = v89;
      *(v28 + 48) = v29;
      *(v28 + 64) = v91;
      *(v28 + 80) = v92;
      v30 = v88;
      *v28 = v87;
      *(v28 + 16) = v30;
      sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v28 + *(v31 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v93 = v5;
    v72 = v9;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v34 = *(v33 + 48);
    v35 = v73;
    v36 = v74;
    (*(v73 + 32))(v15, v19, v74);
    v37 = v75;
    sub_1D6D491B0(&v19[v34], v75, type metadata accessor for FormatMetadata);
    v38 = sub_1D72583DC();
    v40 = sub_1D5FD24A4(1uLL, v38, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = MEMORY[0x1DA6F97E0](v40, v42, v44, v46);
    v49 = v48;
    v50 = v47;

    v51 = v76;
    v52 = v36;
    if (*(v76 + 16) && (v53 = sub_1D5B69D90(v50, v49), (v54 & 1) != 0))
    {
      v69 = v50;
      v70 = v49;
      v71 = v15;
      v55 = v78;
      v56 = v93;
      sub_1D6D49454(*(v51 + 56) + *(v78 + 72) * v53, v93, type metadata accessor for DebugFormatCacheFile);
      v57 = v72;
      sub_1D6D491B0(v56, v72, type metadata accessor for DebugFormatCacheFile);
      v58 = v79;
      sub_1D6BE292C(&v86);
      if (swift_dynamicCast())
      {
        if (*(&v87 + 1))
        {
          (*(v35 + 8))(v71, v52);

          v82 = v89;
          v83 = v90;
          v84 = v91;
          v85 = v92;
          v80 = v87;
          v81 = v88;
          sub_1D5C2AFF4(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
          v60 = v55;
          v61 = v77;
          sub_1D6D491B0(v37, v77 + *(v59 + 36), type metadata accessor for FormatMetadata);
          v62 = v83;
          *(v61 + 32) = v82;
          *(v61 + 48) = v62;
          *(v61 + 64) = v84;
          *(v61 + 80) = v85;
          v63 = v81;
          *v61 = v80;
          *(v61 + 16) = v63;
          sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
          v65 = *(v64 + 36);
          sub_1D6D491B0(v57, v61 + v65, type metadata accessor for DebugFormatCacheFile);
          return (*(v60 + 56))(v61 + v65, 0, 1, v58);
        }
      }

      else
      {
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
      }

      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      v80 = v87;
      v81 = v88;
      sub_1D6D48668(&v80, &qword_1EC880148, &type metadata for FormatType);
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      v67 = v70;
      *v68 = v69;
      v68[1] = v67;
      v68[2] = 0x795474616D726F46;
      v68[3] = 0xEA00000000006570;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v57, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D49218(v37, type metadata accessor for FormatMetadata);
      return (*(v35 + 8))(v71, v52);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v66 = v50;
      v66[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v37, type metadata accessor for FormatMetadata);
      return (*(v35 + 8))(v15, v36);
    }
  }
}

uint64_t sub_1D6D403D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v76 = a2;
  v95 = a1;
  v77 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile(0);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v81 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v71 - v18);
  sub_1D6D4906C(v95, &v71 - v18, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF30528, &type metadata for FormatDecoration);
      v22 = *(v21 + 48);
      v23 = v19[5];
      v93 = v19[4];
      v94[0] = v23;
      *(v94 + 11) = *(v19 + 91);
      v24 = v19[1];
      v89 = *v19;
      v90 = v24;
      v25 = v19[3];
      v91 = v19[2];
      v92 = v25;
      sub_1D5C2AFF4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      v27 = *(v26 + 36);
      v28 = v19 + v22;
      v29 = v77;
      sub_1D6D491B0(v28, v77 + v27, type metadata accessor for FormatMetadata);
      v30 = v94[0];
      v29[4] = v93;
      v29[5] = v30;
      *(v29 + 91) = *(v94 + 11);
      v31 = v90;
      *v29 = v89;
      v29[1] = v31;
      v32 = v92;
      v29[2] = v91;
      v29[3] = v32;
      sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v29 + *(v33 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v73 = v6;
    v95 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v36 = *(v35 + 48);
    v37 = v80;
    v38 = v74;
    (*(v81 + 32))(v80, v19, v74);
    v39 = v75;
    sub_1D6D491B0(v19 + v36, v75, type metadata accessor for FormatMetadata);
    v40 = sub_1D72583DC();
    v42 = sub_1D5FD24A4(1uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
    v51 = v50;

    v52 = v76;
    v53 = v81;
    if (*(v76 + 16) && (v54 = sub_1D5B69D90(v49, v51), (v55 & 1) != 0))
    {
      v72 = v51;
      v56 = v78;
      v57 = *(v52 + 56) + *(v78 + 72) * v54;
      v58 = v73;
      sub_1D6D49454(v57, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v95;
      sub_1D6D491B0(v58, v95, type metadata accessor for DebugFormatCacheFile);
      v60 = v79;
      sub_1D6BE292C(&v88);
      if (swift_dynamicCast())
      {
        if (*(&v89 + 1))
        {
          (*(v81 + 8))(v80, v38);

          v86 = v93;
          v87[0] = v94[0];
          *(v87 + 11) = *(v94 + 11);
          v82 = v89;
          v83 = v90;
          v84 = v91;
          v85 = v92;
          sub_1D5C2AFF4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
          v62 = v77;
          sub_1D6D491B0(v39, v77 + *(v61 + 36), type metadata accessor for FormatMetadata);
          v63 = v87[0];
          v62[4] = v86;
          v62[5] = v63;
          *(v62 + 91) = *(v87 + 11);
          v64 = v83;
          *v62 = v82;
          v62[1] = v64;
          v65 = v85;
          v62[2] = v84;
          v62[3] = v65;
          sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
          v67 = *(v66 + 36);
          sub_1D6D491B0(v59, v62 + v67, type metadata accessor for DebugFormatCacheFile);
          return (*(v56 + 56))(v62 + v67, 0, 1, v60);
        }
      }

      else
      {
        v93 = 0u;
        memset(v94, 0, 27);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
      }

      v86 = v93;
      v87[0] = v94[0];
      *(v87 + 11) = *(v94 + 11);
      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      sub_1D6D48668(&v82, &qword_1EC880140, &type metadata for FormatDecoration);
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      v69 = v72;
      *v70 = v49;
      v70[1] = v69;
      v70[2] = 0xD000000000000010;
      v70[3] = 0x80000001D73BF9D0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v81 + 8))(v80, v38);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v68 = v49;
      v68[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v39, type metadata accessor for FormatMetadata);
      return (*(v53 + 8))(v37, v38);
    }
  }
}

uint64_t sub_1D6D40CD0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v91 = a1;
  v77 = a3;
  v79 = type metadata accessor for DebugFormatCacheFile(0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v69 - v18;
  sub_1D6D4906C(v91, &v69 - v18, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF34010, &type metadata for FormatStyle);
      v22 = *(v21 + 48);
      v90 = *(v19 + 8);
      v23 = *(v19 + 3);
      v88 = *(v19 + 2);
      v89 = v23;
      v24 = *(v19 + 1);
      v86 = *v19;
      v87 = v24;
      sub_1D5C2AFF4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      v26 = *(v25 + 36);
      v27 = &v19[v22];
      v28 = v77;
      sub_1D6D491B0(v27, v77 + v26, type metadata accessor for FormatMetadata);
      v29 = v89;
      *(v28 + 32) = v88;
      *(v28 + 48) = v29;
      *(v28 + 64) = v90;
      v30 = v87;
      *v28 = v86;
      *(v28 + 16) = v30;
      sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
      return (*(v78 + 56))(v28 + *(v31 + 36), 1, 1, v79);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v72 = v5;
    v91 = v9;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v34 = *(v33 + 48);
    v35 = v73;
    v36 = v74;
    (*(v73 + 32))(v15, v19, v74);
    v37 = v75;
    sub_1D6D491B0(&v19[v34], v75, type metadata accessor for FormatMetadata);
    v38 = sub_1D72583DC();
    v40 = sub_1D5FD24A4(1uLL, v38, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = MEMORY[0x1DA6F97E0](v40, v42, v44, v46);
    v49 = v48;

    v50 = v76;
    v51 = v37;
    v52 = v36;
    v53 = v35;
    if (*(v76 + 16) && (v54 = sub_1D5B69D90(v47, v49), (v55 & 1) != 0))
    {
      v70 = v47;
      v71 = v49;
      v56 = v78;
      v57 = v72;
      sub_1D6D49454(*(v50 + 56) + *(v78 + 72) * v54, v72, type metadata accessor for DebugFormatCacheFile);
      v58 = v91;
      sub_1D6D491B0(v57, v91, type metadata accessor for DebugFormatCacheFile);
      v59 = v79;
      sub_1D6BE292C(&v85);
      if (swift_dynamicCast())
      {
        if (*(&v86 + 1))
        {
          (*(v53 + 8))(v15, v52);

          v82 = v88;
          v83 = v89;
          v84 = v90;
          v81 = v87;
          v80 = v86;
          sub_1D5C2AFF4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
          v61 = v77;
          sub_1D6D491B0(v51, v77 + *(v60 + 36), type metadata accessor for FormatMetadata);
          v62 = v83;
          *(v61 + 32) = v82;
          *(v61 + 48) = v62;
          *(v61 + 64) = v84;
          v63 = v81;
          *v61 = v80;
          *(v61 + 16) = v63;
          sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
          v65 = *(v64 + 36);
          sub_1D6D491B0(v58, v61 + v65, type metadata accessor for DebugFormatCacheFile);
          return (*(v56 + 56))(v61 + v65, 0, 1, v59);
        }
      }

      else
      {
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
      }

      v82 = v88;
      v83 = v89;
      v84 = v90;
      v81 = v87;
      v80 = v86;
      sub_1D6D48668(&v80, &qword_1EC880158, &type metadata for FormatStyle);
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      v67 = v71;
      *v68 = v70;
      v68[1] = v67;
      v68[2] = 0x745374616D726F46;
      v68[3] = 0xEB00000000656C79;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v58, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v66 = v47;
      v66[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v51, type metadata accessor for FormatMetadata);
    return (*(v53 + 8))(v15, v52);
  }
}

uint64_t sub_1D6D415E8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a3;
  v70 = a2;
  v74 = a1;
  v3 = type metadata accessor for DebugFormatCacheFile(0);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D72585BC();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D48FEC(0, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v66 - v21);
  sub_1D6D49278(v74, &v66 - v21, &qword_1EDF2C830, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6D48490(0, &qword_1EDF32E98, type metadata accessor for FormatSnippet, type metadata accessor for FormatMetadata);
      v25 = *(v24 + 48);
      v26 = *v22;
      sub_1D6D48FEC(0, &unk_1EDF33820, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatObject);
      v28 = *(v27 + 36);
      v29 = v22 + v25;
      v30 = v71;
      sub_1D6D491B0(v29, &v71[v28], type metadata accessor for FormatMetadata);
      *v30 = v26;
      sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
      return (*(v72 + 56))(&v30[*(v31 + 36)], 1, 1, v73);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v67 = v6;
    v68 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v34 = *(v33 + 48);
    v35 = v69;
    (*(v69 + 32))(v18, v22, v15);
    v74 = v14;
    sub_1D6D491B0(v22 + v34, v14, type metadata accessor for FormatMetadata);
    v36 = sub_1D72583DC();
    v38 = sub_1D5FD24A4(1uLL, v36, v37);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = MEMORY[0x1DA6F97E0](v38, v40, v42, v44);
    v47 = v46;

    v48 = v70;
    v49 = v15;
    v50 = v35;
    v51 = v18;
    if (*(v70 + 16) && (v52 = sub_1D5B69D90(v45, v47), (v53 & 1) != 0))
    {
      v66 = v45;
      v54 = v47;
      v55 = v72;
      v56 = v67;
      sub_1D6D49454(*(v48 + 56) + *(v72 + 72) * v52, v67, type metadata accessor for DebugFormatCacheFile);
      v57 = v68;
      sub_1D6D491B0(v56, v68, type metadata accessor for DebugFormatCacheFile);
      v58 = v73;
      sub_1D6BE292C(&v75);
      type metadata accessor for FormatSnippet();
      if (swift_dynamicCast() && v76)
      {
        (*(v50 + 8))(v51, v49);

        v59 = v76;
        sub_1D6D48FEC(0, &unk_1EDF33820, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatObject);
        v61 = v71;
        sub_1D6D491B0(v74, &v71[*(v60 + 36)], type metadata accessor for FormatMetadata);
        *v61 = v59;
        sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
        v63 = *(v62 + 36);
        sub_1D6D491B0(v57, &v61[v63], type metadata accessor for DebugFormatCacheFile);
        return (*(v55 + 56))(&v61[v63], 0, 1, v58);
      }

      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v65 = v66;
      *(v65 + 8) = v54;
      strcpy((v65 + 16), "FormatSnippet");
      *(v65 + 30) = -4864;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v57, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v64 = v45;
      v64[1] = v47;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v74, type metadata accessor for FormatMetadata);
    return (*(v50 + 8))(v51, v49);
  }
}

uint64_t sub_1D6D41E18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v79 = a2;
  v103 = a1;
  v75 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile(0);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v80 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D72585BC();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v70 - v19);
  sub_1D6D4906C(v103, &v70 - v19, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF34648, &type metadata for FormatItem);
      v23 = *(v22 + 48);
      v24 = v20[5];
      v100 = v20[4];
      v101 = v24;
      v102[0] = v20[6];
      *(v102 + 9) = *(v20 + 105);
      v25 = v20[1];
      v96 = *v20;
      v97 = v25;
      v26 = v20[3];
      v98 = v20[2];
      v99 = v26;
      sub_1D5C2AFF4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v28 = *(v27 + 36);
      v29 = v20 + v23;
      v30 = v75;
      sub_1D6D491B0(v29, v75 + v28, type metadata accessor for FormatMetadata);
      v31 = v101;
      v30[4] = v100;
      v30[5] = v31;
      v30[6] = v102[0];
      *(v30 + 105) = *(v102 + 9);
      v32 = v97;
      *v30 = v96;
      v30[1] = v32;
      v33 = v99;
      v30[2] = v98;
      v30[3] = v33;
      sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
      return (*(v76 + 56))(v30 + *(v34 + 36), 1, 1, v77);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v72 = v6;
    v103 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v37 = *(v36 + 48);
    v38 = v73;
    v39 = v74;
    v40 = v78;
    (*(v73 + 32))(v78, v20, v74);
    sub_1D6D491B0(v20 + v37, v80, type metadata accessor for FormatMetadata);
    v41 = sub_1D72583DC();
    v43 = sub_1D5FD24A4(1uLL, v41, v42);
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = MEMORY[0x1DA6F97E0](v43, v45, v47, v49);
    v52 = v51;
    v53 = v50;

    if (*(v79 + 16) && (v54 = sub_1D5B69D90(v53, v52), (v55 & 1) != 0))
    {
      v71 = v53;
      v56 = v38;
      v57 = v76;
      v58 = v72;
      sub_1D6D49454(*(v79 + 56) + *(v76 + 72) * v54, v72, type metadata accessor for DebugFormatCacheFile);
      v59 = v103;
      sub_1D6D491B0(v58, v103, type metadata accessor for DebugFormatCacheFile);
      v60 = v77;
      sub_1D6BE292C(&v95);
      if (swift_dynamicCast())
      {
        nullsub_1();
        v92 = v100;
        v93 = v101;
        v94[0] = v102[0];
        *(v94 + 9) = *(v102 + 9);
        v88 = v96;
        v89 = v97;
        v90 = v98;
        v91 = v99;
      }

      else
      {
        sub_1D5EA1584(&v81);
        v100 = v85;
        v101 = v86;
        v102[0] = v87[0];
        *(v102 + 9) = *(v87 + 9);
        v96 = v81;
        v97 = v82;
        v98 = v83;
        v99 = v84;
        v88 = v81;
        v89 = v82;
        v90 = v83;
        v91 = v84;
        v92 = v85;
        v93 = v86;
        v94[0] = v87[0];
        *(v94 + 9) = *(v87 + 9);
      }

      if (sub_1D5DEA380(&v88) == 1)
      {
        v92 = v100;
        v93 = v101;
        v94[0] = v102[0];
        *(v94 + 9) = *(v102 + 9);
        v88 = v96;
        v89 = v97;
        v90 = v98;
        v91 = v99;
        sub_1D6D48668(&v88, &qword_1EC880160, &type metadata for FormatItem);
        type metadata accessor for DebugFormatManagerError(0);
        sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
        swift_allocError();
        *v62 = v71;
        v62[1] = v52;
        v62[2] = 0x744974616D726F46;
        v62[3] = 0xEA00000000006D65;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
        sub_1D6D49218(v80, type metadata accessor for FormatMetadata);
        return (*(v56 + 8))(v78, v39);
      }

      else
      {
        (*(v56 + 8))(v78, v39);

        v92 = v100;
        v93 = v101;
        v94[0] = v102[0];
        *(v94 + 9) = *(v102 + 9);
        v88 = v96;
        v89 = v97;
        v90 = v98;
        v91 = v99;
        sub_1D5C2AFF4(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
        v64 = v75;
        sub_1D6D491B0(v80, v75 + *(v63 + 36), type metadata accessor for FormatMetadata);
        v65 = v93;
        v64[4] = v92;
        v64[5] = v65;
        v64[6] = v94[0];
        *(v64 + 105) = *(v94 + 9);
        v66 = v89;
        *v64 = v88;
        v64[1] = v66;
        v67 = v91;
        v64[2] = v90;
        v64[3] = v67;
        sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
        v69 = *(v68 + 36);
        sub_1D6D491B0(v59, v64 + v69, type metadata accessor for DebugFormatCacheFile);
        return (*(v57 + 56))(v64 + v69, 0, 1, v60);
      }
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v61 = v53;
      v61[1] = v52;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v80, type metadata accessor for FormatMetadata);
      return (*(v38 + 8))(v40, v39);
    }
  }
}

uint64_t sub_1D6D427B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v80 = a2;
  v110 = a1;
  v75 = a3;
  v3 = type metadata accessor for DebugFormatCacheFile(0);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D72585BC();
  v79 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AFF4(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v71 - v18);
  sub_1D6D4906C(v110, &v71 - v18, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EA17B4(0, &qword_1EDF341E0, &type metadata for FormatGroup);
      v22 = *(v21 + 48);
      v23 = v19[7];
      v107 = v19[6];
      v108 = v23;
      v109 = v19[8];
      v24 = v19[5];
      v105 = v19[4];
      v106 = v24;
      v25 = v19[3];
      v103 = v19[2];
      v104 = v25;
      v26 = v19[1];
      v101 = *v19;
      v102 = v26;
      sub_1D5C2AFF4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v28 = *(v27 + 36);
      v29 = v19 + v22;
      v30 = v75;
      sub_1D6D491B0(v29, &v75[v28], type metadata accessor for FormatMetadata);
      v31 = v108;
      *(v30 + 6) = v107;
      *(v30 + 7) = v31;
      *(v30 + 8) = v109;
      v32 = v104;
      *(v30 + 2) = v103;
      *(v30 + 3) = v32;
      v33 = v106;
      *(v30 + 4) = v105;
      *(v30 + 5) = v33;
      v34 = v102;
      *v30 = v101;
      *(v30 + 1) = v34;
      sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      return (*(v76 + 56))(&v30[*(v35 + 36)], 1, 1, v77);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v73 = v6;
    v110 = v10;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v38 = *(v37 + 48);
    v39 = v78;
    v40 = v79;
    v41 = v74;
    (*(v79 + 32))(v78, v19, v74);
    sub_1D6D491B0(v19 + v38, v81, type metadata accessor for FormatMetadata);
    v42 = sub_1D72583DC();
    v44 = sub_1D5FD24A4(1uLL, v42, v43);
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v51 = MEMORY[0x1DA6F97E0](v44, v46, v48, v50);
    v53 = v52;
    v54 = v51;

    if (*(v80 + 16) && (v55 = sub_1D5B69D90(v54, v53), (v56 & 1) != 0))
    {
      v72 = v54;
      v57 = v76;
      v58 = v73;
      sub_1D6D49454(*(v80 + 56) + *(v76 + 72) * v55, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v110;
      sub_1D6D491B0(v58, v110, type metadata accessor for DebugFormatCacheFile);
      v60 = v77;
      sub_1D6BE292C(&v100);
      if (swift_dynamicCast())
      {
        nullsub_1();
        v97 = v107;
        v98 = v108;
        v99 = v109;
        v93 = v103;
        v94 = v104;
        v95 = v105;
        v96 = v106;
        v91 = v101;
        v92 = v102;
      }

      else
      {
        sub_1D5EA181C(&v82);
        v107 = v88;
        v108 = v89;
        v109 = v90;
        v103 = v84;
        v104 = v85;
        v105 = v86;
        v106 = v87;
        v101 = v82;
        v102 = v83;
        v97 = v88;
        v98 = v89;
        v99 = v90;
        v93 = v84;
        v94 = v85;
        v95 = v86;
        v96 = v87;
        v91 = v82;
        v92 = v83;
      }

      if (sub_1D5DEA380(&v91) == 1)
      {
        v97 = v107;
        v98 = v108;
        v99 = v109;
        v93 = v103;
        v94 = v104;
        v95 = v105;
        v96 = v106;
        v91 = v101;
        v92 = v102;
        sub_1D6D48668(&v91, &qword_1EC880168, &type metadata for FormatGroup);
        type metadata accessor for DebugFormatManagerError(0);
        sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
        swift_allocError();
        *v62 = v72;
        v62[1] = v53;
        v62[2] = 0x724774616D726F46;
        v62[3] = 0xEB0000000070756FLL;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D6D49218(v59, type metadata accessor for DebugFormatCacheFile);
        sub_1D6D49218(v81, type metadata accessor for FormatMetadata);
        return (*(v79 + 8))(v78, v41);
      }

      else
      {
        (*(v79 + 8))(v78, v41);

        v97 = v107;
        v98 = v108;
        v99 = v109;
        v93 = v103;
        v94 = v104;
        v95 = v105;
        v96 = v106;
        v91 = v101;
        v92 = v102;
        sub_1D5C2AFF4(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
        v64 = v75;
        sub_1D6D491B0(v81, &v75[*(v63 + 36)], type metadata accessor for FormatMetadata);
        v65 = v98;
        *(v64 + 6) = v97;
        *(v64 + 7) = v65;
        *(v64 + 8) = v99;
        v66 = v94;
        *(v64 + 2) = v93;
        *(v64 + 3) = v66;
        v67 = v96;
        *(v64 + 4) = v95;
        *(v64 + 5) = v67;
        v68 = v92;
        *v64 = v91;
        *(v64 + 1) = v68;
        sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
        v70 = *(v69 + 36);
        sub_1D6D491B0(v59, &v64[v70], type metadata accessor for DebugFormatCacheFile);
        return (*(v57 + 56))(&v64[v70], 0, 1, v60);
      }
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v61 = v54;
      v61[1] = v53;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v81, type metadata accessor for FormatMetadata);
      return (*(v40 + 8))(v39, v41);
    }
  }
}

uint64_t sub_1D6D43150@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v78 = a2;
  v83 = a1;
  sub_1D6D4635C(0, &qword_1EDF331B8, type metadata accessor for FormatPackage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v69 - v5;
  v6 = type metadata accessor for FormatPackage(0);
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatCacheFile(0);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v69 - v16;
  v18 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D72585BC();
  v77 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D49454(v83, v29, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6D48490(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
      v32 = *(v31 + 48);
      v33 = v79;
      sub_1D6D491B0(v29, v79, type metadata accessor for FormatPackage);
      sub_1D6D48FEC(0, &qword_1EDF33848, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatObject);
      sub_1D6D491B0(&v29[v32], v33 + *(v34 + 36), type metadata accessor for FormatMetadata);
      sub_1D6D48FEC(0, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
      return (*(v80 + 56))(v33 + *(v35 + 36), 1, 1, v81);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    v71 = v9;
    v72 = v13;
    v73 = v17;
    sub_1D6D48490(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v38 = *(v37 + 48);
    v39 = v77;
    (*(v77 + 32))(v25, v29, v22);
    v83 = v21;
    sub_1D6D491B0(&v29[v38], v21, type metadata accessor for FormatMetadata);
    v74 = v25;
    v40 = sub_1D72583DC();
    v42 = sub_1D5FD24A4(1uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
    v51 = v50;

    v52 = v78;
    v53 = v22;
    if (*(v78 + 16) && (v54 = sub_1D5B69D90(v49, v51), (v55 & 1) != 0))
    {
      v70 = v49;
      v56 = v80;
      v57 = v72;
      sub_1D6D49454(*(v52 + 56) + *(v80 + 72) * v54, v72, type metadata accessor for DebugFormatCacheFile);
      v58 = v73;
      sub_1D6D491B0(v57, v73, type metadata accessor for DebugFormatCacheFile);
      v59 = v81;
      sub_1D6BE292C(&v82);
      v60 = v75;
      if (swift_dynamicCast())
      {
        (*(v39 + 8))(v74, v53);

        (*(v76 + 56))(v60, 0, 1, v6);
        v61 = v60;
        v62 = v71;
        sub_1D6D491B0(v61, v71, type metadata accessor for FormatPackage);
        v63 = v79;
        sub_1D6D491B0(v62, v79, type metadata accessor for FormatPackage);
        sub_1D6D48FEC(0, &qword_1EDF33848, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatObject);
        sub_1D6D491B0(v83, v63 + *(v64 + 36), type metadata accessor for FormatMetadata);
        sub_1D6D48FEC(0, &qword_1EC8954E0, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for DebugFormatObject);
        v66 = *(v65 + 36);
        sub_1D6D491B0(v58, v63 + v66, type metadata accessor for DebugFormatCacheFile);
        return (*(v56 + 56))(v63 + v66, 0, 1, v59);
      }

      (*(v76 + 56))(v60, 1, 1, v6);
      sub_1D6D494BC(v60, &qword_1EDF331B8, type metadata accessor for FormatPackage);
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v68 = v70;
      *(v68 + 8) = v51;
      strcpy((v68 + 16), "FormatPackage");
      *(v68 + 30) = -4864;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6D49218(v58, type metadata accessor for DebugFormatCacheFile);
    }

    else
    {
      type metadata accessor for DebugFormatManagerError(0);
      sub_1D5B71130(&qword_1EC88E370, 255, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
      swift_allocError();
      *v67 = v49;
      v67[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_1D6D49218(v83, type metadata accessor for FormatMetadata);
    return (*(v39 + 8))(v74, v53);
  }
}

uint64_t sub_1D6D43ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A3AC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
      sub_1D6D427B4(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A3AC((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F1A8, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D43E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v22 - v12);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A38C(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
      sub_1D6D41E18(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A38C((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F198, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D441D4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v24 = a2;
  sub_1D6D48FEC(0, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v21 - v9;
  sub_1D6D48FEC(0, &qword_1EC88F188, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for DebugFormatObject);
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D699A33C(0, v15, 0);
    v16 = v26;
    v17 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    while (1)
    {
      sub_1D6D49278(v17, v10, &qword_1EDF2C830, type metadata accessor for FormatFileReference);
      sub_1D6D415E8(v10, v24, v14);
      if (v4)
      {
        break;
      }

      v25 = 0;
      sub_1D6D493F8(v10, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
      v26 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A33C((v18 > 1), v19 + 1, 1);
        v16 = v26;
      }

      *(v16 + 16) = v19 + 1;
      sub_1D6D49310(v14, v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, &qword_1EC88F188, type metadata accessor for DebugFormatObject);
      v17 += v22;
      --v15;
      v4 = v25;
      if (!v15)
      {
        return v16;
      }
    }

    sub_1D6D493F8(v10, &qword_1EDF2C830, type metadata accessor for FormatSnippet, sub_1D5C2C4B8, type metadata accessor for FormatFileReference);
  }

  return v16;
}

uint64_t sub_1D6D44540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A31C(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
      sub_1D6D40CD0(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A31C((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F178, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D448C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v22 - v12);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A2FC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
      sub_1D6D403D8(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A2FC((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F168, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D44C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A2DC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
      sub_1D6D3FA40(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A2DC((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F158, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D44FCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v22 - v12);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A2BC(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
      sub_1D6D3F148(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A2BC((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F148, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D45350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C2AFF4(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  sub_1D5C2AFF4(0, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D699A29C(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v22 = v9;
    while (1)
    {
      sub_1D6D4906C(v16, v9, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
      sub_1D6D3E89C(v9, v25, v13);
      if (v3)
      {
        break;
      }

      v26 = 0;
      v17 = v13;
      sub_1D6D490E0(v9, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D699A29C((v18 > 1), v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
      v13 = v17;
      sub_1D6D4913C(v17, v20, &qword_1EC88F138, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for DebugFormatObject);
      v16 += v23;
      --v14;
      v9 = v22;
      v3 = v26;
      if (!v14)
      {
        return v15;
      }
    }

    sub_1D6D490E0(v9, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  }

  return v15;
}

uint64_t sub_1D6D456D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v81 = sub_1D7261ABC();
  v5 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v6);
  v80 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D7261B2C();
  v8 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v9);
  v78 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D725891C();
  v89 = *(v77 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v77, v12);
  v76 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v88 = &v59 - v15;
  v17 = *a1;
  v16 = a1[1];
  aBlock = 0;
  v91 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73F1B90);
  v60 = v17;
  v93 = *(v17 + 16);
  v18 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v18);

  MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73F1B10);
  v19 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  v20 = *(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v20 <= 2)
  {
    v21 = 0xE600000000000000;
    if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v20 == 1)
      {
        v22 = 0x726564616568;
      }

      else
      {
        v22 = 0x7265746F6F66;
      }
    }

    else
    {
      v22 = 0x74756F79616CLL;
    }
  }

  else if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v20 == 5)
    {
      v21 = 0xE700000000000000;
      v22 = 0x7972617262696CLL;
    }

    else
    {
      v22 = 0x756F72676B636162;
      v21 = 0xEA0000000000646ELL;
    }
  }

  else if (v20 == 3)
  {
    v21 = 0xE700000000000000;
    v22 = 0x6C6C6177796170;
  }

  else
  {
    v21 = 0xE500000000000000;
    v22 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v22, v21);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v23 = *(a2 + 24);
  v75 = *(a2 + 16);
  v74 = v23;
  MEMORY[0x1DA6F9910]();
  v24 = aBlock;
  v25 = v91;
  if (qword_1EC87D498 != -1)
  {
    v57 = aBlock;
    swift_once();
    v24 = v57;
  }

  v87 = qword_1EC9BA710;
  sub_1D5F5EBA0(2, 0, 0, v24, v25);

  v26 = v16;
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_18;
    }

LABEL_46:
    v58 = v61;
    *v61 = v60;
    v58[1] = v26;
  }

  result = sub_1D7263BFC();
  v26 = v16;
  if (!result)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (result >= 1)
  {
    v28 = 0;
    v29 = *(a2 + v19);
    v70 = v26 & 0xC000000000000001;
    v69 = "Successfully fetched ";
    v68 = v89 + 16;
    v67 = v11 + 7;
    v66 = v89 + 32;
    v65 = v92;
    v64 = (v5 + 8);
    v63 = (v8 + 8);
    v62 = v89 + 8;
    v73 = v26;
    v72 = result;
    v71 = v29;
    do
    {
      if (v70)
      {
        v55 = MEMORY[0x1DA6FB460](v28);
      }

      else
      {
        v55 = *(v26 + 8 * v28 + 32);
      }

      v56 = v55;
      aBlock = 0;
      v91 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000022, v69 | 0x8000000000000000);
      if (v29 > 2)
      {
        v30 = 0x756F72676B636162;
        if (v29 == 5)
        {
          v30 = 0x7972617262696CLL;
        }

        v31 = 0xEA0000000000646ELL;
        if (v29 == 5)
        {
          v31 = 0xE700000000000000;
        }

        v32 = 0x6C6C6177796170;
        if (v29 != 3)
        {
          v32 = 0x656D656874;
        }

        v33 = 0xE500000000000000;
        if (v29 == 3)
        {
          v33 = 0xE700000000000000;
        }

        if (v29 <= 4)
        {
          v34 = v32;
        }

        else
        {
          v34 = v30;
        }

        if (v29 <= 4)
        {
          v35 = v33;
        }

        else
        {
          v35 = v31;
        }
      }

      else if (v29)
      {
        if (v29 == 1)
        {
          v34 = 0x726564616568;
        }

        else
        {
          v34 = 0x7265746F6F66;
        }

        v35 = 0xE600000000000000;
      }

      else
      {
        v35 = 0xE600000000000000;
        v34 = 0x74756F79616CLL;
      }

      v86 = v28 + 1;
      MEMORY[0x1DA6F9910](v34, v35);

      MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
      MEMORY[0x1DA6F9910](v75, v74);
      MEMORY[0x1DA6F9910](0x3D746E6F66202CLL, 0xE700000000000000);
      v36 = [v56 description];
      v37 = sub_1D726207C();
      v39 = v38;

      MEMORY[0x1DA6F9910](v37, v39);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v40 = v91;
      v82 = aBlock;
      v41 = v88;
      sub_1D725890C();
      v84 = *(v87 + 40);
      v42 = v89;
      v44 = v76;
      v43 = v77;
      (*(v89 + 16))(v76, v41, v77);
      v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v46 = (v67 + v45) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
      v85 = v56;
      v48 = swift_allocObject();
      (*(v42 + 32))(v48 + v45, v44, v43);
      v49 = (v48 + v46);
      *v49 = v82;
      v49[1] = v40;
      v83 = v40;
      *(v48 + v47) = 0;
      *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v87;
      v92[2] = sub_1D6D497F4;
      v92[3] = v48;
      aBlock = MEMORY[0x1E69E9820];
      v91 = 1107296256;
      v92[0] = sub_1D5B6B06C;
      v92[1] = &block_descriptor_11_4;
      v50 = _Block_copy(&aBlock);

      v28 = v86;

      v51 = v78;
      sub_1D7261AEC();
      v93 = MEMORY[0x1E69E7CC0];
      sub_1D5B71130(&qword_1EDF3A8F0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v52 = MEMORY[0x1E69E7F60];
      sub_1D6D4635C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D5B6D5F8(&qword_1EDF1B560, &qword_1EDF1B570, v52);
      v54 = v80;
      v53 = v81;
      sub_1D7263B6C();
      MEMORY[0x1DA6FA730](0, v51, v54, v50);
      _Block_release(v50);
      (*v64)(v54, v53);
      (*v63)(v51, v79);
      (*(v89 + 8))(v88, v43);

      v26 = v73;
      v29 = v71;
    }

    while (v72 != v28);
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

double sub_1D6D46080(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000002BLL, 0x80000001D73F1B60);
  v3 = *(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v3 <= 2)
  {
    v4 = 0xE600000000000000;
    if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v3 == 1)
      {
        v5 = 0x726564616568;
      }

      else
      {
        v5 = 0x7265746F6F66;
      }
    }

    else
    {
      v5 = 0x74756F79616CLL;
    }
  }

  else if (*(a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0xE700000000000000;
      v5 = 0x7972617262696CLL;
    }

    else
    {
      v4 = 0xEA0000000000646ELL;
      v5 = 0x756F72676B636162;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x6C6C6177796170;
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v5, v4);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  MEMORY[0x1DA6F9910](*(a2 + 16), *(a2 + 24));
  MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(2, 0, 0, 0, 0xE000000000000000);

  return result;
}

uint64_t sub_1D6D462AC()
{

  return v0;
}

uint64_t sub_1D6D46304()
{
  sub_1D6D462AC();

  return swift_deallocClassInstance();
}

void sub_1D6D4635C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6D463C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = a3 < 1;
  v15 = a3 - 1;
  if (v14 || (v16 = sub_1D6E7A118(a1), (v16 & 1) == 0))
  {
    swift_willThrow();
    v24 = a1;
  }

  else
  {
    v27 = a4;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = a5;
    sub_1D725BDCC();
    v28 = v15;
    *(swift_allocObject() + 16) = a5;

    v19 = sub_1D725B92C();
    v29 = a2;
    v20 = v19;
    sub_1D67465AC(0);
    sub_1D725BA8C();

    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    v23 = sub_1D725B92C();
    type metadata accessor for DebugFormatService();
    a2 = sub_1D725BB7C();
  }

  return a2;
}

uint64_t sub_1D6D46670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = a3 < 1;
  v15 = a3 - 1;
  if (v14 || (v16 = sub_1D6E7A118(a1), (v16 & 1) == 0))
  {
    swift_willThrow();
    v24 = a1;
  }

  else
  {
    v27 = a4;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = a5;
    sub_1D725BDCC();
    v28 = v15;
    *(swift_allocObject() + 16) = a5;

    v19 = sub_1D725B92C();
    v29 = a2;
    v20 = v19;
    sub_1D6D48B84(0);
    sub_1D725BA8C();

    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    v23 = sub_1D725B92C();
    type metadata accessor for DebugFormatService();
    a2 = sub_1D725BB7C();
  }

  return a2;
}

uint64_t sub_1D6D46920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = a3 < 1;
  v15 = a3 - 1;
  if (v14 || (v16 = sub_1D6E7A118(a1), (v16 & 1) == 0))
  {
    swift_willThrow();
    v24 = a1;
  }

  else
  {
    v27 = a4;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = a5;
    sub_1D725BDCC();
    v28 = v15;
    *(swift_allocObject() + 16) = a5;

    v19 = sub_1D725B92C();
    v29 = a2;
    v20 = v19;
    sub_1D60CF7A4(0);
    sub_1D725BA8C();

    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    v23 = sub_1D725B92C();
    type metadata accessor for DebugFormatService();
    a2 = sub_1D725BB7C();
  }

  return a2;
}

void *sub_1D6D46BD0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1D6996084(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_1D6D46C1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = a1 + 1;
  v6 = *(type metadata accessor for DebugFormatCacheFile(0) - 8);
  return sub_1D6D491B0(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1, type metadata accessor for DebugFormatCacheFile);
}

double sub_1D6D46D08@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

double sub_1D6D46D28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(char *, uint64_t, __n128)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v23 = a5;
  v12 = a3(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = *a1;
  v17 = a1[1];
  type metadata accessor for FormatJSONDecoder(0);
  swift_allocObject();

  sub_1D5B7BACC(v18);
  a4();
  sub_1D725A69C();

  if (!v7)
  {
    (v23)(v15, a7);
    v20 = v24(0);
    v21 = (a7 + *(v20 + 44));
    *v21 = v16;
    v21[1] = v17;
    *(a7 + *(v20 + 48)) = a2;

    return sub_1D5E3E824(v16, v17);
  }

  return result;
}

void sub_1D6D46E88(uint64_t a1, _OWORD *a2)
{
  v41 = *(a1 + 16);
  if (!v41)
  {
    return;
  }

  v3 = 0;
  v40 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = (v40 + (v3 << 7));
    v6 = v5[5];
    v7 = v5[3];
    v52 = v5[4];
    v53 = v6;
    v8 = v5[5];
    v54[0] = v5[6];
    *(v54 + 9) = *(v5 + 105);
    v9 = v5[1];
    v49[0] = *v5;
    v49[1] = v9;
    v10 = v5[3];
    v12 = *v5;
    v11 = v5[1];
    v50 = v5[2];
    v51 = v10;
    v47[4] = v52;
    v47[5] = v8;
    v48[0] = v5[6];
    *(v48 + 9) = *(v5 + 105);
    v47[0] = v12;
    v47[1] = v11;
    v47[2] = v50;
    v47[3] = v7;
    v13 = a2[5];
    v46[4] = a2[4];
    v46[5] = v13;
    v46[6] = a2[6];
    v14 = a2[1];
    v46[0] = *a2;
    v46[1] = v14;
    v15 = a2[3];
    v46[2] = a2[2];
    v46[3] = v15;
    sub_1D5E9A920(v49, v45);
    FormatResource.loadableFonts(in:)(v46);
    if (v2)
    {
      sub_1D5E9A97C(v49);

      return;
    }

    v17 = v16;
    sub_1D5E9A97C(v49);
    v18 = v17 >> 62;
    if (v17 >> 62)
    {
      v19 = sub_1D7263BFC();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v4 >> 62;
    if (v4 >> 62)
    {
      v38 = sub_1D7263BFC();
      v22 = v38 + v19;
      if (__OFADD__(v38, v19))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v21 + v19;
      if (__OFADD__(v21, v19))
      {
        goto LABEL_33;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v55 = v19;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v20)
      {
        v24 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1D7263BFC();
      goto LABEL_16;
    }

    if (v20)
    {
      goto LABEL_15;
    }

LABEL_16:
    v4 = sub_1D7263DDC();
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v18)
    {
      break;
    }

    v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v26 >> 1) - v25) < v55)
    {
      goto LABEL_38;
    }

    v43 = v3;
    v44 = v4;
    v30 = v24 + 8 * v25 + 32;
    v39 = v24;
    if (v18)
    {
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      sub_1D6D47788(0, &qword_1EDF04A38, &qword_1EDF1AAF0, 0x1E69B5380, sub_1D5B5A498);
      sub_1D6D477E4();
      for (i = 0; i != v27; ++i)
      {
        v32 = sub_1D6D877E0(v47, i, v17);
        v34 = *v33;
        (v32)(v47, 0);
        *(v30 + 8 * i) = v34;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF1AAF0, 0x1E69B5380);
      swift_arrayInitWithCopy();
    }

    v4 = v44;
    v3 = v43;
    if (v55 >= 1)
    {
      v35 = *(v39 + 16);
      v36 = __OFADD__(v35, v55);
      v37 = v35 + v55;
      if (v36)
      {
        goto LABEL_39;
      }

      *(v39 + 16) = v37;
    }

LABEL_4:
    if (++v3 == v41)
    {
      return;
    }
  }

  v28 = v24;
  v29 = sub_1D7263BFC();
  v24 = v28;
  v27 = v29;
  if (v29)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v55 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}