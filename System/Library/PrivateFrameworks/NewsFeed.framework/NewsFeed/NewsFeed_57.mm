uint64_t sub_1D605CC00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D605CC48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFixedColor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FormatFixedColor(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D605CE04()
{
  result = qword_1EC882D10;
  if (!qword_1EC882D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882D10);
  }

  return result;
}

unint64_t sub_1D605CE5C()
{
  result = qword_1EDF14218;
  if (!qword_1EDF14218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14218);
  }

  return result;
}

unint64_t sub_1D605CEB4()
{
  result = qword_1EDF14220;
  if (!qword_1EDF14220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14220);
  }

  return result;
}

unint64_t sub_1D605CF08(uint64_t a1)
{
  sub_1D5BABD20(0, &unk_1EC882E28, MEMORY[0x1E69E6D30]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D5B7CB48(0);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D605F6D4(v11, v7, &unk_1EC882E28, MEMORY[0x1E69E6D30]);
      result = sub_1D5B7C598(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1D7263FCC();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_1D5B7C390(&v7[v10], (v9[7] + 32 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void, __n128), uint64_t (*a5)(void))
{
  v31 = a5;
  v32 = a2;
  v33 = a3;
  sub_1D5C2C454(0, a2, a3);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = (&v30 - v12);
  v14 = *(a1 + 16);
  if (v14)
  {
    a4(0, v11);
    v15 = sub_1D726412C();
    v16 = *(v8 + 48);
    v17 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v18 = *(v9 + 72);

    while (1)
    {
      sub_1D6060844(v17, v13, v32, v33);
      v19 = *v13;
      v20 = v13[1];
      result = sub_1D5B69D90(*v13, v20);
      if (v22)
      {
        break;
      }

      v23 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v15[6] + 16 * result);
      *v24 = v19;
      v24[1] = v20;
      v25 = v15[7];
      v26 = v31(0);
      result = (*(*(v26 - 8) + 32))(v25 + *(*(v26 - 8) + 72) * v23, v13 + v16, v26);
      v27 = v15[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_10;
      }

      v15[2] = v29;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D38C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F7C4(0, &qword_1EDF03FA0, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F85C();
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E69B8];
    while (1)
    {
      sub_1D5BE12C0(v4, v15, &qword_1EC882D70, v6, v5 + 8);
      result = sub_1D6D62B40(v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_1D5B7C390(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D5F4(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF054B0, type metadata accessor for FeedClusteringOptions);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882E90, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF054B0, type metadata accessor for FeedClusteringOptions);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for FeedClusteringOptions(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FeedClusteringOptions);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605D81C(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EC882D80, type metadata accessor for DebugFormatCompilingPackage);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882D88, type metadata accessor for DebugFormatCompilingPackage, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EC882D80, type metadata accessor for DebugFormatCompilingPackage);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for DebugFormatCompilingPackage(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for DebugFormatCompilingPackage);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605DB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F460(0, &unk_1EDF03F60, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605DC44(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF1B640, type metadata accessor for LocalRecipeEntry);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882D18, type metadata accessor for LocalRecipeEntry, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF1B640, type metadata accessor for LocalRecipeEntry);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for LocalRecipeEntry(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for LocalRecipeEntry);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605DE6C(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF05458, type metadata accessor for SportsEventStatusResponseEmbed);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EDF03FC0, type metadata accessor for SportsEventStatusResponseEmbed, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF05458, type metadata accessor for SportsEventStatusResponseEmbed);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for SportsEventStatusResponseEmbed(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for SportsEventStatusResponseEmbed);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E0B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1D5BFFDBC(0, a2, a3, a4, sub_1D5B5534C);
    v6 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      swift_unknownObjectRetain();
      result = sub_1D5B69D90(v8, v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v6[6] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      *(v6[7] + 8 * result) = v10;
      v14 = v6[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v6[2] = v16;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E1BC(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EC882DD8, type metadata accessor for FeedItemDismissalRecord);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882DE0, type metadata accessor for FeedItemDismissalRecord, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EC882DD8, type metadata accessor for FeedItemDismissalRecord);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for FeedItemDismissalRecord(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FeedItemDismissalRecord);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605FBC4(0);
    v3 = sub_1D726412C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D5BAA7D4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &unk_1EDF03F90, sub_1D60603D4, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E60C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D5BBDECC(0, a2, a3, MEMORY[0x1E69E6EC8]);
    v5 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_1D5B69D90(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E720(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D60600F4(0);
  v3 = sub_1D726412C();
  v4 = a1[4];
  v5 = *(a1 + 5);
  result = sub_1D6D631FC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1D6D631FC(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D605E84C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_1D726412C();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);

      result = a3(v9);
      if (v11)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v8;
      v12 = v6[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v6[2] = v14;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605E944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF1A498, &type metadata for FamilyStatus, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605EA68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D6060548(0, &qword_1EDF03F50, &qword_1EDF04A20, &unk_1EDF04550, 0x1E69B6D00);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605EB80(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF054D8, sub_1D605FEA0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EDF04120, sub_1D605FEA0, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF054D8, sub_1D605FEA0);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      sub_1D605FEA0(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, sub_1D605FEA0);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605EDA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5C426D8(0);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D605EEB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001D73C6C50 == a2;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C6C70 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73C6C90 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D73C6CB0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C6CE0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D73C6D00 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001D73C6D20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001D73C6D50 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D73C6D80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C6DB0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C6DD0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C6DF0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D605F2B8(uint64_t a1)
{
  if (!qword_1EDF04140)
  {
    type metadata accessor for WebEmbedDatastoreCacheKey(255);
    sub_1D5B605B8(255, &unk_1EDF1AF40, type metadata accessor for WeakWebEmbedDataSourceManagerObserver, MEMORY[0x1E69E62F8]);
    sub_1D5BABC90(qword_1EDF23AD0, type metadata accessor for WebEmbedDatastoreCacheKey, &unk_1D7343DEC);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04140);
    }
  }
}

uint64_t sub_1D605F394(uint64_t a1, uint64_t a2)
{
  sub_1D5B60444(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D605F3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D605F460(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1D5B49DF8(255, a3, MEMORY[0x1E69E6158], a4);
    v5 = sub_1D726413C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D605F4D4()
{
  if (!qword_1EC882D30)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882D30);
    }
  }
}

void sub_1D605F534()
{
  if (!qword_1EC895680)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895680);
    }
  }
}

void sub_1D605F594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1D726413C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D605F634(uint64_t a1)
{
  if (!qword_1EC882D50)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_1D5BABC90(&qword_1EC87F1F0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1D7273724);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882D50);
    }
  }
}

uint64_t sub_1D605F6D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5BABD20(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D605F740(uint64_t a1)
{
  if (!qword_1EDF03FA8)
  {
    sub_1D605F7C4(255, &qword_1EDF05710, MEMORY[0x1E69E5E28]);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03FA8);
    }
  }
}

void sub_1D605F7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D605F85C()
{
  if (!qword_1EDF1A2B0)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A2B0);
    }
  }
}

void sub_1D605F8C0(uint64_t a1)
{
  if (!qword_1EC882D90)
  {
    sub_1D5B605B8(255, &unk_1EC895710, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E62F8]);
    sub_1D605F95C();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882D90);
    }
  }
}

unint64_t sub_1D605F95C()
{
  result = qword_1EC882DA0;
  if (!qword_1EC882DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882DA0);
  }

  return result;
}

void sub_1D605F9B0(uint64_t a1)
{
  if (!qword_1EC882DC0)
  {
    sub_1D60608B0(255, &qword_1EC882DC8, type metadata accessor for FeedItemDismissalRecord, MEMORY[0x1E69E5E28]);
    sub_1D605FA4C();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882DC0);
    }
  }
}

unint64_t sub_1D605FA4C()
{
  result = qword_1EC882DD0;
  if (!qword_1EC882DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882DD0);
  }

  return result;
}

void sub_1D605FAD4(uint64_t a1)
{
  if (!qword_1EC882E08)
  {
    sub_1D5B605B8(255, &qword_1EC882E10, MEMORY[0x1E69D6B38], MEMORY[0x1E69E62F8]);
    sub_1D605FB70();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882E08);
    }
  }
}

unint64_t sub_1D605FB70()
{
  result = qword_1EC882E18;
  if (!qword_1EC882E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882E18);
  }

  return result;
}

void sub_1D605FBC4(uint64_t a1)
{
  if (!qword_1EC882E20)
  {
    type metadata accessor for Key(255);
    sub_1D5B5A498(255, &qword_1EDF1A720, 0x1E69DB878);
    sub_1D5BABC90(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882E20);
    }
  }
}

void sub_1D605FC80(uint64_t a1)
{
  if (!qword_1EC882E38)
  {
    type metadata accessor for OptionKey(255);
    sub_1D5BABC90(&qword_1EC87F1C0, type metadata accessor for OptionKey, &unk_1D72736E4);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882E38);
    }
  }
}

void sub_1D605FD20(uint64_t a1)
{
  if (!qword_1EDF1A330)
  {
    sub_1D605FDB4(255, &qword_1EDF1A6E0, &qword_1EDF1A6F0, 0x1E69B5218, MEMORY[0x1E69E6720]);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A330);
    }
  }
}

void sub_1D605FDB4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5A498(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D605FE1C(uint64_t a1)
{
  if (!qword_1EDF1A6D0)
  {
    sub_1D605FDB4(255, &qword_1EDF1A6E0, &qword_1EDF1A6F0, 0x1E69B5218, MEMORY[0x1E69E6720]);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A6D0);
    }
  }
}

void sub_1D605FEA0(uint64_t a1)
{
  if (!qword_1EDF18A70)
  {
    sub_1D5B605B8(255, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18A70);
    }
  }
}

void sub_1D605FF3C(uint64_t a1)
{
  if (!qword_1EDF03E80)
  {
    sub_1D5B5A498(255, &qword_1EDF04658, 0x1E69B5588);
    sub_1D605FDB4(255, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, MEMORY[0x1E69E62F8]);
    sub_1D5E2A738(&qword_1EDF04650, &qword_1EDF04658, 0x1E69B5588);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03E80);
    }
  }
}

void sub_1D6060048(uint64_t a1)
{
  if (!qword_1EDF03E70)
  {
    sub_1D5B5A498(255, &unk_1EDF04620, 0x1E69B51A8);
    sub_1D5B9EE48(255);
    sub_1D5E2A738(&unk_1EDF04610, &unk_1EDF04620, 0x1E69B51A8);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03E70);
    }
  }
}

void sub_1D60600F4(uint64_t a1)
{
  if (!qword_1EDF1A2E0)
  {
    sub_1D5B5A498(255, &unk_1EDF1A6B8, 0x1E695DFF0);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A2E0);
    }
  }
}

void sub_1D606016C(uint64_t a1)
{
  if (!qword_1EDF13E20)
  {
    sub_1D5B49DF8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v5[0] = v2;
    v5[1] = sub_1D5B99604(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v5[2] = sub_1D5B99604(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    v5[3] = sub_1D5B99604(&qword_1EDF04A88, MEMORY[0x1E69E6180], MEMORY[0x1E69E6320]);
    v3 = type metadata accessor for FeedGroupKnobsRuleValue(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF13E20);
    }
  }
}

void sub_1D6060284()
{
  if (!qword_1EDF36718)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E6370];
    v4[1] = MEMORY[0x1E69E6390];
    v4[2] = MEMORY[0x1E69E6378];
    v4[3] = MEMORY[0x1E69E6388];
    v2 = type metadata accessor for FeedGroupKnobsRuleValue(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF36718);
    }
  }
}

void sub_1D6060300(uint64_t a1)
{
  if (!qword_1EDF1A490)
  {
    sub_1D5C2BC18(255, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A490);
    }
  }
}

void sub_1D6060408(uint64_t a1)
{
  if (!qword_1EDF04080)
  {
    sub_1D5C2BC18(255, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04080);
    }
  }
}

void sub_1D60604A8(uint64_t a1)
{
  if (!qword_1EDF040A0)
  {
    sub_1D5C2BC18(255, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF040A0);
    }
  }
}

void sub_1D6060548(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1D605FDB4(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    v6 = sub_1D726413C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60606CC(uint64_t a1)
{
  if (!qword_1EDF04090)
  {
    sub_1D5C2BC18(255, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04090);
    }
  }
}

uint64_t sub_1D606076C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  sub_1D5C2BB98(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D60607E0(uint64_t a1)
{
  if (!qword_1EDF1A500)
  {
    sub_1D5E2A540();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A500);
    }
  }
}

uint64_t sub_1D6060844(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C2C454(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D60608B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6060924(uint64_t a1)
{
  sub_1D5B49DF8(0, &qword_1EC882F10, &type metadata for FeedGroupGroupingRulesOverrides, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D60609A4(uint64_t a1)
{
  if (!qword_1EDF03F18)
  {
    sub_1D5C2BC18(255, &qword_1EDF04800, sub_1D5E9DF74, &type metadata for SportsScoreDataVisualizationTrait, MEMORY[0x1E69E64E8]);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03F18);
    }
  }
}

uint64_t FeedManagerLoadSource.hashValue.getter(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6060AE0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5DEA28C(v3, *v1);
  return sub_1D7264A5C();
}

double FeedManager.loadingGate.getter()
{
  sub_1D5B8EF68();

  return result;
}

double FeedManager.loadingSource.getter()
{
  sub_1D5B8EF70();

  return result;
}

void *FeedManager.__allocating_init(feed:database:offlineDatabase:service:serviceConfigFetcher:loadingGate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_1D5B92CA4(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a5);
  (*(*(*(v7 + 88) - 8) + 8))(a4);
  v15 = sub_1D726393C();
  v16 = *(*(v15 - 8) + 8);
  v16(a3, v15);
  v16(a2, v15);
  return v14;
}

uint64_t sub_1D6060CB0(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  sub_1D725BC0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v13 - v10;
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v13 - v10, 1, 1, TupleTypeMetadata2, v9);
  sub_1D5B9786C(v11);
  return (*(v7 + 8))(v11, v6);
}

uint64_t FeedManager.save(snapshot:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10[-v7];
  sub_1D5D10F2C(&v10[-v7]);
  (*(*(v4 + 120) + 64))(a1, v5);
  return (*(v6 + 8))(v8, v5);
}

uint64_t FeedManager.atomicRebuild<A>(context:policy:preCommit:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = a1;
  v81 = a5;
  v73 = a3;
  v74 = a4;
  v82 = *v5;
  v7 = v82;
  v71 = v82[13];
  v67 = v82[10];
  v75 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  v68 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v76 = &v59 - v9;
  v10 = sub_1D725895C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *a2;
  sub_1D725894C();
  v15 = sub_1D725893C();
  v78 = v15;
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v60 = v5[6];
  v18 = v60;
  sub_1D5C384A0(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D5B7E2C0();
  *(v19 + 32) = v15;
  *(v19 + 40) = v17;
  v77 = v17;

  v20 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager atomic rebuild will begin, id=%{public}@", 53, 2, &dword_1D5B42000, v18, v20, v19);

  v21 = sub_1D725B74C();
  v22 = v83;
  v23 = *(v83 + 16);
  v69 = v83 + 16;
  v70 = v23;
  v24 = v76;
  v25 = AssociatedTypeWitness;
  v23(v76, v80, AssociatedTypeWitness);
  v64 = *(v22 + 80);
  v26 = (v64 + 72) & ~v64;
  v27 = swift_allocObject();
  v28 = v67;
  *(v27 + 2) = v67;
  v66 = v7[11];
  *(v27 + 3) = v66;
  v65 = v7[12];
  v29 = v81;
  *(v27 + 4) = v65;
  *(v27 + 5) = v29;
  v30 = v71;
  *(v27 + 6) = v71;
  v62 = v7[14];
  *(v27 + 7) = v62;
  v61 = v7[15];
  *(v27 + 8) = v61;
  v31 = *(v22 + 32);
  v83 = v22 + 32;
  v63 = v31;
  v31(&v27[v26], v24, v25);
  v32 = v30;
  v33 = swift_getAssociatedTypeWitness();
  sub_1D725BDBC();

  v34 = swift_allocObject();
  v35 = v60;
  v34[2] = v29;
  v34[3] = v35;
  v36 = v78;
  v34[4] = v78;
  v37 = v72;
  v34[5] = v77;
  v34[6] = v37;

  v38 = v35;

  v39 = sub_1D725B92C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(0, v33, AssociatedConformanceWitness, v41);
  sub_1D725BA9C();

  v42 = v76;
  v43 = AssociatedTypeWitness;
  v70(v76, v80, AssociatedTypeWitness);
  v44 = (v64 + 112) & ~v64;
  v45 = swift_allocObject();
  v46 = v65;
  v47 = v66;
  *(v45 + 2) = v28;
  *(v45 + 3) = v47;
  v48 = v81;
  *(v45 + 4) = v46;
  *(v45 + 5) = v48;
  v49 = v62;
  *(v45 + 6) = v32;
  *(v45 + 7) = v49;
  *(v45 + 8) = v61;
  *(v45 + 9) = v38;
  v50 = v77;
  *(v45 + 10) = v36;
  *(v45 + 11) = v50;
  v51 = v74;
  *(v45 + 12) = v73;
  *(v45 + 13) = v51;
  v63(&v45[v44], v42, v43);

  v52 = v38;

  v53 = sub_1D725B92C();
  sub_1D725BA9C();

  v54 = swift_allocObject();
  v54[2] = v48;
  v54[3] = v52;
  v54[4] = v78;
  v54[5] = v50;
  v55 = v52;
  v56 = sub_1D725B92C();
  v57 = sub_1D725BADC();

  return v57;
}

uint64_t sub_1D6061608(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  sub_1D5C384A0(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D5B7E2C0();
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;

  v12 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager atomic rebuild did fetch service config, id=%{public}@", 67, 2, &dword_1D5B42000, a3, v12, v11);

  v13 = v10[13];
  v14 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static FeedLocation.topOfFeed(_:)(a1, AssociatedTypeWitness, AssociatedConformanceWitness, &v26);
  v17 = swift_allocObject();
  v17[2] = v14;
  v18 = v10[11];
  v17[3] = v18;
  v17[4] = v10[12];
  v17[5] = a7;
  v17[6] = v13;
  v19 = v10[14];
  v17[7] = v19;
  v17[8] = v10[15];
  v17[9] = a3;
  v17[10] = a4;
  v17[11] = a5;
  v17[12] = a6;

  v20 = a3;

  v21 = FeedServiceType.fetchAll(from:until:)(&v26, sub_1D60656C0, v17, v18, v19);

  return v21;
}

BOOL sub_1D6061868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D5C384A0(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7279970;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D5B7E2C0();
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  v14 = sub_1D726279C();
  v15 = MEMORY[0x1E69E6530];
  v16 = MEMORY[0x1E69E65A8];
  *(v13 + 96) = MEMORY[0x1E69E6530];
  *(v13 + 104) = v16;
  *(v13 + 72) = v14;
  sub_1D725BDDC();
  *(v13 + 136) = v15;
  *(v13 + 144) = v16;
  *(v13 + 112) = v19;
  v17 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager atomic rebuild fetched more groups, id=%{public}@, count=%lu, limit=%lu", 84, 2, &dword_1D5B42000, a2, v17, v13);

  sub_1D725BDDC();
  return v14 >= v19;
}

uint64_t sub_1D6061A40(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v74 = a6;
  v75 = a8;
  v73 = a7;
  v67 = a4;
  v70 = a3;
  v12 = *a2;
  v13 = *(*a2 + 104);
  v14 = *(*a2 + 80);
  v76 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v71 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v68 = &v55 - v17;
  v18 = *a1;
  v58 = v18;
  sub_1D5C384A0(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D5B7E2C0();
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v66 = a5;
  v20 = swift_getAssociatedTypeWitness();
  v56 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = AssociatedConformanceWitness;

  v57 = FeedServiceFetchResult.emittedGroups.getter(v18, v20, AssociatedConformanceWitness);
  v93 = v57;
  v86 = v14;
  v62 = v14;
  v64 = a2;
  v22 = v12[11];
  v87 = v22;
  v61 = v22;
  v23 = v12[12];
  v60 = v23;
  v24 = v76;
  v88 = v23;
  v89 = v76;
  v25 = v13;
  v63 = v13;
  v90 = v13;
  v91 = v12[14];
  v26 = v91;
  v92 = v12[15];
  v27 = v92;
  v59 = v92;
  KeyPath = swift_getKeyPath();
  v78 = v14;
  v79 = v22;
  v80 = v23;
  v81 = v24;
  v82 = v25;
  v83 = v26;
  v84 = v27;
  v85 = KeyPath;
  v29 = v55;
  v30 = v56;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v31 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v33 = v31;
  v34 = MEMORY[0x1E69E6158];
  v35 = v65;
  v37 = sub_1D5B874E4(sub_1D6065574, v77, v33, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v36);
  v65 = v35;

  sub_1D5B582E8(0, &qword_1EDF43BA0, v34, MEMORY[0x1E69E62F8]);
  *(v19 + 96) = v38;
  *(v19 + 104) = sub_1D60655A0();
  *(v19 + 72) = v37;
  v39 = sub_1D7262EDC();
  v40 = v70;
  sub_1D725C30C("Feed manager atomic rebuild finished fetching groups, id=%{public}@, groups=%{public}@", 86, 2, &dword_1D5B42000, v70, v39, v19);

  v41 = v58;
  FeedServiceFetchResult.emittedGroups.getter(v58, v30, v29);
  v74 = v74();

  v42 = v69;
  v43 = v68;
  v44 = AssociatedTypeWitness;
  (*(v69 + 16))(v68, v75, AssociatedTypeWitness);
  v45 = (*(v42 + 80) + 112) & ~*(v42 + 80);
  v46 = swift_allocObject();
  v47 = v61;
  *(v46 + 2) = v62;
  *(v46 + 3) = v47;
  v48 = v76;
  *(v46 + 4) = v60;
  *(v46 + 5) = v48;
  *(v46 + 6) = v63;
  *(v46 + 7) = v26;
  *(v46 + 8) = v59;
  *(v46 + 9) = v40;
  v49 = v66;
  *(v46 + 10) = v67;
  *(v46 + 11) = v49;
  v50 = v64;
  *(v46 + 12) = v41;
  *(v46 + 13) = v50;
  (*(v42 + 32))(&v46[v45], v43, v44);

  v51 = v40;
  v52 = sub_1D725B92C();
  v53 = sub_1D725BA8C();

  return v53;
}

uint64_t sub_1D6062018@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v5 = *(v4 + 16);
  v6 = swift_checkMetadataState();
  result = v5(v6, v4);
  *a3 = result;
  a3[1] = v8;
  return result;
}

void sub_1D606215C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v103 = a8;
  v123 = a7;
  v105 = a1;
  v104 = a9;
  v112 = *a6;
  v14 = v112;
  v120 = type metadata accessor for FeedServiceOptions(0);
  MEMORY[0x1EEE9AC00](v120, v15);
  v119 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v112 + 96);
  v111 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v121 = &v99 - v20;
  sub_1D5B7B3C8(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v118 = &v99 - v23;
  v24 = *(v14 + 104);
  v122 = a6;
  v25 = *(v14 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v125 = v25;
  v126 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113 = swift_getAssociatedTypeWitness();
  v117 = sub_1D726393C();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v28);
  v129 = &v99 - v29;
  sub_1D5B7B3C8(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v128 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v127 = &v99 - v35;
  v115 = sub_1D726393C();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v36);
  v38 = &v99 - v37;
  sub_1D5C384A0(0);
  v106 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D7273AE0;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  v107 = sub_1D5B7E2C0();
  *(v40 + 64) = v107;
  v108 = a3;
  *(v40 + 32) = a3;
  *(v40 + 40) = a4;
  v110 = a4;

  v41 = sub_1D7262EDC();
  v102 = a2;
  sub_1D725C30C("Feed manager atomic rebuild finished pre-commit, id=%{public}@", 62, 2, &dword_1D5B42000, a2, v41, v40);

  v42 = CACurrentMediaTime();
  v109 = a5;
  v43 = sub_1D5D0EA94(a5, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v43 < 0)
  {
    v72 = *(v112 + 88);
    *&v133 = v125;
    *(&v133 + 1) = v72;
    v134 = v17;
    v135 = v126;
    v136 = *(v112 + 112);
    type metadata accessor for FeedManager.Errors(0, &v133);
    swift_getWitnessTable();
    swift_allocError();
    *v73 = 2;
    swift_willThrow();
    return;
  }

  v44 = v43;
  v101 = v17;
  (*(*(AssociatedTypeWitness - 8) + 56))(v38, 1, 1, AssociatedTypeWitness);
  v132 = 4;
  v45 = sub_1D725891C();
  v46 = *(*(v45 - 8) + 56);
  v46(v127, 1, 1, v45);
  v46(v128, 1, 1, v45);
  type metadata accessor for FeedGroupEmitter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v47);

  v48 = sub_1D726275C();
  v49 = sub_1D72627FC();
  v50 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v51 = sub_1D726275C();
  v100 = AssociatedConformanceWitness;
  v52 = v44;
  v53 = sub_1D6F78E04(v51, v50, v49, MEMORY[0x1E69E6540]);

  v54 = sub_1D726275C();
  v55 = sub_1D726275C();
  v56 = v129;
  (*(*(v113 - 8) + 56))();
  v57 = type metadata accessor for FeedContext(0);
  v58 = v118;
  (*(*(v57 - 8) + 56))(v118, 1, 1, v57);
  v134 = 0;
  v133 = 0u;
  v130 = 0;
  v131 = 256;
  v98 = v55;
  v99 = AssociatedTypeWitness;
  v59 = v127;
  v60 = v128;
  v113 = v52;
  v61 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v38, 0, &v132, v127, v128, v48, v53, v54, v98, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v56, v58, &v133, &v130, 0, 0, 0);

  v62 = v61;

  sub_1D5BEFF30(v58, qword_1EDF34CA0, type metadata accessor for FeedContext);
  (*(v116 + 8))(v129, v117);
  v63 = MEMORY[0x1E6969530];
  sub_1D5BEFF30(v60, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5BEFF30(v59, &qword_1EDF45B00, v63);
  (*(v114 + 8))(v38, v115);
  v64 = swift_allocObject();
  FeedCursorContainer.init(cursor:)();
  *(v64 + 16) = v65;
  swift_getAssociatedTypeWitness();
  v66 = swift_getAssociatedConformanceWitness();
  v67 = *(v66 + 8);

  v68 = swift_checkMetadataState();
  v69 = v119;
  v67(v68, v66);
  LOBYTE(v66) = *(v69 + *(v120 + 28));
  sub_1D5B89A08(v69);
  LOBYTE(v133) = v66;
  v70 = v121;
  v71 = v124;
  sub_1D5B98350(&v133, v121);
  if (v71)
  {

    return;
  }

  v74 = v99;
  v75 = v100;
  v76 = v101;
  (*(*(v112 + 120) + 80))(v64 | 0x8000000000000000, 1, v101);
  (*(v111 + 8))(v70, v76);
  v128 = v64;
  v129 = v62;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1D7274590;
  v78 = MEMORY[0x1E69E6158];
  v79 = v107;
  *(v77 + 56) = MEMORY[0x1E69E6158];
  *(v77 + 64) = v79;
  v80 = v110;
  *(v77 + 32) = v108;
  *(v77 + 40) = v80;
  v81 = sub_1D5D0EA94(v109, v74, v75);

  v83 = FeedCursorContainer.rootCursorContainer.getter(v81, v74, v75, v82);

  v84 = sub_1D5BFB900(v83);
  v86 = v85;

  *(v77 + 96) = v78;
  *(v77 + 104) = v79;
  *(v77 + 72) = v84;
  *(v77 + 80) = v86;
  qos_class_self();
  v87 = FCStringFromQoSClass();
  if (!v87)
  {
    goto LABEL_13;
  }

  v88 = v87;
  v89 = sub_1D726207C();
  v91 = v90;

  *(v77 + 136) = v78;
  *(v77 + 144) = v79;
  *(v77 + 112) = v89;
  *(v77 + 120) = v91;
  v92 = (CACurrentMediaTime() - v42) * 1000.0;
  v93 = v105;
  v94 = v104;
  if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v95 = v103;
    if (v92 > -9.22337204e18)
    {
      if (v92 < 9.22337204e18)
      {
        v96 = MEMORY[0x1E69E73D8];
        *(v77 + 176) = MEMORY[0x1E69E7360];
        *(v77 + 184) = v96;
        *(v77 + 152) = v92;
        v97 = sub_1D7262EDC();
        sub_1D725C30C("Feed manager atomic rebuild finished committing to database, id=%{public}@, rootCursorIdentifier=%{public}@, qos=%{public}@, time=%lldms", 136, 2, &dword_1D5B42000, v102, v97, v77);

        (*(*(v95 - 8) + 16))(v94, v93, v95);
        return;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

double sub_1D6062D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5C384A0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7270C10;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  *(v8 + 64) = v10;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);

  sub_1D7263F9C();
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xE000000000000000;
  v11 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager atomic rebuild failed, id=%{public}@, error=%{public}@", 67, 2, &dword_1D5B42000, a3, v11, v8);

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedManager.erase(database:)(NewsFeed::FeedServiceOptions::Database database)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(v4 - 8);
  (MEMORY[0x1EEE9AC00])(database);
  v7 = &v9 - v6;
  v10 = *v8;
  sub_1D5B98350(&v10, &v9 - v6);
  if (!v2)
  {
    (*(*(v3 + 120) + 96))(v4);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t FeedManager.fetchNextGroup(from:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);
  v4 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager fetch next group waiting on loading gate", 53, 2, &dword_1D5B42000, v3, v4, MEMORY[0x1E69E7CC0]);
  sub_1D725BDCC();
  v5 = sub_1D725B74C();
  *(swift_allocObject() + 16) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);

  v9 = sub_1D725BA9C();

  return v9;
}

uint64_t FeedManager.fetchReplaceGroup(from:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  sub_1D725BDCC();
  v4 = sub_1D725B92C();
  v5 = sub_1D725BAAC();

  return v5;
}

double sub_1D6063368@<D0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = *a2;
  v24 = a3;
  v25 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = &v21 - v8;
  v22 = *(v4 + 96);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - v12;
  v14 = *a1;
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedServiceFetchResult.serviceContext.getter(v14, v15, AssociatedConformanceWitness, v9);
  v17 = v27;
  sub_1D5D10F2C(v13);
  if (v17)
  {
    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    v19 = v24;
    (*(v6 + 8))(v9, AssociatedTypeWitness);
    v20 = v22;
    (*(*(v25 + 120) + 80))(v14, 0, v22);
    (*(v23 + 8))(v13, v20);
    *v19 = v14;
  }

  return result;
}

uint64_t sub_1D6063628(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v35 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v13 = &v29.i8[-v12];
  v11.i64[0] = v8;
  v29 = v11;
  v34 = *(v5 + 112);
  v41 = v34;
  v33 = *(v5 + 120);
  v42 = v33;
  v43 = a1;
  v14 = swift_getAssociatedTypeWitness();
  v32 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursor(0, v14, AssociatedConformanceWitness, v15);
  v31 = v6;
  v30 = *(v6 + 88);
  *&v16 = vdupq_laneq_s64(v30, 1).u64[0];
  *(&v16 + 1) = v7;
  v39 = vzip1q_s64(v29, v30);
  v40 = v16;
  sub_1D725BDCC();
  v17 = sub_1D725B92C();
  sub_1D725BA9C();

  v18 = AssociatedTypeWitness;
  (*(v9 + 16))(v13, v38, AssociatedTypeWitness);
  v19 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v30;
  v21 = v33;
  v22 = v34;
  *(v20 + 40) = v7;
  *(v20 + 48) = v22;
  *(v20 + 56) = v21;
  (*(v9 + 32))(v20 + v19, v13, v18);
  v23 = sub_1D725B92C();
  v24 = v32;
  swift_getTupleTypeMetadata2();
  sub_1D725BA9C();

  v25 = sub_1D725B92C();
  type metadata accessor for FeedLocation(0, v24, AssociatedConformanceWitness, v26);
  v27 = sub_1D725BAAC();

  return v27;
}

uint64_t sub_1D60639C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = *a2;
  v39 = v4;
  v9 = v38[13];
  v10 = v38[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v35 = v33 - v14;
  swift_getAssociatedConformanceWitness();
  v37 = a3;
  if (!FeedServiceContextType.canReadFromNetwork()())
  {
    swift_willThrow();
    v32 = a1;
    return a4;
  }

  v34 = a4;
  v15 = a2[6];
  sub_1D5C384A0(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  v40 = 0;
  v41 = 0xE000000000000000;
  v42 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v18 = v40;
  v17 = v41;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D5B7E2C0();
  *(v16 + 32) = v18;
  *(v16 + 40) = v17;
  v19 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager preparing read from the network; database returned with error=%{public}@", 85, 2, &dword_1D5B42000, v15, v19, v16);

  LOBYTE(v40) = 2;
  sub_1D5C44F30();
  v20 = sub_1D725AE7C();
  result = MEMORY[0x1DA6F2570](v20);
  v33[1] = result;
  if (result)
  {
    v33[0] = sub_1D725B74C();
    v22 = v35;
    v23 = v36;
    (*(v36 + 16))(v35, v37, AssociatedTypeWitness);
    v24 = (*(v23 + 80) + 72) & ~*(v23 + 80);
    v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v10;
    v27 = v38;
    *(v26 + 3) = v38[11];
    *(v26 + 4) = v27[12];
    *(v26 + 5) = v9;
    *(v26 + 6) = v27[14];
    *(v26 + 7) = v27[15];
    *(v26 + 8) = a2;
    (*(v23 + 32))(&v26[v24], v22, AssociatedTypeWitness);
    *&v26[v25] = v34;
    v28 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedLocation(0, v28, AssociatedConformanceWitness, v30);

    v31 = v33[0];
    a4 = sub_1D725BA7C();

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6063D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v12 = &v23 - v11;
  v23 = &v23 - v11;
  v25 = (*(v6 + 48))(a3, v7, v6, v10);
  (*(v8 + 16))(v12, a3, AssociatedTypeWitness);
  v13 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v7;
  *(v14 + 3) = v5[11];
  *(v14 + 4) = v5[12];
  *(v14 + 5) = v6;
  *(v14 + 6) = v5[14];
  v15 = v23;
  v16 = v24;
  *(v14 + 7) = v5[15];
  *(v14 + 8) = v16;
  (*(v8 + 32))(&v14[v13], v15, AssociatedTypeWitness);

  v17 = sub_1D725B92C();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedLocation(0, v18, AssociatedConformanceWitness, v20);
  v21 = sub_1D725BA8C();

  return v21;
}

void sub_1D6064060(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v23 = a3;
  v24 = a1;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v21 - v9;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursorTracker(255, v11, AssociatedConformanceWitness, v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = swift_allocBox();
  v17 = v16;
  v18 = *(TupleTypeMetadata2 + 48);
  (*(*(v11 - 8) + 16))(v16, v24, v11);
  swift_beginAccess();
  v19 = *(a2 + 16);
  if ((~v19 & 0xF000000000000007) != 0)
  {
    sub_1D6151884(v19);
  }

  else
  {
    (*(v7 + 16))(v10, v23, AssociatedTypeWitness);
    v20 = FeedCursorTracker.__allocating_init(context:)(v10);
  }

  *(v17 + v18) = v20;
  *v25 = v15;
}

uint64_t *sub_1D6064270(void *a1, uint64_t *a2, uint64_t a3)
{
  v20 = a1;
  v6 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceError(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  if (v19 != 6 || v15 != 1 || v17 | v16 | v18)
  {
    sub_1D5EAD330(v15, v16, v17, v18, v19);
    goto LABEL_8;
  }

  swift_beginAccess();
  v10 = *(a3 + 16);
  if ((~v10 & 0xF000000000000007) == 0)
  {
LABEL_8:
    swift_willThrow();
    v13 = a1;
    return a2;
  }

  v11 = a2[6];

  v12 = sub_1D7262EDC();
  sub_1D725C30C("Feed manager loading from cache since refresh yielded no new content", 68, 2, &dword_1D5B42000, v11, v12, MEMORY[0x1E69E7CC0]);
  sub_1D5C45010(v10, &v20);
  a2 = sub_1D5C45170(&v20);
  sub_1D5BD9F54(v10);

  return a2;
}

uint64_t sub_1D6064458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return FeedCursorContainer.cursor()(a1, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
}

uint64_t sub_1D60644EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[6];
  v4 = *a2;
  v5 = sub_1D7262EDC();
  v6 = sub_1D725C30C("Feed manager waiting on loading gate for refreshing feed location", 65, 2, &dword_1D5B42000, v3, v5, MEMORY[0x1E69E7CC0]);
  result = MEMORY[0x1DA6F2570](v6);
  if (result)
  {
    v8 = sub_1D725B74C();
    v9 = swift_allocObject();
    v9[2] = v4[10];
    v9[3] = v4[11];
    v9[4] = v4[12];
    v9[5] = v4[13];
    v9[6] = v4[14];
    v9[7] = v4[15];
    v9[8] = v2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedCursor(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);

    v13 = sub_1D725BA8C();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D606469C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *(*a2 + 104);
  v6 = *(*a2 + 80);
  (*(v5 + 48))(a3, v6, v5);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v3[11];
  v7[4] = v3[12];
  v7[5] = v5;
  v7[6] = v3[14];
  v7[7] = v3[15];
  v7[8] = v4;

  v8 = sub_1D725B92C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursor(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  swift_getTupleTypeMetadata2();
  v12 = sub_1D725BA8C();

  return v12;
}

double sub_1D6064880@<D0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = *(*a2 + 80);
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  *a3 = a2;
  (*(*(v6 - 8) + 16))(&a3[v7], a1, v6);

  return result;
}

uint64_t sub_1D6064958@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a1;
  v55 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v47 = AssociatedConformanceWitness;
  v52 = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v51 = v44 - v9;
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  v49 = v10;
  v50 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v44 - v13;
  v16 = type metadata accessor for FeedCursor(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v19);
  v21 = v44 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v44 - v25;
  v27 = a2[6];
  v28 = sub_1D7262EDC();
  v29 = sub_1D725C30C("Feed manager fetched latest config", 34, 2, &dword_1D5B42000, v27, v28, MEMORY[0x1E69E7CC0]);
  (*(v18 + 16))(v21, v48, TupleTypeMetadata2, v29);
  v30 = *v21;
  v31 = *(TupleTypeMetadata2 + 48);
  v45 = v22;
  (*(v22 + 32))(v26, &v21[v31], AssociatedTypeWitness);
  strcpy(v56, "cursor serviceConfig strategy trigger ");
  v57 = v16;
  v58 = AssociatedTypeWitness;
  v59 = &type metadata for FeedRefreshStrategy;
  v60 = &type metadata for FeedRefreshTrigger;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v48 = swift_allocBox();
  v34 = v33;
  v35 = TupleTypeMetadata[12];
  v44[1] = TupleTypeMetadata[16];
  v46 = TupleTypeMetadata[20];
  *v33 = v30;
  (*(v22 + 16))(v33 + v35, v26, AssociatedTypeWitness);
  v36 = v47;
  v37 = *(v47 + 64);

  v37(AssociatedTypeWitness, v36);
  v38 = v51;
  v39 = v49;
  (*(v52 + 48))(v49, v52);
  (*(v50 + 8))(v14, v39);
  v40 = *(*v30 + 232);
  v41 = v53;
  v42 = swift_getAssociatedConformanceWitness();
  (*(v42 + 32))(v30 + v40, v41, v42);

  (*(v54 + 8))(v38, v41);
  result = (*(v45 + 8))(v26, AssociatedTypeWitness);
  *(v34 + v46) = 1;
  *v55 = v48 | 0x4000000000000000;
  return result;
}

char *FeedManager.deinit()
{
  v1 = *v0;

  v2 = *(v0 + 6);

  v3 = *(*v0 + 152);
  v4 = sub_1D726393C();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v3], v4);
  v5(&v0[*(*v0 + 160)], v4);
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 168)]);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 176)]);

  return v0;
}

uint64_t FeedManager.__deallocating_deinit()
{
  FeedManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D60652BC(unint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1D6061A40(a1, a2, *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2 + ((*(v6 + 80) + 112) & ~*(v6 + 80)), v5);
}

uint64_t sub_1D6065374()
{
  result = MEMORY[0x1DA6F2570]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D60655A0()
{
  result = qword_1EDF1AF20;
  if (!qword_1EDF1AF20)
  {
    sub_1D5B582E8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AF20);
  }

  return result;
}

void sub_1D606561C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  sub_1D606215C(a1, *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2 + ((*(v6 + 80) + 112) & ~*(v6 + 80)), v5, a2);
}

uint64_t sub_1D6065704(void *a1, void *a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  return sub_1D60639C4(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D60657E0(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  return sub_1D6063D9C(a1, *(v1 + 64), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1D6065A14@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 64);

  return result;
}

void *FeedDismissingManager.__allocating_init(storage:name:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = swift_allocObject();
  v8[7] = 0;
  v8[8] = 0;
  v8[9] = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v8[10] = sub_1D725A7AC();
  sub_1D5B63F14(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  return v8;
}

void *FeedDismissingManager.init(storage:name:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v3[10] = sub_1D725A7AC();
  sub_1D5B63F14(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;

  return v3;
}

Swift::Void __swiftcall FeedDismissingManager.dismiss(dismissingIdentifier:)(Swift::String dismissingIdentifier)
{
  v2 = v1;
  object = dismissingIdentifier._object;
  countAndFlagsBits = dismissingIdentifier._countAndFlagsBits;
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF1BB50 != -1)
  {
LABEL_28:
    swift_once();
  }

  v10 = qword_1EDFFC828;
  sub_1D5C384A0(0);
  v39 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D5B7E2C0();
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  v15 = v2[7];
  v16 = v2[8];
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  if (!v16)
  {
    v15 = 0;
  }

  v17 = 0xE000000000000000;
  if (v16)
  {
    v17 = v16;
  }

  v38 = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v17;

  v18 = sub_1D7262EDC();
  v40 = v10;
  sub_1D725C30C("Dismiss feed item with dismissingIdentifier=%{public}@ with name=%{public}@", 75, 2, &dword_1D5B42000, v10, v18, v12);

  sub_1D5B68374((v2 + 2), v44);
  v19 = v45;
  v20 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  sub_1D725890C();
  (*(v20 + 8))(countAndFlagsBits, object, v9, v19, v20);
  (*(v6 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v5 = v2[10];
  sub_1D725A76C();
  swift_beginAccess();
  countAndFlagsBits = v2[9];
  object = *(countAndFlagsBits + 16);

  if (object)
  {
    v21 = 0;
    v6 = countAndFlagsBits + 32;
    v22 = object - 1;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = v21;
      while (1)
      {
        if (v23 >= *(countAndFlagsBits + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v41 = *(v6 + 16 * v23);
        v21 = (v23 + 1);

        (v41)(&v42, v24);
        if (v42)
        {
          break;
        }

        ++v23;
        if (object == v21)
        {
          goto LABEL_20;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v9;
      v36 = v22;
      v37 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6998778(0, *(v9 + 2) + 1, 1);
        v9 = v43;
      }

      v26 = v41;
      v28 = *(v9 + 2);
      v27 = *(v9 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_1D6998778((v27 > 1), v28 + 1, 1);
        v26 = v41;
        v9 = v43;
      }

      *(v9 + 2) = v28 + 1;
      *&v9[16 * v28 + 32] = v26;
      v22 = v36;
      v5 = v37;
    }

    while (v36 != v23);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  v2[9] = v9;

  if (!*(v2[9] + 16))
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D7273AE0;
    v31 = v2[7];
    v30 = v2[8];
    v32 = v38;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = v32;
    if (!v30)
    {
      v31 = 0;
    }

    v33 = 0xE000000000000000;
    if (v30)
    {
      v33 = v30;
    }

    *(v29 + 32) = v31;
    *(v29 + 40) = v33;

    v34 = sub_1D7262EDC();
    sub_1D725C30C("Dismissed feed item but layout rebuild closure not setup with name=%{public}@", 77, 2, &dword_1D5B42000, v40, v34, v29);
  }

  sub_1D725A77C();
}

uint64_t sub_1D6066018@<X0>(void (*a2)(uint64_t, BOOL)@<X1>, char *a4@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
    }

    a2(v7, Strong != 0);
    result = swift_unknownObjectRelease();
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

void *FeedDismissingManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t FeedDismissingManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall EmptyFeedDismissingManager.dismiss(dismissingIdentifier:)(Swift::String dismissingIdentifier)
{
  object = dismissingIdentifier._object;
  countAndFlagsBits = dismissingIdentifier._countAndFlagsBits;
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDFFC828;
  sub_1D5C384A0(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = countAndFlagsBits;
  *(v4 + 40) = object;

  v5 = sub_1D7262EDC();
  sub_1D725C30C("Dismiss feed item with dismissingIdentifier=%{public}@ but no implementation", 76, 2, &dword_1D5B42000, v3, v5, v4);
}

double sub_1D606628C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDFFC828;
  sub_1D5C384A0(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D5B7E2C0();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_1D7262EDC();
  sub_1D725C30C("Dismiss feed item with dismissingIdentifier=%{public}@ but no implementation", 76, 2, &dword_1D5B42000, v4, v6, v5);

  return result;
}

uint64_t sub_1D60663A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemDismissalRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D606640C(uint64_t a1)
{
  v2 = type metadata accessor for FeedItemDismissalRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s8NewsFeed18FormatGroupBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v73[0] = *a1;
  v73[1] = v3;
  v73[2] = v4;
  v73[3] = v5;
  v73[4] = v6;
  v73[5] = v7;
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v77 = v11;
  v78 = v12;
  v79 = v13;
  v80 = v14;
  v81 = v15;
  switch(v8 >> 4)
  {
    case 1u:
      if ((v15 & 0xF0) == 0x10)
      {
        goto LABEL_26;
      }

      goto LABEL_42;
    case 2u:
      if ((v15 & 0xF0) != 0x20)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    case 3u:
      if ((v15 & 0xF0) == 0x30)
      {
        v66 = v2;
        v67 = v3;
        LOWORD(v68) = v4;
        v59 = v9;
        v60 = v10;
        LOWORD(v61) = v11;
        v55 = v11;
        v56 = v12;
        v51 = v4;
        v52 = v7;
        v57 = v13;
        v58 = v14;
        v53 = v6;
        v54 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v50 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v55, v56, v57, v58, v54, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v17 = _s8NewsFeed20FormatWeatherBindingV4TextO2eeoiySbAE_AEtFZ_0(&v66, &v59);
        goto LABEL_16;
      }

      v32 = v2;
      v33 = v3;
      v34 = v11;
      v35 = v4;
      v36 = v12;
      v37 = v4 >> 8;
      v38 = v15;
      v39 = v14;
      v40 = v13;
      sub_1D5E1DCA8(v32, v33, v35, v37);
      v11 = v34;
      v12 = v36;
      v13 = v40;
      v14 = v39;
      LOBYTE(v15) = v38;
      goto LABEL_42;
    case 4u:
      if ((v15 & 0xF0) != 0x40)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    case 5u:
      if ((v15 & 0xF0) != 0x50)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    case 6u:
      if ((v15 & 0xF0) == 0x60)
      {
        goto LABEL_26;
      }

      goto LABEL_42;
    case 7u:
      if ((v15 & 0xF0) != 0x70)
      {
        goto LABEL_42;
      }

      sub_1D60670B8(v73);
      if (v2 > 0xFBu)
      {
        return v9 > 0xFBu;
      }

      if (v9 > 0xFBu)
      {
        return 0;
      }

      if ((v2 & 0x80) == 0)
      {
        return (v9 & 0x80) == 0 && ((v9 ^ v2) & 0x7F) == 0;
      }

      return (v9 & 0x80) != 0 && ((v9 ^ v2) & 0x7F) == 0;
    case 8u:
      if ((v15 & 0xF0) != 0x80)
      {
        goto LABEL_42;
      }

      sub_1D60670B8(v73);
      if (!(v3 >> 6))
      {
        if (v10 > 0x3Fu)
        {
          return 0;
        }

        return v9 == v2;
      }

      if (v3 >> 6 == 1)
      {
        if ((v10 & 0xC0) != 0x40)
        {
          return 0;
        }

        return v9 == v2;
      }

      return (v10 & 0xC0) == 0x80 && v2 == v9 && ((v10 ^ v3) & 0x3F) == 0;
    case 9u:
      v19 = v8 & 0xF;
      if ((v15 & 0xF0) == 0x90)
      {
        v66 = v2;
        v67 = v3;
        v68 = v4;
        v69 = v5;
        v70 = v6;
        v71 = v7;
        v72 = v8 & 0xF;
        v59 = v9;
        v60 = v10;
        v61 = v11;
        v62 = v12;
        v63 = v13;
        v64 = v14;
        v65 = v15 & 0xF;
        v55 = v11;
        v56 = v12;
        v51 = v4;
        v52 = v7;
        v57 = v13;
        v58 = v14;
        v53 = v6;
        v54 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v50 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v55, v56, v57, v58, v54, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v17 = _s8NewsFeed19FormatPuzzleBindingV4TextO2eeoiySbAE_AEtFZ_0(&v66, &v59);
        goto LABEL_16;
      }

      v29 = v2;
      v30 = v3;
      v23 = v11;
      v31 = v4;
      v25 = v12;
      v26 = v13;
      v27 = v14;
      v28 = v15;
      sub_1D5E1DCD8(v29, v30, v31, v5, v6, v7, v19);
      goto LABEL_39;
    case 0xAu:
      if ((v15 & 0xF0) != 0xA0)
      {
        goto LABEL_42;
      }

      sub_1D60670B8(v73);
      if (v3)
      {
        if (v2)
        {
          if ((v10 & 1) == 0)
          {
            return 0;
          }

          return v9 != 0;
        }

        else
        {
          if ((v10 & 1) == 0)
          {
            return 0;
          }

          return v9 == 0;
        }
      }

      else
      {
        return !(v10 & 1 | (v2 != v9));
      }

    case 0xBu:
      if ((v15 & 0xF0) != 0xB0)
      {
        goto LABEL_42;
      }

LABEL_26:
      sub_1D60670B8(v73);
      return v9 == v2;
    case 0xCu:
      if ((v15 & 0xF0) == 0xC0)
      {
        v66 = v2;
        v67 = v3;
        v68 = v4;
        v69 = v5;
        v70 = v6;
        v71 = v7;
        v59 = v9;
        v60 = v10;
        v61 = v11;
        v62 = v12;
        v63 = v13;
        v64 = v14;
        v55 = v11;
        v56 = v12;
        v51 = v4;
        v52 = v7;
        v57 = v13;
        v58 = v14;
        v53 = v6;
        v54 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v50 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v55, v56, v57, v58, v54, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v17 = _s8NewsFeed19FormatRecipeBindingV4TextO2eeoiySbAE_AEtFZ_0(&v66, &v59, v18);
        goto LABEL_16;
      }

      v21 = v2;
      v22 = v3;
      v23 = v11;
      v24 = v4;
      v25 = v12;
      v26 = v13;
      v27 = v14;
      v28 = v15;
      sub_1D5E1DCE8(v21, v22, v24, v5, v6, v7);
LABEL_39:
      v11 = v23;
      v12 = v25;
      v13 = v26;
      v14 = v27;
      LOBYTE(v15) = v28;
      goto LABEL_42;
    default:
      if (v15 <= 0xF)
      {
        v66 = v2;
        v67 = v3;
        v68 = v4;
        v69 = v5;
        v70 = v6;
        v71 = v7;
        v72 = v8;
        v59 = v9;
        v60 = v10;
        v61 = v11;
        v62 = v12;
        v63 = v13;
        v64 = v14;
        v65 = v15;
        v55 = v11;
        v56 = v12;
        v51 = v4;
        v52 = v7;
        v57 = v13;
        v58 = v14;
        v53 = v6;
        v54 = v15;
        sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v50 = v5;
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v2, v3, v4, v5, v53, v7, v8, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        sub_1D5E1E0D4(v9, v10, v55, v56, v57, v58, v54, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
        v17 = _s8NewsFeed21FormatHeadlineBindingV4TextO2eeoiySbAE_AEtFZ_0(&v66, &v59, v16);
LABEL_16:
        v20 = v17;
        sub_1D60670B8(v73);
        sub_1D5E1E0D4(v9, v10, v55, v56, v57, v58, v54, sub_1D5E1E074, sub_1D5E1E134, sub_1D5E1E164, sub_1D5E1E174);
        sub_1D5E1E0D4(v2, v3, v51, v50, v53, v52, v8, sub_1D5E1E074, sub_1D5E1E134, sub_1D5E1E164, sub_1D5E1E174);
        return v20;
      }

      v41 = v2;
      v42 = v3;
      v43 = v11;
      v44 = v4;
      v45 = v12;
      v46 = v13;
      v47 = v14;
      v48 = v15;
      sub_1D5E1DC48(v41, v42, v44, v5, v6, v7, v8);
      v11 = v43;
      v12 = v45;
      v13 = v46;
      v14 = v47;
      LOBYTE(v15) = v48;
LABEL_42:
      sub_1D5E1E0D4(v9, v10, v11, v12, v13, v14, v15, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
      sub_1D60670B8(v73);
      return 0;
  }
}

unint64_t sub_1D6066F28(uint64_t a1)
{
  result = sub_1D6066F50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6066F50()
{
  result = qword_1EC882F18;
  if (!qword_1EC882F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F18);
  }

  return result;
}

unint64_t sub_1D6066FA4(void *a1)
{
  a1[1] = sub_1D5CA084C();
  a1[2] = sub_1D6066FDC();
  result = sub_1D6067030();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6066FDC()
{
  result = qword_1EDF104F0;
  if (!qword_1EDF104F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF104F0);
  }

  return result;
}

unint64_t sub_1D6067030()
{
  result = qword_1EC882F20;
  if (!qword_1EC882F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F20);
  }

  return result;
}

uint64_t sub_1D60670B8(uint64_t a1)
{
  sub_1D6067114();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6067114()
{
  if (!qword_1EC882F28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882F28);
    }
  }
}

uint64_t sub_1D60671A4()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6067240()
{
  sub_1D7264A0C();
  FormatFontTrait.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D60672A8(uint64_t a1)
{
  FormatFontTrait.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D606730C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatFontTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6067380(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  for (i = v4 & *(result + 56); i; v2 = v2 | dword_1D7294830[*(*(result + 48) + (v7 | (v6 << 6)))])
  {
    v6 = v1;
LABEL_9:
    v7 = __clz(__rbit64(i));
    i &= i - 1;
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return v2;
    }

    i = *(result + 56 + 8 * v6);
    ++v1;
    if (i)
    {
      v1 = v6;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static FormatFontTrait.< infix(_:_:)()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D60674C0(uint64_t a1)
{
  *(a1 + 8) = sub_1D60674F0();
  result = sub_1D5CDA2A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D60674F0()
{
  result = qword_1EC882F30;
  if (!qword_1EC882F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F30);
  }

  return result;
}

unint64_t sub_1D6067544(uint64_t a1)
{
  result = sub_1D606756C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D606756C()
{
  result = qword_1EC882F38;
  if (!qword_1EC882F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F38);
  }

  return result;
}

unint64_t sub_1D60675C0(void *a1)
{
  a1[1] = sub_1D5C48A1C();
  a1[2] = sub_1D5C48A70();
  result = sub_1D5C8ACDC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D60675F8()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6067694()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D6067744()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D60677F4()
{
  v0 = FormatFontTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatFontTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t FormatOptionsNodeStatementOption.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatOptionsNodeStatementOption.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D72646CC();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1D6067960(uint64_t a1)
{
  result = sub_1D6067988();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6067988()
{
  result = qword_1EC882F40;
  if (!qword_1EC882F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F40);
  }

  return result;
}

unint64_t sub_1D60679DC(void *a1)
{
  a1[1] = sub_1D6067A14();
  a1[2] = sub_1D6067A68();
  result = sub_1D6067ABC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6067A14()
{
  result = qword_1EDF1EF88;
  if (!qword_1EDF1EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EF88);
  }

  return result;
}

unint64_t sub_1D6067A68()
{
  result = qword_1EDF081E0;
  if (!qword_1EDF081E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081E0);
  }

  return result;
}

unint64_t sub_1D6067ABC()
{
  result = qword_1EC882F48;
  if (!qword_1EC882F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F48);
  }

  return result;
}

uint64_t sub_1D6067B40(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D72646CC();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

double sub_1D6067BA0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (qword_1EDF1AD88 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDF1AD90;
  v5 = v3 ^ 1u;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;

  sub_1D6C4D24C(v6 | 0x3000000000000000);

  return result;
}

void sub_1D6067C78(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatOption(0);
  v12 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v13);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v41 - v17);
  v19 = *v2;
  v20 = *(v2 + 8);
  LODWORD(v45) = *(v2 + 16);
  v42 = a1;
  sub_1D606818C(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920(0);
    v22 = *(v21 + 48);

    FormatOptionCollection.subscript.getter(v19, v20, v11);

    sub_1D5EB9994(0);
    (*(*(v23 - 8) + 8))(&v7[v22], v23);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v19, v20, v11);
  }

  v24 = v46;
  if ((*(v12 + 48))(v11, 1, v46) == 1)
  {
    sub_1D5D280B8(v11, sub_1D5E04C00);
    type metadata accessor for FormatLayoutError(0);
    sub_1D5D285FC();
    v25 = swift_allocError();
    *v26 = v19;
    v26[1] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    sub_1D5D247E0(v11, v18);
    v28 = *v18;
    v27 = v18[1];

    v29 = v43;
    sub_1D6B75E28(v42, &v47);
    if (!v29)
    {
      v31 = v47;
      v32 = v41;
      *v41 = v28;
      *(v32 + 1) = v27;
      *(v32 + 2) = v31;
      *(v32 + 3) = 1;
      v33 = *(v24 + 28);
      v34 = type metadata accessor for FormatVersionRequirement(0);
      v45 = v28;
      v35 = v34;
      v36 = *(*(v34 - 8) + 56);
      v36(&v32[v33], 1, 1, v34);
      v46 = *(v32 + 2);

      sub_1D5D280B8(v32, type metadata accessor for FormatOption);
      v37 = type metadata accessor for FormatOptionsNodeStatementResult(0);
      v38 = v44;
      v36(v44 + *(v37 + 24), 1, 1, v35);
      sub_1D5C3C480();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      *(inited + 32) = v45;
      *(inited + 40) = v27;

      v40 = sub_1D5BFAC38(inited);
      swift_setDeallocating();
      sub_1D5BFB68C(inited + 32);
      sub_1D5D280B8(v18, type metadata accessor for FormatOption);
      *v38 = v46;
      v38[1] = v40;
      (*(*(v37 - 8) + 56))(v38, 0, 1, v37);
      return;
    }

    sub_1D5D280B8(v18, type metadata accessor for FormatOption);
    v25 = v29;
  }

  if (v45)
  {
    swift_willThrow();
  }

  else
  {
    v30 = type metadata accessor for FormatOptionsNodeStatementResult(0);
    (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
  }
}

uint64_t sub_1D606818C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FormatSourceMapContext(uint64_t a1)
{
  result = qword_1EDF27FC0;
  if (!qword_1EDF27FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D606823C(uint64_t a1)
{
  result = type metadata accessor for FormatNodeContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FormatDecorationContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D60682B0()
{
  v1 = v0;
  v2 = type metadata accessor for FormatDecorationContext(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatSourceMapContext(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60683F4(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6068458(v9, v5);
    sub_1D725A7EC();
    v10 = v13;
    sub_1D60684BC(v5);
  }

  else
  {
    sub_1D725A7EC();

    return v13;
  }

  return v10;
}

uint64_t sub_1D60683F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSourceMapContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6068458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDecorationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60684BC(uint64_t a1)
{
  v2 = type metadata accessor for FormatDecorationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatDerivedDataWarning.deinit()
{
  sub_1D6068574(v0 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_file);

  return v0;
}

uint64_t sub_1D6068574(uint64_t a1)
{
  v2 = type metadata accessor for FormatFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatDerivedDataWarning.__deallocating_deinit()
{
  sub_1D6068574(v0 + OBJC_IVAR____TtC8NewsFeed24FormatDerivedDataWarning_file);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatDerivedDataWarning(uint64_t a1)
{
  result = qword_1EC882F50;
  if (!qword_1EC882F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6068698(uint64_t a1)
{
  result = type metadata accessor for FormatFile(319);
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

uint64_t FormatButtonNodeState.rawValue.getter()
{
  v1 = 0x64656C6261736964;
  v2 = 0x6867696C68676968;
  if (*v0 != 2)
  {
    v2 = 0x64657463656C6573;
  }

  if (*v0)
  {
    v1 = 0x64657375636F66;
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

void sub_1D60687DC(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656C6261736964;
  v4 = 0xEB00000000646574;
  v5 = 0x6867696C68676968;
  if (*v1 != 2)
  {
    v5 = 0x64657463656C6573;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x64657375636F66;
    v2 = 0xE700000000000000;
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

uint64_t sub_1D6068880()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D606894C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t FormatButtonNodeState.description.getter()
{
  v1 = 0x64656C6261736944;
  v2 = 0x6867696C68676948;
  if (*v0 != 2)
  {
    v2 = 0x64657463656C6553;
  }

  if (*v0)
  {
    v1 = 0x64657375636F46;
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

uint64_t sub_1D6068AA0()
{
  v1 = 0x64656C6261736944;
  v2 = 0x6867696C68676948;
  if (*v0 != 2)
  {
    v2 = 0x64657463656C6553;
  }

  if (*v0)
  {
    v1 = 0x64657375636F46;
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

uint64_t _s8NewsFeed21FormatButtonNodeStateO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x64656C6261736964;
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0x6867696C68676968;
      v5 = 0xEB00000000646574;
    }

    else
    {
      v5 = 0xE800000000000000;
      v4 = 0x64657463656C6573;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x64657375636F66;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6867696C68676968;
  v8 = 0xEB00000000646574;
  if (*a2 != 2)
  {
    v7 = 0x64657463656C6573;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 0x64657375636F66;
    v6 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (*a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D6068CA4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6068CD4();
  result = sub_1D5C95D64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6068CD4()
{
  result = qword_1EC882F60;
  if (!qword_1EC882F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F60);
  }

  return result;
}

unint64_t sub_1D6068D2C()
{
  result = qword_1EC882F68;
  if (!qword_1EC882F68)
  {
    sub_1D6068D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F68);
  }

  return result;
}

void sub_1D6068D84()
{
  if (!qword_1EDF04E30)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04E30);
    }
  }
}

unint64_t sub_1D6068DD4(uint64_t a1)
{
  result = sub_1D6068DFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6068DFC()
{
  result = qword_1EC882F70;
  if (!qword_1EC882F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F70);
  }

  return result;
}

unint64_t sub_1D6068E50(void *a1)
{
  a1[1] = sub_1D5C95C0C();
  a1[2] = sub_1D5C95C60();
  result = sub_1D5C95D10();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6068E98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D6068EE8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1D6068F4C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (a3)
  {
    LOBYTE(v18) = 0;
    v19 = 0;
    v20 = 0;
    sub_1D606988C();

    sub_1D726443C();
    if (v3)
    {
      (*(v9 + 8))(v12, v8);

      return;
    }

    v19 = a2;
    v20 = a3;
    v18 = xmmword_1D7279980;
    sub_1D5C947A8(0, v13, v14, v15);
    sub_1D5C75D80(&qword_1EDF12710, &protocol conformance descriptor for FormatValue<A>, v16, v17);
    sub_1D726443C();
  }

  else
  {
    LOBYTE(v18) = 1;
    sub_1D606988C();
    v19 = 0;
    v20 = 0;
    sub_1D726443C();
  }

  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6069194(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x63696D616E7964;
  }

  else
  {
    v3 = 0x636974617473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x63696D616E7964;
  }

  else
  {
    v5 = 0x636974617473;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6069238()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D60692B8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6069324(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D60693A0(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6069400(uint64_t *a1@<X8>)
{
  v2 = 0x636974617473;
  if (*v1)
  {
    v2 = 0x63696D616E7964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_1D60694EC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6069534(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_1D6069534(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v24 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    if (v11)
    {
      v12 = sub_1D726433C();
      v13 = (v12 + 40);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 2;
        v9 = *v13;
        v13 += 2;
        if (v9 >= 4)
        {
          v16 = *(v15 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v17 = v16;
          *(v17 + 8) = v9;
          *(v17 + 16) = &unk_1F5111270;
          *(v17 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v5 + 8))(v8, v4);
          goto LABEL_9;
        }
      }
    }

    sub_1D6069838();
    v25 = 0;
    v26 = 0;
    sub_1D726431C();
    if (v24)
    {
      (*(v5 + 8))(v8, v4);
      v9 = 0;
    }

    else
    {
      sub_1D5C947A8(0, v18, v19, v20);
      v24 = xmmword_1D7279980;
      sub_1D5C75D80(&qword_1EDF419A8, &protocol conformance descriptor for FormatValue<A>, v22, v23);
      sub_1D726431C();
      (*(v5 + 8))(v8, v4);
      v9 = v25;
    }
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6069838()
{
  result = qword_1EC882F78;
  if (!qword_1EC882F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F78);
  }

  return result;
}

unint64_t sub_1D606988C()
{
  result = qword_1EC882F80;
  if (!qword_1EC882F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F80);
  }

  return result;
}

unint64_t sub_1D60698F4()
{
  result = qword_1EC882F88;
  if (!qword_1EC882F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F88);
  }

  return result;
}

unint64_t sub_1D6069948()
{
  result = qword_1EC882F90;
  if (!qword_1EC882F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F90);
  }

  return result;
}

uint64_t FormatBindingContent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatBindingContent.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBindingContent.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatBindingContent.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatBindingContent(0) + 28);

  return sub_1D6069A70(v3, a1);
}

uint64_t sub_1D6069A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8NewsFeed20FormatBindingContentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_1D72646CC() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_16:
  v8 = *(type metadata accessor for FormatBindingContent(0) + 28);

  return static FormatContent.== infix(_:_:)(a1 + v8, a2 + v8);
}

uint64_t sub_1D6069BE0(uint64_t a1)
{
  result = sub_1D6069CB0(&qword_1EC882F98, &protocol conformance descriptor for FormatBindingContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6069C24(void *a1)
{
  a1[1] = sub_1D6069CB0(&qword_1EC882FA0, &protocol conformance descriptor for FormatBindingContent);
  a1[2] = sub_1D6069CB0(&qword_1EC882FA8, &protocol conformance descriptor for FormatBindingContent);
  result = sub_1D6069CB0(&qword_1EC882FB0, &protocol conformance descriptor for FormatBindingContent);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6069CB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatBindingContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D6069D38(id *a1, double *a2, char *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  [a3 setFrame_];
  v10 = *&a3[qword_1EDF30C40];
  v11 = type metadata accessor for TagMastheadViewLayoutAttributes(0);
  [v10 setFrame_];
  [*&a3[qword_1EDF3A2E8] setFrame_];
  [*&a3[qword_1EDF3A2E0] setFrame_];
  [*&a3[qword_1EDF3A2D8] setFrame_];
  v12 = *&a3[qword_1EDF30C48];
  [v12 setFrame_];
  sub_1D71C526C(v35);
  if (LOBYTE(v35[0]))
  {
    v13 = 4;
  }

  else
  {
    v13 = 7;
  }

  [v12 setContentMode_];
  v14 = *&a3[qword_1EDF30C38];
  [v14 setFrame_];
  [v14 setNumberOfLines_];
  v15 = *&a3[qword_1EDF3A2D0];
  [v15 setFrame_];
  v16 = *&a3[qword_1EDF30C68];
  v17 = [v16 setFrame_];
  v18 = (a2 + *(v11 + 52));
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = *(v18 + 3);
  v23 = &a3[qword_1EDF30C58];
  *v23 = v19;
  *(v23 + 1) = v20;
  *(v23 + 2) = v21;
  *(v23 + 3) = v22;
  v24 = *&a3[qword_1EDF30C60];
  if ((a3[qword_1EDF30C50 + 8] & 1) == 0)
  {
    MEMORY[0x1DA6FA970](v17, *&a3[qword_1EDF30C50], v19, v20, v21);
  }

  [v24 setFrame_];
  v25 = sub_1D606A438();
  [v15 setBackgroundColor_];

  sub_1D5F42B3C(a3, (v34 + 96));
  v27 = *(a2 + 20);
  v26 = *(a2 + 21);
  if (*(a2 + 176) == 1)
  {
    v28 = v27;
    [v14 setHidden_];
    [v12 setHidden_];
    [v14 setAttributedText_];
    sub_1D606A3FC(v27, v26, 1);
  }

  else
  {

    v29 = v26;
    [v14 setHidden_];
    [v12 setHidden_];
    v35[3] = type metadata accessor for PublisherLogoProcessorRequest(0);
    v35[4] = sub_1D606A39C();
    v35[0] = v27;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;

    v32 = v29;
    sub_1D725FB5C();

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  [v16 setHidden_];
  return sub_1D606C690(v16, a1);
}

void sub_1D606A198(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = qword_1EDF30C48;
    v8 = *(Strong + qword_1EDF30C48);
    v9 = a1;
    v10 = v8;
    sub_1D725FBBC();

    [*&v6[v7] setIsAccessibilityElement_];
    v11 = *&v6[v7];
    v12 = [a3 string];
    if (!v12)
    {
      sub_1D726207C();
      v12 = sub_1D726203C();
    }

    [v11 setAccessibilityLabel_];

    v13 = *MEMORY[0x1E69DD9D0];
    v14 = *&v6[v7];
    v15 = [v14 accessibilityTraits];
    if ((v13 & ~v15) != 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    [v14 setAccessibilityTraits_];

    if (!a1)
    {
      v17 = qword_1EDF30C38;
      [*&v6[qword_1EDF30C38] setHidden_];
      [*&v6[v7] setHidden_];
      [*&v6[v17] setAttributedText_];
    }
  }
}

uint64_t sub_1D606A330()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_1D606A39C()
{
  result = qword_1EDF20D90;
  if (!qword_1EDF20D90)
  {
    type metadata accessor for PublisherLogoProcessorRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20D90);
  }

  return result;
}

void sub_1D606A3FC(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    a1 = a2;
    v3 = vars8;
  }
}

id sub_1D606A438()
{
  v1 = *v0;
  result = [v1 theme];
  if (result)
  {
    v3 = [result navigationChromeSeparatorColor];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [v1 theme];
      if (!v4 || (v5 = [v4 darkStyleNavigationChromeSeparatorColor], swift_unknownObjectRelease(), !v5))
      {
        v5 = v3;
      }

      v6 = objc_opt_self();
      v7 = [v3 ne_color];
      v8 = [v5 ne_color];
      v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D606A578()
{
  v1 = type metadata accessor for TagMastheadPlacement(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_1D72608BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TagMastheadModel(0);
  sub_1D606A8EC(v0 + *(v14 + 20), v4);
  sub_1D606BD34();
  if ((*(*(v15 - 8) + 48))(v4, 1, v15) == 1)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  else
  {
    sub_1D5CEB57C(v4, v8);
  }

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D606BD98(v8, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = sub_1D726086C();
    (*(v10 + 8))(v13, v9);
    if (v16)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t TagMastheadModel.init(tag:placement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for TagMastheadModel(0);
  sub_1D606A8EC(a2, a3 + v5[5]);
  v6 = swift_unknownObjectRetain();
  v7 = sub_1D606A950(v6, a2);
  v9 = v8;
  swift_unknownObjectRelease();
  result = sub_1D606BEF4(a2, type metadata accessor for TagMastheadPlacement);
  *(a3 + v5[6]) = v7;
  *(a3 + v5[7]) = v9 & 1;
  return result;
}

uint64_t type metadata accessor for TagMastheadModel(uint64_t a1)
{
  result = qword_1EDF2F9F8;
  if (!qword_1EDF2F9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D606A8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagMastheadPlacement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D606A950(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TagMastheadPlacement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - v22;
  swift_getObjectType();
  v24 = [a1 theme];
  if ((FCTagProviding.forceBasicTagMasthead.getter() & 1) == 0)
  {
    if (v24)
    {
      sub_1D606A8EC(a2, v19);
      sub_1D606BD34();
      v30 = v29;
      v31 = *(v29 - 8);
      v32 = *(v31 + 48);
      v74 = v31 + 48;
      v75 = v32;
      v33 = v32(v19, 1, v29);
      v34 = objc_opt_self();
      swift_unknownObjectRetain();
      if (v33 == 1)
      {
        v35 = [v34 systemBackgroundColor];
      }

      else
      {
        v41 = [v34 secondarySystemBackgroundColor];
        v73 = v11;
        v42 = a2;
        v43 = v41;
        v44 = [v34 systemBackgroundColor];
        v72 = v24;
        v45 = v30;
        v46 = v7;
        v47 = v44;
        v35 = [v34 ts:v43 dynamicColor:v44 withDarkStyleVariant:?];

        a2 = v42;
        v11 = v73;

        v7 = v46;
        v30 = v45;
        v24 = v72;
        sub_1D606BD98(v19, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      }

      swift_getObjectType();
      v28 = FCFeedTheming.navigationChromeDynamicBackgroundColor(fallback:)(v35);
      swift_unknownObjectRelease();

      if (v28)
      {
        goto LABEL_16;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v48 = FCFeedTheming.hasNavigationChromeBackgroundImage.getter();
      swift_unknownObjectRelease();
      if (v48)
      {
        sub_1D606A8EC(a2, v15);
        v49 = v75(v15, 1, v30);
        v27 = objc_opt_self();
        if (v49 == 1)
        {
          goto LABEL_3;
        }

        v54 = v27;
        v55 = [v27 secondarySystemBackgroundColor];
        v56 = [v54 systemBackgroundColor];
        v28 = [v54 ts:v55 dynamicColor:v56 withDarkStyleVariant:?];

        swift_unknownObjectRelease();
        v39 = MEMORY[0x1E69B40B8];
        v40 = v15;
        goto LABEL_8;
      }
    }

    if ([a1 asSports])
    {
      swift_getObjectType();
      v28 = FCSportsProviding.navigationBarBackgroundColor.getter();
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    if (v24)
    {
      v51 = [v24 darkStyleBackgroundColor];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 ne_color];
      }

      else
      {
        v53 = 0;
      }

      v57 = a2;
      sub_1D606A8EC(a2, v11);
      sub_1D606BD34();
      v59 = (*(*(v58 - 8) + 48))(v11, 1, v58);
      v60 = objc_opt_self();
      swift_unknownObjectRetain();
      if (v59 == 1)
      {
        v61 = [v60 systemBackgroundColor];
      }

      else
      {
        v62 = [v60 secondarySystemBackgroundColor];
        v63 = v7;
        v64 = [v60 systemBackgroundColor];
        v61 = [v60 ts:v62 dynamicColor:v64 withDarkStyleVariant:?];

        v7 = v63;
        sub_1D606BD98(v11, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      }

      swift_getObjectType();
      v28 = FCFeedTheming.dynamicBackgroundColor(fallback:)(v61);
      swift_unknownObjectRelease();

      if (v28)
      {
        goto LABEL_31;
      }

      a2 = v57;
    }

    else
    {
      v53 = 0;
    }

    sub_1D606A8EC(a2, v7);
    sub_1D606BD34();
    v66 = (*(*(v65 - 8) + 48))(v7, 1, v65);
    v67 = objc_opt_self();
    if (v66 != 1)
    {
      v68 = v67;
      v69 = [v67 secondarySystemBackgroundColor];
      v70 = v7;
      v71 = [v68 systemBackgroundColor];
      v28 = [v68 ts:v69 dynamicColor:v71 withDarkStyleVariant:?];

      swift_unknownObjectRelease();
      sub_1D606BD98(v70, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      goto LABEL_33;
    }

    v28 = [v67 systemBackgroundColor];
LABEL_31:
    swift_unknownObjectRelease();
LABEL_33:

    return v28;
  }

  sub_1D606A8EC(a2, v23);
  sub_1D606BD34();
  v26 = (*(*(v25 - 8) + 48))(v23, 1, v25);
  v27 = objc_opt_self();
  if (v26 == 1)
  {
LABEL_3:
    v28 = [v27 systemBackgroundColor];
LABEL_16:
    swift_unknownObjectRelease();
    return v28;
  }

  v36 = v27;
  v37 = [v27 secondarySystemBackgroundColor];
  v38 = [v36 systemBackgroundColor];
  v28 = [v36 ts:v37 dynamicColor:v38 withDarkStyleVariant:?];

  swift_unknownObjectRelease();
  v39 = MEMORY[0x1E69B40B8];
  v40 = v23;
LABEL_8:
  sub_1D606BD98(v40, &qword_1EDF45AB0, v39);
  return v28;
}

double sub_1D606B16C@<D0>(SEL *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = [*v3 *a1];
  if (v7)
  {
    v8 = v7;
    v14 = sub_1D5B5A498(0, &qword_1EDF1AB50, 0x1E69B51B8);
    v15 = sub_1D5EECFF8();
    *&v13 = v8;
    sub_1D5B63F14(&v13, a3);
  }

  else
  {
    v10 = [v6 theme];
    if (v10 && (v11 = [v10 *a2], swift_unknownObjectRelease(), v11) && (v12 = objc_msgSend(v11, sel_assetHandle), v11, v12))
    {
      *(a3 + 24) = sub_1D5B5A498(0, &qword_1EDF1AB50, 0x1E69B51B8);
      *(a3 + 32) = sub_1D5EECFF8();
      *a3 = v12;
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

uint64_t _s8NewsFeed16TagMastheadModelV2eeoiySbAC_ACtFZ_0(id *a1, id *a2)
{
  v4 = sub_1D72608BC();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D606BDF4(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v84 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TagMastheadPlacement(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v79 - v17;
  sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v82 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v83 = &v79 - v24;
  *&v27 = MEMORY[0x1EEE9AC00](v25, v26).n128_u64[0];
  v87 = &v79 - v28;
  v29 = [*a1 identifier];
  v30 = sub_1D726207C();
  v32 = v31;

  v33 = [*a2 identifier];
  v34 = sub_1D726207C();
  v36 = v35;

  if (v30 == v34 && v32 == v36)
  {
  }

  else
  {
    v37 = sub_1D72646CC();

    if ((v37 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v38 = type metadata accessor for TagMastheadModel(0);
  v39 = *(v38 + 20);
  if ((_s8NewsFeed20TagMastheadPlacementO2eeoiySbAC_ACtFZ_0(a1 + v39, a2 + v39) & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
  if ((sub_1D726370C() & 1) == 0 || *(a1 + *(v38 + 28)) != *(a2 + *(v38 + 28)))
  {
    goto LABEL_35;
  }

  sub_1D606B16C(&selRef_nameImageLargeAssetHandle, &selRef_bannerImageForThemeBackground, v88);
  if (v89)
  {
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v40 = sub_1D725D2DC();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    v40 = 0;
    v42 = 0;
  }

  sub_1D606B16C(&selRef_nameImageLargeAssetHandle, &selRef_bannerImageForThemeBackground, v88);
  if (v89)
  {
    v80 = v40;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v43 = sub_1D725D2DC();
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1(v88);
    if (v42)
    {
      if (!v45)
      {
        goto LABEL_34;
      }

      if (v80 == v43 && v42 == v45)
      {
      }

      else
      {
        v46 = sub_1D72646CC();

        if ((v46 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v45)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    if (v42)
    {
      goto LABEL_34;
    }
  }

  sub_1D606B16C(&selRef_nameImageLargeMaskAssetHandle, &selRef_bannerImageForMask, v88);
  if (v89)
  {
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v47 = sub_1D725D2DC();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    v47 = 0;
    v49 = 0;
  }

  sub_1D606B16C(&selRef_nameImageLargeMaskAssetHandle, &selRef_bannerImageForMask, v88);
  if (!v89)
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    if (!v49)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v80 = v47;
  __swift_project_boxed_opaque_existential_1(v88, v89);
  v50 = sub_1D725D2DC();
  v52 = v51;
  __swift_destroy_boxed_opaque_existential_1(v88);
  if (!v49)
  {
    if (!v52)
    {
      goto LABEL_38;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!v52)
  {
    goto LABEL_34;
  }

  if (v80 == v50 && v49 == v52)
  {
  }

  else
  {
    v55 = sub_1D72646CC();

    if ((v55 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  v56 = sub_1D606A438();
  v57 = sub_1D606A438();
  v58 = v57;
  if (!v56)
  {
    if (v57)
    {

      goto LABEL_35;
    }

    goto LABEL_44;
  }

  if (!v57)
  {

    goto LABEL_35;
  }

  sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  v59 = sub_1D726370C();

  if (v59)
  {
LABEL_44:
    sub_1D606A8EC(a1 + v39, v18);
    sub_1D606BD34();
    v61 = v60;
    v62 = *(*(v60 - 8) + 48);
    if (v62(v18, 1, v60) == 1)
    {
      v63 = v87;
      (*(v85 + 56))(v87, 1, 1, v86);
    }

    else
    {
      v63 = v87;
      sub_1D5CEB57C(v18, v87);
    }

    sub_1D606A8EC(a2 + v39, v14);
    if (v62(v14, 1, v61) == 1)
    {
      v65 = v85;
      v64 = v86;
      v66 = v83;
      (*(v85 + 56))(v83, 1, 1, v86);
    }

    else
    {
      v67 = v14;
      v66 = v83;
      sub_1D5CEB57C(v67, v83);
      v65 = v85;
      v64 = v86;
    }

    v68 = *(v8 + 48);
    v69 = v84;
    sub_1D606BE74(v63, v84);
    sub_1D606BE74(v66, v69 + v68);
    v70 = v63;
    v71 = *(v65 + 48);
    if (v71(v69, 1, v64) == 1)
    {
      v72 = MEMORY[0x1E69B40B8];
      sub_1D606BD98(v66, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      sub_1D606BD98(v70, &qword_1EDF45AB0, v72);
      if (v71(v69 + v68, 1, v64) == 1)
      {
        sub_1D606BD98(v69, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
        v53 = 1;
        return v53 & 1;
      }
    }

    else
    {
      v73 = v82;
      sub_1D606BE74(v69, v82);
      if (v71(v69 + v68, 1, v64) != 1)
      {
        v75 = v69 + v68;
        v76 = v81;
        (*(v65 + 32))(v81, v75, v64);
        sub_1D606BF54();
        v53 = sub_1D7261FBC();
        v77 = *(v65 + 8);
        v77(v76, v64);
        v78 = MEMORY[0x1E69B40B8];
        sub_1D606BD98(v66, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
        sub_1D606BD98(v87, &qword_1EDF45AB0, v78);
        v77(v73, v64);
        sub_1D606BD98(v69, &qword_1EDF45AB0, v78);
        return v53 & 1;
      }

      v74 = MEMORY[0x1E69B40B8];
      sub_1D606BD98(v66, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      sub_1D606BD98(v87, &qword_1EDF45AB0, v74);
      (*(v65 + 8))(v73, v64);
    }

    sub_1D606BEF4(v69, sub_1D606BDF4);
  }

LABEL_35:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_1D606BC80(uint64_t a1)
{
  result = sub_1D5B65AF4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TagMastheadPlacement(319);
    if (v3 <= 0x3F)
    {
      result = sub_1D5B5A498(319, qword_1EDF1A6A0, 0x1E69DC888);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D606BD34()
{
  if (!qword_1EDF3AA00)
  {
    sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3AA00);
    }
  }
}

uint64_t sub_1D606BD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B594E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D606BDF4(uint64_t a1)
{
  if (!qword_1EDF3A9F8)
  {
    sub_1D5B594E4(255, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3A9F8);
    }
  }
}

uint64_t sub_1D606BE74(uint64_t a1, uint64_t a2)
{
  sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D606BEF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D606BF54()
{
  result = qword_1EC882FB8;
  if (!qword_1EC882FB8)
  {
    sub_1D72608BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882FB8);
  }

  return result;
}

void sub_1D606BFAC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v46 = Strong;
  v3 = [Strong traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v26 = *(v1 + 32);
    v27 = [v46 view];
    if (v27)
    {
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v49.origin.x = v30;
      v49.origin.y = v32;
      v49.size.width = v34;
      v49.size.height = v36;
      Width = CGRectGetWidth(v49);
      v38 = [v46 view];
      if (v38)
      {
        v39 = v38;
        ObjectType = swift_getObjectType();
        [v39 safeAreaInsets];

        sub_1D7262E2C();
        (*(v26 + 16))(ObjectType, v26, (Width - v41) * 0.5);
        v21 = [v46 navigationItem];
        sub_1D5E42B34();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D72816C0;
        sub_1D606C620();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1D72816C0;
        v24 = *(v1 + 40);
        *(v42 + 32) = v24;
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_16;
  }

  if (v4 == 1)
  {
    v5 = *(v1 + 32);
    v6 = [v46 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v48.origin.x = v9;
      v48.origin.y = v11;
      v48.size.width = v13;
      v48.size.height = v15;
      v16 = CGRectGetWidth(v48);
      v17 = [v46 view];
      if (v17)
      {
        v18 = v17;
        v19 = swift_getObjectType();
        [v18 safeAreaInsets];

        sub_1D7262E2C();
        (*(v5 + 16))(v19, v5, (v16 - v20) * 0.4);
        v21 = [v46 navigationItem];
        sub_1D5E42B34();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D72816C0;
        sub_1D606C620();
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1D72816D0;
        sub_1D606C3B0();
        v24 = *(v1 + 40);
        *(v23 + 32) = v25;
        *(v23 + 40) = v24;
LABEL_11:
        v43 = v24;
        v44 = sub_1D726317C();

        *(v22 + 32) = v44;
        v45 = sub_1D726265C();

        [v21 setLeadingItemGroups_];

        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
}

void sub_1D606C3B0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1D726203C();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v3 style:0 target:v0 action:sel_presentSidebar];

    v5 = *(v0 + 48);
    *(v0 + 48) = v4;
    v4;

    v1 = 0;
LABEL_4:
    v6 = v1;
    return;
  }

  __break(1u);
}

void sub_1D606C494()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong splitViewController];

    if (v2)
    {
      v5 = [v2 viewControllerForColumn_];

      if (v5)
      {
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          v4 = v3;
          [v3 presentViewController:v5 animated:1 completion:0];
        }
      }
    }
  }
}

uint64_t sub_1D606C5AC()
{
  MEMORY[0x1DA6FD660](v0 + 2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D606C620()
{
  result = qword_1EC88B4C0;
  if (!qword_1EC88B4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88B4C0);
  }

  return result;
}

id sub_1D606C690(void *a1, id *a2)
{
  if (UIAccessibilityIsInvertColorsEnabled() || [*a2 isLocal] || (objc_msgSend(*(a2 + *(type metadata accessor for TagMastheadModel(0) + 24)), sel_ts_luminance), v8 = v7, sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888), sub_1D726358C(), v9 >= v8))
  {
    v4 = a1;
    v5 = 2;
  }

  else
  {
    v4 = a1;
    v5 = 1;
  }

  return [v4 setOverrideUserInterfaceStyle_];
}

id sub_1D606C754(void *a1, uint64_t a2)
{
  v2 = a2;
  if (sub_1D7261A3C())
  {
    v4 = objc_opt_self();
    v5 = [v4 systemFontOfSize:34.0 weight:*MEMORY[0x1E69DB958]];
    v6 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v7 = sub_1D726207C();
    v9 = v8;

    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    *&v55 = v10;
    sub_1D5B7C390(&v55, v54);
    v11 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v7, v9, isUniquelyReferenced_nonNull_native);

    v13 = v11;
    if (*(v11 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = [a1 horizontalSizeClass];
  if (v14 < 2)
  {
    if ((v2 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = [v4 systemFontOfSize:42.0 weight:*MEMORY[0x1E69DB958]];
      v31 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
      v32 = sub_1D726207C();
      v34 = v33;

      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v56 = sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
      *&v55 = v35;
      sub_1D5B7C390(&v55, v54);
      v36 = MEMORY[0x1E69E7CC8];
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D5BAFB24(v54, v32, v34, v37);

      v13 = v36;
      if (*(v36 + 16))
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v14 != 2)
  {
LABEL_10:
    v4 = objc_opt_self();
    v5 = [v4 systemFontOfSize:28.0 weight:*MEMORY[0x1E69DB958]];
    v24 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v25 = sub_1D726207C();
    v27 = v26;

    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    *&v55 = v28;
    sub_1D5B7C390(&v55, v54);
    v29 = MEMORY[0x1E69E7CC8];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v25, v27, v30);

    v13 = v29;
    if (*(v29 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = objc_opt_self();
  v4 = v15;
  v16 = *MEMORY[0x1E69DB958];
  if (v2)
  {
    v5 = [v15 systemFontOfSize:34.0 weight:v16];
    v17 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v18 = sub_1D726207C();
    v20 = v19;

    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    *&v55 = v21;
    sub_1D5B7C390(&v55, v54);
    v22 = MEMORY[0x1E69E7CC8];
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v18, v20, v23);

    v13 = v22;
    if (*(v22 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = [v15 systemFontOfSize:48.0 weight:v16];
    v38 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v39 = sub_1D726207C();
    v41 = v40;

    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660, 0x1E696AD98);
    *&v55 = v42;
    sub_1D5B7C390(&v55, v54);
    v43 = MEMORY[0x1E69E7CC8];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v39, v41, v44);

    v13 = v43;
    if (*(v43 + 16))
    {
LABEL_15:
      v45 = [v5 fontDescriptor];
      sub_1D606D738(0, &qword_1EDF194D8, &qword_1EDF1A788, type metadata accessor for AttributeName);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v47 = *MEMORY[0x1E69DB8F0];
      *(inited + 32) = *MEMORY[0x1E69DB8F0];
      sub_1D5BB0DB0();
      *(inited + 64) = v48;
      *(inited + 40) = v13;
      v49 = v47;
      sub_1D5BAA78C(inited);
      swift_setDeallocating();
      sub_1D5BAA86C(inited + 32);
      type metadata accessor for AttributeName(0);
      sub_1D606D790(&qword_1EDF1A790, type metadata accessor for AttributeName, &unk_1D7272A74);
      v50 = sub_1D7261D2C();

      v51 = [v45 fontDescriptorByAddingAttributes_];

      [v5 pointSize];
      v52 = [v4 fontWithDescriptor:v51 size:?];

      return v52;
    }
  }

LABEL_16:

  return v5;
}

id sub_1D606D364(void **a1, void *a2, __int16 a3)
{
  v5 = sub_1D606C754(a2, a3 & 1);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  type metadata accessor for TagMastheadModel(0);
  sub_1D71C526C(&v33);
  [v6 setAlignment_];
  if ((a3 & 0x100) != 0)
  {
    [v6 setLineBreakMode_];
  }

  [v5 pointSize];
  [v6 setMinimumLineHeight_];
  [v5 pointSize];
  [v6 setMaximumLineHeight_];
  v8 = *a1;
  v32 = v6;
  if ([v8 isLocal])
  {
    v9 = [objc_opt_self() whiteColor];
  }

  else
  {
    if ([v8 theme])
    {
      swift_getObjectType();
      v10 = FCFeedTheming.navigationBarForegroundColor.getter();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v9 = [objc_opt_self() labelColor];
  }

  v10 = v9;
LABEL_9:
  v11 = [v8 displayName];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  sub_1D606D738(0, &qword_1EDF194E0, &qword_1EDF1A8B0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v14 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 40) = v10;
  v15 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 80) = v5;
  v17 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = sub_1D5B5A498(0, &qword_1EDF1A840, 0x1E69DB7C8);
  *(inited + 120) = v32;
  v19 = v5;
  v20 = *MEMORY[0x1E69DB748];
  *(inited + 144) = v18;
  *(inited + 152) = v20;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFD3333333333333;
  v21 = v13;
  v22 = v10;
  v23 = v15;
  v24 = v19;
  v25 = v17;
  v26 = v32;
  v27 = v20;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5BAA9E8(0, &qword_1EDF1A8B0, type metadata accessor for Key);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  type metadata accessor for Key(0);
  sub_1D606D790(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
  v29 = sub_1D7261D2C();

  v30 = [v28 initWithString:v11 attributes:v29];

  return v30;
}

void sub_1D606D738(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5BAA9E8(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D606D790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D606D7D8@<D0>(void **a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TagMastheadModel(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1D725EA8C())
  {
    v10 = 72.0;
  }

  else
  {
    sub_1D725EAAC();
    v10 = v11 + 72.0;
  }

  v12 = 0.0;
  if ((sub_1D725EA8C() & 1) == 0)
  {
    sub_1D725EAAC();
    v12 = v13;
  }

  sub_1D725EAAC();
  v15 = v14;
  v16 = *a2;
  v171 = a2[1];
  sub_1D725EAAC();
  v18 = v17;
  sub_1D725EAAC();
  v172 = v16;
  v20 = v16 - (v18 + v19);
  v21 = v10 - v12;
  v179.origin.x = v15;
  v179.origin.y = v12;
  v179.size.width = v20;
  v179.size.height = v10 - v12;
  Width = CGRectGetWidth(v179);
  sub_1D725EA7C();
  sub_1D7262E2C();
  v24 = Width - v23;
  v180.origin.x = v15;
  v180.origin.y = v12;
  v180.size.width = v20;
  v180.size.height = v10 - v12;
  Height = CGRectGetHeight(v180);
  v26 = *(v6 + 20);
  sub_1D71C526C(&v178);
  if (v178)
  {
    v181.origin.x = v15;
    v181.origin.y = v12;
    v181.size.width = v20;
    v181.size.height = v21;
    v27 = CGRectGetWidth(v181) * 0.5 - v24 * 0.5;
    v182.origin.x = v15;
    v182.origin.y = v12;
    v182.size.width = v20;
    v182.size.height = v21;
    v28 = CGRectGetHeight(v182) * 0.5 - Height * 0.5;
  }

  else
  {
    sub_1D725EA7C();
    v27 = v29;
    v28 = 0.0;
  }

  v30 = v27;
  v31 = v24;
  v32 = Height;
  v183 = CGRectIntegral(*(&v28 - 1));
  x = v183.origin.x;
  y = v183.origin.y;
  v35 = v183.size.width;
  v36 = v183.size.height;
  v184.origin.x = sub_1D606E18C(a1);
  v167 = v184.origin.y;
  v168 = v184.origin.x;
  v165 = v184.size.height;
  v166 = v184.size.width;
  v37 = CGRectGetHeight(v184);
  v174 = 0.0;
  v175 = y;
  v176 = x;
  v164 = v12;
  v163 = v15;
  v162 = v20;
  v161 = v21;
  if (v37 > 1.0)
  {
    v185.origin.y = v167;
    v185.origin.x = v168;
    v185.size.height = v165;
    v185.size.width = v166;
    v38 = CGRectGetWidth(v185);
    v39 = v38 + 12.0;
    if (v38 + 12.0 > 0.0)
    {
      v40 = v176;
      v186.origin.x = v176;
      v186.origin.y = y;
      v186.size.width = v35;
      v186.size.height = v36;
      v41 = CGRectGetWidth(v186) - v39;
      goto LABEL_16;
    }

    v174 = v38 + 12.0;
    x = v176;
  }

  v42 = sub_1D725EABC();
  v43 = [v42 horizontalSizeClass];

  v187.origin.x = x;
  v187.origin.y = y;
  v187.size.width = v35;
  v187.size.height = v36;
  v41 = CGRectGetWidth(v187);
  if (v43 == 1)
  {
    sub_1D725EA7C();
    sub_1D7262E2C();
    v41 = v41 - v44;
  }

  v40 = v176;
LABEL_16:
  v188.origin.x = v40;
  v45 = v175;
  v188.origin.y = v175;
  v188.size.width = v35;
  v188.size.height = v36;
  v46 = CGRectGetWidth(v188);
  if (v41 >= v46)
  {
    v41 = v46;
  }

  v189.origin.x = v40;
  v189.origin.y = v45;
  v189.size.width = v35;
  v189.size.height = v36;
  v47 = CGRectGetHeight(v189);
  v48 = v36;
  if (v47 <= 40.0)
  {
    v49 = v47;
  }

  else
  {
    v49 = 40.0;
  }

  sub_1D606E5C0(a1, v40, v45, v35, v48);
  v50 = v35;
  v52 = v51;
  v190.origin.x = v40;
  v190.origin.y = v45;
  v190.size.width = v50;
  v190.size.height = v48;
  v191.origin.y = CGRectGetHeight(v190) * 0.5 - v49 * 0.5;
  v191.origin.x = v52;
  v191.size.width = v41;
  v191.size.height = v49;
  v192 = CGRectIntegral(v191);
  v160 = v192.origin.x;
  v159 = v192.origin.y;
  v169 = v192.size.height;
  v170 = v192.size.width;
  v192.origin.x = v40;
  v192.origin.y = v45;
  v192.size.width = v50;
  v192.size.height = v48;
  CGRectGetWidth(v192);
  v173 = v50;
  v174 = v48;
  sub_1D72632FC();
  v54 = v53;
  v56 = v55;
  v157 = v55;
  v58 = v57;
  v60 = v59;
  v61 = sub_1D725EABC();
  v62 = sub_1D606D364(a1, v61, 0);
  v193.origin.x = v54;
  v193.origin.y = v56;
  v193.size.width = v58;
  v193.size.height = v60;
  CGRectGetWidth(v193);
  v63 = sub_1D726313C();
  [v63 lineHeight];

  sub_1D726312C();
  v64 = v194.origin.x;
  v65 = v194.origin.y;
  v66 = v194.size.width;
  v67 = v194.size.height;
  v68 = CGRectGetWidth(v194);
  v158 = v54;
  v195.origin.x = v54;
  v69 = v157;
  v195.origin.y = v157;
  v195.size.width = v58;
  v195.size.height = v60;
  if (CGRectGetWidth(v195) <= v68)
  {
    v74 = 1;
  }

  else
  {
    v196.origin.x = v64;
    v196.origin.y = v65;
    v196.size.width = v66;
    v196.size.height = v67;
    v70 = CGRectGetHeight(v196);
    v71 = sub_1D726313C();
    [v71 lineHeight];
    v73 = v72;

    v74 = v73 < v70;
  }

  v75 = sub_1D606D364(a1, v61, v74);

  v76 = sub_1D725EABC();
  v77 = sub_1D606E94C(a1, v76, v158, v69, v58, v60);
  v79 = v78;
  v81 = v80;
  v83 = v82;

  sub_1D71C526C(&v177);
  v84 = v176;
  v85 = v176;
  if (v177)
  {
    v87 = v174;
    v86 = v175;
    v88 = v175;
    v89 = v173;
    v90 = v173;
    v91 = v174;
    v92 = CGRectGetWidth(*&v85) * 0.5;
    v197.origin.x = v77;
    v197.origin.y = v79;
    v197.size.width = v81;
    v197.size.height = v83;
    v93 = v92 - CGRectGetWidth(v197) * 0.5;
    v198.origin.x = v176;
    v198.origin.y = v86;
    v198.size.width = v89;
    v84 = v176;
    v198.size.height = v87;
    v94 = CGRectGetHeight(v198) * 0.5;
    v199.origin.x = v77;
    v199.origin.y = v79;
    v199.size.width = v81;
    v199.size.height = v83;
    v95 = v94 - CGRectGetHeight(v199) * 0.5;
    v200.origin.x = v77;
    v200.origin.y = v79;
    v200.size.width = v81;
    v200.size.height = v83;
    v96 = CGRectGetWidth(v200);
    v201.origin.x = v77;
    v201.origin.y = v79;
    v201.size.width = v81;
    v201.size.height = v83;
    v97 = CGRectGetHeight(v201);
  }

  else
  {
    v99 = v174;
    v98 = v175;
    v100 = v173;
    v101 = CGRectGetHeight(*&v85) * 0.5;
    v202.origin.x = v77;
    v202.origin.y = v79;
    v202.size.width = v81;
    v202.size.height = v83;
    v95 = v101 - CGRectGetHeight(v202) * 0.5;
    v203.origin.x = v77;
    v203.origin.y = v79;
    v203.size.width = v81;
    v203.size.height = v83;
    v96 = CGRectGetWidth(v203);
    v204.origin.x = v77;
    v204.origin.y = v79;
    v204.size.width = v81;
    v204.size.height = v83;
    v97 = CGRectGetHeight(v204);
    v93 = 0.0;
  }

  v102 = v93;
  v103 = v95;
  v104 = v96;
  v205 = CGRectIntegral(*(&v97 - 3));
  v158 = v205.origin.x;
  v157 = v205.origin.y;
  v156 = v205.size.width;
  v155 = v205.size.height;
  v105 = sub_1D606A438();
  v106 = v171;
  if (v105)
  {

    v107 = sub_1D725EABC();
    [v107 displayScale];
    v109 = v108;

    v153 = 1.0 / fmax(v109, 1.0);
    v154 = v106 - v153;
    v110 = v172;
    v152 = v172;
  }

  else
  {
    v154 = 0.0;
    v152 = 0.0;
    v153 = 0.0;
    v110 = v172;
  }

  sub_1D606F3A4(a1, v9, type metadata accessor for TagMastheadModel);
  v111 = sub_1D725EABC();
  v112 = type metadata accessor for TagMastheadViewLayoutAttributes(0);
  v113 = a3 + v112[10];
  sub_1D5F42628(v9, v111, v113, 0.0, 0.0, v110, v106);
  v114 = sub_1D725EABC();
  v115 = type metadata accessor for TagMastheadViewBackground(0);
  v116 = v169;
  v117 = v170;
  v118 = sub_1D606EAF8(a1, v114, *(v113 + *(v115 + 44)), v75, v170, v169);
  v120 = v119;
  LOBYTE(v113) = v121;

  v122 = sub_1D726313C();
  [v122 descender];
  v124 = v123;

  v150 = round(fabs(v124 * 0.5));
  v206.origin.x = v84;
  v206.size.height = v174;
  v206.origin.y = v175;
  v206.size.width = v173;
  v125 = CGRectGetWidth(v206);
  v127 = v167;
  v126 = v168;
  v207.origin.x = v168;
  v207.origin.y = v167;
  v128 = v165;
  v129 = v166;
  v207.size.width = v166;
  v207.size.height = v165;
  v151 = v125 - CGRectGetWidth(v207);
  v130 = v160;
  v208.origin.x = v160;
  v131 = v159;
  v208.origin.y = v159;
  v208.size.width = v117;
  v208.size.height = v116;
  MidY = CGRectGetMidY(v208);
  v209.origin.x = v126;
  v209.origin.y = v127;
  v209.size.width = v129;
  v209.size.height = v128;
  v133 = MidY - CGRectGetHeight(v209) * 0.5 - v150;
  v210.origin.x = v126;
  v210.origin.y = v127;
  v210.size.width = v129;
  v210.size.height = v128;
  v134 = CGRectGetWidth(v210);
  v211.origin.x = v126;
  v211.origin.y = v127;
  v211.size.width = v129;
  v211.size.height = v128;
  v212.size.height = CGRectGetHeight(v211);
  v212.origin.x = v151;
  v212.origin.y = v133;
  v212.size.width = v134;
  v213 = CGRectIntegral(v212);
  v135 = v213.origin.x;
  v136 = v213.origin.y;
  v137 = v213.size.width;
  v138 = v213.size.height;

  sub_1D606F3A4(a1 + v26, a3 + v112[11], type metadata accessor for TagMastheadPlacement);
  *a3 = 0;
  *(a3 + 8) = 0;
  v139 = v171;
  *(a3 + 16) = v172;
  *(a3 + 24) = v139;
  *(a3 + 32) = v130;
  *(a3 + 40) = v131;
  v140 = v169;
  *(a3 + 48) = v170;
  *(a3 + 56) = v140;
  v141 = v157;
  *(a3 + 64) = v158;
  *(a3 + 72) = v141;
  v142 = v155;
  *(a3 + 80) = v156;
  *(a3 + 88) = v142;
  *(a3 + 96) = 0;
  v143 = v152;
  *(a3 + 104) = v154;
  *(a3 + 112) = v143;
  *(a3 + 120) = v153;
  *(a3 + 128) = v135;
  *(a3 + 136) = v136;
  *(a3 + 144) = v137;
  *(a3 + 152) = v138;
  *(a3 + 160) = v118;
  *(a3 + 168) = v120;
  *(a3 + 176) = v113 & 1;
  v144 = (a3 + v112[12]);
  v145 = v175;
  *v144 = v176;
  v144[1] = v145;
  v146 = v174;
  v144[2] = v173;
  v144[3] = v146;
  v147 = (a3 + v112[13]);
  v148 = v164;
  *v147 = v163;
  v147[1] = v148;
  result = v161;
  v147[2] = v162;
  v147[3] = result;
  return result;
}

double sub_1D606E18C(uint64_t a1)
{
  sub_1D5C0ECB0(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v27 - v4;
  v6 = sub_1D72608BC();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagMastheadPlacement(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  v18 = *(type metadata accessor for TagMastheadModel(0) + 20);
  sub_1D606F3A4(a1 + v18, v17, type metadata accessor for TagMastheadPlacement);
  sub_1D606BD34();
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = 0.0;
  if (v21(v17, 1, v19) != 1)
  {
    if (sub_1D606A578())
    {
      sub_1D606F3A4(a1 + v18, v13, type metadata accessor for TagMastheadPlacement);
      if (v21(v13, 1, v20) == 1)
      {
        v23 = v28;
        (*(v28 + 56))(v5, 1, 1, v6);
      }

      else
      {
        sub_1D5CEB57C(v13, v5);
        v23 = v28;
      }

      if ((*(v23 + 48))(v5, 1, v6) == 1)
      {
        sub_1D5CF280C(v5, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      }

      else
      {
        (*(v23 + 32))(v9, v5, v6);
        v24 = sub_1D726086C();
        if (v24)
        {
          v25 = v24;
          if ((sub_1D726085C() & 1) == 0)
          {
            (*(v23 + 8))(v9, v6);

            goto LABEL_13;
          }

          [v25 frame];
          *&v22 = CGRectIntegral(v29);
        }

        (*(v23 + 8))(v9, v6);
      }
    }

LABEL_13:
    sub_1D5CF280C(v17, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  return v22;
}

uint64_t sub_1D606E564()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D606E5C0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_1D72608BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C0ECB0(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v31 - v21;
  v23 = type metadata accessor for TagMastheadPlacement(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TagMastheadModel(0);
  sub_1D606F3A4(a1 + *(v27 + 20), v26, type metadata accessor for TagMastheadPlacement);
  sub_1D606BD34();
  if ((*(*(v28 - 8) + 48))(v26, 1, v28) == 1)
  {
    goto LABEL_2;
  }

  sub_1D5CEB57C(v26, v22);
  if (sub_1D7261A3C())
  {
    sub_1D5CF280C(v22, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    return;
  }

  sub_1D5CF2478(v22, v18, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v29 = MEMORY[0x1E69B40B8];
    sub_1D5CF280C(v22, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    sub_1D5CF280C(v18, &qword_1EDF45AB0, v29);
LABEL_2:
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    CGRectGetWidth(v32);
    return;
  }

  (*(v11 + 32))(v14, v18, v10);
  v30 = sub_1D726085C();
  (*(v11 + 8))(v14, v10);
  sub_1D5CF280C(v22, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  if ((v30 & 1) == 0)
  {
    goto LABEL_2;
  }
}

double sub_1D606E94C(void **a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = sub_1D606D364(a1, a2, 0);
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  CGRectGetWidth(v30);
  v13 = sub_1D726313C();
  [v13 lineHeight];

  sub_1D726312C();
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v18 = CGRectGetWidth(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  if (CGRectGetWidth(v32) <= v18)
  {
    v23 = 1;
  }

  else
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v19 = CGRectGetHeight(v33);
    v20 = sub_1D726313C();
    [v20 lineHeight];
    v22 = v21;

    v23 = v22 < v19;
  }

  v24 = sub_1D606D364(a1, a2, v23);

  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetWidth(v34);
  v25 = sub_1D726313C();
  [v25 lineHeight];

  sub_1D726312C();
  v27 = v26;

  return v27;
}

double *sub_1D606EAF8(id *a1, void *a2, char a3, void *a4, double a5, double a6)
{
  v12 = type metadata accessor for ImageRequestOptions(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C0ECB0(0, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - v25;
  v27 = type metadata accessor for PublisherLogoProcessorOptions(0);
  v28 = *(v27 - 8);
  *&v30 = MEMORY[0x1EEE9AC00](v27, v29).n128_u64[0];
  v65 = (&v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([*a1 isLocal])
  {
    goto LABEL_11;
  }

  v63 = a4;
  if ([a2 userInterfaceStyle] == 2 && (a3 & 1) != 0)
  {
    sub_1D606B158(&v70);
    if (v71)
    {
      sub_1D5B63F14(&v70, &v72);
    }

    else
    {
      sub_1D606B144(&v72);
      if (v71)
      {
        sub_1D5CF280C(&v70, &qword_1EDF3B6B0, sub_1D5C0EEEC);
      }
    }
  }

  else
  {
    sub_1D606B144(&v72);
  }

  if (!v73)
  {
    a4 = v63;
LABEL_11:
    v41 = a4;
    goto LABEL_17;
  }

  sub_1D5B63F14(&v72, &v70);
  [a2 displayScale];
  v33 = v32;
  v34 = *(v12 + 24);
  v35 = sub_1D725CB5C();
  v36 = v65;
  (*(*(v35 - 8) + 56))(v65 + v34, 1, 1, v35);
  *v36 = v33;
  v36[1] = a2;
  *(v36 + *(v27 + 20)) = 1;
  sub_1D5B68374(&v70, v69);
  v37 = a2;
  [v37 displayScale];
  v39 = v38;
  v62 = [v37 userInterfaceStyle];
  LODWORD(v61) = v62 == 2;
  v40 = v26;
  sub_1D606F3A4(v36, v26, type metadata accessor for PublisherLogoProcessorOptions);
  (*(v28 + 56))(v26, 0, 1, v27);
  type metadata accessor for PublisherLogoProcessorRequest(0);
  v41 = swift_allocObject();
  sub_1D5B68374(v69, v41 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle);
  sub_1D5C0ECB0(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001D73C7830;
  sub_1D5B68374(v69, inited + 48);
  v43 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D606F40C(inited + 32, sub_1D5C16B18);
  *(v41 + 4) = v43;
  v41[5] = a5;
  v41[6] = a6;
  *(v41 + 7) = v39;
  *(v41 + 64) = v61;
  *(v41 + 65) = 0;
  sub_1D5CF2478(v26, v41 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_options, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  sub_1D5CF2478(v26, v22, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  v44 = *(v28 + 48);
  if (v44(v22, 1, v27) == 1)
  {
    sub_1D5CF280C(v22, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
    v45 = 0xE300000000000000;
    v61 = 7104878;
  }

  else
  {
    v46 = v22[*(v27 + 20)];
    sub_1D606F40C(v22, type metadata accessor for PublisherLogoProcessorOptions);
    LOBYTE(v67) = v46;
    v61 = sub_1D72620FC();
    v45 = v47;
  }

  sub_1D5CF2478(v26, v18, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  if (v44(v18, 1, v27) == 1)
  {
    sub_1D5CF280C(v18, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
    v48 = 0xE300000000000000;
    v49 = 7104878;
  }

  else
  {
    v50 = v64;
    sub_1D606F3A4(v18, v64, type metadata accessor for ImageRequestOptions);
    sub_1D606F40C(v18, type metadata accessor for PublisherLogoProcessorOptions);
    v51 = *(v50 + 8);
    sub_1D606F40C(v50, type metadata accessor for ImageRequestOptions);
    v49 = sub_1D69F5644();
    v48 = v52;
  }

  v53 = v62 == 2;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1D7263D4C();
  __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  v54 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v54);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v66[0] = a5;
  v66[1] = a6;
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v55 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v55);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  *&v66[0] = v53;
  v56 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v56);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v61, v45);

  MEMORY[0x1DA6F9910](11561, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v49, v48);

  v57 = v67;
  v58 = v68;
  sub_1D5CF280C(v40, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  sub_1D606F40C(v65, type metadata accessor for PublisherLogoProcessorOptions);
  __swift_destroy_boxed_opaque_existential_1(&v70);
  *(v41 + 2) = v57;
  *(v41 + 3) = v58;
  __swift_destroy_boxed_opaque_existential_1(v69);
  a4 = v63;
LABEL_17:
  v59 = a4;
  return v41;
}

uint64_t sub_1D606F3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D606F40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TagMastheadView(uint64_t a1)
{
  result = qword_1EDF30C20;
  if (!qword_1EDF30C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D606F524(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_1D606FC88(0, &qword_1EDF3B460, MEMORY[0x1E69D8768]);
  v48 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v45 - v12);
  v14 = qword_1EDF30C30;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  *&v4[v14] = [objc_allocWithZone(v15) init];
  v16 = qword_1EDF30C60;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v17 = &v4[qword_1EDF30C58];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = &v4[qword_1EDF30C50];
  *v18 = 0;
  v18[8] = 1;
  v19 = qword_1EDF30C40;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v20 = qword_1EDF30C48;
  *&v4[v20] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v21 = qword_1EDF30C38;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v22 = qword_1EDF30C68;
  *&v4[v22] = [objc_allocWithZone(sub_1D72607AC()) initWithFrame_];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  [v23 setClipsToBounds_];
  v24 = qword_1EDF30C40;
  v25 = qword_1EDF30C38;
  [*&v23[qword_1EDF30C40] addSubview_];
  v26 = qword_1EDF30C48;
  [*&v23[v24] addSubview_];
  [*&v23[v24] addSubview_];
  v27 = qword_1EDF30C60;
  [*&v23[qword_1EDF30C60] addSubview_];
  [v23 addSubview_];
  ObjectType = v25;
  [*&v23[v25] setNumberOfLines_];
  [*&v23[v25] setMinimumScaleFactor_];
  [*&v23[v26] setContentMode_];
  v46 = qword_1EDF30C30;
  v28 = *&v23[qword_1EDF30C30];
  v29 = *&v23[v26];
  v30 = v13;
  *v13 = 1;
  v31 = *MEMORY[0x1E69D8758];
  v32 = v10;
  v33 = *(v10 + 104);
  v34 = v13;
  v35 = v48;
  v33(v34, v31, v48);
  v36 = v28;
  v37 = v29;

  v38 = *(v32 + 8);
  v38(v30, v35);
  v39 = *&v23[v46];
  v40 = *(ObjectType + v23);
  *v30 = 1;
  v33(v30, v31, v35);
  v41 = v39;
  v42 = v40;
  v43 = sub_1D725F66C();

  v38(v30, v35);
  return v23;
}

void sub_1D606F9B4()
{
  v1 = *(v0 + qword_1EDF30C68);
}

void sub_1D606FA34(uint64_t a1)
{
  v2 = *(a1 + qword_1EDF30C68);
}

void sub_1D606FAC8()
{
  v1 = qword_1EDF30C30;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = qword_1EDF30C60;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4 = (v0 + qword_1EDF30C58);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = v0 + qword_1EDF30C50;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = qword_1EDF30C40;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v7 = qword_1EDF30C48;
  *(v0 + v7) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v8 = qword_1EDF30C38;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = qword_1EDF30C68;
  *(v0 + v9) = [objc_allocWithZone(sub_1D72607AC()) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

void sub_1D606FC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TagMastheadViewProvider.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  return sub_1D606FD38(v1 + v3, a1);
}

uint64_t sub_1D606FD38(uint64_t a1, uint64_t a2)
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TagMastheadViewProvider.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FE18(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D606FE18(uint64_t a1, uint64_t a2)
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TagMastheadViewProvider.parallaxX.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX;
  swift_beginAccess();
  return *v1;
}

id TagMastheadViewProvider.parallaxX.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX;
  v7 = swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = v5;
  v8 = *(v2 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_mastheadView);
  v9 = v8 + qword_1EDF30C50;
  *v9 = a1;
  *(v9 + 8) = v5;
  if (a2)
  {
    v10 = *(v8 + qword_1EDF30C60);
    v11 = (v8 + qword_1EDF30C58);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
  }

  else
  {
    v16 = *&a1;
    v10 = *(v8 + qword_1EDF30C60);
    v12 = MEMORY[0x1DA6FA970](v7, v16, *(v8 + qword_1EDF30C58), *(v8 + qword_1EDF30C58 + 8), *(v8 + qword_1EDF30C58 + 16), *(v8 + qword_1EDF30C58 + 24));
  }

  return [v10 setFrame_];
}

uint64_t (*TagMastheadViewProvider.parallaxX.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D60700C0;
}

void sub_1D60700C0(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v5 + v3[4];
    v7 = *(v5 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_mastheadView);
    v8 = *v6;
    LOBYTE(v6) = *(v6 + 8);
    v9 = v7 + qword_1EDF30C50;
    *v9 = v8;
    *(v9 + 8) = v6;
    v10 = *(v7 + qword_1EDF30C60);
    if (v6)
    {
      v11 = (v7 + qword_1EDF30C58);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
    }

    else
    {
      v12 = MEMORY[0x1DA6FA970](v4, v8, *(v7 + qword_1EDF30C58), *(v7 + qword_1EDF30C58 + 8), *(v7 + qword_1EDF30C58 + 16), *(v7 + qword_1EDF30C58 + 24));
    }

    [v10 setFrame_];
  }

  free(v3);
}

id TagMastheadViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TagMastheadViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D60703B4()
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *v0;
  v6 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FD38(v5 + v6, v4);
  v7 = type metadata accessor for TagMastheadModel(0);
  LODWORD(v5) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_1D6071170(v4, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  result = 0.0;
  if (v5 != 1)
  {
    if (sub_1D725EA8C())
    {
      return 72.0;
    }

    else
    {
      sub_1D725EAAC();
      return v9 + 72.0;
    }
  }

  return result;
}

double TagMastheadViewProvider.height(for:)()
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FD38(v0 + v5, v4);
  v6 = type metadata accessor for TagMastheadModel(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1D6071170(v4, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  result = 0.0;
  if (v7 != 1)
  {
    if (sub_1D725EA8C())
    {
      return 72.0;
    }

    else
    {
      sub_1D725EAAC();
      return v9 + 72.0;
    }
  }

  return result;
}

void sub_1D6070658(uint64_t a1)
{
  v2 = type metadata accessor for TagMastheadPlacement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TagMastheadModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6071054(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  if (!(*(v7 + 48))(v1 + v15, 1, v6))
  {
    sub_1D60710A8(v1 + v15, v10, type metadata accessor for TagMastheadModel);
    sub_1D60710A8(&v10[*(v6 + 20)], v5, type metadata accessor for TagMastheadPlacement);
    sub_1D6071110(v10, type metadata accessor for TagMastheadModel);
    sub_1D606BD34();
    if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
    {
      v17 = sub_1D72608BC();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    }

    else
    {
      sub_1D5CEB57C(v5, v14);
    }

    v18 = sub_1D72608BC();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_1D6071170(v14, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }

    else
    {
      v20 = sub_1D726086C();
      (*(v19 + 8))(v14, v18);
      if (v20)
      {
        swift_getObjectType();
        sub_1D726065C();
      }
    }
  }
}

id sub_1D60709C4()
{
  v1 = *v0 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  v2 = type metadata accessor for TagMastheadModel(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    v3 = [objc_opt_self() systemBackgroundColor];

    return v3;
  }

  else
  {
    v5 = *(v1 + *(v2 + 24));

    return v5;
  }
}

UIColor __swiftcall TagMastheadViewProvider.backgroundColor(traitCollection:)(UITraitCollection traitCollection)
{
  v2 = v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  v3 = type metadata accessor for TagMastheadModel(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = [objc_opt_self() systemBackgroundColor];

    return v4;
  }

  else
  {
    v6 = *(v2 + *(v3 + 24));

    return v6;
  }
}

uint64_t _s8NewsFeed23TagMastheadViewProviderC6layout0G7Options12mastheadabley5TeaUI0de6LayoutH0V_AG12Mastheadable_ptF_0()
{
  v1 = v0;
  v2 = type metadata accessor for TagMastheadPlacement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1D6071054(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v39 - v8 + 16;
  v10 = type metadata accessor for TagMastheadViewLayoutAttributes(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v39 - v16 + 16;
  v18 = type metadata accessor for TagMastheadModel(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v23 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FD38(v1 + v23, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1D6071170(v17, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  }

  sub_1D60711EC(v17, v22);
  sub_1D725EACC();
  Width = CGRectGetWidth(v40);
  if (sub_1D725EA8C())
  {
    v26 = 72.0;
  }

  else
  {
    sub_1D725EAAC();
    v26 = v27 + 72.0;
  }

  v28 = (v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_layoutAttributesFactory);
  sub_1D725EA9C();
  sub_1D725EACC();
  sub_1D725E10C();
  v39[0] = Width;
  v39[1] = v26;
  v39[2] = v29;
  v39[3] = v30;
  v39[4] = v31;
  v39[5] = v32;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D606D7D8(v22, v39, v13);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_renderer), *(v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_renderer + 24));
  v33 = *(v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_mastheadView);
  sub_1D6069D38(v22, v13, v33);
  if ((sub_1D725EA8C() & 1) == 0)
  {
    v34 = *&v33[qword_1EDF30C68];
    sub_1D60710A8(v22 + *(v18 + 20), v5, type metadata accessor for TagMastheadPlacement);
    sub_1D606BD34();
    if ((*(*(v35 - 8) + 48))(v5, 1, v35) == 1)
    {
      v36 = sub_1D72608BC();
      (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    }

    else
    {
      sub_1D5CEB57C(v5, v9);
    }

    v37 = v34;
    sub_1D726079C();

    sub_1D6071170(v9, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  sub_1D6071110(v13, type metadata accessor for TagMastheadViewLayoutAttributes);
  return sub_1D6071110(v22, type metadata accessor for TagMastheadModel);
}

void sub_1D6071054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D60710A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6071110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6071170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6071054(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60711EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagMastheadModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TagMastheadViewLayoutAttributes(uint64_t a1)
{
  result = qword_1EDF1F3F0;
  if (!qword_1EDF1F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60712D0(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TagMastheadViewBackground(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TagMastheadPlacement(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6071398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D60713F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D607145C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, void (*a4)(char *, __n128))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v24 = a4;
    v8 = *(Strong + 24);
    v9 = *(v8 + 16);

    if (v9)
    {
      v10 = 0;
      v11 = 32;
      while (v10 < *(v8 + 16))
      {
        v12 = *(v8 + v11);
        v13 = *(v8 + v11 + 16);
        v14 = *(v8 + v11 + 48);
        v37 = *(v8 + v11 + 32);
        v38 = v14;
        v35 = v12;
        v36 = v13;
        v15 = *(v8 + v11 + 16);
        v31 = *(v8 + v11);
        v32 = v15;
        v16 = *(v8 + v11 + 48);
        v33 = *(v8 + v11 + 32);
        v34 = v16;
        v17 = v31;
        v18 = v32;
        v29 = v31;
        v30 = v32;
        sub_1D6072164(&v35, &v25);
        sub_1D5D03180(v17, *(&v17 + 1), v18);
        v19 = a1(&v29);
        sub_1D5D07BA8(v29, *(&v29 + 1), v30);
        if (v19)
        {

          (v24)(&v32 + 8);

          v25 = v31;
          v26 = v32;
          v27 = v33;
          v28 = v34;
          sub_1D60721EC(&v25, qword_1EDF264D0, &type metadata for FormatStateMachineEvent, type metadata accessor for FormatCommandActionValue.CaseValue);
          return;
        }

        ++v10;
        v25 = v31;
        v26 = v32;
        v27 = v33;
        v28 = v34;
        sub_1D60721EC(&v25, qword_1EDF264D0, &type metadata for FormatStateMachineEvent, type metadata accessor for FormatCommandActionValue.CaseValue);
        v11 += 64;
        if (v9 == v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v20 = v7[5];
      v22 = v7[6];
      v21 = v7[7];
      v23 = v7[8];
      *&v35 = v7[4];
      *(&v35 + 1) = v20;
      *&v36 = v22;
      *(&v36 + 1) = v21;
      *&v37 = v23;

      (v24)(&v35);
    }
  }
}

void sub_1D6071690(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, __n128))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = a4;
    v15 = Strong;
    v6 = *(Strong + 24);
    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = 0;
      v9 = (v6 + 56);
      while (v8 < *(v6 + 16))
      {
        v10 = *v9;
        v11 = *(v9 - 8);
        v13 = *(v9 - 3);
        v12 = *(v9 - 2);
        v21 = v13;
        v22 = v12;
        v23 = v11;
        v24 = v10;
        v18 = v13;
        v19 = v12;
        v20 = v11;
        sub_1D5D03180(v13, v12, v11);

        sub_1D5D03180(v13, v12, v11);
        v14 = a1(&v18);
        sub_1D5D07BA8(v18, v19, v20);
        if (v14)
        {

          (v16)(&v24);

          sub_1D5D07BA8(v21, v22, v23);
          goto LABEL_9;
        }

        ++v8;
        sub_1D5D07BA8(v13, v12, v11);

        v9 += 4;
        if (v7 == v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v21 = *(v15 + 32);

      (v16)(&v21);

LABEL_9:
    }
  }
}

void sub_1D607184C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *v5;
  if (*v5 < 0)
  {
    v17 = v5[1];
    v16 = v5[2];
    v18 = [objc_opt_self() defaultCenter];
    v19 = sub_1D726203C();
    v20 = [objc_opt_self() mainQueue];
    v21 = swift_allocObject();
    v21[2] = v9 & 0x7FFFFFFFFFFFFFFFLL;
    v21[3] = v17;
    v21[4] = v16;
    v21[5] = a3;
    v21[6] = a4;
    v26[4] = sub_1D60720A0;
    v26[5] = v21;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 1107296256;
    v26[2] = sub_1D6071E1C;
    v26[3] = &block_descriptor_17;
    v22 = _Block_copy(v26);

    sub_1D60720B0(v9);

    v23 = [v18 addObserverForName:v19 object:0 queue:v20 usingBlock:v22];
    _Block_release(v22);

    v24 = type metadata accessor for FormatNotificationCenterObserver();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    a5[3] = v24;
    a5[4] = sub_1D6072100();
    *a5 = v25;
  }

  else
  {
    v12 = *(v9 + 16);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a3;
    v14[4] = a4;
    v15 = *(v12 + 72);

    v15(a1, a2, sub_1D6072158, v14);
  }
}

void sub_1D6071AF8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *))
{
  v8 = sub_1D7257B0C();
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  *&v21 = 1635017060;
  *(&v21 + 1) = 0xE400000000000000;
  sub_1D7263C9C();
  if (!*(v9 + 16) || (v10 = sub_1D6D62B40(v29), (v11 & 1) == 0))
  {

    sub_1D5F42574(v29);
LABEL_11:
    v30 = 0u;
    v31 = 0u;
    goto LABEL_12;
  }

  sub_1D5B76B10(*(v9 + 56) + 32 * v10, &v30);
  sub_1D5F42574(v29);

  if (!*(&v31 + 1))
  {
LABEL_12:
    sub_1D60721EC(&v30, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    return;
  }

  if (swift_dynamicCast())
  {
    v25 = v29[4];
    v26 = v29[5];
    v27 = v29[6];
    v28 = v29[7];
    v21 = v29[0];
    v22 = v29[1];
    v23 = v29[2];
    v24 = v29[3];
    if (!a4)
    {
      v18 = *(&v26 + 1);
      v19 = v27;
      v20 = v28;

      a5(&v18);

      if (qword_1EDF16528 != -1)
      {
        swift_once();
      }

      v12 = qword_1EDFFC6E8;
      sub_1D725AB5C();
      v13 = v22;

      sub_1D725A76C();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v12 + 16);
      *(v12 + 16) = 0x8000000000000000;
      sub_1D6D76D20(v16, v17, v13, *(&v13 + 1), isUniquelyReferenced_nonNull_native);

      *(v12 + 16) = v15;
      swift_endAccess();
      sub_1D725A77C();
      sub_1D6072298(&v21);
      goto LABEL_17;
    }

    if (v21 == __PAIR128__(a4, a3) || (sub_1D72646CC() & 1) != 0)
    {
      v18 = *(&v26 + 1);
      v19 = v27;
      v20 = v28;

      a5(&v18);
      sub_1D6072298(&v21);

LABEL_17:

      return;
    }

    sub_1D6072298(&v21);
  }
}

uint64_t sub_1D6071E1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7257B1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1D7257AEC();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D6071F10(uint64_t a1)
{
  type metadata accessor for FormatLayoutViewToken();
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8NewsFeed21FormatLayoutViewToken_children;
    swift_beginAccess();
    v4 = swift_unknownObjectRetain();
    MEMORY[0x1DA6F9CE0](v4);
    if (*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D6072020()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1D60720B0(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  return result;
}

unint64_t sub_1D6072100()
{
  result = qword_1EDF08288;
  if (!qword_1EDF08288)
  {
    type metadata accessor for FormatNotificationCenterObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08288);
  }

  return result;
}

uint64_t sub_1D6072164(uint64_t a1, uint64_t a2)
{
  sub_1D6072248(0, qword_1EDF264D0, &type metadata for FormatStateMachineEvent, type metadata accessor for FormatCommandActionValue.CaseValue);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60721EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D6072248(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6072248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_1D60722EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_cursor] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v8 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  if (a3)
  {
    v16 = sub_1D726203C();
  }

  else
  {
    v16 = 0;
  }

  v73.receiver = v3;
  v73.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v73, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v18 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView;
  v19 = *&v17[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView];
  v20 = objc_opt_self();
  v21 = v17;
  v22 = v19;
  v23 = [v20 systemYellowColor];
  v24 = [v23 colorWithAlphaComponent_];

  [v22 setBackgroundColor_];
  v25 = [v21 contentView];
  [v25 addSubview_];

  v26 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer;
  [*&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer] setLineWidth_];
  v27 = *&v21[v26];
  sub_1D5E42B34();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D72816C0;
  sub_1D5BAFAD8();
  v29 = v27;
  *(v28 + 32) = sub_1D72636EC();
  v30 = sub_1D726265C();

  [v29 setLineDashPattern_];

  v31 = *&v21[v26];
  v32 = [v20 lightGrayColor];
  v33 = [v32 CGColor];

  [v31 setStrokeColor_];
  v34 = *&v21[v26];
  v35 = [v20 clearColor];
  v36 = [v35 &selRef_constraintEqualToAnchor_constant_];

  [v34 setFillColor_];
  v37 = [v21 contentView];
  v38 = [v37 layer];

  [v38 addSublayer_];
  v39 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel;
  v40 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 systemFontOfSize_];
  [v42 setFont_];

  v44 = [v21 contentView];
  [v44 addSubview_];

  v45 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel;
  v46 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel];
  v47 = [v41 systemFontOfSize_];
  [v46 setFont_];

  v48 = [v21 contentView];
  [v48 addSubview_];

  v49 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel;
  v50 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel];
  v51 = [v41 systemFontOfSize_];
  [v50 setFont_];

  v52 = [v21 contentView];
  [v52 addSubview_];

  v53 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel;
  v54 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel];
  v55 = [v41 systemFontOfSize_];
  [v54 setFont_];

  v56 = [v21 contentView];
  [v56 addSubview_];

  v57 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel;
  v58 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel];
  v59 = [v41 systemFontOfSize_];
  [v58 setFont_];

  v60 = [v21 contentView];
  [v60 addSubview_];

  v61 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView;
  v62 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView];
  v63 = [v20 systemYellowColor];
  [v62 setBackgroundColor_];

  [*&v21[v61] setFrame_];
  v64 = [*&v21[v61] layer];
  [v64 setCornerRadius_];

  v65 = [v21 contentView];
  [v65 addSubview_];

  v66 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer;
  [*&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer] setLineWidth_];
  v67 = *&v21[v66];
  v68 = [v20 clearColor];
  v69 = [v68 CGColor];

  [v67 setFillColor_];
  [*&v21[v66] setLineJoin_];
  [*&v21[v66] setLineCap_];
  v70 = [v21 contentView];

  v71 = [v70 layer];
  [v71 addSublayer_];

  return v21;
}

void sub_1D6072C0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725A2CC();
  v112 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v111 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D7259FDC();
  v110 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v6);
  v109 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725A5BC();
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v106 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D7259F6C();
  v104 = *(v105 - 1);
  MEMORY[0x1EEE9AC00](v105, v11);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725A04C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725A32C();
  v20 = *(v19 - 8);
  *&v22 = MEMORY[0x1EEE9AC00](v19, v21).n128_u64[0];
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118.receiver = v1;
  v118.super_class = ObjectType;
  objc_msgSendSuper2(&v118, sel_layoutSubviews, v22);
  if (*&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_cursor])
  {
    v113 = v3;
    v25 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel];
    v116 = 0x203A73736150;
    v117 = 0xE600000000000000;

    sub_1D725A40C();
    sub_1D725A31C();
    (*(v20 + 8))(v24, v19);
    sub_1D5B6ABFC(&qword_1EC883010, MEMORY[0x1E69D71B8], MEMORY[0x1E69D71C0]);
    v26 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v26);

    (*(v15 + 8))(v18, v14);
    v27 = sub_1D726203C();

    [v25 setText_];

    [v25 sizeToFit];
    [v25 frame];
    Width = CGRectGetWidth(v119);
    [v25 frame];
    [v25 setFrame_];
    v29 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel];
    v116 = 0x676E697A69736552;
    v117 = 0xEA0000000000203ALL;
    sub_1D725A44C();
    sub_1D5B6ABFC(&qword_1EC883018, MEMORY[0x1E69D7168], MEMORY[0x1E69D7170]);
    v30 = v105;
    v31 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v31);

    (*(v104 + 8))(v13, v30);
    v32 = sub_1D726203C();

    [v29 setText_];

    [v29 sizeToFit];
    [v1 bounds];
    Height = CGRectGetHeight(v121);
    [v29 frame];
    v34 = Height - CGRectGetHeight(v122) + -8.0;
    [v29 frame];
    v35 = CGRectGetWidth(v123);
    [v29 frame];
    [v29 setFrame_];
    v36 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel];
    sub_1D725A41C();
    sub_1D725A42C();
    sub_1D726327C();
    sub_1D707FF40(v37, v38, v39, v40);
    v41 = sub_1D726203C();

    [v36 setText_];

    [v36 sizeToFit];
    v42 = [v1 contentView];
    [v42 center];
    v44 = v43;
    v46 = v45;

    [v36 setCenter_];
    [v1 bounds];
    v47 = CGRectGetWidth(v125) * 0.5;
    v48 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer];
    [v1 bounds];
    v49 = CGRectGetWidth(v126) * 0.5 - v47 * 0.5;
    [v1 bounds];
    [v48 setFrame_];
    [v48 bounds];
    v54 = [objc_opt_self() bezierPathWithRect_];
    v55 = [v54 CGPath];

    [v48 setPath_];
    sub_1D725A41C();
    CGRectGetWidth(v128);
    v56 = v1;
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A41C();
      CGRectGetWidth(v129);
    }

    sub_1D725A41C();
    CGRectGetHeight(v130);
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A41C();
      CGRectGetHeight(v131);
    }

    sub_1D725A3BC();
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A3BC();
    }

    sub_1D725A3BC();
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A3BC();
    }

    v57 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView];
    [v48 frame];
    [v57 &selRef_isHiddenFromAutoFavorites];
    v58 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer];
    v59 = [objc_opt_self() systemYellowColor];
    v60 = [v59 CGColor];

    [v58 setStrokeColor_];
    v61 = v106;
    sub_1D725A45C();
    v63 = v107;
    v62 = v108;
    v64 = (*(v107 + 88))(v61, v108);
    v65 = *MEMORY[0x1E69D74D0];
    v105 = v48;
    if (v64 == v65)
    {
      v66 = *&v56[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView];
      [v57 frame];
      MaxX = CGRectGetMaxX(v132);
      [v57 frame];
      [v66 setCenter_];
      [v66 center];
      v69 = v68;
      v71 = v70;
      [v48 frame];
      v72 = CGRectGetMaxX(v134);
      [v48 frame];
      MinY = CGRectGetMinY(v135);
      v74 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      [v74 moveToPoint_];
      [v74 addLineToPoint_];
      sub_1D6089D88(v74, v69, v71, v72, MinY);
      v75 = [v74 CGPath];
    }

    else
    {
      if (v64 != *MEMORY[0x1E69D74D8])
      {
        (*(v63 + 8))(v61, v62);
        goto LABEL_16;
      }

      v76 = *&v56[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView];
      [v57 frame];
      MinX = CGRectGetMinX(v136);
      [v57 frame];
      [v76 setCenter_];
      [v76 center];
      v79 = v78;
      v81 = v80;
      [v48 frame];
      v82 = CGRectGetMinX(v138);
      [v48 frame];
      MaxY = CGRectGetMaxY(v139);
      v74 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      [v74 moveToPoint_];
      [v74 addLineToPoint_];
      sub_1D6089D88(v74, v79, v81, v82, MaxY);
      v75 = [v74 CGPath];
    }

    v84 = v75;

    [v58 setPath_];
LABEL_16:
    v85 = *&v56[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel];
    v86 = v109;
    sub_1D725A3EC();
    v87 = v111;
    sub_1D7259FBC();
    v110 = *(v110 + 8);
    (v110)(v86, v114);
    sub_1D725A2BC();
    v112 = *(v112 + 8);
    (v112)(v87, v113);
    v88 = sub_1D726203C();

    [v85 setText_];

    [v85 sizeToFit];
    v89 = v56;
    [v56 bounds];
    v90 = CGRectGetWidth(v140) * 0.5;
    [v85 bounds];
    v91 = v90 - CGRectGetWidth(v141) * 0.5;
    v92 = v105;
    [v105 frame];
    v93 = CGRectGetMinY(v142);
    [v85 bounds];
    v94 = v93 - CGRectGetHeight(v143) + -4.0;
    [v85 bounds];
    v95 = CGRectGetWidth(v144);
    [v85 bounds];
    v96 = v92;
    [v85 setFrame_];
    v97 = *&v89[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel];
    sub_1D725A3EC();
    sub_1D7259FCC();
    (v110)(v86, v114);
    sub_1D725A2BC();
    (v112)(v87, v113);
    v98 = sub_1D726203C();

    [v97 setText_];

    [v97 sizeToFit];
    [v96 frame];
    v99 = CGRectGetMaxX(v146) + 4.0;
    [v89 bounds];
    v100 = CGRectGetHeight(v147) * 0.5;
    [v97 bounds];
    v101 = v100 - CGRectGetHeight(v148) * 0.5;
    [v97 bounds];
    v102 = CGRectGetWidth(v149);
    [v97 bounds];
    [v97 setFrame_];
  }
}

void sub_1D6073BA0()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_cursor) = 0;
  v1 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v2 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t FormatFrameNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatFrameNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatFrameNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatFrameNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t FormatFrameNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatFrameNode.__allocating_init(identifier:size:adjustments:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *a3;
  v12 = *(a5 + 32);
  v13 = *(a5 + 40);
  swift_beginAccess();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v11;
  swift_beginAccess();
  *(v10 + 40) = a4;
  v14 = *(a5 + 16);
  *(v10 + 48) = *a5;
  *(v10 + 64) = v14;
  *(v10 + 80) = v12;
  *(v10 + 88) = v13;
  return v10;
}

uint64_t FormatFrameNode.init(identifier:size:adjustments:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a5 + 32);
  v12 = *(a5 + 40);
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v10;
  swift_beginAccess();
  *(v5 + 40) = a4;
  v13 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v13;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  return v5;
}

void *FormatFrameNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t FormatFrameNode.__deallocating_deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6074160(uint64_t a1)
{
  result = sub_1D60742A4(&qword_1EC883020, &protocol conformance descriptor for FormatFrameNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60741A4(void *a1)
{
  a1[1] = sub_1D60742A4(&qword_1EDF31958, &protocol conformance descriptor for FormatFrameNode);
  a1[2] = sub_1D60742A4(&qword_1EDF118D8, &protocol conformance descriptor for FormatFrameNode);
  result = sub_1D60742A4(&qword_1EC883028, &protocol conformance descriptor for FormatFrameNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6074260(uint64_t a1)
{
  result = sub_1D60742A4(&qword_1EC883030, &protocol conformance descriptor for FormatFrameNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60742A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFrameNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60742E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v17 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a4 + 16);
  v18 = *(a4 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v26 = *(v17 + 32);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v18);

    v19 = v26;
    v18 = v20;
  }

  else
  {
  }

  v21 = swift_allocObject();
  v23 = *(a4 + 16);
  v22 = *(a4 + 24);
  type metadata accessor for FormatFrameNodeLayoutAttributes();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = v19;
  *(v24 + 40) = v18;
  *(v24 + 48) = v23;
  *(v24 + 56) = v22;
  *(v24 + 64) = a6;
  *(v24 + 72) = a7;
  *(v24 + 80) = a8;
  *(v24 + 88) = a9;
  *(v21 + 16) = v24;
  *a5 = v21 | 0x4000000000000000;
}

uint64_t sub_1D607446C(uint64_t a1)
{
  v2 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60747E4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v33 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for FormatDerivedDataBindingSwitchResult(0);
  sub_1D60748EC(a1 + *(v20 + 20), v19, sub_1D60747E4);
  v34 = v3;
  v21 = *(v3 + 48);
  v22 = v21(v19, 1, v2);
  sub_1D6074954(v19, sub_1D60747E4);
  if (v22 == 1)
  {
    sub_1D60748EC(a1 + *(v20 + 24), v15, sub_1D60747E4);
    if (v21(v15, 1, v2) == 1)
    {
      return sub_1D6074954(v15, sub_1D60747E4);
    }

    else
    {
      v25 = v35;
      sub_1D607483C(v15, v35);
      v26 = *(type metadata accessor for FormatDerivedDataBindingItemResult(0) + 20);
      v27 = v32;
      sub_1D60748EC(v25, v32, type metadata accessor for FormatSlotDefinitionItemSet);
      (*(v34 + 56))(v27, 0, 1, v2);
      v28 = v36;
      v29 = v33;
      v30 = v37;
      sub_1D6C956D4(v36 + v26, v27, v33);
      sub_1D6074954(v27, sub_1D60747E4);
      result = sub_1D6074954(v25, type metadata accessor for FormatSlotDefinitionItemSet);
      if (!v30)
      {
        return sub_1D60749B4(v29, v28 + v26);
      }
    }
  }

  else
  {
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D5E40444();
    swift_allocError();
    *v24 = 6;
    *(v24 + 8) = 0xD00000000000002FLL;
    *(v24 + 16) = 0x80000001D73C7B90;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

void sub_1D60747E4(uint64_t a1)
{
  if (!qword_1EDF22050)
  {
    type metadata accessor for FormatSlotDefinitionItemSet(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF22050);
    }
  }
}

uint64_t sub_1D607483C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FormatDerivedDataBindingItemResult(uint64_t a1)
{
  result = qword_1EC883038;
  if (!qword_1EC883038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D60748EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6074954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60749B4(uint64_t a1, uint64_t a2)
{
  sub_1D60747E4(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D6074A40(uint64_t a1)
{
  sub_1D60747E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D6074ABC()
{
  sub_1D5C14A38();
  v0 = sub_1D726338C();
  v1 = [objc_opt_self() configurationWithFont_];

  qword_1EC9BA770 = v1;
}

void sub_1D6074B34()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    xmmword_1EC9BA778 = 0uLL;
    qword_1EC9BA788 = v1;
    byte_1EC9BA790 = 0;
    *&xmmword_1EC9BA798 = 1701736270;
    *(&xmmword_1EC9BA798 + 1) = 0xE400000000000000;
    qword_1EC9BA7A8 = 0;
    unk_1EC9BA7B0 = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6074BCC()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x7974706D65;
  }

  return v1;
}

uint64_t sub_1D6074C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6074C6C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t static CoverIssueViewLayout.make18ColumnCatalogLayout(context:factories:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v11 = a1;
  v12 = a2;
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7378], v6);
  sub_1D6076C70(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D6074E08(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25[-v10];
  v12 = a2[40];
  v13 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v12);
  v14 = (*(v13 + 48))(v12, v13);
  v15 = a2[40];
  v16 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v15);
  v17 = (*(v16 + 56))(v15, v16);
  v18 = v14 + v17 + v17;
  v19 = sub_1D6076AA0(a2);
  if ((a2[7] & 4) != 0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 20.0;
  }

  v21 = v19;
  sub_1D726334C();
  [v21 boundingRectWithSize:35 options:0 context:?];
  v22 = v20 + v18 + 20.0 + CGRectGetWidth(v33) + 10.0;
  v32 = a1;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D74A8], v7);
  v26 = a2;
  v27 = a3;
  v28 = v22;
  v29 = 0x4024000000000000;
  v30 = v21;
  v31 = v20;
  v23 = MEMORY[0x1E69D7150];
  sub_1D6076C70(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  sub_1D6076CF4(&qword_1EDF18078, &qword_1EDF18070, v23, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D60750C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v51 = a4;
  v52 = a1;
  v48 = a2;
  v49 = a3;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (v43 - v16);
  v59 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4024000000000000;
  *v17 = v18;
  v19 = *MEMORY[0x1E69D7488];
  v20 = *(v14 + 104);
  v53 = v14 + 104;
  v50 = v19;
  v20(v17, v19, v13);
  v44 = v20;
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v23 = v22;
  v24 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21, MEMORY[0x1E69D6F40]);
  v47 = v23;
  v43[1] = v24;
  sub_1D7259A9C();
  v25 = *(v14 + 8);
  v25(v17, v13);
  v45 = v25;
  v46 = v14 + 8;
  v26 = a2;
  v27 = v52;
  sub_1D6B0960C(v26, v49, v52, 32.0);
  v59 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = 0x4030000000000000;
  *v17 = v28;
  v20(v17, v19, v13);
  sub_1D7259A9C();
  v25(v17, v13);
  v59 = v27;
  sub_1D5EF9444(0);
  v30 = v29;
  v31 = swift_allocBox();
  v33 = v32;
  v34 = *(v30 + 48);
  v35 = *MEMORY[0x1E69D71E8];
  v36 = sub_1D725A09C();
  v37 = *(*(v36 - 8) + 104);
  v37(v33, v35, v36);
  v37(v33 + v34, *MEMORY[0x1E69D7208], v36);
  *v17 = v31;
  v38 = v44;
  v44(v17, *MEMORY[0x1E69D7468], v13);
  v54 = a5;
  v55 = v48;
  v56 = a6;
  v57 = v51;
  v58 = a7;
  sub_1D72599EC();
  v39 = v45;
  v45(v17, v13);
  v40 = v52;
  v59 = v52;
  v41 = swift_allocObject();
  *(v41 + 16) = 0x404C000000000000;
  *v17 = v41;
  v38(v17, v50, v13);
  sub_1D7259A9C();
  v39(v17, v13);
  v59 = v40;
  v38(v17, *MEMORY[0x1E69D7460], v13);
  sub_1D7259B2C();
  return (v39)(v17, v13);
}

uint64_t sub_1D607559C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v52 = a1;
  v53 = a3;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v51 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v47 - v13);
  v58 = a1;
  sub_1D5EF9444(0);
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18;
  v49 = *(v16 + 48);
  v50 = v17;
  v20 = sub_1D725A09C();
  v21 = swift_allocBox();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *v23 = v24;
  v25 = *MEMORY[0x1E69D71F0];
  v26 = *(*(v20 - 8) + 104);
  v26(v23, v25, v20);
  *v19 = v21;
  v26(v19, *MEMORY[0x1E69D71F8], v20);
  v27 = swift_allocObject();
  v28 = a2;
  v48 = a2;
  v29 = *(a2 + 320);
  v30 = *(v28 + 328);
  __swift_project_boxed_opaque_existential_1((v28 + 296), v29);
  *(v27 + 16) = (*(v30 + 24))(v29, v30);
  v31 = v49;
  *(v19 + v49) = v27;
  v26((v19 + v31), v25, v20);
  v32 = v51;
  *v14 = v50;
  v33 = v54;
  v34 = *(v54 + 104);
  v34(v14, *MEMORY[0x1E69D7468], v32);
  v57 = v48;
  v35 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v35, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();
  v36 = *(v33 + 8);
  v36(v14, v32);
  v54 = v33 + 8;
  v37 = v52;
  v58 = v52;
  v38 = swift_allocObject();
  *(v38 + 16) = a5;
  *v14 = v38;
  v34(v14, *MEMORY[0x1E69D7480], v32);
  sub_1D7259A9C();
  v36(v14, v32);
  v58 = v37;
  v34(v14, *MEMORY[0x1E69D74A8], v32);
  sub_1D6076D50(0);
  sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = *MEMORY[0x1E69D7070];
  sub_1D6076DC4(0, &qword_1EDF180E0, MEMORY[0x1E69D7078]);
  (*(*(v45 - 8) + 104))(v43 + v42, v44, v45);
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69D7080], v40);
  v55 = v53;
  v56 = a6;
  sub_1D72599EC();

  return (v36)(v14, v32);
}

uint64_t sub_1D6075B08(uint64_t a1, uint64_t a2)
{
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v29 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 336);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D6076D50(0);
    sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = *MEMORY[0x1E69D7068];
    sub_1D6076DC4(0, &qword_1EDF180E0, MEMORY[0x1E69D7078]);
    (*(*(v26 - 8) + 104))(v24 + v23, v25, v26);
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D7080], v21);
    v27 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v27, MEMORY[0x1E69D6F40]);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v28 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6075F5C(uint64_t a1, void *a2, double a3)
{
  v40 = a2;
  v47 = a1;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v42 = v6;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v35 - v10);
  v48 = a1;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v41 = v11;
  *v11 = v12;
  v13 = *MEMORY[0x1E69D73E8];
  v14 = *(v8 + 104);
  v45 = v8 + 104;
  v46 = v14;
  v14(v11, v13, v7);
  sub_1D6076D50(0);
  sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v39 = v20;
  *(v20 + 16) = xmmword_1D7270C10;
  v21 = v20 + v19;
  *(v20 + v19) = a3;
  v37 = *MEMORY[0x1E69D7240];
  v22 = v37;
  v23 = sub_1D725A13C();
  v24 = *(v23 - 8);
  v36 = *(v24 + 104);
  v38 = v24 + 104;
  v36(v21, v22, v23);
  v25 = *MEMORY[0x1E69D72D8];
  v26 = sub_1D725A29C();
  v27 = *(*(v26 - 8) + 104);
  v27(v21, v25, v26);
  v28 = *(v17 + 104);
  v28(v21, *MEMORY[0x1E69D6FC0], v16);
  *(v21 + v18) = 0x4008000000000000;
  v36(v21 + v18, v37, v23);
  v27(v21 + v18, v25, v26);
  v28(v21 + v18, *MEMORY[0x1E69D6FD0], v16);
  v29 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v29, MEMORY[0x1E69D6F40]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  v30 = v40;
  v31 = v41;
  sub_1D7259A7C();

  v32 = v42;
  v33 = *(v43 + 8);
  v33(v31, v42);
  v48 = v47;
  swift_getKeyPath();
  v46(v31, *MEMORY[0x1E69D7470], v32);
  sub_1D7259A7C();

  return (v33)(v31, v32);
}

uint64_t sub_1D6076418(void *a1)
{
  v1 = *a1;
  v83 = a1;
  v85 = v1;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v58 - v7);
  v86 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444(0);
  v10 = v9;
  v82 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *MEMORY[0x1E69D71E8];
  v16 = sub_1D725A09C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  v19 = v17 + 104;
  v76 = v16;
  v18(v13, v15);
  v77 = v19;
  v72 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4000000000000000;
  *(v13 + v14) = v20;
  v75 = *MEMORY[0x1E69D71F0];
  (v18)(v13 + v14);
  *v8 = v11;
  v79 = *MEMORY[0x1E69D7468];
  v21 = v5;
  v22 = *(v5 + 104);
  v80 = v5 + 104;
  v81 = v22;
  (v22)(v8);
  sub_1D6076D50(0);
  v74 = v23;
  sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
  v64 = v24;
  v25 = *(v24 - 8);
  v71 = *(v25 + 72);
  v73 = *(v25 + 80);
  v26 = (v73 + 32) & ~v73;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7273AE0;
  v70 = *MEMORY[0x1E69D7050];
  v28 = v70;
  sub_1D6076DC4(0, &qword_1EDF180E0, MEMORY[0x1E69D7078]);
  v67 = v29;
  v30 = *(v29 - 8);
  v68 = *(v30 + 104);
  v69 = v30 + 104;
  v59 = v26;
  v68(v27 + v26, v28, v29);
  v63 = *MEMORY[0x1E69D7080];
  v65 = *(v25 + 104);
  v66 = v25 + 104;
  v65(v27 + v26);
  v62 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
  v61 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  v84 = v8;
  sub_1D7259A7C();

  v31 = *(v21 + 8);
  v60 = v21 + 8;
  KeyPath = v31;
  v31(v8, v4);
  v86 = v83;
  v83 = swift_getKeyPath();
  v32 = v82;
  v33 = swift_allocBox();
  v35 = v34;
  v36 = *(v32 + 48);
  v37 = swift_allocObject();
  *(v37 + 16) = 0x403C000000000000;
  *v35 = v37;
  v38 = v75;
  v39 = v76;
  v40 = v72;
  (v72)(v35, v75, v76);
  v41 = swift_allocObject();
  *(v41 + 16) = 0x403C000000000000;
  *(v35 + v36) = v41;
  v40(v35 + v36, v38, v39);
  *v84 = v33;
  v58 = v4;
  v81();
  v42 = v71;
  v43 = v59;
  v44 = swift_allocObject();
  v82 = v44;
  *(v44 + 16) = xmmword_1D7279970;
  v45 = v44 + v43;
  v46 = v67;
  v47 = v68;
  v68(v45, v70, v67);
  v48 = v63;
  v49 = v64;
  v50 = v65;
  (v65)(v45, v63, v64);
  v47(v45 + v42, *MEMORY[0x1E69D7070], v46);
  v50(v45 + v42, v48, v49);
  __asm { FMOV            V0.2D, #-10.0 }

  *(v45 + 2 * v42) = _Q0;
  v50(v45 + 2 * v42, *MEMORY[0x1E69D7090], v49);
  v56 = v84;
  sub_1D7259A7C();

  return KeyPath(v56, v58);
}