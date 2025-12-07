uint64_t FeedGroupKnobsRuleList.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = *v1;
  v21 = *(*v1 + 80);
  v7 = *(v5 + 96);
  v8 = *(v5 + 104);
  v23 = *(v6 + 88);
  v27 = v21;
  v22 = v21;
  *&v28 = v7;
  *(&v28 + 1) = v8;
  type metadata accessor for FeedGroupKnobsRuleList.CodingKeys(255, &v27);
  swift_getWitnessTable();
  v9 = sub_1D726446C();
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - v11;
  v18 = v3[3];
  v33 = v18;
  v28 = v23;
  v27 = vdupq_lane_s64(v21, 0);
  v30 = *(&v21 + 1);
  v29 = v8;
  *&v23 = v7;
  v31 = v7;
  v32 = v8;
  v13 = type metadata accessor for FeedGroupKnobsRuleList.Selector(255, &v27);
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B3C();
    v33 = v3[2];
    __swift_mutable_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    sub_1D72627FC();
    v24 = v23;
    swift_getWitnessTable();
    sub_1D726476C();
    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v17 = v13;
    *&v21 = v2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B5C();
    v27.i64[0] = v3[2];
    LOBYTE(v33) = 0;
    sub_1D72627FC();
    v26 = v23;
    swift_getWitnessTable();
    v16 = v20;
    v15 = v21;
    sub_1D726443C();
    if (!v15)
    {
      v27.i64[0] = v18;
      LOBYTE(v33) = 1;
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1D726443C();
    }

    return (*(v19 + 8))(v12, v16);
  }
}

uint64_t FeedGroupKnobsRuleList.__allocating_init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedGroupKnobsRuleList.init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static FeedGroupKnobsRuleList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[10];
  v4 = v2[13];
  if (sub_1D726280C())
  {
    v5 = v2[11];
    v6 = v2[12];
    v9[0] = v3;
    v9[1] = v3;
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v4;
    v9[5] = v5;
    v9[6] = v6;
    v9[7] = v4;
    type metadata accessor for FeedGroupKnobsRuleList.Selector(0, v9);
    swift_getWitnessTable();
    v7 = sub_1D726280C();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *FeedGroupKnobsRuleList.Selector.__allocating_init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  result[3] = a2[1];
  result[4] = a1;
  result[2] = v5;
  return result;
}

void *FeedGroupKnobsRuleList.Selector.init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[3] = a2[1];
  v2[4] = a1;
  v2[2] = v3;
  return v2;
}

uint64_t FeedGroupKnobsRuleList.Selector.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeedGroupKnobsRuleList.Selector.init(from:)(a1);
  return v2;
}

void *FeedGroupKnobsRuleList.Selector.init(from:)(void *a1)
{
  v35 = a1;
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 128);
  v32 = sub_1D725AAEC();
  v8 = sub_1D726393C();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v33 = &v28 - v10;
  *&v11 = v7;
  *(&v11 + 1) = *(v4 + 136);
  *&v12 = *(v4 + 112);
  v36 = *(v4 + 80);
  v37 = v5;
  v30 = v5;
  v13 = *(v4 + 96);
  *(&v12 + 1) = v6;
  v39 = v12;
  v40 = v11;
  v38 = v13;
  type metadata accessor for FeedGroupKnobsRuleList.Selector.CodingKeys(255, &v36);
  swift_getWitnessTable();
  v14 = sub_1D726435C();
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v34;
  sub_1D7264B0C();
  if (v18)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v36) = 1;
    v19 = v32;
    swift_getWitnessTable();
    v20 = v33;
    sub_1D726421C();
    v21 = *(v19 - 8);
    if ((*(v21 + 48))(v20, 1, v19) == 1)
    {
      (*(v28 + 8))(v33, v29);
      v22 = sub_1D726275C();
    }

    else
    {
      v23 = v32;
      v24 = v33;
      v22 = sub_1D725A74C();
      (*(v21 + 8))(v24, v23);
    }

    v25 = v31;
    v2[4] = v22;
    v41 = 0;
    sub_1D5C36978();
    sub_1D726431C();
    (*(v25 + 8))(v17, v14);
    v27 = v37;
    v2[2] = v36;
    v2[3] = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v2;
}

uint64_t static FeedGroupKnobsRuleList.Selector.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D726280C();
}

uint64_t sub_1D6CD8D98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6CD8DEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleList.Selector.deinit()
{

  return v0;
}

uint64_t FeedGroupKnobsRuleList.Selector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FeedGroupKnobsRuleList.Selector.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v18 = *(*v2 + 80);
  v14 = *(v4 + 88);
  v19 = v14;
  v20 = *(v4 + 104);
  v21 = v5;
  v15 = v4[8];
  v22 = v15;
  type metadata accessor for FeedGroupKnobsRuleList.Selector.CodingKeys(255, &v18);
  swift_getWitnessTable();
  v6 = sub_1D726446C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v11 = v2[3];
  v18 = v2[2];
  *&v19 = v11;
  v23 = 0;
  sub_1D5D3E60C();

  v12 = v16;
  sub_1D726443C();

  if (!v12)
  {
    v18 = v2[4];
    v23 = 1;
    sub_1D72627FC();
    v17 = v15;
    swift_getWitnessTable();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6CD913C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6CD9190@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleList.Selector.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6CD91EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6CD9260(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6CD92CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6CD933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6CD93AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6CD913C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6CD93E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6CD913C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6CD941C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6CD9470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleList.deinit()
{

  return v0;
}

uint64_t FeedGroupKnobsRuleList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CD952C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleList.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatEquationToken.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14[15] = *v10;
    return FormatEquationOperator.description.getter();
  }

  else
  {
    (*(v3 + 32))(v5, v10, v2);
    v13 = sub_1D72644BC();
    (*(v3 + 8))(v5, v2);
    return v13;
  }
}

uint64_t static FormatEquationToken.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v31 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v29[0] = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v5;
  v7 = type metadata accessor for FormatEquationToken(0, v6, v5, v5);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v29 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v17);
  v20 = v29 - v19;
  v22 = *(v21 + 48);
  v23 = *(v8 + 16);
  v23(v29 - v19, v32, v7, v18);
  (v23)(&v20[v22], v33, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v23)(v15, v20, v7);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = v31;
      v26 = v29[0];
      (*(v31 + 32))(v29[0], &v20[v22], a3);
      v24 = sub_1D7261FBC();
      v27 = *(v25 + 8);
      v27(v26, a3);
      v27(v15, a3);
      goto LABEL_8;
    }

    (*(v31 + 8))(v15, a3);
    goto LABEL_6;
  }

  (v23)(v11, v20, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    v24 = 0;
    v8 = v30;
    v7 = TupleTypeMetadata2;
    goto LABEL_8;
  }

  v24 = (0x29282F2A2D2BuLL >> (8 * *v11)) == (0x29282F2A2D2BuLL >> (8 * v20[v22]));
LABEL_8:
  (*(v8 + 8))(v20, v7);
  return v24 & 1;
}

uint64_t sub_1D6CD9C94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D6CD9DA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1D6CDA0C4(id *a1@<X0>, SEL *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(v7, *a2)) != 0)
  {
    v9 = v8;
    v10 = sub_1D726207C();
    v12 = v11;

    *a4 = v10;
    a4[1] = v12;
  }

  else
  {
    sub_1D5F82C30();
    swift_allocError();
    *v13 = a3;
    swift_willThrow();
  }
}

uint64_t sub_1D6CDA338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5C483D4();
  sub_1D725BDCC();
  v4 = sub_1D725B92C();
  v5 = sub_1D725BA8C();

  return v5;
}

void *sub_1D6CDA3B4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_viewMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1D5B69D90(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

void sub_1D6CDA440(void *a1, uint64_t a2)
{
  v19 = a1;
  sub_1D5E2B010();
  sub_1D6CDC4B0();
  v4 = a1;
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v17, v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v5 = sub_1D725AA4C();
    v7 = v6;
    v8 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_viewMap;
    swift_beginAccess();
    v9 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a2 + v8);
    *(a2 + v8) = 0x8000000000000000;
    sub_1D6D78654(v9, v5, v7, isUniquelyReferenced_nonNull_native);

    *(a2 + v8) = v19;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1D6CDC514(v17, sub_1D6CDC574);
  }

  v11 = [v4 subviews];
  v12 = sub_1D726267C();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_13:

    return;
  }

  v13 = sub_1D7263BFC();
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6FB460](i, v12);
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      v16 = v15;
      sub_1D6CDA440(v15, a2);
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1D6CDA64C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1D7263F4C();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1D7263F5C();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D726290C();
  v2[20] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v2[21] = v6;
  v2[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D6CDA7AC, v6, v5);
}

uint64_t sub_1D6CDA7AC()
{
  v1 = v0[10];
  type metadata accessor for FormatLayoutView(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
    v4 = v2;
    swift_beginAccess();
    v5 = *(v4 + v3);
    v0[23] = v5;
    if (v5 >> 62)
    {
LABEL_38:
      v6 = sub_1D7263BFC();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[24] = v6;
    v1 = v0[10];
    if (v6)
    {
      v0[25] = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
      v7 = v1;

      v8 = 0;
      while (1)
      {
        v9 = v0[23];
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460](v8);
        }

        else
        {
          if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v10 = *(v9 + 8 * v8 + 32);
        }

        v11 = v10;
        v0[26] = v10;
        v0[27] = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        type metadata accessor for WebEmbedViewController(0);
        v12 = swift_dynamicCastClass();
        v0[28] = v12;
        if (v12)
        {
          v13 = v11;
          v14 = [v13 view];
          if (!v14)
          {
            goto LABEL_42;
          }

          v17 = v14;
          v18 = [v13 view];

          if (!v18)
          {
            goto LABEL_43;
          }

          v19 = v0[25];
          v20 = v0[11];
          [v18 frame];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;

          v29 = *(v20 + v19);
          [v17 convertRect:v29 toCoordinateSpace:{v22, v24, v26, v28}];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          [v29 frame];
          v57.origin.x = v38;
          v57.origin.y = v39;
          v57.size.width = v40;
          v57.size.height = v41;
          v56.origin.x = v31;
          v56.origin.y = v33;
          v56.size.width = v35;
          v56.size.height = v37;
          if (CGRectIntersectsRect(v56, v57))
          {
            break;
          }
        }

        v8 = v0[27];
        if (v8 == v0[24])
        {
          v44 = v0[10];

          v1 = v0[10];
          goto LABEL_20;
        }
      }

      v0[29] = sub_1D72628FC();
      v42 = sub_1D726285C();
      v16 = v43;
      v0[30] = v42;
      v0[31] = v43;
      v14 = sub_1D6CDACDC;
      v15 = v42;

      return MEMORY[0x1EEE6DFA0](v14, v15, v16);
    }
  }

LABEL_20:
  sub_1D725FBCC();
  if (swift_dynamicCastClass())
  {
    v54 = (*MEMORY[0x1E69D8860] + MEMORY[0x1E69D8860]);
    v45 = v1;
    v46 = swift_task_alloc();
    v0[38] = v46;
    *v46 = v0;
    v46[1] = sub_1D6CDB870;

    return v54();
  }

  else
  {
    v48 = [v1 subviews];
    sub_1D5E2B010();
    v49 = sub_1D726267C();
    v0[39] = v49;

    if (v49 >> 62)
    {
      v14 = sub_1D7263BFC();
    }

    else
    {
      v14 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[40] = v14;
    v15 = v0[39];
    if (v14)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1DA6FB460](0);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v14, v15, v16);
        }

        v50 = *(v15 + 32);
      }

      v51 = v50;
      v0[41] = v50;
      v0[42] = 1;
      v52 = swift_task_alloc();
      v0[43] = v52;
      *v52 = v0;
      v52[1] = sub_1D6CDBB48;

      return sub_1D6CDA64C(v51);
    }

    else
    {

      v53 = v0[1];

      return v53();
    }
  }
}

uint64_t sub_1D6CDACDC()
{
  v1 = sub_1D5E29560(&unk_1F5118D90);
  *(v0 + 256) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  *v2 = v0;
  v2[1] = sub_1D6CDAD94;

  return MEMORY[0x1EEE441D8](v1);
}

uint64_t sub_1D6CDAD94()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1D6CDAED8, v3, v2);
}

uint64_t sub_1D6CDAED8()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D6CDAF3C, v1, v2);
}

uint64_t sub_1D6CDAF3C(uint64_t a1)
{
  sub_1D726496C();
  *(v1 + 64) = xmmword_1D7348C70;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1D6CDAFBC, 0, 0);
}

uint64_t sub_1D6CDAFBC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_1D6CDC5CC(&qword_1EDF04298, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D726494C();
  sub_1D6CDC5CC(&qword_1EDF042A0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D7263F6C();
  v5 = *(v2 + 8);
  v0[34] = v5;
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_1D6CDB140;
  v8 = v0[15];
  v7 = v0[16];

  return MEMORY[0x1EEE6DE58](v8, v0 + 5, v7, v4);
}

uint64_t sub_1D6CDB140()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[15];
    v5 = v2[12];

    v3(v4, v5);
    v6 = sub_1D6CDB760;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[17];
    v9 = v2[18];
    v11 = v2[16];
    (v2[34])(v2[15], v2[12]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[21];
    v8 = v2[22];
    v6 = sub_1D6CDB2B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D6CDB2B0()
{
  v1 = *(v0 + 216);
  if (v1 != *(v0 + 192))
  {
    while (1)
    {
      v7 = *(v0 + 184);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v1);
      }

      else
      {
        if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v8 = *(v7 + 8 * v1 + 32);
      }

      v9 = v8;
      *(v0 + 208) = v8;
      *(v0 + 216) = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      type metadata accessor for WebEmbedViewController(0);
      v10 = swift_dynamicCastClass();
      *(v0 + 224) = v10;
      if (v10)
      {
        v11 = v9;
        v12 = [v11 view];
        if (!v12)
        {
          goto LABEL_37;
        }

        v15 = v12;
        v16 = [v11 view];

        if (!v16)
        {
          goto LABEL_38;
        }

        v17 = *(v0 + 200);
        v18 = *(v0 + 88);
        [v16 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v27 = *(v18 + v17);
        [v15 convertRect:v27 toCoordinateSpace:{v20, v22, v24, v26}];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        [v27 frame];
        v51.origin.x = v36;
        v51.origin.y = v37;
        v51.size.width = v38;
        v51.size.height = v39;
        v50.origin.x = v29;
        v50.origin.y = v31;
        v50.size.width = v33;
        v50.size.height = v35;
        if (CGRectIntersectsRect(v50, v51))
        {
          break;
        }
      }

      v1 = *(v0 + 216);
      if (v1 == *(v0 + 192))
      {
        goto LABEL_2;
      }
    }

    *(v0 + 232) = sub_1D72628FC();
    v40 = sub_1D726285C();
    v14 = v41;
    *(v0 + 240) = v40;
    *(v0 + 248) = v41;
    v12 = sub_1D6CDACDC;
    v13 = v40;

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

LABEL_2:
  v2 = *(v0 + 80);

  v3 = *(v0 + 80);
  sub_1D725FBCC();
  if (swift_dynamicCastClass())
  {
    v48 = (*MEMORY[0x1E69D8860] + MEMORY[0x1E69D8860]);
    v4 = v3;
    v5 = swift_task_alloc();
    *(v0 + 304) = v5;
    *v5 = v0;
    v5[1] = sub_1D6CDB870;

    return v48();
  }

  v42 = [v3 subviews];
  sub_1D5E2B010();
  v43 = sub_1D726267C();
  *(v0 + 312) = v43;

  if (v43 >> 62)
  {
LABEL_34:
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 320) = v12;
  v13 = *(v0 + 312);
  if (v12)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1DA6FB460](0);
      goto LABEL_26;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v13 + 32);
LABEL_26:
      v45 = v44;
      *(v0 + 328) = v44;
      *(v0 + 336) = 1;
      v46 = swift_task_alloc();
      *(v0 + 344) = v46;
      *v46 = v0;
      v46[1] = sub_1D6CDBB48;

      return sub_1D6CDA64C(v45);
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1D6CDB760()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D6CDB7D4, v1, v2);
}

uint64_t sub_1D6CDB7D4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6CDB870()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D6CDB990, v3, v2);
}

uint64_t sub_1D6CDB990()
{
  v1 = [*(v0 + 80) subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();
  *(v0 + 312) = v2;

  if (v2 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 320) = result;
  v4 = *(v0 + 312);
  if (result)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460](0);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;
    *(v0 + 328) = v5;
    *(v0 + 336) = 1;
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    *v7 = v0;
    v7[1] = sub_1D6CDBB48;

    return sub_1D6CDA64C(v6);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D6CDBB48()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1D6CDBDD0;
  }

  else
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1D6CDBC64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1D6CDBC64()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);

  if (v1 == v2)
  {

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA6FB460](*(v0 + 336));
  }

  else
  {
    if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  *(v0 + 328) = v6;
  *(v0 + 336) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = swift_task_alloc();
  *(v0 + 344) = v8;
  *v8 = v0;
  v8[1] = sub_1D6CDBB48;

  sub_1D6CDA64C(v7);
}

uint64_t sub_1D6CDBDD0()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6CDBE60()
{
  sub_1D6CDC514(v0 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_bindResult, type metadata accessor for DebugFormatCanvasBindResult);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatCanvasViewResult(uint64_t a1)
{
  result = qword_1EC894DE8;
  if (!qword_1EC894DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CDBF4C(uint64_t a1)
{
  result = type metadata accessor for DebugFormatCanvasBindResult(319);
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

uint64_t sub_1D6CDBFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D7263F4C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D6CDC0F8, 0, 0);
}

uint64_t sub_1D6CDC0F8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D7263F5C();
  v5 = sub_1D6CDC5CC(&qword_1EDF04298, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D726494C();
  sub_1D6CDC5CC(&qword_1EDF042A0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D7263F6C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D6CDC288;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D6CDC288()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6CDC444, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D6CDC444()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D6CDC4B0()
{
  result = qword_1EC894DF8;
  if (!qword_1EC894DF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC894DF8);
  }

  return result;
}

uint64_t sub_1D6CDC514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6CDC574(uint64_t a1)
{
  if (!qword_1EC894E00)
  {
    sub_1D6CDC4B0();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC894E00);
    }
  }
}

uint64_t sub_1D6CDC5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6CDC614@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void, __n128)@<X0>, uint64_t *a2@<X8>)
{
  v76 = a1;
  v71 = a2;
  v72 = sub_1D725ECFC();
  v73 = *(v72 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v66 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v66 - v11);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v66 - v15);
  v17 = type metadata accessor for FormatDecorationContext(0);
  v69 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v68 = v19;
  v70 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CDD04C(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v74 = &v66 - v31;
  v32 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    v33 = v30;
    v34 = v29;
    v35 = v28;
    v36 = *(v32 + 96);
    v78[4] = *(v32 + 80);
    v78[5] = v36;
    v78[6] = *(v32 + 112);
    v79 = *(v32 + 128);
    v37 = *(v32 + 16);
    v38 = *(v32 + 48);
    v39 = *(v32 + 64);
    v78[1] = *(v32 + 32);
    v78[2] = v38;
    v78[3] = v39;
    v78[0] = v37;
    sub_1D5D093E8(v78, v77);
    v40 = v76;
    sub_1D7259F1C();
    v42 = v41;
    sub_1D7259CAC();
    v43 = sub_1D725A3AC();
    (*(*(v43 - 8) + 56))(v23, 0, 1, v43);
    v44 = v74;
    v45 = v75;
    sub_1D6D566B8(v40, v23, v74, v42);
    sub_1D5D09904(v78);
    result = sub_1D6CDD150(v23);
    if (v45)
    {
      return result;
    }

    v75 = swift_allocObject();
    v47 = v70;
    sub_1D6AB2614(v76, v70);
    v76 = *(v34 + 32);
    v48 = v33;
    (v76)(v33, v44, v35);
    v49 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v50 = (v68 + *(v34 + 80) + v49) & ~*(v34 + 80);
    v51 = swift_allocObject();
    sub_1D6068458(v47, v51 + v49);
    v52 = v51 + v50;
    v53 = v75;
    (v76)(v52, v48, v35);
    *(v53 + 16) = sub_1D6CDD1AC;
    goto LABEL_4;
  }

  v54 = v12;
  v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v32 & 0x7FFFFFFFFFFFFFFFLL;
  v56 = *(v55 + 24);
  v77[0] = *(v55 + 16);

  swift_retain_n();
  v57 = v75;
  sub_1D6CDC614(v76, v16);
  if (!v57)
  {
    v58 = v16;

    v77[0] = v56;

    sub_1D6CDC614(v76, v54);

    v53 = swift_allocObject();
    v59 = v73 + 32;
    v60 = *(v73 + 32);
    v67 = v8;
    v61 = v8;
    v62 = v72;
    v60(v61, v54, v72);
    v60(v74, v58, v62);
    v63 = *(v59 + 48);
    v64 = (v63 + 16) & ~v63;
    v65 = (v3 + v63 + v64) & ~v63;
    v51 = swift_allocObject();
    v60((v51 + v64), v67, v62);
    v60((v51 + v65), v74, v62);
    *(v53 + 16) = sub_1D6CDD0A4;
LABEL_4:
    *(v53 + 24) = v51;
    *v71 = v53;
    return (*(v73 + 104))();
  }
}

BOOL static FormatPatternContent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0)
    {
      v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v18[0] = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      *&v16[0] = v12;
      *(&v16[0] + 1) = v13;

      if (static FormatPatternContent.== infix(_:_:)(v18, v16))
      {
        v14 = static FormatPatternContent.== infix(_:_:)(v18 + 1, v16 + 1);

        if (v14)
        {
          return 1;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  if (v3 < 0)
  {
    return 0;
  }

  v4 = *(v3 + 96);
  v16[4] = *(v3 + 80);
  v16[5] = v4;
  v16[6] = *(v3 + 112);
  v17 = *(v3 + 128);
  v5 = *(v3 + 32);
  v16[0] = *(v3 + 16);
  v16[1] = v5;
  v6 = *(v3 + 64);
  v16[2] = *(v3 + 48);
  v16[3] = v6;
  v7 = *(v2 + 96);
  v18[4] = *(v2 + 80);
  v18[5] = v7;
  v18[6] = *(v2 + 112);
  v19 = *(v2 + 128);
  v8 = *(v2 + 32);
  v18[0] = *(v2 + 16);
  v18[1] = v8;
  v9 = *(v2 + 64);
  v18[2] = *(v2 + 48);
  v18[3] = v9;

  v10 = _s8NewsFeed17FormatRemoteImageV2eeoiySbAC_ACtFZ_0(v18, v16);

  return v10;
}

unint64_t sub_1D6CDCE4C@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 96);
  v5 = sub_1D725844C();
  v6 = [v4 assetHandleForURL:v5 lifetimeHint:1];

  a3[3] = sub_1D5C169F4();
  result = sub_1D5EECFF8();
  a3[4] = result;
  *a3 = v6;
  return result;
}

uint64_t sub_1D6CDCEC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 userInterfaceStyle];
  if (v7 == 2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  if (v7 >= 2)
  {
    a3 = v8;
  }

  v9 = sub_1D725ECFC();
  v10 = *(*(v9 - 8) + 16);

  return v10(a4, a3, v9);
}

unint64_t sub_1D6CDCF88(uint64_t a1)
{
  result = sub_1D66A90EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CDCFB0(void *a1)
{
  a1[1] = sub_1D66A8DA4();
  a1[2] = sub_1D66A8F74();
  result = sub_1D6CDCFE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CDCFE8()
{
  result = qword_1EDF0EE40;
  if (!qword_1EDF0EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EE40);
  }

  return result;
}

void sub_1D6CDD04C(uint64_t a1)
{
  if (!qword_1EDF3BF60)
  {
    sub_1D725A3AC();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BF60);
    }
  }
}

uint64_t sub_1D6CDD0A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1D725ECFC() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_1D6CDCEC4(a1, v2 + v7, v8, a2);
}

uint64_t sub_1D6CDD150(uint64_t a1)
{
  sub_1D6CDD04C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6CDD1AC@<X0>(void *a2@<X8>)
{
  v4 = *(type metadata accessor for FormatDecorationContext(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  sub_1D72585BC();

  return sub_1D6CDCE4C(v2 + v5, a2);
}

unint64_t sub_1D6CDD298(uint64_t a1)
{
  result = sub_1D6CDD2C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CDD2C0()
{
  result = qword_1EC894E08;
  if (!qword_1EC894E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894E08);
  }

  return result;
}

unint64_t sub_1D6CDD314(void *a1)
{
  a1[1] = sub_1D6698AB8();
  a1[2] = sub_1D66FC0BC();
  result = sub_1D6CDD34C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CDD34C()
{
  result = qword_1EC894E10;
  if (!qword_1EC894E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894E10);
  }

  return result;
}

uint64_t PuzzleStackAccessoryView.__allocating_init(with:provider:colorTheme:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  ObjectType = swift_getObjectType();
  sub_1D6CDDCF8(a1, a2, a4, a5, a6, v13, ObjectType, a3);
  v16 = v15;
  sub_1D5B74328(a5, a6);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t PuzzleStackAccessoryView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double PuzzleStackAccessoryView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double PuzzleStackAccessoryView.height.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

void *PuzzleStackAccessoryView.containerView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_containerView);
  v2 = v1;
  return v1;
}

uint64_t PuzzleStackAccessoryView.init(with:provider:colorTheme:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  sub_1D6CDDCF8(a1, a2, a4, a5, a6, v6, ObjectType, a3);
  v15 = v14;
  sub_1D5B74328(a5, a6);
  swift_unknownObjectRelease();
  return v15;
}

Swift::Void __swiftcall PuzzleStackAccessoryView.layoutSubviews()()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_containerView];
  if (v2)
  {
    [v0 bounds];
    [v2 setFrame_];
  }

  v13 = v2;
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews];
  v15 = *(v3 + 16);
  if (v15)
  {
    v4 = 0;
    v5 = (v3 + 40);
    v6 = 0.0;
    v14 = *&v0[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews];
    do
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      ++v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 32);
      v11 = v7;
      v12 = v10(ObjectType, v8);
      [v1 bounds];
      [v11 &selRef_isHiddenFromAutoFavorites];

      v3 = v14;
      v6 = v6 + v12;
      v5 += 2;
    }

    while (v15 != v4);
    v2 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_8;
  }

  v6 = 0.0;
  if (v2)
  {
LABEL_8:
    [v1 bounds];
    [v2 setFrame_];
  }
}

void PuzzleStackAccessoryView.updateHeight(for:)(double a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews];
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 40);
    v8 = 0.0;
    while (v6 < *(v3 + 16))
    {
      ++v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);
      v13 = v9;
      v12(ObjectType, v10, a1);
      v14 = (*(v10 + 32))(ObjectType, v10);

      v8 = v8 + v14;
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0.0;
LABEL_7:
    v15 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height;
    swift_beginAccess();
    *&v2[v15] = v8;
    [v2 setNeedsLayout];
  }
}

id PuzzleStackAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PuzzleStackAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6CDDB98()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1D6CDDBF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_1D6CDDCB0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D6CDDCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v45 = a6;
  v50 = *(a3 + 8);
  v51 = *a3;
  v12 = &a6[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a1 + 32;
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = v15 + 72 * v14;
      v17 = v14;
      while (1)
      {
        if (v17 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v18 = *(v16 + 16);
        v19 = *(v16 + 48);
        v58 = *(v16 + 32);
        v59 = v19;
        v20 = *(v16 + 16);
        v57[0] = *v16;
        v57[1] = v20;
        v21 = *(v16 + 48);
        v55[2] = v58;
        v55[3] = v21;
        v60 = *(v16 + 64);
        v14 = v17 + 1;
        v56 = *(v16 + 64);
        v55[0] = v57[0];
        v55[1] = v18;
        v54[0] = v51;
        v54[1] = v50;
        v22 = *(a8 + 40);
        sub_1D6007B88(v57, v53);
        v23 = v22(v55, v54, a4, a5, a7, a8);
        v25 = v24;
        sub_1D6007C34(v57);
        if (v23)
        {
          break;
        }

        v16 += 72;
        ++v17;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1D6990074(0, v46[2] + 1, 1, v46);
      }

      v27 = v46[2];
      v26 = v46[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v30 = sub_1D6990074((v26 > 1), v27 + 1, 1, v46);
        v28 = v27 + 1;
        v46 = v30;
      }

      v46[2] = v28;
      v29 = &v46[2 * v27];
      v29[4] = v23;
      v29[5] = v25;
      v15 = a1 + 32;
    }

    while (v13 - 1 != v17);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  sub_1D5DEA2E0(v51, v50);

  v31 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews;
  *&v45[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews] = v46;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v33 = *&v45[v31];
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = (v33 + 40);
    v37 = 0.0;
    while (v35 < *(v33 + 16))
    {
      ++v35;
      v39 = *(v36 - 1);
      v38 = *v36;
      v40 = swift_getObjectType();
      v41 = v39;
      [v32 addSubview_];
      v42 = (*(v38 + 32))(v40, v38);

      v37 = v37 + v42;
      v36 += 2;
      if (v34 == v35)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
  }

  else
  {
    v37 = 0.0;
LABEL_21:

    *&v45[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height] = v37;
    *&v45[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_containerView] = v32;
    v52.receiver = v45;
    v52.super_class = ObjectType;
    v43 = v32;
    [objc_msgSendSuper2(&v52 initWithFrame_];
  }
}

void *sub_1D6CDE0AC(uint64_t a1, __int128 *a2)
{
  sub_1D693329C(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v91 - v6);
  v8 = *(a1 + 112);
  v102 = *(a1 + 96);
  v103 = v8;
  v104 = *(a1 + 128);
  v105 = *(a1 + 144);
  v9 = *(a1 + 48);
  v98 = *(a1 + 32);
  v99 = v9;
  v10 = *(a1 + 80);
  v100 = *(a1 + 64);
  v101 = v10;
  v11 = *(a1 + 16);
  v96 = *a1;
  v97 = v11;
  v12 = a2[7];
  v139 = a2[6];
  v140[0] = v12;
  *(v140 + 9) = *(a2 + 121);
  v13 = a2[3];
  v135 = a2[2];
  v136 = v13;
  v14 = a2[5];
  v137 = a2[4];
  v138 = v14;
  v15 = a2[1];
  v133 = *a2;
  v134 = v15;
  sub_1D693329C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D727E3C0;
  v17 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v17;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v18 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v18;
  v19 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v19;
  v20 = *(a1 + 16);
  v114 = *a1;
  v115 = v20;
  v21 = a2[7];
  v112 = a2[6];
  v113[0] = v21;
  *(v113 + 9) = *(a2 + 121);
  v22 = a2[3];
  v108 = a2[2];
  v109 = v22;
  v23 = a2[5];
  v110 = a2[4];
  v111 = v23;
  v24 = a2[1];
  v106 = *a2;
  v107 = v24;
  sub_1D6B05BB8(&v106, v123);
  *(v16 + 56) = &type metadata for FormatInspectionGroup;
  *(v16 + 64) = &off_1F518B2C0;
  v25 = swift_allocObject();
  *(v16 + 32) = v25;
  v91[1] = v16 + 32;
  v26 = v123[1];
  *(v25 + 16) = v123[0];
  *(v25 + 32) = v26;
  *(v25 + 48) = v124;
  v27 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v27;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v28 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v28;
  v29 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v29;
  v30 = *(a1 + 16);
  v114 = *a1;
  v115 = v30;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D63288F8(&v106, v125);
  *(v16 + 96) = &type metadata for FormatInspectionGroup;
  *(v16 + 104) = &off_1F518B2C0;
  v31 = swift_allocObject();
  *(v16 + 72) = v31;
  v32 = v125[1];
  *(v31 + 16) = v125[0];
  *(v31 + 32) = v32;
  *(v31 + 48) = v126;
  v33 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v33;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v34 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v34;
  v35 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v35;
  v36 = *(a1 + 16);
  v114 = *a1;
  v115 = v36;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D6201D30(&v114, &v106, v127);
  *(v16 + 136) = &type metadata for FormatInspectionGroup;
  *(v16 + 144) = &off_1F518B2C0;
  v37 = swift_allocObject();
  *(v16 + 112) = v37;
  v38 = v127[1];
  *(v37 + 16) = v127[0];
  *(v37 + 32) = v38;
  *(v37 + 48) = v128;
  v39 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v39;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v40 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v40;
  v41 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v41;
  v42 = *(a1 + 16);
  v114 = *a1;
  v115 = v42;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D715C878(&v106, v129);
  *(v16 + 176) = &type metadata for FormatInspectionGroup;
  *(v16 + 184) = &off_1F518B2C0;
  v43 = swift_allocObject();
  *(v16 + 152) = v43;
  v44 = v129[1];
  *(v43 + 16) = v129[0];
  *(v43 + 32) = v44;
  *(v43 + 48) = v130;
  v45 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v45;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v46 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v46;
  v47 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v47;
  v48 = *(a1 + 16);
  v114 = *a1;
  v115 = v48;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D6AD82E4(&v106, v131);
  *(v16 + 216) = &type metadata for FormatInspectionGroup;
  *(v16 + 224) = &off_1F518B2C0;
  v49 = swift_allocObject();
  *(v16 + 192) = v49;
  v50 = v131[1];
  *(v49 + 16) = v131[0];
  *(v49 + 32) = v50;
  *(v49 + 48) = v132;
  v120 = v139;
  v121[0] = v140[0];
  *(v121 + 9) = *(v140 + 9);
  v116 = v135;
  v117 = v136;
  v118 = v137;
  v119 = v138;
  v114 = v133;
  v115 = v134;
  sub_1D6A4238C(&v114, &v106);
  *(v16 + 256) = &type metadata for FormatInspectionGroup;
  *(v16 + 264) = &off_1F518B2C0;
  v51 = swift_allocObject();
  v92 = v16;
  *(v16 + 232) = v51;
  v52 = v107;
  *(v51 + 16) = v106;
  *(v51 + 32) = v52;
  *(v51 + 48) = v108;
  *(&v97 + 1) = &type metadata for FeedIssue;
  *&v98 = sub_1D5EE5AA4();
  v53 = swift_allocObject();
  *&v96 = v53;
  v54 = v140[0];
  v53[7] = v139;
  v53[8] = v54;
  *(v53 + 137) = *(v140 + 9);
  v55 = v136;
  v53[3] = v135;
  v53[4] = v55;
  v56 = v138;
  v53[5] = v137;
  v53[6] = v56;
  v57 = v134;
  v53[1] = v133;
  v53[2] = v57;
  sub_1D5ECF2C4(&v133, &v114);
  sub_1D713A66C(&v96, &v114);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  v58 = v114;
  *&v96 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 0, 0);
  v59 = v96;
  if (v58)
  {
    while (1)
    {
      v60 = v58 & -v58;
      *&v114 = 91;
      *(&v114 + 1) = 0xE100000000000000;
      v95 = v60;
      v94 = sub_1D713AFE4();
      sub_1D5BBE0A8();
      sub_1D5BB0AB8();
      v61 = sub_1D7261F3C();
      v63 = v62;

      MEMORY[0x1DA6F9910](v61, v63);

      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
      v64 = sub_1D5FD24A4(1uLL, v114, *(&v114 + 1));
      v66 = v65;

      result = sub_1D726398C();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      result = sub_1D726396C();
      if (v68)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      if (v69 >> 14 < v64 >> 14)
      {
        goto LABEL_13;
      }

      v70 = sub_1D72639BC();
      v72 = v71;
      v74 = v73;
      v76 = v75;

      v77 = MEMORY[0x1DA6F97E0](v70, v72, v74, v76);
      v79 = v78;

      v80 = type metadata accessor for FormatInspectionItem(0);
      v81 = (v7 + *(v80 + 24));
      *v81 = 0;
      v81[1] = 0xE000000000000000;
      v82 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
      *v7 = v77;
      v7[1] = v79;
      v7[2] = 0;
      v7[3] = 0;
      v83 = v7 + *(v80 + 28);
      *v83 = 0;
      *(v83 + 1) = 0;
      v83[16] = -1;
      (*(*(v80 - 8) + 56))(v7, 0, 1, v80);
      *&v96 = v59;
      v85 = *(v59 + 16);
      v84 = *(v59 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_1D69972A4((v84 > 1), v85 + 1, 1);
        v59 = v96;
      }

      *(v59 + 16) = v85 + 1;
      sub_1D5E4F52C(v7, v59 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v85);
      v86 = v60 == v58;
      v58 ^= v60;
      if (v86)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v59, &v114);

    v87 = v92;
    *(v92 + 296) = &type metadata for FormatInspectionGroup;
    *(v87 + 304) = &off_1F518B2C0;
    v88 = swift_allocObject();
    *(v87 + 272) = v88;
    v89 = v115;
    *(v88 + 16) = v114;
    *(v88 + 32) = v89;
    *(v88 + 48) = v116;
    v90 = sub_1D7073500(v87);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v90;
  }

  return result;
}

id SharingArticleImageActivityItemSource.__allocating_init(headline:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SharingArticleImageActivityItemSource.init(headline:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void SharingArticleImageActivityItemSource.activityViewControllerPlaceholderItem(_:)(void *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline) articleID];
  if (!v3)
  {
    a1[3] = MEMORY[0x1E69E6158];
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    return;
  }

  v4 = FCThumbnailForHeadline();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 thumbnailAssetHandle];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 filePath];

    if (v8)
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v9)
      {
        a1[3] = sub_1D62B7E2C();

        *a1 = v9;
        return;
      }
    }

LABEL_9:
    a1[3] = sub_1D67B380C();
    *a1 = MEMORY[0x1E69E7CA0] + 8;
    return;
  }

  __break(1u);
}

void SharingArticleImageActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

LABEL_18:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 == sub_1D726207C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v13 = [*(v2 + OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline) articleID];
  if (!v13)
  {
    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    return;
  }

  v14 = FCThumbnailForHeadline();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 thumbnailAssetHandle];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 filePath];

    if (v18)
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v19)
      {
        *(a2 + 24) = sub_1D62B7E2C();

        *a2 = v19;
        return;
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

id SharingArticleImageActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingArticleImageActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1D6CDF070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6CDF0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6CDF148(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v376 = a8;
  v356 = a6;
  v357 = a7;
  v378 = a5;
  v402 = a4;
  v379 = a3;
  v358 = a2;
  v348 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v344 = &v334 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatPropertyDefinition(0);
  v347 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v338 = &v334 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v341 = &v334 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v334 - v25;
  v373 = type metadata accessor for FormatOption(0);
  v364 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373, v27);
  v339 = &v334 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v340 = &v334 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v355 = &v334 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v334 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v372 = &v334 - v41;
  sub_1D6D09328(0);
  v362 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v346 = &v334 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v345 = &v334 - v47;
  sub_1D6AC4E74(0);
  v336 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v337 = &v334 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  *(&v343 + 1) = &v334 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v359, v54);
  v361 = &v334 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D0A158(0);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v334 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v363 = &v334 - v62;
  v63 = type metadata accessor for FeedCustomItem(0);
  v366 = *(v63 - 8);
  v367 = v63;
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v342 = &v334 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v350 = &v334 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v349 = &v334 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v352 = &v334 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v354 = &v334 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v353 = &v334 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v368 = (&v334 - v85);
  v86 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v87 = *(v86 + 16);
  v335 = v26;
  *&v343 = v88;
  v351 = v59;
  v371 = v86;
  v89 = 0;
  if (v87)
  {
    v90 = (v86 + 32);
    do
    {
      v91 = *v90++;
      v92 = qword_1D7349118[v91];
      if ((v92 & ~v89) == 0)
      {
        v92 = 0;
      }

      v89 |= v92;
      --v87;
    }

    while (v87);
  }

  v93 = swift_allocObject();
  *(v93 + 16) = v89;
  sub_1D6D09390(0, &qword_1EDF15598, type metadata accessor for FeedCustomItem, type metadata accessor for FeedItemSorter);
  v370 = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = MEMORY[0x1E69E7CC0];
  v96 = swift_allocObject();
  *(v96 + 16) = sub_1D6D0A18C;
  *(v96 + 24) = v93;
  swift_beginAccess();
  v97 = *(v95 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v95 + 16) = v97;
  v377 = a1;
  v360 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v97 = sub_1D699094C(0, v97[2] + 1, 1, v97);
    *(v95 + 16) = v97;
  }

  v100 = v97[2];
  v99 = v97[3];
  if (v100 >= v99 >> 1)
  {
    v97 = sub_1D699094C((v99 > 1), v100 + 1, 1, v97);
  }

  v365 = a11;
  v374 = a10;
  v97[2] = v100 + 1;
  v101 = &v97[2 * v100];
  v101[4] = sub_1D6D0A194;
  v101[5] = v96;
  *(v95 + 16) = v97;
  swift_endAccess();

  v102 = *(v377 + *(type metadata accessor for GroupLayoutBindingContext(0) + 56));
  v103 = *(v102 + 16);
  v104 = v402;

  if (v103)
  {
    v105 = sub_1D5BCF83C(0x7473754364656546, 0xEE006D6574496D6FLL, v379, v104);
    v104 = v402;
    if (v106)
    {
      v107 = *(*(v102 + 56) + 8 * v105);
      if (*(v107 + 2))
      {

        v109 = v374;
        v110 = v369;
        v111 = sub_1D5BF08EC(v108, v376, v374);
        v112 = v110;
        if (v110)
        {

          goto LABEL_17;
        }

        v369 = 0;
        v138 = sub_1D714EB38(v111);

        v139 = v402;
        if (v138)
        {
          if (*(v138 + 16))
          {
            v140 = v363;
            sub_1D6D003FC(v138, v95, v378, 1, v363);

            if ((*(v366 + 48))(v140, 1, v367) != 1)
            {
              v147 = v140;
              v148 = v354;
              v149 = sub_1D6D0A058(v147, v354, type metadata accessor for FeedCustomItem);
              if ((v365 & 1) == 0)
              {
                MEMORY[0x1EEE9AC00](v149, v150);
                *(&v334 - 2) = v148;
                v151 = v369;
                v107 = sub_1D5BF5F6C(sub_1D6D0A54C, (&v334 - 4), v107);
                v369 = v151;
              }

              v152 = v360;
              strcpy(&v393, "FeedCustomItem");
              HIBYTE(v393) = -18;
              *&v394 = v379;
              *(&v394 + 1) = v402;
              sub_1D5BDACA8(&v393, v107);

              v153 = v353;
              sub_1D6D0A058(v148, v353, type metadata accessor for FeedCustomItem);
              v154 = v153;
              v155 = v368;
              sub_1D6D0A058(v154, v368, type metadata accessor for FeedCustomItem);
              v156 = *v155;
              v157 = v155[1];
              v158 = v358;
              v159 = v376;
              v160 = v374;
              v354 = sub_1D6196E44(v358, v376, v374, v156, v157);
              v401 = v354;
              v161 = sub_1D6196F00(v158, v159, v160, v156, v157);
              v400 = v161;
              v366 = v156;
              v363 = v157;
              if (v160)
              {
                v162 = v361;
                v163 = v152;
                if (*(v158 + 16) && (v164 = sub_1D5B69D90(v376, v374), (v165 & 1) != 0))
                {
                  v166 = *(*(*(v158 + 56) + 8 * v164) + 136);
                  v167 = v375;
                  if (*(v166 + 16))
                  {

                    v168 = sub_1D5B69D90(v156, v157);
                    if (v169)
                    {
                      v170 = (*(v166 + 56) + 48 * v168);
                      v171 = *v170;
                      v172 = v170[1];
                      v173 = v170[2];
                      v174 = v170[3];
                      v175 = v170[5];
                      v378 = v170[4];

                      v402 = v173;

                      v379 = v174;
                      v162 = v361;

                      v376 = v175;
                      v163 = v360;

                      goto LABEL_72;
                    }
                  }

                  v171 = 0;
                  v172 = 0;
                  v402 = 0;
                  v378 = 0;
                  v379 = 0;
                  v376 = 0;
                }

                else
                {
                  v171 = 0;
                  v172 = 0;
                  v402 = 0;
                  v378 = 0;
                  v379 = 0;
                  v376 = 0;
                  v167 = v375;
                }
              }

              else
              {
                v171 = 0;
                v172 = 0;
                v402 = 0;
                v378 = 0;
                v379 = 0;
                v376 = 0;
                v167 = v375;
                v162 = v361;
                v163 = v152;
              }

              goto LABEL_72;
            }

            sub_1D6D0A444(v140, sub_1D6D0A158);
            sub_1D5ED8048();
            v112 = swift_allocError();
            strcpy(v141, "FeedCustomItem");
            *(v141 + 15) = -18;
            v142 = v402;
            *(v141 + 16) = v379;
            *(v141 + 24) = v142;
            goto LABEL_47;
          }
        }

        sub_1D5ED8048();
        v112 = swift_allocError();
        strcpy(v141, "FeedCustomItem");
        *(v141 + 15) = -18;
        *(v141 + 16) = v379;
        *(v141 + 24) = v139;
LABEL_47:
        *(v141 + 32) = v378;
        *(v141 + 40) = 1;
        *(v141 + 48) = v376;
        *(v141 + 56) = v109;
        *(v141 + 64) = 0;
        swift_willThrow();
        goto LABEL_16;
      }
    }
  }

  sub_1D5ED8048();
  v112 = swift_allocError();
  strcpy(v113, "FeedCustomItem");
  v113[15] = -18;
  v114 = v378;
  *(v113 + 2) = v379;
  *(v113 + 3) = v104;
  *(v113 + 4) = v114;
  *(v113 + 5) = 1;
  v115 = v374;
  *(v113 + 6) = v376;
  *(v113 + 7) = v115;
  v113[64] = 0;
  swift_willThrow();
LABEL_16:

LABEL_17:

  if ((*(v375 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    swift_willThrow();
    return;
  }

  v116 = *(v371 + 16);
  v376 = 0;
  v117 = 0;
  if (v116)
  {
    v118 = (v371 + 32);
    do
    {
      v119 = *v118++;
      v120 = qword_1D7349118[v119];
      if ((v120 & ~v117) == 0)
      {
        v120 = 0;
      }

      v117 |= v120;
      --v116;
    }

    while (v116);
  }

  v121 = swift_allocObject();
  *(v121 + 16) = v117;
  v122 = swift_allocObject();
  *(v122 + 16) = MEMORY[0x1E69E7CC0];
  v123 = swift_allocObject();
  *(v123 + 16) = sub_1D6D0A5F0;
  *(v123 + 24) = v121;
  swift_beginAccess();
  v124 = *(v122 + 16);

  v125 = swift_isUniquelyReferenced_nonNull_native();
  *(v122 + 16) = v124;
  if ((v125 & 1) == 0)
  {
    v124 = sub_1D699094C(0, v124[2] + 1, 1, v124);
    *(v122 + 16) = v124;
  }

  v127 = v124[2];
  v126 = v124[3];
  if (v127 >= v126 >> 1)
  {
    v124 = sub_1D699094C((v126 > 1), v127 + 1, 1, v124);
  }

  v124[2] = v127 + 1;
  v128 = &v124[2 * v127];
  v128[4] = sub_1D6D0A524;
  v128[5] = v123;
  *(v122 + 16) = v124;
  swift_endAccess();

  v129 = *(v102 + 16);
  v130 = v402;

  if (!v129 || (v131 = sub_1D5BCF83C(0x7473754364656546, 0xEE006D6574496D6FLL, v379, v130), (v132 & 1) == 0) || (v133 = *(*(v102 + 56) + 8 * v131), !*(v133 + 2)))
  {
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v137, "FeedCustomItem");
    *(v137 + 15) = -18;
    *(v137 + 16) = v379;
    *(v137 + 24) = v130;
LABEL_34:
    *(v137 + 32) = v378;
LABEL_35:
    *(v137 + 40) = 1;
    *(v137 + 48) = 0;
    *(v137 + 56) = 0;
    *(v137 + 64) = 0;
    swift_willThrow();

    goto LABEL_36;
  }

  v135 = v376;
  v136 = sub_1D5BF08EC(v134, 0, 0);
  if (v135)
  {

LABEL_36:

    return;
  }

  v369 = 0;
  v143 = sub_1D714EB38(v136);

  if (!v143)
  {
LABEL_57:

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v137, "FeedCustomItem");
    *(v137 + 15) = -18;
    v176 = v402;
    *(v137 + 16) = v379;
    *(v137 + 24) = v176;
    goto LABEL_34;
  }

  if (!*(v143 + 16))
  {

    goto LABEL_57;
  }

  v144 = v351;
  v145 = v378;
  sub_1D6D003FC(v143, v122, v378, 1, v351);

  if ((*(v366 + 48))(v144, 1, v367) == 1)
  {

    sub_1D6D0A444(v144, sub_1D6D0A158);
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v137, "FeedCustomItem");
    *(v137 + 15) = -18;
    v146 = v402;
    *(v137 + 16) = v379;
    *(v137 + 24) = v146;
    *(v137 + 32) = v145;
    goto LABEL_35;
  }

  v177 = v144;
  v178 = v343;
  v179 = sub_1D6D0A058(v177, v343, type metadata accessor for FeedCustomItem);
  if ((v365 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v179, v180);
    *(&v334 - 2) = v178;
    v181 = v369;
    v133 = sub_1D5BF5F6C(sub_1D5BF619C, (&v334 - 4), v133);
    v369 = v181;
  }

  v167 = v375;
  strcpy(&v393, "FeedCustomItem");
  HIBYTE(v393) = -18;
  *&v394 = v379;
  *(&v394 + 1) = v402;
  sub_1D5BDACA8(&v393, v133);

  v182 = v342;
  sub_1D6D0A058(v178, v342, type metadata accessor for FeedCustomItem);
  v183 = v182;
  v184 = v368;
  sub_1D6D0A058(v183, v368, type metadata accessor for FeedCustomItem);
  v185 = *v184;
  v186 = v184[1];
  v187 = v358;
  v354 = sub_1D6196E44(v358, 42, 0xE100000000000000, *v184, v186);
  v401 = v354;
  v161 = sub_1D6196F00(v187, 42, 0xE100000000000000, v185, v186);
  v400 = v161;
  v188 = *(v187 + 16);
  v366 = v185;
  v363 = v186;
  if (v188)
  {
    v189 = sub_1D5B69D90(42, 0xE100000000000000);
    v162 = v361;
    if ((v190 & 1) != 0 && (v191 = *(*(*(v187 + 56) + 8 * v189) + 136), *(v191 + 16)))
    {

      v192 = sub_1D5B69D90(v185, v186);
      if (v193)
      {
        v194 = (*(v191 + 56) + 48 * v192);
        v171 = *v194;
        v172 = v194[1];
        v195 = v194[2];
        v196 = v194[3];
        v197 = v194[5];
        v378 = v194[4];

        v402 = v195;

        v379 = v196;
        v162 = v361;

        v376 = v197;

        v163 = v360;
        goto LABEL_72;
      }
    }

    else
    {
    }

    v171 = 0;
    v172 = 0;
    v402 = 0;
    v378 = 0;
    v379 = 0;
    v376 = 0;
    v163 = v360;
  }

  else
  {

    v171 = 0;
    v172 = 0;
    v402 = 0;
    v378 = 0;
    v379 = 0;
    v376 = 0;
    v163 = v360;
    v162 = v361;
  }

LABEL_72:
  *(&v394 + 1) = v367;
  v198 = sub_1D6D098EC(&qword_1EDF15710, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);
  *&v395 = v198;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v393);
  sub_1D6D09934(v368, boxed_opaque_existential_1, type metadata accessor for FeedCustomItem);
  sub_1D6818590(&v393, v162);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v374 = v171;
  v370 = v198;
  v371 = v172;
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v201 = v162;
      v162 = *(&v343 + 1);
      sub_1D6D0A058(v201, *(&v343 + 1), type metadata accessor for FeedWebEmbed);
      v202 = sub_1D6944620();
      sub_1D5D505F0(v202);
      v203 = sub_1D69449D8();
      sub_1D5B886D0(v203);
      v204 = type metadata accessor for FeedWebEmbed;
    }

    else
    {
      v204 = type metadata accessor for FeedItem;
    }

    sub_1D6D0A444(v162, v204);
    v217 = v377;
    goto LABEL_81;
  }

  v205 = v352;
  sub_1D6D0A058(v162, v352, type metadata accessor for FeedCustomItem);
  v206 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v207 = *(v206 + 8);
  v208 = v205 + *(v367 + 20);
  v210 = *(v208 + 16);
  v209 = *(v208 + 24);
  if (!*(v207 + 16))
  {
    goto LABEL_138;
  }

  v211 = sub_1D5B69D90(v210, v209);
  if ((v212 & 1) == 0)
  {

LABEL_138:

    sub_1D67F58E4(v374, v371);

    LOBYTE(v398) = 0;
    v396 = 0u;
    v397 = 0u;
    v394 = 0u;
    v395 = 0u;
    v393 = 0u;
    goto LABEL_139;
  }

  v361 = v210;
  v213 = v337;
  sub_1D6D09934(*(v207 + 56) + *(v336 + 72) * v211, v337, sub_1D6AC4E74);
  v214 = *(v213 + 32);
  v215 = *(v213 + 64);
  v384 = *(v213 + 48);
  v385 = v215;
  v386 = *(v213 + 80);
  v216 = *(v213 + 16);
  v381 = *v213;
  v382 = v216;
  v383 = v214;
  sub_1D62B7D1C(&v381, &v380);
  sub_1D6D0A444(v213, sub_1D6AC4E74);

  v389 = v383;
  v390 = v384;
  v391 = v385;
  LOBYTE(v392) = v386;
  v387 = v381;
  v388 = v382;
  if (v386 >> 6 <= 1u)
  {
    sub_1D67F58E4(v374, v371);

    v395 = v389;
    v396 = v390;
    v397 = v391;
    LOBYTE(v398) = v392;
    v393 = v387;
    v394 = v388;
    v210 = v361;
LABEL_139:
    type metadata accessor for FormatLayoutError(0);
    sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v293 = v210;
    v293[1] = v209;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D6D09524(&v393, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
    sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
    v244 = v352;
LABEL_140:
    sub_1D6D0A444(v244, type metadata accessor for FeedCustomItem);
    return;
  }

  LODWORD(v351) = v386;
  v336 = *(&v383 + 1);
  v294 = v383;
  v342 = *(&v384 + 1);
  v337 = v384;
  v343 = v385;
  v380 = v383;
  sub_1D6D098B8(0);
  sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
  sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
  v353 = v294;

  v295 = sub_1D72623BC();
  v296 = *(v208 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
  v361 = *(v296 + 2);
  if (!v361)
  {
LABEL_159:

    v380 = v296;
    sub_1D5B5AD98(0);
    sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
    sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
    v311 = sub_1D72623AC();
    v312 = v311;
    v313 = v353;
    v361 = *(v353 + 16);
    if (!v361)
    {
LABEL_170:
      sub_1D60CF6F4(v313, v336, v337, v342, v343, *(&v343 + 1), v351);

      sub_1D62B7D78(&v381);
      sub_1D6D0A444(v352, type metadata accessor for FeedCustomItem);
      v171 = v374;
      v167 = v375;
      v217 = v377;
      v172 = v371;
LABEL_81:
      v219 = v400;
      v218 = v401;
      v220 = *(v217 + 88);
      v377 = v400;
      if (v365)
      {
        swift_beginAccess();
        if ((v220 & 1) != 0 || !*(v167[4] + 16) || (, sub_1D5B69D90(v356, v357), v222 = v221, , (v222 & 1) == 0))
        {
          v223 = *(v167[10] + 16);
          if (v223)
          {
            sub_1D5B69D90(v366, v363);
            v223 = 0x4000000000;
            if ((v224 & 1) == 0)
            {
              v223 = 0;
            }
          }

          *&v393 = v223;

          v225 = sub_1D713CCF4();
          v226 = sub_1D5BA8750(v225, v218);

          v227 = sub_1D5BA8750(MEMORY[0x1E69E7CC0], v226);
          *(&v382 + 1) = v367;
          *&v383 = v370;
          v228 = __swift_allocate_boxed_opaque_existential_1(&v381);
          sub_1D6D09934(v368, v228, type metadata accessor for FeedCustomItem);
          sub_1D5B68374(&v381, &v387);

          v229 = v227;
          if (v172)
          {
            v229 = sub_1D5BA8750(&unk_1F50F6C70, v227);
            sub_1D5BFB68C(&unk_1F50F6C90);
          }

          v367 = v227;
          v370 = v218;
          *(&v389 + 1) = v229;
          v230 = v219[2];
          if (v230)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v230, 0);
            v231 = v393;
            v232 = v219 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v233 = *(v364 + 72);
            v234 = v230;
            do
            {
              v235 = v372;
              sub_1D6D09934(v232, v372, type metadata accessor for FormatOption);
              v236 = swift_allocBox();
              sub_1D6D0A058(v235, v237, type metadata accessor for FormatOption);
              *&v393 = v231;
              v239 = *(v231 + 16);
              v238 = *(v231 + 24);
              if (v239 >= v238 >> 1)
              {
                sub_1D5D24610((v238 > 1), v239 + 1, 1);
                v231 = v393;
              }

              *(v231 + 16) = v239 + 1;
              *(v231 + 8 * v239 + 32) = v236 | 0x1000000000000004;
              v232 += v233;
              --v234;
            }

            while (v234);
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v171 = v374;
            v172 = v371;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v231 = MEMORY[0x1E69E7CC0];
          }

          *&v390 = v231;
          *(&v390 + 1) = v171;
          *&v391 = v172;
          *(&v391 + 1) = v402;
          *&v392 = v379;
          *(&v392 + 1) = v378;
          v399 = v376;
          v393 = v387;
          v394 = v388;
          v395 = v389;
          v396 = v390;
          v397 = v391;
          v398 = v392;
          v262 = v357;

          sub_1D67F5880(v171, v172);
          sub_1D6D60C48(&v393, v356, v262);
          v263 = v349;
          sub_1D6D09934(v368, v349, type metadata accessor for FeedCustomItem);
          v264 = v263;
          v265 = v345;
          sub_1D6D09934(v264, v345, type metadata accessor for FeedCustomItem);
          if (v172)
          {
            v266 = sub_1D5BA8750(&unk_1F50F6CA0, v367);
            sub_1D5BFB68C(&unk_1F50F6CC0);
            v267 = v377;
          }

          else
          {
            v267 = v377;
            v266 = v367;
          }

          *(v265 + *(v362 + 28)) = v266;
          if (v230)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v230, 0);
            v273 = v393;
            v274 = v267 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v275 = *(v364 + 72);
            do
            {
              v276 = v372;
              sub_1D6D09934(v274, v372, type metadata accessor for FormatOption);
              v277 = swift_allocBox();
              sub_1D6D0A058(v276, v278, type metadata accessor for FormatOption);
              *&v393 = v273;
              v280 = *(v273 + 16);
              v279 = *(v273 + 24);
              if (v280 >= v279 >> 1)
              {
                sub_1D5D24610((v279 > 1), v280 + 1, 1);
                v273 = v393;
              }

              *(v273 + 16) = v280 + 1;
              *(v273 + 8 * v280 + 32) = v277 | 0x1000000000000004;
              v274 += v275;
              --v230;
            }

            while (v230);
            sub_1D6D0A444(v349, type metadata accessor for FeedCustomItem);
            v265 = v345;
LABEL_132:
            v171 = v374;
            v172 = v371;
LABEL_136:
            v289 = v362;
            *(v265 + *(v362 + 32)) = v273;
            v290 = (v265 + *(v289 + 36));
            *v290 = v171;
            v290[1] = v172;
            v291 = v378;
            v292 = v379;
            v290[2] = v402;
            v290[3] = v292;
            v290[4] = v291;
            v290[5] = v376;
            sub_1D6D0A058(v265, v348, sub_1D6D09328);
            swift_endAccess();

            sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
            return;
          }

          v288 = v349;
          goto LABEL_135;
        }
      }

      else
      {
        swift_beginAccess();
        if ((v220 & 1) != 0 || !*(v167[3] + 16) || (, sub_1D5B69D90(v356, v357), v241 = v240, , (v241 & 1) == 0))
        {
          v245 = *(v167[10] + 16);
          if (v245)
          {
            sub_1D5B69D90(v366, v363);
            v245 = 0x4000000000;
            if ((v246 & 1) == 0)
            {
              v245 = 0;
            }
          }

          *&v393 = v245;

          v247 = sub_1D713CCF4();
          v248 = sub_1D5BA8750(v247, v218);

          v249 = sub_1D5BA8750(MEMORY[0x1E69E7CC0], v248);
          *(&v382 + 1) = v367;
          *&v383 = v370;
          v250 = __swift_allocate_boxed_opaque_existential_1(&v381);
          sub_1D6D09934(v368, v250, type metadata accessor for FeedCustomItem);
          sub_1D5B68374(&v381, &v387);

          v251 = v249;
          if (v172)
          {
            v251 = sub_1D5BA8750(&unk_1F50F6CD0, v249);
            sub_1D5BFB68C(&unk_1F50F6CF0);
          }

          v367 = v249;
          v370 = v218;
          *(&v389 + 1) = v251;
          v252 = v219[2];
          if (v252)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v252, 0);
            v253 = v393;
            v254 = v219 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v255 = *(v364 + 72);
            v256 = v252;
            do
            {
              v257 = v372;
              sub_1D6D09934(v254, v372, type metadata accessor for FormatOption);
              v258 = swift_allocBox();
              sub_1D6D0A058(v257, v259, type metadata accessor for FormatOption);
              *&v393 = v253;
              v261 = *(v253 + 16);
              v260 = *(v253 + 24);
              if (v261 >= v260 >> 1)
              {
                sub_1D5D24610((v260 > 1), v261 + 1, 1);
                v253 = v393;
              }

              *(v253 + 16) = v261 + 1;
              *(v253 + 8 * v261 + 32) = v258 | 0x1000000000000004;
              v254 += v255;
              --v256;
            }

            while (v256);
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v171 = v374;
            v172 = v371;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v253 = MEMORY[0x1E69E7CC0];
          }

          *&v390 = v253;
          *(&v390 + 1) = v171;
          *&v391 = v172;
          *(&v391 + 1) = v402;
          *&v392 = v379;
          *(&v392 + 1) = v378;
          v399 = v376;
          v393 = v387;
          v394 = v388;
          v395 = v389;
          v396 = v390;
          v397 = v391;
          v398 = v392;
          v268 = v357;

          sub_1D67F5880(v171, v172);
          sub_1D6D60C48(&v393, v356, v268);
          v269 = v350;
          sub_1D6D09934(v368, v350, type metadata accessor for FeedCustomItem);
          v270 = v269;
          v265 = v346;
          sub_1D6D09934(v270, v346, type metadata accessor for FeedCustomItem);
          if (v172)
          {
            v271 = sub_1D5BA8750(&unk_1F50F6D00, v367);
            sub_1D5BFB68C(&unk_1F50F6D20);
            v272 = v377;
          }

          else
          {
            v272 = v377;
            v271 = v367;
          }

          *(v265 + *(v362 + 28)) = v271;
          if (v252)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v252, 0);
            v273 = v393;
            v281 = v272 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v282 = *(v364 + 72);
            do
            {
              v283 = v372;
              sub_1D6D09934(v281, v372, type metadata accessor for FormatOption);
              v284 = swift_allocBox();
              sub_1D6D0A058(v283, v285, type metadata accessor for FormatOption);
              *&v393 = v273;
              v287 = *(v273 + 16);
              v286 = *(v273 + 24);
              if (v287 >= v286 >> 1)
              {
                sub_1D5D24610((v286 > 1), v287 + 1, 1);
                v273 = v393;
              }

              *(v273 + 16) = v287 + 1;
              *(v273 + 8 * v287 + 32) = v284 | 0x1000000000000004;
              v281 += v282;
              --v252;
            }

            while (v252);
            sub_1D6D0A444(v350, type metadata accessor for FeedCustomItem);
            v265 = v346;
            goto LABEL_132;
          }

          v288 = v350;
LABEL_135:
          sub_1D6D0A444(v288, type metadata accessor for FeedCustomItem);
          v273 = MEMORY[0x1E69E7CC0];
          goto LABEL_136;
        }
      }

      sub_1D6752B3C();
      swift_allocError();
      v242 = v357;
      *v243 = v356;
      *(v243 + 8) = v242;
      *(v243 + 56) = 0;
      swift_willThrow();
      swift_endAccess();

      sub_1D67F58E4(v171, v172);

      v244 = v368;
      goto LABEL_140;
    }

    v314 = 0;
    v315 = v353 + ((*(v347 + 80) + 32) & ~*(v347 + 80));
    v359 = (v364 + 56);
    v360 = v311;
    v316 = v335;
    v358 = v161;
    while (1)
    {
      if (v314 >= *(v313 + 16))
      {
        goto LABEL_174;
      }

      sub_1D6D09934(v315 + *(v347 + 72) * v314, v316, type metadata accessor for FormatPropertyDefinition);
      v323 = FormatPropertyDefinition.identifier.getter();
      if (*(v312 + 16))
      {
        v325 = sub_1D5B69D90(v323, v324);
        v327 = v326;
        v313 = v353;

        if (v327)
        {
          v317 = v315;
          v318 = v313;
          v319 = v360;
          v320 = v364;
          v321 = v344;
          sub_1D6D09934(v360[7] + *(v364 + 72) * v325, v344, type metadata accessor for FormatOption);
          sub_1D6D0A444(v316, type metadata accessor for FormatPropertyDefinition);
          v322 = *(v320 + 56);
          v312 = v319;
          v313 = v318;
          v315 = v317;
          v322(v321, 0, 1, v373);
          sub_1D6D0A444(v321, sub_1D5E04C00);
          goto LABEL_162;
        }
      }

      else
      {
      }

      v328 = v344;
      (*v359)(v344, 1, 1, v373);
      sub_1D6D0A444(v328, sub_1D5E04C00);
      if (sub_1D695C4AC())
      {

        sub_1D67F58E4(v374, v371);

        sub_1D60CF6F4(v313, v336, v337, v342, v343, *(&v343 + 1), v351);

        type metadata accessor for FormatLayoutError(0);
        sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v330 = v329;
        sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
        v332 = *(v331 + 48);
        v333 = v352;
        sub_1D6D09934(v352, v330, type metadata accessor for FeedCustomItem);
        sub_1D6D09934(v316, v330 + v332, type metadata accessor for FormatPropertyDefinition);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D62B7D78(&v381);
        sub_1D6D0A444(v316, type metadata accessor for FormatPropertyDefinition);
        sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
        v244 = v333;
        goto LABEL_140;
      }

      sub_1D6D0A444(v316, type metadata accessor for FormatPropertyDefinition);
      v312 = v360;
LABEL_162:
      if (v361 == ++v314)
      {
        goto LABEL_170;
      }
    }
  }

  v297 = 0;
  v358 = (*(v364 + 80) + 32) & ~*(v364 + 80);
  v359 = v296;
  v360 = &v296[v358];
  while (v297 < *(v296 + 2))
  {
    v299 = *(v364 + 72);
    sub_1D6D09934(v360 + v299 * v297, v163, type metadata accessor for FormatOption);
    if (*(v295 + 16) && (v300 = sub_1D5B69D90(*v163, v163[1]), (v301 & 1) != 0))
    {
      v302 = v338;
      sub_1D6D09934(*(v295 + 56) + *(v347 + 72) * v300, v338, type metadata accessor for FormatPropertyDefinition);
      v303 = v341;
      sub_1D6D0A058(v302, v341, type metadata accessor for FormatPropertyDefinition);
      type metadata accessor for FormatOptionConverter();
      v304 = v340;
      v305 = v369;
      sub_1D6AC31AC(v163, v303, v340);
      if (v305)
      {

        sub_1D60CF6F4(v353, v336, v337, v342, v343, *(&v343 + 1), v351);
        sub_1D62B7D78(&v381);
        sub_1D67F58E4(v374, v371);
        sub_1D6D0A444(v341, type metadata accessor for FormatPropertyDefinition);

        sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
        sub_1D6D0A444(v163, type metadata accessor for FormatOption);
        sub_1D6D0A444(v352, type metadata accessor for FeedCustomItem);

        return;
      }

      sub_1D6D09934(v304, v339, type metadata accessor for FormatOption);
      v306 = swift_isUniquelyReferenced_nonNull_native();
      v369 = 0;
      if ((v306 & 1) == 0)
      {
        v161 = sub_1D5CEABA0(0, v161[2] + 1, 1, v161);
      }

      v308 = v161[2];
      v307 = v161[3];
      v309 = v308 + 1;
      if (v308 >= v307 >> 1)
      {
        v161 = sub_1D5CEABA0((v307 > 1), v308 + 1, 1, v161);
      }

      sub_1D6D0A444(v340, type metadata accessor for FormatOption);
      sub_1D6D0A444(v341, type metadata accessor for FormatPropertyDefinition);
      v298 = v339;
    }

    else
    {
      sub_1D6D09934(v163, v355, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_1D5CEABA0(0, v161[2] + 1, 1, v161);
      }

      v308 = v161[2];
      v310 = v161[3];
      v309 = v308 + 1;
      if (v308 >= v310 >> 1)
      {
        v161 = sub_1D5CEABA0((v310 > 1), v308 + 1, 1, v161);
      }

      v298 = v355;
    }

    ++v297;
    sub_1D6D0A444(v163, type metadata accessor for FormatOption);
    v161[2] = v309;
    sub_1D6D0A058(v298, v161 + v358 + v308 * v299, type metadata accessor for FormatOption);
    v400 = v161;
    v296 = v359;
    if (v361 == v297)
    {
      goto LABEL_159;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
}

void sub_1D6CE1A94(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v453 = a6;
  v454 = a7;
  v477 = a5;
  v478 = a4;
  v501 = a3;
  v476 = a1;
  v446 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v437 = &v421 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatPropertyDefinition(0);
  v443 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v428 = &v421 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v432 = &v421 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v438 = &v421 - v26;
  v472 = type metadata accessor for FormatOption(0);
  v462 = *(v472 - 8);
  MEMORY[0x1EEE9AC00](v472, v27);
  v431 = &v421 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v427 = &v421 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v452 = &v421 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v421 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v471 = &v421 - v41;
  sub_1D6D0935C(0);
  v461 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v441 = &v421 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v440 = &v421 - v47;
  sub_1D6AC4E74(0);
  v425 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v426 = &v421 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v436, v51);
  v448 = &v421 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v435 = &v421 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v456, v56);
  v457 = &v421 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09F58(0);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v442 = &v421 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  *&v439 = &v421 - v63;
  sub_1D5D5046C(0);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v67 = &v421 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v421 - v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v455 = &v421 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v421 - v77;
  MEMORY[0x1EEE9AC00](v79, v80);
  v451 = (&v421 - v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  v465 = &v421 - v84;
  v85 = type metadata accessor for FeedRecipe(0);
  v466 = *(v85 - 8);
  v467 = v85;
  MEMORY[0x1EEE9AC00](v85, v86);
  v429 = &v421 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88, v89);
  v447 = &v421 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v433 = &v421 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v445 = &v421 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v444 = &v421 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v103 = &v421 - v102;
  MEMORY[0x1EEE9AC00](v104, v105);
  v450 = &v421 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v449 = &v421 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v113 = *(v112 + 16);
  v464 = (&v421 - v114);
  v458 = a2;
  v459 = v38;
  v434 = v71;
  v470 = v112;
  *(&v439 + 1) = v78;
  v115 = 0;
  if (v113)
  {
    v116 = (v112 + 32);
    do
    {
      v117 = *v116++;
      v118 = qword_1D7349118[v117];
      if ((v118 & ~v115) == 0)
      {
        v118 = 0;
      }

      v115 |= v118;
      --v113;
    }

    while (v113);
  }

  v119 = swift_allocObject();
  *(v119 + 16) = v115;
  sub_1D6D09390(0, &qword_1EDF155A8, type metadata accessor for FeedRecipe, type metadata accessor for FeedItemSorter);
  v469 = v120;
  v121 = swift_allocObject();
  *(v121 + 16) = MEMORY[0x1E69E7CC0];
  v122 = swift_allocObject();
  *(v122 + 16) = sub_1D6D0A030;
  *(v122 + 24) = v119;
  swift_beginAccess();
  v123 = *(v121 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v121 + 16) = v123;
  v430 = v67;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v123 = sub_1D69909A0(0, v123[2] + 1, 1, v123);
    *(v121 + 16) = v123;
  }

  v126 = v123[2];
  v125 = v123[3];
  v474 = a8;
  if (v126 >= v125 >> 1)
  {
    v123 = sub_1D69909A0((v125 > 1), v126 + 1, 1, v123);
  }

  v463 = a11;
  v475 = a10;
  v123[2] = v126 + 1;
  v127 = &v123[2 * v126];
  v127[4] = sub_1D6D0A038;
  v127[5] = v122;
  *(v121 + 16) = v123;
  swift_endAccess();

  v128 = type metadata accessor for GroupLayoutBindingContext(0);
  v129 = v476;
  v130 = *&v476[v128[14]];
  v131 = *(v130 + 16);
  v132 = v478;

  v460 = v128;
  if (v131)
  {
    v133 = sub_1D5BCF83C(0x6963655264656546, 0xEA00000000006570, v501, v132);
    if (v134)
    {
      if (*(*(*(v130 + 56) + 8 * v133) + 16))
      {

        v136 = v474;
        v137 = v135;
        v138 = v468;
        v139 = sub_1D5BF08EC(v135, v474, v475);
        if (v138)
        {

          v140 = v138;
          goto LABEL_18;
        }

        v468 = 0;
        v424 = v137;
        v164 = sub_1D714EE30(v139);

        v166 = v477;
        if (v164)
        {
          if (*(v164 + 16))
          {
            v167 = *&v129[v128[17]];
            v421 = v128[19];
            v422 = *&v129[v421];
            v168 = v422;
            v423 = v164;
            if (v422 < v167)
            {
              v169 = v451;
              sub_1D6D04354(v129, v423, v477, v121, 1, v451);
              v171 = v466;
              v170 = v467;
              if ((*(v466 + 48))(v169, 1, v467) != 1)
              {

                sub_1D6D0A058(v169, v103, type metadata accessor for FeedRecipe);
                v202 = v103;
                v176 = v465;
                v166 = v477;
                sub_1D6D0A058(v202, v465, type metadata accessor for FeedRecipe);
                (*(v171 + 56))(v176, 0, 1, v170);
                v175 = v170;
LABEL_62:
                if ((*(v171 + 48))(v176, 1, v175) != 1)
                {
                  v207 = v450;
                  sub_1D6D0A058(v176, v450, type metadata accessor for FeedRecipe);
                  v208 = FeedRecipe.traits.getter(&v492);
                  v210 = v458;
                  if ((v492 & 0x1000) != 0)
                  {
                    if (__OFADD__(v422, 1))
                    {
LABEL_212:
                      __break(1u);
                      goto LABEL_213;
                    }

                    *&v476[v421] = v422 + 1;
                  }

                  if (v463)
                  {
                    v211 = v476;
                    v212 = v424;
                  }

                  else
                  {
                    MEMORY[0x1EEE9AC00](v208, v209);
                    *(&v421 - 2) = v207;
                    v213 = v468;
                    v212 = sub_1D5BF5F6C(sub_1D6D0A54C, (&v421 - 4), v424);
                    v468 = v213;
                    v211 = v476;
                  }

                  *&v492 = 0x6963655264656546;
                  *(&v492 + 1) = 0xEA00000000006570;
                  *&v493 = v501;
                  *(&v493 + 1) = v478;
                  v214 = v211;
                  sub_1D5BDACA8(&v492, v212);

                  v215 = v449;
                  sub_1D6D0A058(v207, v449, type metadata accessor for FeedRecipe);
                  v216 = v464;
                  sub_1D6D0A058(v215, v464, type metadata accessor for FeedRecipe);
                  v218 = *v216;
                  v217 = v216[1];
                  v219 = v474;
                  v220 = v475;
                  v460 = sub_1D6196E44(v210, v474, v475, *v216, v217);
                  v500 = v460;
                  v466 = v217;
                  v221 = sub_1D6196F00(v210, v219, v220, v218, v217);
                  v499 = v221;
                  v465 = v218;
                  if (!v220)
                  {
                    v231 = 0;
                    v501 = 0;
                    v477 = 0;
                    v478 = 0;
                    v235 = 0;
                    v475 = 0;
                    v223 = v214;
                    v192 = v467;
                    goto LABEL_102;
                  }

                  v222 = v220;
                  v223 = v214;
                  if (!*(v210 + 16))
                  {
                    v231 = 0;
                    v501 = 0;
                    v477 = 0;
                    v478 = 0;
                    v235 = 0;
                    v475 = 0;
                    v192 = v467;
                    goto LABEL_102;
                  }

                  v224 = sub_1D5B69D90(v474, v222);
                  v192 = v467;
                  if ((v225 & 1) == 0)
                  {
                    goto LABEL_101;
                  }

                  v226 = *(*(*(v210 + 56) + 8 * v224) + 136);
                  if (!*(v226 + 16))
                  {
                    goto LABEL_101;
                  }

                  v227 = sub_1D5B69D90(v218, v466);
                  if (v228)
                  {
                    v229 = (*(v226 + 56) + 48 * v227);
                    v231 = *v229;
                    v230 = v229[1];
                    v232 = v229[2];
                    v233 = v229[3];
                    v234 = v229[5];
                    v470 = v229[4];
                    v501 = v230;

                    v478 = v232;

                    v477 = v233;
                    v235 = v470;

                    v475 = v234;

LABEL_96:

                    goto LABEL_102;
                  }

                  goto LABEL_100;
                }

                sub_1D6D0A444(v176, sub_1D5D5046C);
                sub_1D5ED8048();
                v140 = swift_allocError();
                *v141 = 0x6963655264656546;
                *(v141 + 8) = 0xEA00000000006570;
                v206 = v478;
                *(v141 + 16) = v501;
                *(v141 + 24) = v206;
                *(v141 + 32) = v166;
                goto LABEL_16;
              }

              sub_1D6D0A444(v169, sub_1D5D5046C);
              v129 = v476;
              v128 = v460;
              v168 = v422;
            }

            v172 = *&v129[v128[18]];
            v173 = __OFSUB__(v172, v168);
            v174 = v172 - v168;
            if (v173)
            {
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
              goto LABEL_212;
            }

            v175 = v467;
            v176 = v465;
            if (v174 < 1)
            {
              v195 = v439;
              v196 = v423;
              v197 = v166;
              v198 = v476;
              sub_1D6D022EC(v423, v197, v121, 4096, 0, 1, v439, v165);
              sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
              if ((*(*(v199 - 8) + 48))(v195, 1, v199) == 1)
              {
                sub_1D6D0A444(v195, sub_1D6D09F58);
                v171 = v466;
                v200 = *(&v439 + 1);
                (*(v466 + 56))(*(&v439 + 1), 1, 1, v175);
                v176 = v465;
                v201 = v198;
                v166 = v477;
                sub_1D6D038E8(v201, v196, v477, v121, 1, v465);

                if ((*(v171 + 48))(v200, 1, v175) != 1)
                {
                  sub_1D6D0A444(v200, sub_1D5D5046C);
                }
              }

              else
              {

                v203 = *(&v439 + 1);
                sub_1D6D0A058(v195, *(&v439 + 1), type metadata accessor for FeedRecipe);
                v171 = v466;
                v204 = *(v466 + 56);
                v204(v203, 0, 1, v467);
                v205 = v203;
                v176 = v465;
                sub_1D6D0A058(v205, v465, type metadata accessor for FeedRecipe);
                v204(v176, 0, 1, v467);
                v175 = v467;
                v166 = v477;
              }
            }

            else
            {
              sub_1D6D038E8(v476, v423, v166, v121, 1, v465);

              v171 = v466;
            }

            goto LABEL_62;
          }
        }

        sub_1D5ED8048();
        v140 = swift_allocError();
        *v141 = 0x6963655264656546;
        *(v141 + 8) = 0xEA00000000006570;
        v193 = v478;
        *(v141 + 16) = v501;
        *(v141 + 24) = v193;
        *(v141 + 32) = v166;
        *(v141 + 40) = 1;
        *(v141 + 48) = v136;
        goto LABEL_17;
      }
    }
  }

  sub_1D5ED8048();
  v140 = swift_allocError();
  *v141 = 0x6963655264656546;
  *(v141 + 8) = 0xEA00000000006570;
  *(v141 + 16) = v501;
  *(v141 + 24) = v132;
  *(v141 + 32) = v477;
LABEL_16:
  *(v141 + 40) = 1;
  *(v141 + 48) = v474;
LABEL_17:
  *(v141 + 56) = v475;
  *(v141 + 64) = 0;
  swift_willThrow();

LABEL_18:

  if ((*(v473 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    swift_willThrow();
    return;
  }

  v142 = *(v470 + 16);
  if (v142)
  {
    v143 = 0;
    v144 = (v470 + 32);
    do
    {
      v145 = *v144++;
      v146 = qword_1D7349118[v145];
      if ((v146 & ~v143) == 0)
      {
        v146 = 0;
      }

      v143 |= v146;
      --v142;
    }

    while (v142);
  }

  else
  {
    v143 = 0;
  }

  v147 = swift_allocObject();
  *(v147 + 16) = v143;
  v148 = swift_allocObject();
  v475 = v148;
  *(v148 + 16) = MEMORY[0x1E69E7CC0];
  v149 = (v148 + 16);
  v150 = swift_allocObject();
  *(v150 + 16) = sub_1D6D0A5EC;
  *(v150 + 24) = v147;
  swift_beginAccess();
  v151 = *v149;

  v152 = swift_isUniquelyReferenced_nonNull_native();
  *v149 = v151;
  if ((v152 & 1) == 0)
  {
    v151 = sub_1D69909A0(0, v151[2] + 1, 1, v151);
    *v149 = v151;
  }

  v154 = v151[2];
  v153 = v151[3];
  if (v154 >= v153 >> 1)
  {
    v151 = sub_1D69909A0((v153 > 1), v154 + 1, 1, v151);
  }

  v151[2] = v154 + 1;
  v155 = &v151[2 * v154];
  v155[4] = sub_1D6D0A520;
  v155[5] = v150;
  *(v475 + 16) = v151;
  swift_endAccess();

  v156 = *(v130 + 16);
  v157 = v478;

  if (!v156 || (v158 = sub_1D5BCF83C(0x6963655264656546, 0xEA00000000006570, v501, v157), (v159 & 1) == 0) || (v160 = *(*(v130 + 56) + 8 * v158), !*(v160 + 2)))
  {
    sub_1D5ED8048();
    swift_allocError();
    *v163 = 0x6963655264656546;
    *(v163 + 8) = 0xEA00000000006570;
    *(v163 + 16) = v501;
    *(v163 + 24) = v157;
    *(v163 + 32) = v477;
LABEL_35:
    *(v163 + 40) = 1;
    *(v163 + 48) = 0;
    *(v163 + 56) = 0;
    *(v163 + 64) = 0;
    swift_willThrow();

LABEL_36:

    return;
  }

  v162 = sub_1D5BF08EC(v161, 0, 0);
  v177 = sub_1D714EE30(v162);

  v179 = v477;
  if (!v177)
  {
LABEL_56:

    sub_1D5ED8048();
    swift_allocError();
    *v163 = 0x6963655264656546;
    *(v163 + 8) = 0xEA00000000006570;
    v194 = v478;
    *(v163 + 16) = v501;
    *(v163 + 24) = v194;
    *(v163 + 32) = v179;
    goto LABEL_35;
  }

  if (!*(v177 + 16))
  {

    goto LABEL_56;
  }

  v468 = 0;
  v180 = v460;
  v181 = v476;
  v182 = *&v476[*(v460 + 68)];
  v470 = *(v460 + 76);
  v184 = v455;
  v474 = *&v476[v470];
  v183 = v474;
  if (v474 < v182)
  {
    v185 = v434;
    sub_1D6D04354(v476, v177, v477, v475, 1, v434);
    v186 = v466;
    v187 = v467;
    if ((*(v466 + 48))(v185, 1, v467) != 1)
    {

      v241 = v429;
      sub_1D6D0A058(v185, v429, type metadata accessor for FeedRecipe);
      v179 = v477;
      sub_1D6D0A058(v241, v184, type metadata accessor for FeedRecipe);
      (*(v186 + 56))(v184, 0, 1, v187);
      v192 = v187;
      goto LABEL_83;
    }

    sub_1D6D0A444(v185, sub_1D5D5046C);
    v181 = v476;
    v180 = v460;
    v183 = v474;
  }

  v188 = *&v181[*(v180 + 72)];
  v173 = __OFSUB__(v188, v183);
  v189 = v188 - v183;
  if (v173)
  {
    goto LABEL_210;
  }

  v190 = v442;
  v191 = v475;
  if (v189 < 1)
  {
    sub_1D6D022EC(v177, v179, v475, 4096, 0, 1, v442, v178);
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC, "best remaining ");
    if ((*(*(v236 - 8) + 48))(v190, 1, v236) == 1)
    {
      sub_1D6D0A444(v190, sub_1D6D09F58);
      v186 = v466;
      v237 = v467;
      v238 = v191;
      v239 = v430;
      (*(v466 + 56))(v430, 1, 1, v467);
      sub_1D6D038E8(v476, v177, v477, v238, 1, v184);
      v192 = v237;

      v240 = (*(v186 + 48))(v239, 1, v237);
      v179 = v477;
      if (v240 != 1)
      {
        sub_1D6D0A444(v239, sub_1D5D5046C);
      }
    }

    else
    {

      v469 = type metadata accessor for FeedRecipe;
      v242 = v430;
      sub_1D6D0A058(v190, v430, type metadata accessor for FeedRecipe);
      v186 = v466;
      v192 = v467;
      v243 = *(v466 + 56);
      v243(v242, 0, 1, v467);
      sub_1D6D0A058(v242, v455, v469);
      v243(v455, 0, 1, v192);
      v184 = v455;
      v179 = v477;
    }
  }

  else
  {
    sub_1D6D038E8(v476, v177, v179, v475, 1, v184);

    v186 = v466;
    v192 = v467;
  }

LABEL_83:
  if ((*(v186 + 48))(v184, 1, v192) == 1)
  {

    sub_1D6D0A444(v184, sub_1D5D5046C);
    sub_1D5ED8048();
    swift_allocError();
    *v244 = 0x6963655264656546;
    *(v244 + 8) = 0xEA00000000006570;
    v245 = v478;
    *(v244 + 16) = v501;
    *(v244 + 24) = v245;
    *(v244 + 32) = v179;
    *(v244 + 40) = 1;
    *(v244 + 48) = 0;
    *(v244 + 56) = 0;
    *(v244 + 64) = 0;
    swift_willThrow();

    goto LABEL_36;
  }

  sub_1D6D0A058(v184, v447, type metadata accessor for FeedRecipe);
  v246 = FeedRecipe.traits.getter(&v492);
  if ((v492 & 0x1000) == 0)
  {
    goto LABEL_88;
  }

  if (!__OFADD__(v474, 1))
  {
    *&v476[v470] = v474 + 1;
LABEL_88:
    if (v463)
    {
      v216 = v464;
      v248 = v447;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v246, v247);
      v248 = v447;
      *(&v421 - 2) = v447;
      v249 = v468;
      v160 = sub_1D5BF5F6C(sub_1D5BF619C, (&v421 - 4), v160);
      v468 = v249;
      v216 = v464;
    }

    *&v492 = 0x6963655264656546;
    *(&v492 + 1) = 0xEA00000000006570;
    *&v493 = v501;
    *(&v493 + 1) = v478;
    sub_1D5BDACA8(&v492, v160);

    v250 = v433;
    sub_1D6D0A058(v248, v433, type metadata accessor for FeedRecipe);
    sub_1D6D0A058(v250, v216, type metadata accessor for FeedRecipe);
    v251 = *v216;
    v252 = v216[1];
    v253 = v458;
    v254 = sub_1D6196E44(v458, 42, 0xE100000000000000, *v216, v252);
    v500 = v254;
    v465 = v251;
    v466 = v252;
    v221 = sub_1D6196F00(v253, 42, 0xE100000000000000, v251, v252);
    v499 = v221;
    v255 = *(v253 + 16);
    v460 = v254;
    if (!v255)
    {

      v231 = 0;
      v501 = 0;
      v477 = 0;
      v478 = 0;
      v235 = 0;
      v475 = 0;
      v223 = v476;
      goto LABEL_102;
    }

    v256 = sub_1D5B69D90(42, 0xE100000000000000);
    v257 = v253;
    v223 = v476;
    if ((v258 & 1) == 0 || (v259 = *(*(*(v257 + 56) + 8 * v256) + 136), !*(v259 + 16)))
    {

LABEL_101:
      v231 = 0;
      v501 = 0;
      v477 = 0;
      v478 = 0;
      v235 = 0;
      v475 = 0;
LABEL_102:
      *(&v493 + 1) = v192;
      v268 = sub_1D6D098EC(&qword_1EDF12E00, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
      *&v494 = v268;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v492);
      sub_1D6D09934(v216, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
      v270 = v457;
      sub_1D6818590(&v492, v457);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v474 = v231;
      v469 = v268;
      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v272 = v435;
          sub_1D6D0A058(v270, v435, type metadata accessor for FeedWebEmbed);
          v273 = sub_1D6944620();
          sub_1D5D505F0(v273);
          v274 = sub_1D69449D8();
          sub_1D5B886D0(v274);
          v275 = type metadata accessor for FeedWebEmbed;
          v276 = v272;
        }

        else
        {
          v275 = type metadata accessor for FeedItem;
          v276 = v270;
        }

        sub_1D6D0A444(v276, v275);
        v293 = v468;
        goto LABEL_112;
      }

      v277 = v270;
      v278 = v448;
      sub_1D6D0A058(v277, v448, type metadata accessor for FeedCustomItem);
      v279 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v280 = *(v279 + 8);
      v281 = v278 + *(v436 + 20);
      v283 = *(v281 + 16);
      v282 = *(v281 + 24);
      if (*(v280 + 16))
      {

        v284 = sub_1D5B69D90(v283, v282);
        if (v285)
        {
          v470 = v235;
          v286 = v426;
          sub_1D6D09934(*(v280 + 56) + *(v425 + 72) * v284, v426, sub_1D6AC4E74);
          v287 = *(v286 + 32);
          v288 = *(v286 + 64);
          v483 = *(v286 + 48);
          v484 = v288;
          v485 = *(v286 + 80);
          v289 = *(v286 + 16);
          v480 = *v286;
          v481 = v289;
          v482 = v287;
          sub_1D62B7D1C(&v480, v479);
          sub_1D6D0A444(v286, sub_1D6AC4E74);

          v488 = v482;
          v489 = v483;
          v490 = v484;
          LOBYTE(v491) = v485;
          v290 = v485 >> 6;
          v486 = v480;
          v487 = v481;
          if (!v290)
          {
            v291 = v474;
            v292 = v501;
            goto LABEL_172;
          }

          v235 = v470;
          if (v290 == 1)
          {
            v291 = v474;
            v292 = v501;
LABEL_172:
            sub_1D67F58E4(v291, v292);

            v494 = v488;
            v495 = v489;
            v496 = v490;
            LOBYTE(v497) = v491;
            v492 = v486;
            v493 = v487;
            goto LABEL_173;
          }

          LODWORD(v449) = v485;
          v436 = *(&v482 + 1);
          v379 = v482;
          v439 = v483;
          v447 = *(&v484 + 1);
          v442 = v484;
          v479[0] = v482;
          sub_1D6D098B8(0);
          sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
          sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
          v450 = v379;

          v380 = sub_1D72623BC();
          v381 = *(v281 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
          v458 = *(v381 + 16);
          if (v458)
          {
            v382 = 0;
            v455 = (*(v462 + 80) + 32) & ~*(v462 + 80);
            v456 = v381 + v455;
            v457 = v380;
            do
            {
              v384 = v459;
              if (v382 >= *(v381 + 16))
              {
                goto LABEL_209;
              }

              v385 = *(v462 + 72);
              sub_1D6D09934(v456 + v385 * v382, v459, type metadata accessor for FormatOption);
              if (*(v380 + 16) && (v386 = sub_1D5B69D90(*v384, v384[1]), (v387 & 1) != 0))
              {
                v451 = v221;
                v388 = v235;
                v389 = *(v380 + 56) + *(v443 + 72) * v386;
                v390 = v428;
                sub_1D6D09934(v389, v428, type metadata accessor for FormatPropertyDefinition);
                v391 = v384;
                v392 = v432;
                sub_1D6D0A058(v390, v432, type metadata accessor for FormatPropertyDefinition);
                type metadata accessor for FormatOptionConverter();
                v393 = v427;
                v394 = v468;
                sub_1D6AC31AC(v391, v392, v427);
                v468 = v394;
                if (v394)
                {

                  sub_1D60CF6F4(v450, v436, v439, *(&v439 + 1), v442, v447, v449);
                  sub_1D62B7D78(&v480);
                  sub_1D67F58E4(v474, v501);
                  sub_1D6D0A444(v432, type metadata accessor for FormatPropertyDefinition);

                  sub_1D6D0A444(v464, type metadata accessor for FeedRecipe);
                  sub_1D6D0A444(v459, type metadata accessor for FormatOption);
                  sub_1D6D0A444(v448, type metadata accessor for FeedCustomItem);

                  return;
                }

                sub_1D6D09934(v393, v431, type metadata accessor for FormatOption);
                v395 = v393;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v451 = sub_1D5CEABA0(0, v451[2] + 1, 1, v451);
                }

                v235 = v388;
                v221 = v451;
                v397 = v451[2];
                v396 = v451[3];
                v398 = v397 + 1;
                if (v397 >= v396 >> 1)
                {
                  v221 = sub_1D5CEABA0((v396 > 1), v397 + 1, 1, v451);
                }

                sub_1D6D0A444(v395, type metadata accessor for FormatOption);
                sub_1D6D0A444(v432, type metadata accessor for FormatPropertyDefinition);
                v383 = v431;
              }

              else
              {
                sub_1D6D09934(v384, v452, type metadata accessor for FormatOption);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v221 = sub_1D5CEABA0(0, *(v221 + 2) + 1, 1, v221);
                }

                v397 = *(v221 + 2);
                v399 = *(v221 + 3);
                v398 = v397 + 1;
                if (v397 >= v399 >> 1)
                {
                  v221 = sub_1D5CEABA0((v399 > 1), v397 + 1, 1, v221);
                }

                v383 = v452;
              }

              ++v382;
              sub_1D6D0A444(v459, type metadata accessor for FormatOption);
              *(v221 + 2) = v398;
              sub_1D6D0A058(v383, &v221[v455 + v397 * v385], type metadata accessor for FormatOption);
              v499 = v221;
              v380 = v457;
            }

            while (v458 != v382);
          }

          v479[0] = v381;
          sub_1D5B5AD98(0);
          sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
          sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
          v400 = sub_1D72623AC();
          v401 = v450;
          v293 = v468;
          v458 = *(v450 + 16);
          if (!v458)
          {
            sub_1D60CF6F4(v450, v436, v439, *(&v439 + 1), v442, v447, v449);

            v223 = v476;
LABEL_205:
            sub_1D62B7D78(&v480);
            sub_1D6D0A444(v448, type metadata accessor for FeedCustomItem);
            v216 = v464;
            v231 = v474;
LABEL_112:
            v468 = v293;
            v294 = v500;
            v295 = v223[88];
            v476 = v499;
            if (v463)
            {
              v296 = v473;
              swift_beginAccess();
              if ((v295 & 1) != 0 || !*(*(v296 + 32) + 16) || (, sub_1D5B69D90(v453, v454), v298 = v297, , (v298 & 1) == 0))
              {
                FeedRecipe.traits.getter(&v492);
                v299 = v492;
                v300 = *(*(v296 + 80) + 16);
                if (v300)
                {
                  sub_1D5B69D90(v465, v466);
                  v300 = 0x4000000000;
                  if ((v301 & 1) == 0)
                  {
                    v300 = 0;
                  }
                }

                *&v492 = v300 | v299;

                v302 = sub_1D713CCF4();
                v466 = v294;
                v303 = sub_1D5BA8750(v302, v294);

                v304 = sub_1D6C9D930();
                v305 = sub_1D5BA8750(v304, v303);

                *(&v481 + 1) = v467;
                *&v482 = v469;
                v306 = __swift_allocate_boxed_opaque_existential_1(&v480);
                sub_1D6D09934(v216, v306, type metadata accessor for FeedRecipe);
                sub_1D5B68374(&v480, &v486);

                v307 = v305;
                if (v501)
                {
                  v307 = sub_1D5BA8750(&unk_1F50F6BB0, v305);
                  sub_1D5BFB68C(&unk_1F50F6BD0);
                }

                v469 = v305;
                v470 = v235;
                *(&v488 + 1) = v307;
                v308 = v476;
                v309 = *(v476 + 2);
                if (v309)
                {
                  *&v492 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v309, 0);
                  v310 = v492;
                  v311 = &v308[(*(v462 + 80) + 32) & ~*(v462 + 80)];
                  v312 = *(v462 + 72);
                  v313 = v309;
                  do
                  {
                    v314 = v471;
                    sub_1D6D09934(v311, v471, type metadata accessor for FormatOption);
                    v315 = swift_allocBox();
                    sub_1D6D0A058(v314, v316, type metadata accessor for FormatOption);
                    *&v492 = v310;
                    v318 = *(v310 + 16);
                    v317 = *(v310 + 24);
                    if (v318 >= v317 >> 1)
                    {
                      sub_1D5D24610((v317 > 1), v318 + 1, 1);
                      v310 = v492;
                    }

                    *(v310 + 16) = v318 + 1;
                    *(v310 + 8 * v318 + 32) = v315 | 0x1000000000000004;
                    v311 += v312;
                    --v313;
                  }

                  while (v313);
                  __swift_destroy_boxed_opaque_existential_1(&v480);
                  v216 = v464;
                  v231 = v474;
                  v235 = v470;
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1(&v480);
                  v310 = MEMORY[0x1E69E7CC0];
                }

                *&v489 = v310;
                *(&v489 + 1) = v231;
                v344 = v501;
                *&v490 = v501;
                *(&v490 + 1) = v478;
                *&v491 = v477;
                *(&v491 + 1) = v235;
                v498 = v475;
                v492 = v486;
                v493 = v487;
                v494 = v488;
                v495 = v489;
                v496 = v490;
                v497 = v491;
                v345 = v454;

                sub_1D67F5880(v231, v344);
                sub_1D6D60C48(&v492, v453, v345);
                v346 = v444;
                sub_1D6D09934(v216, v444, type metadata accessor for FeedRecipe);
                v347 = v346;
                v348 = v440;
                sub_1D6D09934(v347, v440, type metadata accessor for FeedRecipe);
                if (v344)
                {
                  v349 = sub_1D5BA8750(&unk_1F50F6BE0, v469);
                  sub_1D5BFB68C(&unk_1F50F6C00);
                }

                else
                {
                  v349 = v469;
                }

                *(v348 + *(v461 + 28)) = v349;
                if (v309)
                {
                  *&v492 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v309, 0);
                  v355 = v492;
                  v356 = &v476[(*(v462 + 80) + 32) & ~*(v462 + 80)];
                  v357 = *(v462 + 72);
                  do
                  {
                    v358 = v471;
                    sub_1D6D09934(v356, v471, type metadata accessor for FormatOption);
                    v359 = swift_allocBox();
                    sub_1D6D0A058(v358, v360, type metadata accessor for FormatOption);
                    *&v492 = v355;
                    v362 = *(v355 + 16);
                    v361 = *(v355 + 24);
                    if (v362 >= v361 >> 1)
                    {
                      sub_1D5D24610((v361 > 1), v362 + 1, 1);
                      v355 = v492;
                    }

                    *(v355 + 16) = v362 + 1;
                    *(v355 + 8 * v362 + 32) = v359 | 0x1000000000000004;
                    v356 += v357;
                    --v309;
                  }

                  while (v309);
                  sub_1D6D0A444(v444, type metadata accessor for FeedRecipe);
                  v348 = v440;
LABEL_163:
                  v231 = v474;
                  v235 = v470;
LABEL_167:
                  v371 = v461;
                  *(v348 + *(v461 + 32)) = v355;
                  v372 = (v348 + *(v371 + 36));
                  v373 = v501;
                  *v372 = v231;
                  v372[1] = v373;
                  v374 = v477;
                  v372[2] = v478;
                  v372[3] = v374;
                  v375 = v475;
                  v372[4] = v235;
                  v372[5] = v375;
                  sub_1D6D0A058(v348, v446, sub_1D6D0935C);
                  swift_endAccess();

                  goto LABEL_168;
                }

                v370 = v444;
                goto LABEL_166;
              }
            }

            else
            {
              v319 = v473;
              swift_beginAccess();
              if ((v295 & 1) != 0 || !*(*(v319 + 24) + 16) || (, sub_1D5B69D90(v453, v454), v321 = v320, , (v321 & 1) == 0))
              {
                FeedRecipe.traits.getter(&v492);
                v324 = v492;
                v325 = *(*(v319 + 80) + 16);
                if (v325)
                {
                  sub_1D5B69D90(v465, v466);
                  v325 = 0x4000000000;
                  if ((v326 & 1) == 0)
                  {
                    v325 = 0;
                  }
                }

                *&v492 = v325 | v324;

                v327 = sub_1D713CCF4();
                v466 = v294;
                v328 = sub_1D5BA8750(v327, v294);

                v329 = sub_1D6C9D930();
                v330 = sub_1D5BA8750(v329, v328);

                *(&v481 + 1) = v467;
                *&v482 = v469;
                v331 = __swift_allocate_boxed_opaque_existential_1(&v480);
                sub_1D6D09934(v216, v331, type metadata accessor for FeedRecipe);
                sub_1D5B68374(&v480, &v486);

                v332 = v330;
                if (v501)
                {
                  v332 = sub_1D5BA8750(&unk_1F50F6C10, v330);
                  sub_1D5BFB68C(&unk_1F50F6C30);
                }

                v469 = v330;
                v470 = v235;
                *(&v488 + 1) = v332;
                v333 = v476;
                v334 = *(v476 + 2);
                if (v334)
                {
                  *&v492 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v334, 0);
                  v335 = v492;
                  v336 = &v333[(*(v462 + 80) + 32) & ~*(v462 + 80)];
                  v337 = *(v462 + 72);
                  v338 = v334;
                  do
                  {
                    v339 = v471;
                    sub_1D6D09934(v336, v471, type metadata accessor for FormatOption);
                    v340 = swift_allocBox();
                    sub_1D6D0A058(v339, v341, type metadata accessor for FormatOption);
                    *&v492 = v335;
                    v343 = *(v335 + 16);
                    v342 = *(v335 + 24);
                    if (v343 >= v342 >> 1)
                    {
                      sub_1D5D24610((v342 > 1), v343 + 1, 1);
                      v335 = v492;
                    }

                    *(v335 + 16) = v343 + 1;
                    *(v335 + 8 * v343 + 32) = v340 | 0x1000000000000004;
                    v336 += v337;
                    --v338;
                  }

                  while (v338);
                  __swift_destroy_boxed_opaque_existential_1(&v480);
                  v216 = v464;
                  v231 = v474;
                  v235 = v470;
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1(&v480);
                  v335 = MEMORY[0x1E69E7CC0];
                }

                *&v489 = v335;
                *(&v489 + 1) = v231;
                v350 = v501;
                *&v490 = v501;
                *(&v490 + 1) = v478;
                *&v491 = v477;
                *(&v491 + 1) = v235;
                v498 = v475;
                v492 = v486;
                v493 = v487;
                v494 = v488;
                v495 = v489;
                v496 = v490;
                v497 = v491;
                v351 = v454;

                sub_1D67F5880(v231, v350);
                sub_1D6D60C48(&v492, v453, v351);
                v352 = v445;
                sub_1D6D09934(v216, v445, type metadata accessor for FeedRecipe);
                v353 = v352;
                v348 = v441;
                sub_1D6D09934(v353, v441, type metadata accessor for FeedRecipe);
                if (v350)
                {
                  v354 = sub_1D5BA8750(&unk_1F50F6C40, v469);
                  sub_1D5BFB68C(&unk_1F50F6C60);
                }

                else
                {
                  v354 = v469;
                }

                *(v348 + *(v461 + 28)) = v354;
                if (v334)
                {
                  *&v492 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v334, 0);
                  v355 = v492;
                  v363 = &v476[(*(v462 + 80) + 32) & ~*(v462 + 80)];
                  v364 = *(v462 + 72);
                  do
                  {
                    v365 = v471;
                    sub_1D6D09934(v363, v471, type metadata accessor for FormatOption);
                    v366 = swift_allocBox();
                    sub_1D6D0A058(v365, v367, type metadata accessor for FormatOption);
                    *&v492 = v355;
                    v369 = *(v355 + 16);
                    v368 = *(v355 + 24);
                    if (v369 >= v368 >> 1)
                    {
                      sub_1D5D24610((v368 > 1), v369 + 1, 1);
                      v355 = v492;
                    }

                    *(v355 + 16) = v369 + 1;
                    *(v355 + 8 * v369 + 32) = v366 | 0x1000000000000004;
                    v363 += v364;
                    --v334;
                  }

                  while (v334);
                  sub_1D6D0A444(v445, type metadata accessor for FeedRecipe);
                  v348 = v441;
                  goto LABEL_163;
                }

                v370 = v445;
LABEL_166:
                sub_1D6D0A444(v370, type metadata accessor for FeedRecipe);
                v355 = MEMORY[0x1E69E7CC0];
                goto LABEL_167;
              }
            }

            sub_1D6752B3C();
            swift_allocError();
            v322 = v454;
            *v323 = v453;
            *(v323 + 8) = v322;
            *(v323 + 56) = 0;
            swift_willThrow();
            swift_endAccess();

            sub_1D67F58E4(v231, v501);

LABEL_168:

            v376 = type metadata accessor for FeedRecipe;
            v377 = v216;
LABEL_174:
            sub_1D6D0A444(v377, v376);
            return;
          }

          v459 = v400;
          v402 = 0;
          v457 = v450 + ((*(v443 + 80) + 32) & ~*(v443 + 80));
          v403 = (v462 + 56);
          v404 = v438;
          while (1)
          {
            if (v402 >= *(v401 + 16))
            {
              goto LABEL_211;
            }

            v409 = v293;
            sub_1D6D09934(v457 + *(v443 + 72) * v402, v404, type metadata accessor for FormatPropertyDefinition);
            v410 = FormatPropertyDefinition.identifier.getter();
            if (v459[2])
            {
              v412 = sub_1D5B69D90(v410, v411);
              v414 = v413;
              v401 = v450;

              if (v414)
              {
                v405 = v462;
                v406 = v437;
                sub_1D6D09934(v459[7] + *(v462 + 72) * v412, v437, type metadata accessor for FormatOption);
                v404 = v438;
                sub_1D6D0A444(v438, type metadata accessor for FormatPropertyDefinition);
                v401 = v450;
                (*(v405 + 56))(v406, 0, 1, v472);
                v407 = sub_1D5E04C00;
                v408 = v406;
                goto LABEL_195;
              }
            }

            else
            {
            }

            v415 = v437;
            (*v403)(v437, 1, 1, v472);
            sub_1D6D0A444(v415, sub_1D5E04C00);
            v404 = v438;
            if (sub_1D695C4AC())
            {

              sub_1D67F58E4(v474, v501);

              sub_1D60CF6F4(v401, v436, v439, *(&v439 + 1), v442, v447, v449);

              type metadata accessor for FormatLayoutError(0);
              sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
              swift_allocError();
              v417 = v416;
              sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
              v419 = *(v418 + 48);
              v420 = v448;
              sub_1D6D09934(v448, v417, type metadata accessor for FeedCustomItem);
              sub_1D6D09934(v404, v417 + v419, type metadata accessor for FormatPropertyDefinition);
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_1D62B7D78(&v480);
              sub_1D6D0A444(v404, type metadata accessor for FormatPropertyDefinition);
              sub_1D6D0A444(v464, type metadata accessor for FeedRecipe);
              v376 = type metadata accessor for FeedCustomItem;
              v377 = v420;
              goto LABEL_174;
            }

            v407 = type metadata accessor for FormatPropertyDefinition;
            v408 = v404;
LABEL_195:
            sub_1D6D0A444(v408, v407);
            ++v402;
            v293 = v409;
            v223 = v476;
            if (v458 == v402)
            {
              sub_1D60CF6F4(v401, v436, v439, *(&v439 + 1), v442, v447, v449);

              v235 = v470;
              goto LABEL_205;
            }
          }
        }
      }

      sub_1D67F58E4(v474, v501);

      LOBYTE(v497) = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
LABEL_173:
      type metadata accessor for FormatLayoutError(0);
      sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v378 = v283;
      v378[1] = v282;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D6D09524(&v492, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
      sub_1D6D0A444(v464, type metadata accessor for FeedRecipe);
      v376 = type metadata accessor for FeedCustomItem;
      v377 = v448;
      goto LABEL_174;
    }

    v260 = sub_1D5B69D90(v465, v466);
    if (v261)
    {
      v262 = (*(v259 + 56) + 48 * v260);
      v263 = v262[1];
      v474 = *v262;
      v264 = v262[2];
      v265 = v262[3];
      v266 = v262[5];
      v470 = v262[4];
      v501 = v263;

      v478 = v264;

      v477 = v265;
      v235 = v470;

      v475 = v266;

      v267 = v140;
      v231 = v474;

      goto LABEL_96;
    }

LABEL_100:

    goto LABEL_101;
  }

LABEL_213:
  __break(1u);
}

void sub_1D6CE4CF8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v741 = a6;
  v742 = a7;
  v788 = a5;
  v787 = a4;
  v812 = a3;
  v743 = a2;
  v786 = a1;
  v732 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v723 = &v688 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatPropertyDefinition(0);
  v730 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v709 = &v688 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v718 = &v688 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v688 - v25;
  v777 = type metadata accessor for FormatOption(0);
  v747 = *(v777 - 8);
  MEMORY[0x1EEE9AC00](v777, v27);
  v717 = &v688 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v708 = &v688 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v710 = &v688 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v746 = (&v688 - v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v776 = &v688 - v40;
  sub_1D6D093F4(0);
  v739 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v688 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v729 = &v688 - v47;
  sub_1D6AC4E74(0);
  v704 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v705 = &v688 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v722 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v722, v51);
  v735 = &v688 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v721 = &v688 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v744 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v744, v56);
  v745 = &v688 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v782 = v58;
  v756 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v59);
  v778 = (&v688 - v60);
  sub_1D5C144C0(0, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v752 = &v688 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v751 = (&v688 - v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  v761 = &v688 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v760 = (&v688 - v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  v765 = &v688 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v766 = (&v688 - v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  v759 = &v688 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  *&v768 = &v688 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v762 = &v688 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v753 = (&v688 - v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  v770 = &v688 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v769 + 1) = &v688 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  *(&v768 + 1) = &v688 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v775 = (&v688 - v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  v774 = (&v688 - v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  v773 = (&v688 - v108);
  sub_1D6D0A350(0, &qword_1EC894E88, type metadata accessor for FeedPuzzleStatistic, sub_1D6D09EFC, "best remaining ");
  MEMORY[0x1EEE9AC00](v109 - 8, v110);
  v703 = &v688 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112, v113);
  v706 = &v688 - v114;
  MEMORY[0x1EEE9AC00](v115, v116);
  v711 = &v688 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v714 = &v688 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v707 = &v688 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v715 = &v688 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v725 = &v688 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v728 = &v688 - v132;
  sub_1D5F2DDBC(0);
  MEMORY[0x1EEE9AC00](v133 - 8, v134);
  v136 = &v688 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v137, v138);
  v740 = &v688 - v139;
  MEMORY[0x1EEE9AC00](v140, v141);
  v738 = &v688 - v142;
  MEMORY[0x1EEE9AC00](v143, v144);
  v749 = &v688 - v145;
  v763 = type metadata accessor for FeedPuzzleStatistic(0);
  v780 = *(v763 - 8);
  MEMORY[0x1EEE9AC00](v763, v146);
  v750 = (&v688 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v148, v149);
  v754 = &v688 - v150;
  MEMORY[0x1EEE9AC00](v151, v152);
  v764 = (&v688 - v153);
  MEMORY[0x1EEE9AC00](v154, v155);
  v767 = (&v688 - v156);
  MEMORY[0x1EEE9AC00](v157, v158);
  v713 = &v688 - v159;
  MEMORY[0x1EEE9AC00](v160, v161);
  v712 = &v688 - v162;
  MEMORY[0x1EEE9AC00](v163, v164);
  v720 = &v688 - v165;
  MEMORY[0x1EEE9AC00](v166, v167);
  v719 = &v688 - v168;
  MEMORY[0x1EEE9AC00](v169, v170);
  v734 = &v688 - v171;
  MEMORY[0x1EEE9AC00](v172, v173);
  v733 = &v688 - v174;
  MEMORY[0x1EEE9AC00](v175, v176);
  v731 = &v688 - v177;
  MEMORY[0x1EEE9AC00](v178, v179);
  v758 = (&v688 - v180);
  MEMORY[0x1EEE9AC00](v181, v182);
  *&v769 = &v688 - v183;
  MEMORY[0x1EEE9AC00](v184, v185);
  j = &v688 - v186;
  MEMORY[0x1EEE9AC00](v187, v188);
  v190 = (&v688 - v189);
  MEMORY[0x1EEE9AC00](v191, v192);
  v727 = &v688 - v193;
  MEMORY[0x1EEE9AC00](v194, v195);
  v726 = &v688 - v196;
  MEMORY[0x1EEE9AC00](v197, v198);
  MEMORY[0x1EEE9AC00](v199, v200);
  v736 = &v688 - v201;
  MEMORY[0x1EEE9AC00](v202, v203);
  v755 = (&v688 - v204);
  v784 = v12;
  v205 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v206 = *(v205 + 16);
  v716 = v44;
  v702 = v26;
  v724 = v136;
  v781 = v205;
  v737 = v207;
  v208 = 0;
  if (v206)
  {
    v209 = (v205 + 32);
    do
    {
      v210 = *v209++;
      v211 = qword_1D7349118[v210];
      if ((v211 & ~v208) == 0)
      {
        v211 = 0;
      }

      v208 |= v211;
      --v206;
    }

    while (v206);
  }

  v212 = swift_allocObject();
  *(v212 + 16) = v208;
  sub_1D6D09390(0, &qword_1EC894E98, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedItemSorter);
  v779 = v213;
  v214 = swift_allocObject();
  v215 = MEMORY[0x1E69E7CC0];
  v783 = v214;
  v214[2] = MEMORY[0x1E69E7CC0];
  v216 = v214 + 2;
  v217 = swift_allocObject();
  *(v217 + 16) = sub_1D6D09F30;
  *(v217 + 24) = v212;
  swift_beginAccess();

  v218 = sub_1D69909F4(0, 1, 1, v215);
  v220 = v218[2];
  v219 = v218[3];
  if (v220 >= v219 >> 1)
  {
    v218 = sub_1D69909F4((v219 > 1), v220 + 1, 1, v218);
  }

  v748 = a11;
  v785 = a10;
  v218[2] = v220 + 1;
  v221 = &v218[2 * v220];
  v221[4] = sub_1D6D09F38;
  v221[5] = v217;
  *v216 = v218;
  swift_endAccess();

  v222 = 0x80000001D73C3770;
  v757 = type metadata accessor for GroupLayoutBindingContext(0);
  v223 = v786;
  v224 = *&v786[v757[14]];
  v225 = *(v224 + 16);
  v226 = v787;

  if (!v225 || (v227 = sub_1D5BCF83C(0xD000000000000013, 0x80000001D73C3770, v812, v226), (v228 & 1) == 0) || !*(*(*(v224 + 56) + 8 * v227) + 16))
  {
    sub_1D5ED8048();
    v236 = swift_allocError();
    *v238 = 0xD000000000000013;
    *(v238 + 8) = 0x80000001D73C3770;
    *(v238 + 16) = v812;
    *(v238 + 24) = v226;
    *(v238 + 32) = v788;
    *(v238 + 40) = 1;
    v239 = v785;
    *(v238 + 48) = a8;
    *(v238 + 56) = v239;
    *(v238 + 64) = 0;
    swift_willThrow();
LABEL_15:

    v237 = v784;
LABEL_16:
    if ((*(v237 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
    {
      swift_willThrow();
      return;
    }

    v775 = 0;
    v240 = *(v781 + 16);
    v783 = v236;
    v241 = v224;
    v242 = 0;
    if (v240)
    {
      v243 = (v781 + 32);
      do
      {
        v244 = *v243++;
        LOBYTE(v797) = v244;
        sub_1D6FA308C(&v803);
        v245 = v803;
        if ((v803 & ~v242) == 0)
        {
          v245 = 0;
        }

        v242 |= v245;
        --v240;
      }

      while (v240);
    }

    v246 = swift_allocObject();
    *(v246 + 16) = v242;
    v247 = swift_allocObject();
    v785 = v247;
    v248 = MEMORY[0x1E69E7CC0];
    *(v247 + 16) = MEMORY[0x1E69E7CC0];
    v249 = (v247 + 16);
    v250 = swift_allocObject();
    *(v250 + 16) = sub_1D6D0A5E8;
    *(v250 + 24) = v246;
    swift_beginAccess();

    v251 = sub_1D69909F4(0, 1, 1, v248);
    v253 = v251[2];
    v252 = v251[3];
    if (v253 >= v252 >> 1)
    {
      v251 = sub_1D69909F4((v252 > 1), v253 + 1, 1, v251);
    }

    v251[2] = v253 + 1;
    v254 = &v251[2 * v253];
    v254[4] = sub_1D6D0A51C;
    v254[5] = v250;
    *v249 = v251;
    swift_endAccess();

    v255 = *(v241 + 16);
    v256 = v787;

    if (v255)
    {
      v257 = sub_1D5BCF83C(0xD000000000000013, v222, v812, v256);
      if (v258)
      {
        v259 = *(*(v241 + 56) + 8 * v257);
        if (*(v259 + 16))
        {

          v261 = v775;
          v262 = sub_1D5BF08EC(v260, 0, 0);
          if (v261)
          {

LABEL_46:

            swift_setDeallocating();
            swift_deallocClassInstance();
            return;
          }

          v692 = 0;
          v273 = sub_1D714F128(v262);

          if (v273)
          {
            v274 = v273[2];
            if (v274)
            {
              v275 = v757;
              v276 = v786;
              v277 = *&v786[v757[17]];
              v770 = v757[19];
              v278 = *&v786[v770];
              j = v259;
              v691 = v222;
              v771 = v278;
              if (v278 < v277)
              {
                v279 = *v786;
                v775 = v273;
                if (v279)
                {
                }

                else
                {
                  sub_1D62F1548(v273);
                  v274 = *(v280 + 16);
                }

                v400 = v759;
                v781 = v788 | 0x1000;
                v401 = (v756 + 56);
                v402 = (v756 + 48);
                v774 = v280;

                v403 = 0;
                v779 = v274;
                if (v274)
                {
                  goto LABEL_119;
                }

LABEL_118:
                v404 = 1;
                v403 = v274;
                v405 = v782;
                while (1)
                {
                  (*v401)(v400, v404, 1, v405);
                  v411 = v768;
                  sub_1D6D09B18(v400, v768, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                  if ((*v402)(v411, 1, v405) == 1)
                  {
                    break;
                  }

                  v412 = *v411;
                  v413 = v411 + *(v405 + 48);
                  v414 = v767;
                  sub_1D6D0A058(v413, v767, type metadata accessor for FeedPuzzleStatistic);
                  if ((v781 & ~*v414) == 0)
                  {
                    v434 = v774;

                    *&v803 = v434;
                    v435 = v714;
                    sub_1D5EC1EE0(v412, v714);
                    sub_1D6D0A444(v414, type metadata accessor for FeedPuzzleStatistic);

                    v436 = v435;
                    v437 = v713;
                    sub_1D6D0A058(v436, v713, type metadata accessor for FeedPuzzleStatistic);
                    v438 = v437;
                    v439 = v712;
                    sub_1D6D0A058(v438, v712, type metadata accessor for FeedPuzzleStatistic);
                    v440 = v439;
                    v441 = v740;
                    v442 = v740;
                    goto LABEL_145;
                  }

                  sub_1D6D0A444(v414, type metadata accessor for FeedPuzzleStatistic);
                  v274 = v779;
                  if (v403 == v779)
                  {
                    goto LABEL_118;
                  }

LABEL_119:
                  if ((v403 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_309;
                  }

                  if (v403 >= v774[2])
                  {
                    goto LABEL_310;
                  }

                  v406 = v774 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * v403;
                  v405 = v782;
                  v407 = *(v782 + 48);
                  v408 = v778;
                  *v778 = v403;
                  sub_1D6D09934(v406, v408 + v407, type metadata accessor for FeedPuzzleStatistic);
                  v409 = v408;
                  v410 = v759;
                  sub_1D6D0A3D8(v409, v759, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                  v404 = 0;
                  ++v403;
                  v400 = v410;
                }

                swift_bridgeObjectRelease_n();
                v275 = v757;
                v278 = v771;
                v276 = v786;
                v273 = v775;
              }

              v415 = *&v276[v275[18]];
              v416 = v415 - v278;
              if (__OFSUB__(v415, v278))
              {
                goto LABEL_320;
              }

              v417 = *v276;
              v418 = v754;
              if (v416 < 1)
              {
                v775 = v273;
                if (v417)
                {

                  v774 = v273;
                }

                else
                {
                  sub_1D62F1548(v273);
                  v774 = v449;
                }

                v450 = v774[2];
                v781 = v756 + 56;
                v779 = (v756 + 48);

                v451 = 0;
                while (1)
                {
                  if (v451 == v450)
                  {
                    v452 = 1;
                    v451 = v450;
                    v453 = v782;
                    v454 = v761;
                  }

                  else
                  {
                    if ((v451 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_315;
                    }

                    if (v451 >= v774[2])
                    {
                      goto LABEL_316;
                    }

                    v455 = v774 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * v451;
                    v453 = v782;
                    v456 = *(v782 + 48);
                    v457 = v778;
                    *v778 = v451;
                    sub_1D6D09934(v455, v457 + v456, type metadata accessor for FeedPuzzleStatistic);
                    v454 = v761;
                    sub_1D6D0A3D8(v457, v761, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                    v452 = 0;
                    ++v451;
                    v418 = v754;
                  }

                  v458 = *v781;
                  (*v781)(v454, v452, 1, v453);
                  v459 = v454;
                  v460 = v760;
                  sub_1D6D09B18(v459, v760, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                  v461 = *v779;
                  if ((*v779)(v460, 1, v453) == 1)
                  {
                    swift_bridgeObjectRelease_n();
                    v493 = *(v780 + 56);
                    *(&v769 + 1) = v780 + 56;
                    *&v769 = v493;
                    v493(v724, 1, 1, v763);
                    v494 = v775;
                    if ((*v786 & 1) == 0)
                    {
                      sub_1D62F1548(v775);
                      v496 = v495;

                      v494 = v496;
                    }

                    v497 = v494[2];
                    v775 = v494;

                    v498 = 0;
                    v773 = v497;
                    if (v497)
                    {
                      goto LABEL_180;
                    }

LABEL_179:
                    v499 = 1;
                    v774 = v497;
                    v500 = v782;
                    v501 = v752;
                    while (1)
                    {
                      v458(v501, v499, 1, v500);
                      v507 = v751;
                      sub_1D6D09B18(v501, v751, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                      if (v461(v507, 1, v500) == 1)
                      {
                        break;
                      }

                      v508 = *v507;
                      v509 = v750;
                      sub_1D6D0A058(v507 + *(v500 + 48), v750, type metadata accessor for FeedPuzzleStatistic);
                      if ((v788 & ~*v509) == 0)
                      {
                        v515 = v775;

                        *&v803 = v515;
                        v516 = v703;
                        sub_1D5EC1EE0(v508, v703);
                        sub_1D6D0A444(v509, type metadata accessor for FeedPuzzleStatistic);

                        v442 = v740;
                        sub_1D6D0A058(v516, v740, type metadata accessor for FeedPuzzleStatistic);
                        v514 = 0;
LABEL_194:
                        v468 = j;
                        v447 = v763;
                        (v769)(v442, v514, 1, v763);
                        v446 = v780;
                        v517 = v724;
                        v518 = (*(v780 + 48))(v724, 1, v447);
                        v237 = v784;
                        v443 = v787;
                        if (v518 != 1)
                        {
                          sub_1D6D0A444(v517, sub_1D5F2DDBC);
                        }

                        goto LABEL_160;
                      }

                      sub_1D6D0A444(v509, type metadata accessor for FeedPuzzleStatistic);
                      v497 = v773;
                      v498 = v774;
                      if (v774 == v773)
                      {
                        goto LABEL_179;
                      }

LABEL_180:
                      if ((v498 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_318;
                      }

                      if (v498 >= v775[2])
                      {
                        goto LABEL_319;
                      }

                      v502 = v498 + 1;
                      v503 = v775 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * v498;
                      v500 = v782;
                      v504 = *(v782 + 48);
                      v505 = v778;
                      *v778 = v498;
                      sub_1D6D09934(v503, v505 + v504, type metadata accessor for FeedPuzzleStatistic);
                      v506 = v505;
                      v501 = v752;
                      sub_1D6D0A3D8(v506, v752, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                      v499 = 0;
                      v774 = v502;
                    }

                    swift_bridgeObjectRelease_n();
                    v514 = 1;
                    v442 = v740;
                    goto LABEL_194;
                  }

                  v462 = *v460;
                  sub_1D6D0A058(v460 + *(v453 + 48), v418, type metadata accessor for FeedPuzzleStatistic);
                  if ((v788 & ~*v418) == 0 && (*v418 & 0x1000) == 0)
                  {
                    v463 = v774;

                    *&v803 = v463;
                    v464 = v418;
                    v465 = v706;
                    sub_1D5EC1EE0(v462, v706);
                    sub_1D6D0A444(v464, type metadata accessor for FeedPuzzleStatistic);

                    v466 = v724;
                    sub_1D6D0A058(v465, v724, type metadata accessor for FeedPuzzleStatistic);
                    v446 = v780;
                    v467 = *(v780 + 56);
                    v447 = v763;
                    v467(v466, 0, 1, v763);
                    v442 = v740;
                    sub_1D6D0A058(v466, v740, type metadata accessor for FeedPuzzleStatistic);
                    v467(v442, 0, 1, v447);
                    goto LABEL_159;
                  }

                  sub_1D6D0A444(v418, type metadata accessor for FeedPuzzleStatistic);
                }
              }

              if ((*v276 & 1) == 0)
              {
                sub_1D62F1548(v273);
                v420 = v419;

                v273 = v420;
              }

              v421 = v273[2];
              v781 = v756 + 56;
              v779 = (v756 + 48);
              v775 = v273;

              v422 = 0;
              if (v421)
              {
                goto LABEL_133;
              }

LABEL_132:
              v423 = 1;
              v422 = v421;
              v424 = v782;
              v425 = v765;
              while (1)
              {
                (*v781)(v425, v423, 1, v424);
                v430 = v766;
                sub_1D6D09B18(v425, v766, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                if ((*v779)(v430, 1, v424) == 1)
                {
                  swift_bridgeObjectRelease_n();

                  v442 = v740;
                  (*(v780 + 56))(v740, 1, 1, v763);
                  v443 = v787;
                  goto LABEL_162;
                }

                v431 = v421;
                v432 = *v430;
                v433 = v764;
                sub_1D6D0A058(v430 + *(v424 + 48), v764, type metadata accessor for FeedPuzzleStatistic);
                if ((v788 & ~*v433) == 0)
                {
                  break;
                }

                sub_1D6D0A444(v433, type metadata accessor for FeedPuzzleStatistic);
                v421 = v431;
                if (v422 == v431)
                {
                  goto LABEL_132;
                }

LABEL_133:
                if ((v422 & 0x8000000000000000) != 0)
                {
                  goto LABEL_311;
                }

                if (v422 >= v775[2])
                {
                  goto LABEL_312;
                }

                v426 = v775 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * v422;
                v424 = v782;
                v427 = *(v782 + 48);
                v428 = v778;
                *v778 = v422;
                sub_1D6D09934(v426, v428 + v427, type metadata accessor for FeedPuzzleStatistic);
                v429 = v428;
                v425 = v765;
                sub_1D6D0A3D8(v429, v765, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                v423 = 0;
                ++v422;
              }

              v444 = v775;

              *&v803 = v444;
              v445 = v711;
              sub_1D5EC1EE0(v432, v711);
              sub_1D6D0A444(v433, type metadata accessor for FeedPuzzleStatistic);

              v440 = v445;
              v442 = v740;
              v441 = v740;
LABEL_145:
              sub_1D6D0A058(v440, v441, type metadata accessor for FeedPuzzleStatistic);
              v446 = v780;
              v447 = v763;
              (*(v780 + 56))(v442, 0, 1, v763);
LABEL_159:
              v237 = v784;
              v443 = v787;
              v468 = j;
LABEL_160:
              if ((*(v446 + 48))(v442, 1, v447) == 1)
              {

LABEL_162:
                sub_1D6D0A444(v442, sub_1D5F2DDBC);
                sub_1D5ED8048();
                swift_allocError();
                *v282 = 0xD000000000000013;
                v469 = v812;
                *(v282 + 8) = v691;
                *(v282 + 16) = v469;
                *(v282 + 24) = v443;
                goto LABEL_45;
              }

              v470 = v720;
              v471 = sub_1D6D0A058(v442, v720, type metadata accessor for FeedPuzzleStatistic);
              if ((*(v470 + 1) & 0x10) != 0)
              {
                if (__OFADD__(v771, 1))
                {
                  goto LABEL_324;
                }

                *&v786[v770] = v771 + 1;
              }

              v473 = v691;
              if ((v748 & 1) == 0)
              {
                MEMORY[0x1EEE9AC00](v471, v472);
                *(&v688 - 2) = v470;
                v474 = v692;
                v468 = sub_1D5BF5F6C(sub_1D6D09C0C, (&v688 - 4), v468);
                v692 = v474;
              }

              *&v803 = 0xD000000000000013;
              *(&v803 + 1) = v473;
              *&v804 = v812;
              *(&v804 + 1) = v443;
              sub_1D5BDACA8(&v803, v468);

              swift_setDeallocating();
              swift_deallocClassInstance();

              v475 = v719;
              sub_1D6D0A058(v470, v719, type metadata accessor for FeedPuzzleStatistic);
              v476 = v475;
              v477 = v755;
              sub_1D6D0A058(v476, v755, type metadata accessor for FeedPuzzleStatistic);
              v362 = *(v477 + 40);
              v478 = *(v477 + 48);
              v479 = v743;
              v480 = sub_1D6196E44(v743, 42, 0xE100000000000000, v362, v478);
              v811 = v480;
              v779 = v478;
              v367 = sub_1D6196F00(v479, 42, 0xE100000000000000, v362, v478);
              v810 = v367;
              v481 = *(v479 + 16);
              v778 = v480;
              if (!v481)
              {

                v788 = 0;
                v812 = 0;
                v787 = 0;
                v785 = 0;
                v782 = 0;
                v781 = 0;
                v360 = v755;
                v356 = v786;
                goto LABEL_188;
              }

              v482 = sub_1D5B69D90(42, 0xE100000000000000);
              v356 = v786;
              v483 = v783;
              if ((v484 & 1) != 0 && (v485 = *(*(*(v479 + 56) + 8 * v482) + 136), *(v485 + 16)))
              {

                v486 = sub_1D5B69D90(v362, v779);
                if (v487)
                {
                  v488 = (*(v485 + 56) + 48 * v486);
                  v489 = v488[1];
                  v788 = *v488;
                  v490 = v488[2];
                  v491 = v488[3];
                  v492 = v488[5];
                  v782 = v488[4];
                  v812 = v489;

                  v787 = v490;

                  v785 = v491;

                  v781 = v492;

LABEL_175:
                  v360 = v755;
                  goto LABEL_188;
                }
              }

              else
              {
              }

              v788 = 0;
              v812 = 0;
              v787 = 0;
              v785 = 0;
              v782 = 0;
              v781 = 0;
              goto LABEL_175;
            }
          }
        }
      }
    }

    sub_1D5ED8048();
    swift_allocError();
    *v282 = 0xD000000000000013;
    *(v282 + 8) = v222;
    *(v282 + 16) = v812;
    *(v282 + 24) = v256;
LABEL_45:
    *(v282 + 32) = v788;
    *(v282 + 40) = 1;
    *(v282 + 48) = 0;
    *(v282 + 56) = 0;
    *(v282 + 64) = 0;
    swift_willThrow();
    goto LABEL_46;
  }

  v696 = v218;
  v701 = v224;

  v230 = a8;
  v231 = a8;
  v232 = v785;
  v233 = v229;
  v234 = v771;
  v235 = sub_1D5BF08EC(v229, v231, v785);
  if (v234)
  {

    v236 = v234;
    v237 = v784;
LABEL_13:
    v224 = v701;
    goto LABEL_16;
  }

  v694 = v233;
  v695 = v230;
  v692 = 0;
  v263 = sub_1D714F128(v235);

  v224 = v701;
  if (!v263)
  {
LABEL_41:

    sub_1D5ED8048();
    v236 = swift_allocError();
    *v281 = 0xD000000000000013;
    *(v281 + 8) = 0x80000001D73C3770;
    *(v281 + 16) = v812;
    *(v281 + 24) = v226;
    *(v281 + 32) = v788;
    *(v281 + 40) = 1;
    *(v281 + 48) = v695;
    *(v281 + 56) = v232;
    *(v281 + 64) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v264 = v263;
  v265 = *(v263 + 16);
  if (!v265)
  {

    goto LABEL_41;
  }

  v266 = v757;
  v267 = *&v223[v757[17]];
  v689 = v757[19];
  v269 = v782;
  v270 = v775;
  v690 = *&v223[v689];
  v268 = v690;
  if (v690 >= v267)
  {
LABEL_58:
    v294 = *&v223[v266[18]];
    v295 = v294 - v268;
    if (__OFSUB__(v294, v268))
    {
      goto LABEL_317;
    }

    v296 = *v223;
    v691 = v222;
    if (v295 >= 1)
    {
      if ((v296 & 1) == 0)
      {
        sub_1D62F1548(v264);
        v298 = v297;

        v264 = v298;
        v270 = v775;
      }

      v299 = *(v264 + 16);
      v774 = (v756 + 56);
      v773 = (v756 + 48);
      v697 = v264;

      i = 0;
      v301 = *(&v768 + 1);
      if (v299)
      {
        goto LABEL_64;
      }

LABEL_63:
      v302 = 1;
      for (i = v299; ; ++i)
      {
        (*v774)(v301, v302, 1, v269);
        sub_1D6D09B18(v301, v270, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        if ((*v773)(v270, 1, v269) == 1)
        {
          break;
        }

        v307 = v269;
        v308 = v299;
        v309 = *v270;
        v310 = j;
        sub_1D6D0A058(v270 + *(v307 + 48), j, type metadata accessor for FeedPuzzleStatistic);
        if ((v788 & ~*v310) == 0)
        {
          v324 = v697;

          *&v803 = v324;
          v325 = v725;
          sub_1D5EC1EE0(v309, v725);
          sub_1D6D0A444(v310, type metadata accessor for FeedPuzzleStatistic);

          v318 = v749;
          sub_1D6D0A058(v325, v749, type metadata accessor for FeedPuzzleStatistic);
          v319 = v780;
          v320 = v763;
          (*(v780 + 56))(v318, 0, 1, v763);
          goto LABEL_88;
        }

        sub_1D6D0A444(v310, type metadata accessor for FeedPuzzleStatistic);
        v269 = v782;
        v299 = v308;
        if (i == v308)
        {
          goto LABEL_63;
        }

LABEL_64:
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_305;
        }

        if (i >= *(v697 + 16))
        {
          goto LABEL_306;
        }

        v303 = v697 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * i;
        v269 = v782;
        v304 = *(v782 + 48);
        v305 = v778;
        *v778 = i;
        sub_1D6D09934(v303, v305 + v304, type metadata accessor for FeedPuzzleStatistic);
        v306 = v305;
        v301 = *(&v768 + 1);
        sub_1D6D0A3D8(v306, *(&v768 + 1), &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v302 = 0;
        v270 = v775;
      }

      swift_bridgeObjectRelease_n();

      v318 = v749;
      (*(v780 + 56))(v749, 1, 1, v763);
      v237 = v784;
      v323 = v787;
      v222 = v691;
      goto LABEL_91;
    }

    v697 = v264;
    if (v296)
    {
    }

    else
    {
      sub_1D62F1548(v264);
    }

    v773 = v311;
    v326 = *(v311 + 16);
    v775 = (v756 + 56);
    v774 = (v756 + 48);

    v327 = 0;
    for (j = v326; ; v326 = j)
    {
      if (v327 == v326)
      {
        v328 = 1;
        v327 = v326;
        v329 = v782;
        v330 = v770;
      }

      else
      {
        if ((v327 & 0x8000000000000000) != 0)
        {
          goto LABEL_307;
        }

        if (v327 >= v773[2])
        {
          goto LABEL_308;
        }

        v331 = v773 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * v327;
        v329 = v782;
        v332 = *(v782 + 48);
        v333 = v778;
        *v778 = v327;
        sub_1D6D09934(v331, v333 + v332, type metadata accessor for FeedPuzzleStatistic);
        v334 = v333;
        v330 = v770;
        sub_1D6D0A3D8(v334, v770, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v328 = 0;
        ++v327;
      }

      v335 = *v775;
      (*v775)(v330, v328, 1, v329);
      v336 = *(&v769 + 1);
      sub_1D6D09B18(v330, *(&v769 + 1), &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      v337 = *v774;
      if ((*v774)(v336, 1, v329) == 1)
      {
        break;
      }

      v338 = *v336;
      v339 = v336 + *(v329 + 48);
      v340 = v769;
      sub_1D6D0A058(v339, v769, type metadata accessor for FeedPuzzleStatistic);
      if ((v788 & ~*v340) == 0 && (*v340 & 0x1000) == 0)
      {
        v341 = v773;

        *&v803 = v341;
        v342 = v715;
        sub_1D5EC1EE0(v338, v715);
        sub_1D6D0A444(v340, type metadata accessor for FeedPuzzleStatistic);

        v343 = v738;
        sub_1D6D0A058(v342, v738, type metadata accessor for FeedPuzzleStatistic);
        v319 = v780;
        v344 = *(v780 + 56);
        v320 = v763;
        v344(v343, 0, 1, v763);
        v345 = v343;
        v318 = v749;
        sub_1D6D0A058(v345, v749, type metadata accessor for FeedPuzzleStatistic);
        v344(v318, 0, 1, v320);
LABEL_88:
        v237 = v784;
        v321 = v786;
        v322 = v787;
        v222 = v691;
        goto LABEL_89;
      }

      sub_1D6D0A444(v340, type metadata accessor for FeedPuzzleStatistic);
    }

    swift_bridgeObjectRelease_n();
    v381 = *(v780 + 56);
    v771 = (v780 + 56);
    v770 = v381;
    v381(v738, 1, 1, v763);
    v382 = v697;
    if ((*v786 & 1) == 0)
    {
      sub_1D62F1548(v697);
      v384 = v383;

      v382 = v384;
    }

    v385 = *(v382 + 16);
    v697 = v382;

    v386 = 0;
    v387 = &qword_1EC88F4F0;
    v388 = v782;
    v389 = v753;
    v773 = v385;
    if (v385)
    {
      goto LABEL_108;
    }

LABEL_107:
    v390 = 1;
    v386 = v385;
    v391 = v762;
    while (1)
    {
      v335(v391, v390, 1, v388);
      sub_1D6D09B18(v391, v389, &qword_1EC894E80, v387, type metadata accessor for FeedPuzzleStatistic);
      if (v337(v389, 1, v388) == 1)
      {
        swift_bridgeObjectRelease_n();
        v448 = 1;
        v318 = v749;
        goto LABEL_190;
      }

      v397 = v388;
      v398 = *v389;
      v399 = v758;
      sub_1D6D0A058(v389 + *(v397 + 48), v758, type metadata accessor for FeedPuzzleStatistic);
      if ((v788 & ~*v399) == 0)
      {
        break;
      }

      sub_1D6D0A444(v399, type metadata accessor for FeedPuzzleStatistic);
      v388 = v782;
      v385 = v773;
      if (v386 == v773)
      {
        goto LABEL_107;
      }

LABEL_108:
      if ((v386 & 0x8000000000000000) != 0)
      {
        goto LABEL_313;
      }

      if (v386 >= *(v697 + 16))
      {
        goto LABEL_314;
      }

      v392 = v387;
      j = v386 + 1;
      v393 = v697 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * v386;
      v388 = v782;
      v394 = *(v782 + 48);
      v395 = v778;
      *v778 = v386;
      sub_1D6D09934(v393, v395 + v394, type metadata accessor for FeedPuzzleStatistic);
      v396 = v395;
      v391 = v762;
      v387 = v392;
      sub_1D6D0A3D8(v396, v762, v392, type metadata accessor for FeedPuzzleStatistic);
      v390 = 0;
      v386 = j;
      v389 = v753;
    }

    v510 = v697;

    *&v803 = v510;
    v511 = v707;
    sub_1D5EC1EE0(v398, v707);
    sub_1D6D0A444(v399, type metadata accessor for FeedPuzzleStatistic);

    v318 = v749;
    sub_1D6D0A058(v511, v749, type metadata accessor for FeedPuzzleStatistic);
    v448 = 0;
LABEL_190:
    v320 = v763;
    (v770)(v318, v448, 1, v763);
    v319 = v780;
    v512 = v738;
    v513 = (*(v780 + 48))();
    v237 = v784;
    v321 = v786;
    v322 = v787;
    v222 = v691;
    if (v513 != 1)
    {
      sub_1D6D0A444(v512, sub_1D5F2DDBC);
    }

LABEL_89:
    if ((*(v319 + 48))(v318, 1, v320) == 1)
    {

      v323 = v322;
LABEL_91:
      sub_1D6D0A444(v318, sub_1D5F2DDBC);
      sub_1D5ED8048();
      v236 = swift_allocError();
      *v346 = 0xD000000000000013;
      *(v346 + 8) = v222;
      *(v346 + 16) = v812;
      *(v346 + 24) = v323;
      *(v346 + 32) = v788;
      *(v346 + 40) = 1;
      v347 = v785;
      *(v346 + 48) = v695;
      *(v346 + 56) = v347;
      *(v346 + 64) = 0;
      swift_willThrow();

      goto LABEL_13;
    }

    v348 = v318;
    v349 = v737;
    v350 = sub_1D6D0A058(v348, v737, type metadata accessor for FeedPuzzleStatistic);
    if ((*(v349 + 1) & 0x10) != 0)
    {
      if (__OFADD__(v690, 1))
      {
        goto LABEL_323;
      }

      *&v321[v689] = v690 + 1;
    }

    v352 = v694;
    if ((v748 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v350, v351);
      *(&v688 - 2) = v349;
      v353 = v692;
      v355 = sub_1D5BF5F6C(sub_1D6D0A584, (&v688 - 4), v354);
      v692 = v353;
      v352 = v355;
    }

    *&v803 = 0xD000000000000013;
    *(&v803 + 1) = v222;
    *&v804 = v812;
    *(&v804 + 1) = v322;
    v356 = v321;
    sub_1D5BDACA8(&v803, v352);

    swift_setDeallocating();
    swift_deallocClassInstance();

    v357 = v349;
    v358 = v736;
    sub_1D6D0A058(v357, v736, type metadata accessor for FeedPuzzleStatistic);
    v359 = v358;
    v360 = v755;
    sub_1D6D0A058(v359, v755, type metadata accessor for FeedPuzzleStatistic);
    v362 = v360[5];
    v361 = v360[6];
    v363 = v743;
    v364 = v695;
    v365 = v785;
    v778 = sub_1D6196E44(v743, v695, v785, v362, v361);
    v811 = v778;
    v779 = v361;
    v366 = sub_1D6196F00(v363, v364, v365, v362, v361);
    v367 = v366;
    v810 = v366;
    if (!v365)
    {
      v788 = 0;
      v812 = 0;
      v787 = 0;
      v785 = 0;
      v782 = 0;
      v781 = 0;
LABEL_188:
      v373 = v763;
      v369 = v745;
      goto LABEL_199;
    }

    v783 = v366;
    v368 = v763;
    v369 = v745;
    if (*(v363 + 16))
    {
      v370 = sub_1D5B69D90(v364, v785);
      if (v371)
      {
        v372 = *(*(*(v363 + 56) + 8 * v370) + 136);
        v373 = v368;
        if (*(v372 + 16))
        {

          v374 = sub_1D5B69D90(v362, v779);
          if (v375)
          {
            v376 = (*(v372 + 56) + 48 * v374);
            v377 = v376[1];
            v788 = *v376;
            v378 = v376[2];
            v379 = v376[3];
            v782 = v376[4];
            v775 = v362;
            v380 = v376[5];
            v812 = v377;

            v787 = v378;

            v785 = v379;
            v373 = v368;

            v781 = v380;
            v362 = v775;

LABEL_198:
            v367 = v783;
LABEL_199:
            *(&v804 + 1) = v373;
            v519 = sub_1D6D098EC(&qword_1EC885960, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
            *&v805 = v519;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v803);
            sub_1D6D09934(v360, boxed_opaque_existential_1, type metadata accessor for FeedPuzzleStatistic);
            sub_1D6818590(&v803, v369);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v780 = v519;
            if (EnumCaseMultiPayload != 8)
            {
              if (EnumCaseMultiPayload == 4)
              {
                v522 = v721;
                sub_1D6D0A058(v369, v721, type metadata accessor for FeedWebEmbed);
                v523 = sub_1D6944620();
                sub_1D5D505F0(v523);
                v524 = sub_1D69449D8();
                sub_1D5B886D0(v524);
                v525 = type metadata accessor for FeedWebEmbed;
                v526 = v522;
              }

              else
              {
                v525 = type metadata accessor for FeedItem;
                v526 = v369;
              }

              sub_1D6D0A444(v526, v525);
LABEL_208:
              v539 = v811;
              v783 = v810;
              v540 = v356[88];
              if (v748)
              {
                swift_beginAccess();
                if ((v540 & 1) != 0 || !*(v237[4] + 16) || (, sub_1D5B69D90(v741, v742), v542 = v541, , (v542 & 1) == 0))
                {
                  v543 = *v360;
                  v544 = *(v237[10] + 16);
                  if (v544)
                  {
                    sub_1D5B69D90(v362, v779);
                    v544 = 0x4000000000;
                    if ((v545 & 1) == 0)
                    {
                      v544 = 0;
                    }
                  }

                  *&v803 = v544 | v543;

                  v546 = sub_1D713CCF4();
                  v786 = v539;
                  v779 = sub_1D5BA8750(v546, v539);

                  v547 = v731;
                  sub_1D6D09934(v360, v731, type metadata accessor for FeedPuzzleStatistic);
                  v548 = *(v547 + *(v373 + 32));
                  v549 = [swift_unknownObjectRetain() identifier];
                  v550 = v373;
                  v551 = sub_1D726207C();
                  v553 = v552;

                  LOBYTE(v803) = 1;
                  v792 = 0uLL;
                  LOBYTE(v793[0]) = 1;
                  *(v793 + 8) = xmmword_1D728A8E0;
                  *(&v793[1] + 1) = v551;
                  *&v794 = v553;
                  *(&v794 + 1) = v548;
                  swift_getObjectType();
                  v554 = FCPuzzleTypeProviding.contentSelectors.getter();
                  sub_1D6D0A444(v547, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5F2DE58(&v792);
                  v555 = sub_1D5BA8750(v554, v779);

                  v790 = v550;
                  v791 = v780;
                  v556 = __swift_allocate_boxed_opaque_existential_1(v789);
                  sub_1D6D09934(v360, v556, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5B68374(v789, &v797);

                  v557 = v555;
                  if (v812)
                  {
                    v557 = sub_1D5BA8750(&unk_1F50F6AF0, v555);
                    sub_1D5BFB68C(&unk_1F50F6B10);
                  }

                  *(&v799 + 1) = v557;
                  v558 = v783;
                  v559 = v783[2];
                  if (v559)
                  {
                    v780 = v555;
                    *&v803 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v559, 0);
                    v560 = v803;
                    v561 = v558 + ((*(v747 + 80) + 32) & ~*(v747 + 80));
                    v562 = *(v747 + 72);
                    v563 = v559;
                    do
                    {
                      v564 = v776;
                      sub_1D6D09934(v561, v776, type metadata accessor for FormatOption);
                      v565 = swift_allocBox();
                      sub_1D6D0A058(v564, v566, type metadata accessor for FormatOption);
                      *&v803 = v560;
                      v568 = *(v560 + 16);
                      v567 = *(v560 + 24);
                      if (v568 >= v567 >> 1)
                      {
                        sub_1D5D24610((v567 > 1), v568 + 1, 1);
                        v560 = v803;
                      }

                      *(v560 + 16) = v568 + 1;
                      *(v560 + 8 * v568 + 32) = v565 | 0x1000000000000004;
                      v561 += v562;
                      --v563;
                    }

                    while (v563);
                    __swift_destroy_boxed_opaque_existential_1(v789);
                    v555 = v780;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(v789);
                    v560 = MEMORY[0x1E69E7CC0];
                  }

                  *&v800 = v560;
                  v601 = v788;
                  *(&v800 + 1) = v788;
                  v602 = v812;
                  *&v801 = v812;
                  *(&v801 + 1) = v787;
                  *&v802 = v785;
                  *(&v802 + 1) = v782;
                  v809 = v781;
                  v803 = v797;
                  v804 = v798;
                  v805 = v799;
                  v806 = v800;
                  v807 = v801;
                  v808 = v802;
                  v603 = v742;

                  sub_1D67F5880(v601, v602);
                  sub_1D6D60C48(&v803, v741, v603);
                  v604 = v733;
                  sub_1D6D09934(v755, v733, type metadata accessor for FeedPuzzleStatistic);
                  v605 = v604;
                  v606 = v729;
                  sub_1D6D09934(v605, v729, type metadata accessor for FeedPuzzleStatistic);
                  v607 = v739;
                  if (v602)
                  {
                    v555 = sub_1D5BA8750(&unk_1F50F6B20, v555);
                    sub_1D5BFB68C(&unk_1F50F6B40);
                  }

                  *(v606 + v607[7]) = v555;
                  if (v559)
                  {
                    *&v803 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v559, 0);
                    v608 = v803;
                    v609 = v783 + ((*(v747 + 80) + 32) & ~*(v747 + 80));
                    v610 = *(v747 + 72);
                    do
                    {
                      v611 = v776;
                      sub_1D6D09934(v609, v776, type metadata accessor for FormatOption);
                      v612 = swift_allocBox();
                      sub_1D6D0A058(v611, v613, type metadata accessor for FormatOption);
                      *&v803 = v608;
                      v615 = *(v608 + 16);
                      v614 = *(v608 + 24);
                      if (v615 >= v614 >> 1)
                      {
                        sub_1D5D24610((v614 > 1), v615 + 1, 1);
                        v608 = v803;
                      }

                      *(v608 + 16) = v615 + 1;
                      *(v608 + 8 * v615 + 32) = v612 | 0x1000000000000004;
                      v609 += v610;
                      --v559;
                    }

                    while (v559);
                    sub_1D6D0A444(v733, type metadata accessor for FeedPuzzleStatistic);
                    v606 = v729;
                  }

                  else
                  {
                    sub_1D6D0A444(v733, type metadata accessor for FeedPuzzleStatistic);
                    v608 = MEMORY[0x1E69E7CC0];
                  }

                  *(v606 + v607[8]) = v608;
                  v623 = (v606 + v607[9]);
                  v624 = v788;
                  v625 = v812;
                  *v623 = v788;
                  v623[1] = v625;
                  v626 = v785;
                  v623[2] = v787;
                  v623[3] = v626;
                  v627 = v781;
                  v623[4] = v782;
                  v623[5] = v627;
                  sub_1D6D0A058(v606, v732, sub_1D6D093F4);
                  swift_endAccess();
                  sub_1D67F5880(v624, v625);

                  v628 = v624;
                  v629 = v625;
LABEL_262:
                  sub_1D67F58E4(v628, v629);
                  sub_1D6D0A444(v755, type metadata accessor for FeedPuzzleStatistic);
                  return;
                }
              }

              else
              {
                swift_beginAccess();
                if ((v540 & 1) != 0 || !*(v237[3] + 16) || (, sub_1D5B69D90(v741, v742), v570 = v569, , (v570 & 1) == 0))
                {
                  v575 = *v360;
                  v576 = *(v237[10] + 16);
                  if (v576)
                  {
                    sub_1D5B69D90(v362, v779);
                    v576 = 0x4000000000;
                    if ((v577 & 1) == 0)
                    {
                      v576 = 0;
                    }
                  }

                  *&v803 = v576 | v575;

                  v578 = sub_1D713CCF4();
                  v786 = v539;
                  v779 = sub_1D5BA8750(v578, v539);

                  v579 = v731;
                  sub_1D6D09934(v360, v731, type metadata accessor for FeedPuzzleStatistic);
                  v580 = *(v579 + *(v373 + 32));
                  v581 = [swift_unknownObjectRetain() identifier];
                  v582 = v373;
                  v583 = sub_1D726207C();
                  v585 = v584;

                  LOBYTE(v803) = 1;
                  v792 = 0uLL;
                  LOBYTE(v793[0]) = 1;
                  *(v793 + 8) = xmmword_1D728A8E0;
                  *(&v793[1] + 1) = v583;
                  *&v794 = v585;
                  *(&v794 + 1) = v580;
                  swift_getObjectType();
                  v586 = FCPuzzleTypeProviding.contentSelectors.getter();
                  sub_1D6D0A444(v579, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5F2DE58(&v792);
                  v587 = sub_1D5BA8750(v586, v779);

                  v790 = v582;
                  v791 = v780;
                  v588 = __swift_allocate_boxed_opaque_existential_1(v789);
                  sub_1D6D09934(v360, v588, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5B68374(v789, &v797);

                  v589 = v587;
                  if (v812)
                  {
                    v589 = sub_1D5BA8750(&unk_1F50F6B50, v587);
                    sub_1D5BFB68C(&unk_1F50F6B70);
                  }

                  v780 = v587;
                  *(&v799 + 1) = v589;
                  v590 = v783;
                  v591 = v783[2];
                  if (v591)
                  {
                    *&v803 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v591, 0);
                    v592 = v803;
                    v593 = v590 + ((*(v747 + 80) + 32) & ~*(v747 + 80));
                    v594 = *(v747 + 72);
                    v595 = v591;
                    do
                    {
                      v596 = v776;
                      sub_1D6D09934(v593, v776, type metadata accessor for FormatOption);
                      v597 = swift_allocBox();
                      sub_1D6D0A058(v596, v598, type metadata accessor for FormatOption);
                      *&v803 = v592;
                      v600 = *(v592 + 16);
                      v599 = *(v592 + 24);
                      if (v600 >= v599 >> 1)
                      {
                        sub_1D5D24610((v599 > 1), v600 + 1, 1);
                        v592 = v803;
                      }

                      *(v592 + 16) = v600 + 1;
                      *(v592 + 8 * v600 + 32) = v597 | 0x1000000000000004;
                      v593 += v594;
                      --v595;
                    }

                    while (v595);
                    __swift_destroy_boxed_opaque_existential_1(v789);
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(v789);
                    v592 = MEMORY[0x1E69E7CC0];
                  }

                  *&v800 = v592;
                  v616 = v788;
                  *(&v800 + 1) = v788;
                  v617 = v812;
                  *&v801 = v812;
                  *(&v801 + 1) = v787;
                  *&v802 = v785;
                  *(&v802 + 1) = v782;
                  v809 = v781;
                  v803 = v797;
                  v804 = v798;
                  v805 = v799;
                  v806 = v800;
                  v807 = v801;
                  v808 = v802;
                  v618 = v742;

                  sub_1D67F5880(v616, v617);
                  sub_1D6D60C48(&v803, v741, v618);
                  v619 = v734;
                  sub_1D6D09934(v755, v734, type metadata accessor for FeedPuzzleStatistic);
                  v620 = v716;
                  sub_1D6D09934(v619, v716, type metadata accessor for FeedPuzzleStatistic);
                  v621 = v739;
                  if (v617)
                  {
                    v622 = sub_1D5BA8750(&unk_1F50F6B80, v780);
                    sub_1D5BFB68C(&unk_1F50F6BA0);
                  }

                  else
                  {
                    v622 = v780;
                  }

                  *(v620 + v621[7]) = v622;
                  if (v591)
                  {
                    *&v803 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v591, 0);
                    v630 = v803;
                    v631 = v783 + ((*(v747 + 80) + 32) & ~*(v747 + 80));
                    v632 = *(v747 + 72);
                    do
                    {
                      v633 = v776;
                      sub_1D6D09934(v631, v776, type metadata accessor for FormatOption);
                      v634 = swift_allocBox();
                      sub_1D6D0A058(v633, v635, type metadata accessor for FormatOption);
                      *&v803 = v630;
                      v637 = *(v630 + 16);
                      v636 = *(v630 + 24);
                      if (v637 >= v636 >> 1)
                      {
                        sub_1D5D24610((v636 > 1), v637 + 1, 1);
                        v630 = v803;
                      }

                      *(v630 + 16) = v637 + 1;
                      *(v630 + 8 * v637 + 32) = v634 | 0x1000000000000004;
                      v631 += v632;
                      --v591;
                    }

                    while (v591);
                    sub_1D6D0A444(v734, type metadata accessor for FeedPuzzleStatistic);
                    v621 = v739;
                  }

                  else
                  {
                    sub_1D6D0A444(v734, type metadata accessor for FeedPuzzleStatistic);
                    v630 = MEMORY[0x1E69E7CC0];
                  }

                  *(v620 + v621[8]) = v630;
                  v638 = (v620 + v621[9]);
                  v639 = v788;
                  v640 = v812;
                  *v638 = v788;
                  v638[1] = v640;
                  v641 = v785;
                  v638[2] = v787;
                  v638[3] = v641;
                  v642 = v781;
                  v638[4] = v782;
                  v638[5] = v642;
                  sub_1D6D0A058(v620, v732, sub_1D6D093F4);
                  swift_endAccess();
                  sub_1D67F5880(v639, v640);

                  v628 = v639;
                  v629 = v640;
                  goto LABEL_262;
                }
              }

              sub_1D6752B3C();
              swift_allocError();
              v571 = v742;
              *v572 = v741;
              *(v572 + 8) = v571;
              *(v572 + 56) = 0;
              swift_willThrow();
              swift_endAccess();

              sub_1D67F58E4(v788, v812);
              v573 = type metadata accessor for FeedPuzzleStatistic;
              v574 = v360;
LABEL_266:
              sub_1D6D0A444(v574, v573);
              return;
            }

            v775 = v362;
            v527 = v735;
            sub_1D6D0A058(v369, v735, type metadata accessor for FeedCustomItem);
            v528 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
            swift_beginAccess();
            v529 = *(v528 + 8);
            v530 = v527 + *(v722 + 20);
            v531 = *(v530 + 16);
            v532 = *(v530 + 24);
            if (*(v529 + 16))
            {

              v533 = sub_1D5B69D90(v531, v532);
              if (v534)
              {
                v783 = v531;
                v535 = v705;
                sub_1D6D09934(*(v529 + 56) + *(v704 + 72) * v533, v705, sub_1D6AC4E74);
                v536 = *(v535 + 32);
                v537 = *(v535 + 64);
                v794 = *(v535 + 48);
                v795 = v537;
                v796 = *(v535 + 80);
                v538 = *(v535 + 16);
                v792 = *v535;
                v793[0] = v538;
                v793[1] = v536;
                sub_1D62B7D1C(&v792, v789);
                sub_1D6D0A444(v535, sub_1D6AC4E74);

                v799 = v793[1];
                v800 = v794;
                v801 = v795;
                LOBYTE(v802) = v796;
                v797 = v792;
                v798 = v793[0];
                if (v796 >> 6 <= 1u)
                {
                  sub_1D67F58E4(v788, v812);

                  v805 = v799;
                  v806 = v800;
                  v807 = v801;
                  LOBYTE(v808) = v802;
                  v803 = v797;
                  v804 = v798;
                  v531 = v783;
LABEL_265:
                  type metadata accessor for FormatLayoutError(0);
                  sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                  swift_allocError();
                  *v643 = v531;
                  v643[1] = v532;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();

                  sub_1D6D09524(&v803, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
                  sub_1D6D0A444(v755, type metadata accessor for FeedPuzzleStatistic);
                  v573 = type metadata accessor for FeedCustomItem;
                  v574 = v735;
                  goto LABEL_266;
                }

                LODWORD(v770) = v796;
                v767 = *(&v793[1] + 1);
                v644 = *&v793[1];
                v768 = v794;
                v769 = v795;
                v789[0] = *&v793[1];
                sub_1D6D098B8(0);
                sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
                sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);

                v783 = sub_1D72623BC();
                v645 = *(v530 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
                v646 = *(v645 + 16);
                v771 = v644;
                v774 = v646;
                if (v646)
                {
                  v647 = 0;
                  j = (*(v747 + 80) + 32) & ~*(v747 + 80);
                  v773 = (v645 + j);
                  v648 = v710;
                  do
                  {
                    v650 = v746;
                    if (v647 >= *(v645 + 16))
                    {
                      goto LABEL_321;
                    }

                    v651 = v645;
                    v652 = *(v747 + 72);
                    sub_1D6D09934(v773 + v652 * v647, v746, type metadata accessor for FormatOption);
                    v653 = v783;
                    if (v783[2] && (v654 = sub_1D5B69D90(*v650, v650[1]), (v655 & 1) != 0))
                    {
                      v656 = v653[7] + *(v730 + 72) * v654;
                      v657 = v709;
                      sub_1D6D09934(v656, v709, type metadata accessor for FormatPropertyDefinition);
                      v658 = v718;
                      sub_1D6D0A058(v657, v718, type metadata accessor for FormatPropertyDefinition);
                      type metadata accessor for FormatOptionConverter();
                      v659 = v708;
                      v660 = v692;
                      sub_1D6AC31AC(v650, v658, v708);
                      if (v660)
                      {
                        sub_1D67F58E4(v788, v812);

                        sub_1D60CF6F4(v771, v767, v768, *(&v768 + 1), v769, *(&v769 + 1), v770);
                        sub_1D62B7D78(&v792);
                        sub_1D6D0A444(v718, type metadata accessor for FormatPropertyDefinition);

                        sub_1D6D0A444(v755, type metadata accessor for FeedPuzzleStatistic);
                        sub_1D6D0A444(v650, type metadata accessor for FormatOption);
                        sub_1D6D0A444(v735, type metadata accessor for FeedCustomItem);

                        return;
                      }

                      sub_1D6D09934(v659, v717, type metadata accessor for FormatOption);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v662 = v659;
                      v692 = 0;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v367 = sub_1D5CEABA0(0, v367[2] + 1, 1, v367);
                      }

                      v648 = v710;
                      v664 = v367[2];
                      v663 = v367[3];
                      v665 = v664 + 1;
                      if (v664 >= v663 >> 1)
                      {
                        v367 = sub_1D5CEABA0((v663 > 1), v664 + 1, 1, v367);
                      }

                      sub_1D6D0A444(v662, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v718, type metadata accessor for FormatPropertyDefinition);
                      v649 = v717;
                    }

                    else
                    {
                      sub_1D6D09934(v650, v648, type metadata accessor for FormatOption);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v367 = sub_1D5CEABA0(0, v367[2] + 1, 1, v367);
                      }

                      v664 = v367[2];
                      v666 = v367[3];
                      v665 = v664 + 1;
                      if (v664 >= v666 >> 1)
                      {
                        v367 = sub_1D5CEABA0((v666 > 1), v664 + 1, 1, v367);
                      }

                      v649 = v648;
                    }

                    v647 = (v647 + 1);
                    sub_1D6D0A444(v746, type metadata accessor for FormatOption);
                    v367[2] = v665;
                    sub_1D6D0A058(v649, v367 + j + v664 * v652, type metadata accessor for FormatOption);
                    v810 = v367;
                    v237 = v784;
                    v645 = v651;
                  }

                  while (v774 != v647);

                  v644 = v771;
                }

                else
                {
                }

                v789[0] = v645;
                sub_1D5B5AD98(0);
                sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
                sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
                v667 = sub_1D72623AC();
                v668 = v667;
                v362 = v775;
                v783 = v644[2];
                if (!v783)
                {
                  sub_1D60CF6F4(v644, v767, v768, *(&v768 + 1), v769, *(&v769 + 1), v770);

                  v356 = v786;
                  v373 = v763;
LABEL_300:
                  sub_1D62B7D78(&v792);
                  sub_1D6D0A444(v735, type metadata accessor for FeedCustomItem);
                  v360 = v755;
                  goto LABEL_208;
                }

                v669 = 0;
                v773 = (v644 + ((*(v730 + 80) + 32) & ~*(v730 + 80)));
                v670 = (v747 + 56);
                v671 = v702;
                v774 = v667;
                while (1)
                {
                  if (v669 >= v644[2])
                  {
                    goto LABEL_322;
                  }

                  sub_1D6D09934(v773 + *(v730 + 72) * v669, v671, type metadata accessor for FormatPropertyDefinition);
                  v677 = FormatPropertyDefinition.identifier.getter();
                  if (*(v668 + 16))
                  {
                    v679 = sub_1D5B69D90(v677, v678);
                    v681 = v680;

                    if (v681)
                    {
                      v672 = v774;
                      v673 = v747;
                      v674 = v774[7] + *(v747 + 72) * v679;
                      v675 = v723;
                      sub_1D6D09934(v674, v723, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v671, type metadata accessor for FormatPropertyDefinition);
                      (*(v673 + 56))(v675, 0, 1, v777);
                      v676 = v675;
                      v668 = v672;
                      sub_1D6D0A444(v676, sub_1D5E04C00);
                      v373 = v763;
                      v362 = v775;
                      v644 = v771;
                      goto LABEL_290;
                    }
                  }

                  else
                  {
                  }

                  v682 = v723;
                  (*v670)(v723, 1, 1, v777);
                  sub_1D6D0A444(v682, sub_1D5E04C00);
                  if (sub_1D695C4AC())
                  {

                    sub_1D67F58E4(v788, v812);

                    sub_1D60CF6F4(v771, v767, v768, *(&v768 + 1), v769, *(&v769 + 1), v770);

                    type metadata accessor for FormatLayoutError(0);
                    sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                    swift_allocError();
                    v684 = v683;
                    sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
                    v686 = *(v685 + 48);
                    v687 = v735;
                    sub_1D6D09934(v735, v684, type metadata accessor for FeedCustomItem);
                    sub_1D6D09934(v671, v684 + v686, type metadata accessor for FormatPropertyDefinition);
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                    sub_1D62B7D78(&v792);
                    sub_1D6D0A444(v671, type metadata accessor for FormatPropertyDefinition);
                    sub_1D6D0A444(v755, type metadata accessor for FeedPuzzleStatistic);
                    v573 = type metadata accessor for FeedCustomItem;
                    v574 = v687;
                    goto LABEL_266;
                  }

                  sub_1D6D0A444(v671, type metadata accessor for FormatPropertyDefinition);
                  v373 = v763;
                  v362 = v775;
                  v644 = v771;
                  v668 = v774;
LABEL_290:
                  if (v783 == ++v669)
                  {
                    sub_1D60CF6F4(v644, v767, v768, *(&v768 + 1), v769, *(&v769 + 1), v770);

                    v237 = v784;
                    v356 = v786;
                    goto LABEL_300;
                  }
                }
              }
            }

            sub_1D67F58E4(v788, v812);

            LOBYTE(v808) = 0;
            v806 = 0u;
            v807 = 0u;
            v804 = 0u;
            v805 = 0u;
            v803 = 0u;
            goto LABEL_265;
          }
        }

        v788 = 0;
        v812 = 0;
        v787 = 0;
        v785 = 0;
        v782 = 0;
        v781 = 0;
        goto LABEL_198;
      }
    }

    v788 = 0;
    v812 = 0;
    v787 = 0;
    v785 = 0;
    v782 = 0;
    v781 = 0;
    v373 = v368;
    goto LABEL_198;
  }

  v271 = *v223;
  v697 = v263;
  if (v271)
  {
  }

  else
  {
    sub_1D62F1548(v263);
    v270 = v775;
    v265 = *(v272 + 16);
  }

  v771 = (v756 + 56);
  v699 = v788 | 0x1000;
  v700 = (v756 + 48);
  v693 = v272;

  v283 = 0;
  v698 = v265;
  if (v265)
  {
    goto LABEL_50;
  }

LABEL_49:
  v284 = 1;
  v283 = v265;
  v285 = v774;
  while (1)
  {
    (*v771)(v285, v284, 1, v269);
    v291 = v285;
    v292 = v773;
    sub_1D6D09B18(v291, v773, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
    if ((*v700)(v292, 1, v269) == 1)
    {
      swift_bridgeObjectRelease_n();
      v223 = v786;
      v266 = v757;
      v268 = v690;
      v264 = v697;
      goto LABEL_58;
    }

    v293 = *v292;
    sub_1D6D0A058(v292 + *(v269 + 48), v190, type metadata accessor for FeedPuzzleStatistic);
    if ((v699 & ~*v190) == 0)
    {
      v312 = v693;

      *&v803 = v312;
      v313 = v728;
      sub_1D5EC1EE0(v293, v728);
      sub_1D6D0A444(v190, type metadata accessor for FeedPuzzleStatistic);

      v314 = v313;
      v315 = v727;
      sub_1D6D0A058(v314, v727, type metadata accessor for FeedPuzzleStatistic);
      v316 = v315;
      v317 = v726;
      sub_1D6D0A058(v316, v726, type metadata accessor for FeedPuzzleStatistic);
      v318 = v749;
      sub_1D6D0A058(v317, v749, type metadata accessor for FeedPuzzleStatistic);
      v319 = v780;
      v320 = v763;
      (*(v780 + 56))(v318, 0, 1, v763);
      v237 = v784;
      v321 = v786;
      v322 = v787;
      goto LABEL_89;
    }

    sub_1D6D0A444(v190, type metadata accessor for FeedPuzzleStatistic);
    v265 = v698;
    if (v283 == v698)
    {
      goto LABEL_49;
    }

LABEL_50:
    if ((v283 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v283 >= *(v693 + 16))
    {
      goto LABEL_304;
    }

    v286 = v222;
    v287 = v693 + ((*(v780 + 80) + 32) & ~*(v780 + 80)) + *(v780 + 72) * v283;
    v288 = v782;
    v289 = *(v782 + 48);
    v290 = v778;
    *v778 = v283;
    sub_1D6D09934(v287, v290 + v289, type metadata accessor for FeedPuzzleStatistic);
    v285 = v774;
    sub_1D6D0A3D8(v290, v774, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
    v284 = 0;
    ++v283;
    v269 = v288;
    v222 = v286;
    v270 = v775;
  }

  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
}

void sub_1D6CE97DC(char *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, void *a10, unsigned __int8 a11, uint64_t a12)
{
  v14 = v13;
  v490 = a8;
  v474 = a6;
  v475 = a7;
  v492 = a5;
  v493 = a4;
  v534 = a3;
  v476 = a2;
  v491 = a1;
  v471 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v468 = &v450 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatPropertyDefinition(0);
  v470 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v463 = &v450 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v450 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v469 = &v450 - v27;
  v484 = type metadata accessor for FormatOption(0);
  v480 = *(v484 - 8);
  MEMORY[0x1EEE9AC00](v484, v28);
  v464 = &v450 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v462 = &v450 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v473 = &v450 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v479 = &v450 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v483 = &v450 - v41;
  sub_1D6AC4E74(0);
  v460 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v461 = &v450 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v467, v45);
  v472 = &v450 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v466 = &v450 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v477, v50);
  v478 = &v450 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v53 = *(v52 + 16);
  v465 = v24;
  *&v486 = v52;
  v54 = 0;
  if (v53)
  {
    v55 = (v52 + 32);
    do
    {
      v56 = *v55++;
      v57 = qword_1D7349118[v56];
      if ((v57 & ~v54) == 0)
      {
        v57 = 0;
      }

      v54 |= v57;
      --v53;
    }

    while (v53);
  }

  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  sub_1D6D09E8C(0, &qword_1EDF155C8, &type metadata for FeedPuzzleType, type metadata accessor for FeedItemSorter);
  *&v485 = v59;
  v60 = swift_allocObject();
  v61 = MEMORY[0x1E69E7CC0];
  v488 = v60;
  *(v60 + 16) = MEMORY[0x1E69E7CC0];
  v62 = (v60 + 16);
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1D6D09CB8;
  *(v63 + 24) = v58;
  swift_beginAccess();

  v64 = sub_1D6990B38(0, 1, 1, v61);
  v66 = v64[2];
  v65 = v64[3];
  if (v66 >= v65 >> 1)
  {
    v64 = sub_1D6990B38((v65 > 1), v66 + 1, 1, v64);
  }

  v481 = a11;
  v489 = a10;
  v64[2] = v66 + 1;
  v67 = &v64[2 * v66];
  v67[4] = sub_1D6D09CBC;
  v67[5] = v63;
  *v62 = v64;
  swift_endAccess();

  *&v482 = type metadata accessor for GroupLayoutBindingContext(0);
  v68 = *&v491[*(v482 + 56)];
  v69 = *(v68 + 16);
  v70 = v493;

  if (!v69 || (v71 = sub_1D5BCF83C(0x7A7A755064656546, 0xEE0065707954656CLL, v534, v70), (v72 & 1) == 0) || !*(*(*(v68 + 56) + 8 * v71) + 16))
  {
    sub_1D5ED8048();
    v75 = swift_allocError();
    strcpy(v76, "FeedPuzzleType");
    *(v76 + 15) = -18;
    *(v76 + 16) = v534;
    *(v76 + 24) = v70;
LABEL_14:
    *(v76 + 32) = v492;
    *(v76 + 40) = 1;
    v77 = v489;
    *(v76 + 48) = v490;
    *(v76 + 56) = v77;
    *(v76 + 64) = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v74 = sub_1D5BF08EC(v73, v490, v489);
  if (v14)
  {

    v75 = v14;
LABEL_15:
    v78 = v487;
    goto LABEL_16;
  }

  v455 = v73;
  v101 = sub_1D714F420(v74);

  if (!v101)
  {
LABEL_42:

    sub_1D5ED8048();
    v75 = swift_allocError();
    strcpy(v76, "FeedPuzzleType");
    *(v76 + 15) = -18;
    v121 = v493;
    *(v76 + 16) = v534;
    *(v76 + 24) = v121;
    goto LABEL_14;
  }

  v102 = v101;
  v103 = *(v101 + 16);
  if (!v103)
  {

    goto LABEL_42;
  }

  v104 = v482;
  v105 = v491;
  v106 = *&v491[*(v482 + 68)];
  v107 = *(v482 + 76);
  v108 = *&v491[v107];
  v453 = 0;
  v450 = v107;
  v451 = v108;
  if (v108 >= v106)
  {
    goto LABEL_54;
  }

  v109 = *v491;
  v452 = v102;
  if (v109)
  {
    v110 = v102;
    swift_bridgeObjectRetain_n();
    goto LABEL_46;
  }

  sub_1D62F191C(v102);
  v110 = v123;
  v103 = *(v123 + 16);

  if (v103)
  {
LABEL_46:
    v124 = 0;
    v454 = v492 | 0x1000;
    v125 = 32;
    while (1)
    {
      if (v124 >= *(v110 + 16))
      {
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:

        sub_1D67F58E4(v490, v534);
        sub_1D60CF6F4(v461, v452, v454, v456, v457, v458, v460);
        sub_1D62B7D78(&v501);
        sub_1D5F2DE58(&v528);
        sub_1D6D0A444(v465, type metadata accessor for FormatPropertyDefinition);

        sub_1D6D0A444(v108, type metadata accessor for FormatOption);
        sub_1D6D0A444(v472, type metadata accessor for FeedCustomItem);

        return;
      }

      v108 = 0xEE0065707954656CLL;
      v126 = *(v110 + v125 + 32);
      v127 = *(v110 + v125 + 48);
      v128 = *(v110 + v125 + 16);
      v521 = *(v110 + v125);
      v522 = v128;
      v523 = v126;
      v524 = v127;
      v457 = v128;
      v458 = v521;
      v459 = v127;
      v456 = v126;
      sub_1D63071F4(&v521, &v515);
      if (!v459)
      {
LABEL_51:
        v108 = v451;
        goto LABEL_52;
      }

      v521 = v458;
      v522 = v457;
      v523 = v456;
      v524 = v459;
      if ((v454 & ~v458) == 0)
      {
        break;
      }

      ++v124;
      sub_1D5F2DE58(&v521);
      v125 += 64;
      if (v103 == v124)
      {
        goto LABEL_51;
      }
    }

    *&v494 = v110;
    sub_1D5EC1F20(v124, &v515);
    sub_1D5F2DE58(&v521);
    v130 = *(&v515 + 1);
    v129 = v515;
    v132 = *(&v516 + 1);
    v131 = v516;
    v134 = *(&v517 + 1);
    v133 = v517;
    v135 = *(&v518 + 1);
    v136 = v494;
    *&v459 = v518;
    if (v518)
    {
      v164 = *(&v516 + 1);
      v152 = v516;
LABEL_92:
      v492 = v134;
      *&v486 = v135;

LABEL_145:

      *&v501 = v129;
      *(&v501 + 1) = v130;
      *&v502 = v152;
      *(&v502 + 1) = v164;
      *&v503 = v133;
      *(&v503 + 1) = v492;
      *&v504 = v459;
      *(&v504 + 1) = v486;
      v248 = v453;
      v249 = v493;
      if ((v129 & 0x1000) != 0)
      {
        if (!__OFADD__(v451, 1))
        {
          *&v491[v450] = v451 + 1;
          goto LABEL_148;
        }

LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
        return;
      }

LABEL_148:
      if (v481)
      {
        v250 = v455;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v246, v247);
        *(&v450 - 2) = &v501;
        v250 = sub_1D5BF5F6C(sub_1D6D0A5BC, (&v450 - 4), v455);
        v453 = v248;
      }

      strcpy(&v521, "FeedPuzzleType");
      HIBYTE(v521) = -18;
      *&v522 = v534;
      *(&v522 + 1) = v249;
      sub_1D5BDACA8(&v521, v250);

      swift_setDeallocating();
      swift_deallocClassInstance();

      *&v456 = *(&v501 + 1);
      v251 = v501;
      v252 = v502;
      *&v458 = *(&v502 + 1);
      *&v457 = v503;
      v253 = v459;

      v254 = v476;
      v255 = v489;
      v256 = v490;
      v257 = v492;
      v258 = sub_1D6196E44(v476, v490, v489, v492, v253);

      v455 = v258;
      v533 = v258;
      v259 = v255;

      v260 = v257;
      v261 = v253;
      v262 = sub_1D6196F00(v254, v256, v255, v260, v253);

      v532 = v262;
      if (v255)
      {
        v263 = v487;
        v264 = v251;
        if (v254[2])
        {

          v265 = sub_1D5B69D90(v490, v259);
          v266 = v252;
          if (v267)
          {
            v268 = *(*(v254[7] + 8 * v265) + 136);
            if (*(v268 + 16))
            {

              v269 = sub_1D5B69D90(v492, v261);
              v271 = v270;

              v272 = v456;
              if (v271)
              {
                v273 = (*(v268 + 56) + 48 * v269);
                v274 = v273[1];
                v490 = *v273;
                v275 = v273[2];
                v276 = v273[3];
                v277 = v273[5];
                *&v482 = v273[4];
                v534 = v274;

                v488 = v275;

                *&v485 = v276;

                v493 = v277;
              }

              else
              {

                v490 = 0;
                v534 = 0;
                v488 = 0;
                *&v485 = 0;
                *&v482 = 0;
                v493 = 0;
              }

              v243 = v487;
              v261 = v459;
            }

            else
            {
              v243 = v263;

              v490 = 0;
              v534 = 0;
              v488 = 0;
              *&v485 = 0;
              *&v482 = 0;
              v493 = 0;
              v272 = v456;
            }
          }

          else
          {

            v490 = 0;
            v534 = 0;
            v488 = 0;
            *&v485 = 0;
            *&v482 = 0;
            v493 = 0;
            v243 = v263;
            v272 = v456;
          }

LABEL_189:
          *&v528 = v264;
          *(&v528 + 1) = v272;
          LOBYTE(v529) = v266;
          *(&v529 + 1) = v458;
          *&v530 = v457;
          *(&v530 + 1) = v492;
          *&v531 = v261;
          *&v459 = v261;
          *(&v531 + 1) = v486;
          *(&v516 + 1) = &type metadata for FeedPuzzleType;
          v298 = sub_1D6307250();
          *&v517 = v298;
          v299 = swift_allocObject();
          *&v515 = v299;
          v300 = v529;
          v299[1] = v528;
          v299[2] = v300;
          v301 = v531;
          v299[3] = v530;
          v299[4] = v301;
          sub_1D63071F4(&v528, &v521);
          v302 = v478;
          sub_1D6818590(&v515, v478);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload != 8)
          {
            if (EnumCaseMultiPayload == 4)
            {
              v304 = v302;
              v302 = v466;
              sub_1D6D0A058(v304, v466, type metadata accessor for FeedWebEmbed);
              v305 = sub_1D6944620();
              sub_1D5D505F0(v305);
              v306 = sub_1D69449D8();
              sub_1D5B886D0(v306);
              v307 = type metadata accessor for FeedWebEmbed;
            }

            else
            {
              v307 = type metadata accessor for FeedItem;
            }

            sub_1D6D0A444(v302, v307);
            v324 = v491;
            goto LABEL_199;
          }

          v466 = v264;
          v308 = v472;
          sub_1D6D0A058(v302, v472, type metadata accessor for FeedCustomItem);
          v309 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
          swift_beginAccess();
          v310 = *(v309 + 8);
          v311 = v308 + *(v467 + 20);
          v313 = *(v311 + 16);
          v312 = *(v311 + 24);
          if (*(v310 + 16))
          {
            v467 = v298;

            v314 = sub_1D5B69D90(v313, v312);
            if (v315)
            {
              v316 = v461;
              sub_1D6D09934(*(v310 + 56) + *(v460 + 72) * v314, v461, sub_1D6AC4E74);
              v317 = *(v316 + 32);
              v318 = *(v316 + 64);
              v504 = *(v316 + 48);
              v505 = v318;
              v506 = *(v316 + 80);
              v319 = *(v316 + 16);
              v501 = *v316;
              v502 = v319;
              v503 = v317;
              sub_1D62B7D1C(&v501, &v494);
              sub_1D6D0A444(v316, sub_1D6AC4E74);

              v517 = v503;
              v518 = v504;
              v519 = v505;
              LOBYTE(v520) = v506;
              v320 = v506 >> 6;
              v515 = v501;
              v516 = v502;
              if (v320)
              {
                v321 = v534;
                if (v320 == 1)
                {
                  v322 = v490;
                  v323 = v534;
                  goto LABEL_261;
                }

                LODWORD(v460) = v506;
                v452 = *(&v503 + 1);
                v408 = v503;
                *&v456 = *(&v504 + 1);
                v454 = v504;
                *&v458 = *(&v505 + 1);
                *&v457 = v505;
                *&v494 = v503;
                sub_1D6D098B8(0);
                sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
                sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
                v461 = v408;

                v409 = sub_1D72623BC();
                v410 = *(v311 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
                v489 = *(v410 + 16);
                if (v489)
                {
                  v411 = 0;
                  v477 = (*(v480 + 80) + 32) & ~*(v480 + 80);
                  v478 = v410 + v477;
                  do
                  {
                    v413 = v410;
                    v414 = *(v410 + 16);
                    v108 = v479;
                    if (v411 >= v414)
                    {
                      goto LABEL_309;
                    }

                    v415 = *(v480 + 72);
                    sub_1D6D09934(v478 + v415 * v411, v479, type metadata accessor for FormatOption);
                    if (*(v409 + 16) && (v416 = sub_1D5B69D90(*v108, *(v108 + 8)), (v417 & 1) != 0))
                    {
                      v476 = v262;
                      v418 = v409;
                      v419 = *(v409 + 56) + *(v470 + 72) * v416;
                      v420 = v463;
                      sub_1D6D09934(v419, v463, type metadata accessor for FormatPropertyDefinition);
                      v421 = v465;
                      sub_1D6D0A058(v420, v465, type metadata accessor for FormatPropertyDefinition);
                      type metadata accessor for FormatOptionConverter();
                      v422 = v462;
                      v423 = v453;
                      sub_1D6AC31AC(v108, v421, v462);
                      v453 = v423;
                      if (v423)
                      {
                        goto LABEL_300;
                      }

                      sub_1D6D09934(v422, v464, type metadata accessor for FormatOption);
                      v424 = v422;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v476 = sub_1D5CEABA0(0, v476[2] + 1, 1, v476);
                      }

                      v409 = v418;
                      v262 = v476;
                      v426 = v476[2];
                      v425 = v476[3];
                      v427 = v426 + 1;
                      if (v426 >= v425 >> 1)
                      {
                        v262 = sub_1D5CEABA0((v425 > 1), v426 + 1, 1, v476);
                      }

                      sub_1D6D0A444(v424, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v465, type metadata accessor for FormatPropertyDefinition);
                      v412 = v464;
                    }

                    else
                    {
                      sub_1D6D09934(v108, v473, type metadata accessor for FormatOption);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v262 = sub_1D5CEABA0(0, *(v262 + 2) + 1, 1, v262);
                      }

                      v426 = *(v262 + 2);
                      v428 = *(v262 + 3);
                      v427 = v426 + 1;
                      if (v426 >= v428 >> 1)
                      {
                        v262 = sub_1D5CEABA0((v428 > 1), v426 + 1, 1, v262);
                      }

                      v412 = v473;
                    }

                    ++v411;
                    sub_1D6D0A444(v479, type metadata accessor for FormatOption);
                    *(v262 + 2) = v427;
                    sub_1D6D0A058(v412, &v262[v477 + v426 * v415], type metadata accessor for FormatOption);
                    v532 = v262;
                    v410 = v413;
                  }

                  while (v489 != v411);

                  v321 = v534;
                }

                else
                {
                }

                *&v494 = v410;
                sub_1D5B5AD98(0);
                sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
                sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
                v429 = sub_1D72623AC();
                v430 = v461;
                v431 = v469;
                v489 = *(v461 + 16);
                if (v489)
                {
                  v432 = 0;
                  v479 = v461 + ((*(v470 + 80) + 32) & ~*(v470 + 80));
                  v433 = (v480 + 56);
                  v434 = v461;
                  while (1)
                  {
                    if (v432 >= *(v434 + 16))
                    {
                      goto LABEL_310;
                    }

                    sub_1D6D09934(v479 + *(v470 + 72) * v432, v431, type metadata accessor for FormatPropertyDefinition);
                    v439 = FormatPropertyDefinition.identifier.getter();
                    if (*(v429 + 16))
                    {
                      v441 = sub_1D5B69D90(v439, v440);
                      v443 = v442;

                      if (v443)
                      {
                        v435 = v480;
                        v436 = v468;
                        sub_1D6D09934(*(v429 + 56) + *(v480 + 72) * v441, v468, type metadata accessor for FormatOption);
                        v431 = v469;
                        sub_1D6D0A444(v469, type metadata accessor for FormatPropertyDefinition);
                        (*(v435 + 56))(v436, 0, 1, v484);
                        v437 = sub_1D5E04C00;
                        v438 = v436;
                        v434 = v461;
                        goto LABEL_286;
                      }
                    }

                    else
                    {
                    }

                    v444 = v468;
                    (*v433)(v468, 1, 1, v484);
                    sub_1D6D0A444(v444, sub_1D5E04C00);
                    v431 = v469;
                    if (sub_1D695C4AC())
                    {

                      sub_1D67F58E4(v490, v534);

                      sub_1D60CF6F4(v434, v452, v454, v456, v457, v458, v460);

                      type metadata accessor for FormatLayoutError(0);
                      sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                      swift_allocError();
                      v446 = v445;
                      sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
                      v448 = *(v447 + 48);
                      v449 = v472;
                      sub_1D6D09934(v472, v446, type metadata accessor for FeedCustomItem);
                      sub_1D6D09934(v431, v446 + v448, type metadata accessor for FormatPropertyDefinition);
                      swift_storeEnumTagMultiPayload();
                      swift_willThrow();
                      sub_1D62B7D78(&v501);
                      sub_1D5F2DE58(&v528);
                      sub_1D6D0A444(v431, type metadata accessor for FormatPropertyDefinition);
                      sub_1D6D0A444(v449, type metadata accessor for FeedCustomItem);
                      return;
                    }

                    v437 = type metadata accessor for FormatPropertyDefinition;
                    v438 = v431;
LABEL_286:
                    sub_1D6D0A444(v438, v437);
                    if (v489 == ++v432)
                    {
                      v430 = v434;
                      goto LABEL_296;
                    }
                  }
                }

                v534 = v321;
LABEL_296:
                sub_1D60CF6F4(v430, v452, v454, v456, v457, v458, v460);

                v243 = v487;
                v324 = v491;
                v298 = v467;
                sub_1D62B7D78(&v501);
                sub_1D6D0A444(v472, type metadata accessor for FeedCustomItem);
                v264 = v466;
LABEL_199:
                v325 = v533;
                v491 = v532;
                v326 = v324[88];
                if (v481)
                {
                  swift_beginAccess();
                  if ((v326 & 1) != 0 || !*(v243[4] + 16) || (, sub_1D5B69D90(v474, v475), v328 = v327, , (v328 & 1) == 0))
                  {
                    v329 = *(v243[10] + 16);
                    if (v329)
                    {
                      sub_1D5B69D90(v492, v459);
                      v329 = 0x4000000000;
                      if ((v330 & 1) == 0)
                      {
                        v329 = 0;
                      }
                    }

                    *&v521 = v329 | v264;

                    v331 = sub_1D713CCF4();
                    v492 = v325;
                    v332 = sub_1D5BA8750(v331, v325);

                    swift_getObjectType();
                    sub_1D63071F4(&v528, &v521);
                    v333 = FCPuzzleTypeProviding.contentSelectors.getter();
                    sub_1D5F2DE58(&v528);
                    v334 = sub_1D5BA8750(v333, v332);

                    *(&v502 + 1) = &type metadata for FeedPuzzleType;
                    *&v503 = v298;
                    v335 = swift_allocObject();
                    *&v501 = v335;
                    v336 = v529;
                    v335[1] = v528;
                    v335[2] = v336;
                    v337 = v531;
                    v335[3] = v530;
                    v335[4] = v337;
                    sub_1D5B68374(&v501, &v515);
                    v338 = v534;
                    if (v534)
                    {
                      sub_1D63071F4(&v528, &v521);

                      v339 = sub_1D5BA8750(&unk_1F50F6A30, v334);
                      sub_1D5BFB68C(&unk_1F50F6A50);
                    }

                    else
                    {
                      sub_1D63071F4(&v528, &v521);

                      v339 = v334;
                    }

                    v355 = v491;
                    v489 = v334;
                    *(&v517 + 1) = v339;
                    v356 = *(v491 + 2);
                    if (v356)
                    {
                      *&v521 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v356, 0);
                      v357 = v521;
                      v358 = &v355[(*(v480 + 80) + 32) & ~*(v480 + 80)];
                      v359 = *(v480 + 72);
                      v360 = v356;
                      do
                      {
                        v361 = v483;
                        sub_1D6D09934(v358, v483, type metadata accessor for FormatOption);
                        v362 = swift_allocBox();
                        sub_1D6D0A058(v361, v363, type metadata accessor for FormatOption);
                        *&v521 = v357;
                        v365 = *(v357 + 16);
                        v364 = *(v357 + 24);
                        if (v365 >= v364 >> 1)
                        {
                          sub_1D5D24610((v364 > 1), v365 + 1, 1);
                          v357 = v521;
                        }

                        *(v357 + 16) = v365 + 1;
                        *(v357 + 8 * v365 + 32) = v362 | 0x1000000000000004;
                        v358 += v359;
                        --v360;
                      }

                      while (v360);
                      __swift_destroy_boxed_opaque_existential_1(&v501);
                      v338 = v534;
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1(&v501);
                      v357 = MEMORY[0x1E69E7CC0];
                    }

                    *&v518 = v357;
                    v377 = v490;
                    *(&v518 + 1) = v490;
                    *&v519 = v338;
                    *(&v519 + 1) = v488;
                    *&v520 = v485;
                    *(&v520 + 1) = v482;
                    v527 = v493;
                    v521 = v515;
                    v522 = v516;
                    v523 = v517;
                    v524 = v518;
                    v525 = v519;
                    v526 = v520;
                    v378 = v475;

                    sub_1D67F5880(v377, v338);
                    sub_1D6D60C48(&v521, v474, v378);
                    v507 = v528;
                    v508 = v529;
                    v509 = v530;
                    v510 = v531;
                    sub_1D63071F4(&v528, &v521);
                    if (v338)
                    {
                      v379 = sub_1D5BA8750(&unk_1F50F6A60, v489);
                      sub_1D5BFB68C(&unk_1F50F6A80);
                      v380 = v491;
                    }

                    else
                    {
                      v380 = v491;
                      v379 = v489;
                    }

                    v383 = MEMORY[0x1E69E7CC0];
                    if (v356)
                    {
                      v489 = v379;
                      *&v521 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v356, 0);
                      v383 = v521;
                      v384 = &v380[(*(v480 + 80) + 32) & ~*(v480 + 80)];
                      v385 = *(v480 + 72);
                      do
                      {
                        v386 = v483;
                        sub_1D6D09934(v384, v483, type metadata accessor for FormatOption);
                        v387 = swift_allocBox();
                        sub_1D6D0A058(v386, v388, type metadata accessor for FormatOption);
                        *&v521 = v383;
                        v390 = *(v383 + 16);
                        v389 = *(v383 + 24);
                        if (v390 >= v389 >> 1)
                        {
                          sub_1D5D24610((v389 > 1), v390 + 1, 1);
                          v383 = v521;
                        }

                        *(v383 + 16) = v390 + 1;
                        *(v383 + 8 * v390 + 32) = v387 | 0x1000000000000004;
                        v384 += v385;
                        --v356;
                      }

                      while (v356);
                      v338 = v534;
                      v379 = v489;
                    }

                    v391 = v508;
                    v392 = v471;
                    *v471 = v507;
                    v392[1] = v391;
                    v393 = v510;
                    v392[2] = v509;
                    v392[3] = v393;
                    *(v392 + 8) = v379;
                    goto LABEL_256;
                  }

LABEL_211:
                  sub_1D6752B3C();
                  swift_allocError();
                  v342 = v475;
                  *v343 = v474;
                  *(v343 + 8) = v342;
                  *(v343 + 56) = 0;
                  swift_willThrow();
                  swift_endAccess();

                  sub_1D5F2DE58(&v528);
                  v344 = v490;
                  v345 = v534;
                }

                else
                {
                  swift_beginAccess();
                  if ((v326 & 1) == 0)
                  {
                    if (*(v243[3] + 16))
                    {

                      sub_1D5B69D90(v474, v475);
                      v341 = v340;

                      if (v341)
                      {
                        goto LABEL_211;
                      }
                    }
                  }

                  v346 = *(v243[10] + 16);
                  if (v346)
                  {
                    sub_1D5B69D90(v492, v459);
                    v346 = 0x4000000000;
                    if ((v347 & 1) == 0)
                    {
                      v346 = 0;
                    }
                  }

                  *&v521 = v346 | v264;

                  v348 = sub_1D713CCF4();
                  v492 = v325;
                  v349 = sub_1D5BA8750(v348, v325);

                  swift_getObjectType();
                  sub_1D63071F4(&v528, &v521);
                  v350 = FCPuzzleTypeProviding.contentSelectors.getter();
                  sub_1D5F2DE58(&v528);
                  v351 = sub_1D5BA8750(v350, v349);

                  *(&v502 + 1) = &type metadata for FeedPuzzleType;
                  *&v503 = v298;
                  v352 = swift_allocObject();
                  *&v501 = v352;
                  v353 = v529;
                  v352[1] = v528;
                  v352[2] = v353;
                  v354 = v531;
                  v352[3] = v530;
                  v352[4] = v354;
                  sub_1D5B68374(&v501, &v515);
                  v338 = v534;
                  v489 = v351;
                  if (v534)
                  {
                    sub_1D63071F4(&v528, &v521);

                    v351 = sub_1D5BA8750(&unk_1F50F6A90, v351);
                    sub_1D5BFB68C(&unk_1F50F6AB0);
                  }

                  else
                  {
                    sub_1D63071F4(&v528, &v521);
                  }

                  v366 = v491;
                  *(&v517 + 1) = v351;
                  v367 = *(v491 + 2);
                  if (v367)
                  {
                    *&v521 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v367, 0);
                    v368 = v521;
                    v369 = &v366[(*(v480 + 80) + 32) & ~*(v480 + 80)];
                    v370 = *(v480 + 72);
                    v371 = v367;
                    do
                    {
                      v372 = v483;
                      sub_1D6D09934(v369, v483, type metadata accessor for FormatOption);
                      v373 = swift_allocBox();
                      sub_1D6D0A058(v372, v374, type metadata accessor for FormatOption);
                      *&v521 = v368;
                      v376 = *(v368 + 16);
                      v375 = *(v368 + 24);
                      if (v376 >= v375 >> 1)
                      {
                        sub_1D5D24610((v375 > 1), v376 + 1, 1);
                        v368 = v521;
                      }

                      *(v368 + 16) = v376 + 1;
                      *(v368 + 8 * v376 + 32) = v373 | 0x1000000000000004;
                      v369 += v370;
                      --v371;
                    }

                    while (v371);
                    __swift_destroy_boxed_opaque_existential_1(&v501);
                    v338 = v534;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(&v501);
                    v368 = MEMORY[0x1E69E7CC0];
                  }

                  *&v518 = v368;
                  v381 = v490;
                  *(&v518 + 1) = v490;
                  *&v519 = v338;
                  *(&v519 + 1) = v488;
                  *&v520 = v485;
                  *(&v520 + 1) = v482;
                  v527 = v493;
                  v521 = v515;
                  v522 = v516;
                  v523 = v517;
                  v524 = v518;
                  v525 = v519;
                  v526 = v520;
                  v382 = v475;

                  sub_1D67F5880(v381, v338);
                  sub_1D6D60C48(&v521, v474, v382);
                  v511 = v528;
                  v512 = v529;
                  v513 = v530;
                  v514 = v531;
                  sub_1D63071F4(&v528, &v521);
                  if (v338)
                  {
                    v489 = sub_1D5BA8750(&unk_1F50F6AC0, v489);
                    sub_1D5BFB68C(&unk_1F50F6AE0);
                  }

                  v394 = v491;
                  v383 = MEMORY[0x1E69E7CC0];
                  if (v367)
                  {
                    *&v521 = MEMORY[0x1E69E7CC0];
                    sub_1D6E76EA4(v367);
                    v395 = &v394[(*(v480 + 80) + 32) & ~*(v480 + 80)];
                    v396 = *(v480 + 72);
                    do
                    {
                      v397 = v483;
                      sub_1D6D09934(v395, v483, type metadata accessor for FormatOption);
                      v398 = swift_allocBox();
                      sub_1D6D0A058(v397, v399, type metadata accessor for FormatOption);
                      v383 = v521;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1D5D24610(0, *(v383 + 16) + 1, 1);
                        v383 = v521;
                      }

                      v401 = *(v383 + 16);
                      v400 = *(v383 + 24);
                      if (v401 >= v400 >> 1)
                      {
                        sub_1D5D24610((v400 > 1), v401 + 1, 1);
                        v383 = v521;
                      }

                      *(v383 + 16) = v401 + 1;
                      *(v383 + 8 * v401 + 32) = v398 | 0x1000000000000004;
                      v395 += v396;
                      --v367;
                    }

                    while (v367);
                    v392 = v471;
                    v338 = v534;
                  }

                  else
                  {
                    v392 = v471;
                  }

                  v402 = v512;
                  *v392 = v511;
                  v392[1] = v402;
                  v403 = v514;
                  v392[2] = v513;
                  v392[3] = v403;
                  *(v392 + 8) = v489;
LABEL_256:
                  *(v392 + 9) = v383;
                  v404 = v490;
                  *(v392 + 10) = v490;
                  *(v392 + 11) = v338;
                  v405 = v485;
                  *(v392 + 12) = v488;
                  *(v392 + 13) = v405;
                  v406 = v493;
                  *(v392 + 14) = v482;
                  *(v392 + 15) = v406;
                  swift_endAccess();
                  sub_1D67F5880(v404, v338);

                  sub_1D5F2DE58(&v528);
                  v344 = v404;
                  v345 = v338;
                }

                sub_1D67F58E4(v344, v345);
                return;
              }

              v322 = v490;
              v323 = v534;
LABEL_261:
              sub_1D67F58E4(v322, v323);

              v523 = v517;
              v524 = v518;
              v525 = v519;
              LOBYTE(v526) = v520;
              v521 = v515;
              v522 = v516;
LABEL_262:
              type metadata accessor for FormatLayoutError(0);
              sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
              swift_allocError();
              *v407 = v313;
              v407[1] = v312;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D6D09524(&v521, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
              sub_1D5F2DE58(&v528);
              sub_1D6D0A444(v472, type metadata accessor for FeedCustomItem);
              return;
            }
          }

          sub_1D67F58E4(v490, v534);

          LOBYTE(v526) = 0;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          goto LABEL_262;
        }

        v490 = 0;
        v534 = 0;
        v488 = 0;
        *&v485 = 0;
        *&v482 = 0;
        v493 = 0;
        v243 = v487;
      }

      else
      {
        v490 = 0;
        v534 = 0;
        v488 = 0;
        *&v485 = 0;
        *&v482 = 0;
        v493 = 0;
        v243 = v487;
        v264 = v251;
      }

      v272 = v456;
      v266 = v252;
      goto LABEL_189;
    }

    v108 = v451;
    goto LABEL_53;
  }

LABEL_52:
  swift_bridgeObjectRelease_n();
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
LABEL_53:
  *&v521 = v129;
  *(&v521 + 1) = v130;
  *&v522 = v131;
  *(&v522 + 1) = v132;
  *&v523 = v133;
  *(&v523 + 1) = v134;
  *&v524 = 0;
  *(&v524 + 1) = v135;
  *&v525 = v136;
  sub_1D6D0983C(&v521, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v105 = v491;
  v104 = v482;
  v102 = v452;
LABEL_54:
  v137 = *&v105[*(v104 + 72)];
  v138 = v137 - v108;
  if (__OFSUB__(v137, v108))
  {
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v139 = *v105;
  if (v138 >= 1)
  {
    if ((*v105 & 1) == 0)
    {
      sub_1D62F191C(v102);
      v141 = v140;

      v102 = v141;
    }

    v142 = *(v102 + 16);
    v143 = v102;

    if (v142)
    {
      v144 = 0;
      v108 = 32;
      while (1)
      {
        if (v144 >= *(v143 + 16))
        {
          goto LABEL_299;
        }

        v145 = *(v143 + v108 + 32);
        v146 = *(v143 + v108 + 48);
        v147 = *(v143 + v108 + 16);
        v521 = *(v143 + v108);
        v522 = v147;
        v523 = v145;
        v524 = v146;
        v457 = v147;
        v458 = v521;
        v459 = v146;
        v456 = v145;
        sub_1D63071F4(&v521, &v515);
        if (!v459)
        {
          goto LABEL_64;
        }

        v521 = v458;
        v522 = v457;
        v523 = v456;
        v524 = v459;
        if ((v492 & ~v458) == 0)
        {
          break;
        }

        ++v144;
        sub_1D5F2DE58(&v521);
        v108 += 64;
        if (v142 == v144)
        {
          goto LABEL_64;
        }
      }

      *&v494 = v143;
      sub_1D5EC1F20(v144, &v515);
      sub_1D5F2DE58(&v521);
      v130 = *(&v515 + 1);
      v129 = v515;
      v151 = *(&v516 + 1);
      v152 = v516;
      v150 = *(&v517 + 1);
      v133 = v517;
      v149 = *(&v518 + 1);
      v148 = v494;
      *&v459 = v518;
      if (v518)
      {
        goto LABEL_144;
      }
    }

    else
    {
LABEL_64:
      swift_bridgeObjectRelease_n();
      v148 = 0;
      v149 = 0;
      v150 = 0;
      v133 = 0;
      v151 = 0;
      v152 = 0;
      v130 = 0;
      v129 = 0;
    }

    *&v521 = v129;
    *(&v521 + 1) = v130;
    *&v522 = v152;
    *(&v522 + 1) = v151;
    *&v523 = v133;
    *(&v523 + 1) = v150;
    *&v524 = 0;
    *(&v524 + 1) = v149;
    *&v525 = v148;
    v153 = &v521;
    goto LABEL_89;
  }

  v452 = v102;
  if (v139)
  {
  }

  else
  {
    sub_1D62F191C(v102);
  }

  v155 = v154;
  v156 = *(v154 + 16);

  if (!v156)
  {
LABEL_78:
    swift_bridgeObjectRelease_n();
    v163 = 0;
    v135 = 0;
    v134 = 0;
    v133 = 0;
    v162 = 0;
    v152 = 0;
    v130 = 0;
    v129 = 0;
    goto LABEL_79;
  }

  v157 = 0;
  v158 = 32;
  while (1)
  {
    if (v157 >= *(v155 + 16))
    {
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v159 = *(v155 + v158 + 32);
    v160 = *(v155 + v158 + 48);
    v161 = *(v155 + v158 + 16);
    v521 = *(v155 + v158);
    v522 = v161;
    v523 = v159;
    v524 = v160;
    v457 = v161;
    v458 = v521;
    v459 = v160;
    v456 = v159;
    sub_1D63071F4(&v521, &v515);
    if (!v459)
    {
      goto LABEL_78;
    }

    v521 = v458;
    v522 = v457;
    v523 = v456;
    v524 = v459;
    if ((v492 & ~v458) == 0 && (v458 & 0x1000) == 0)
    {
      break;
    }

    sub_1D5F2DE58(&v521);
    ++v157;
    v158 += 64;
    if (v156 == v157)
    {
      goto LABEL_78;
    }
  }

  *&v494 = v155;
  sub_1D5EC1F20(v157, &v515);
  sub_1D5F2DE58(&v521);
  v130 = *(&v515 + 1);
  v129 = v515;
  v162 = *(&v516 + 1);
  v152 = v516;
  v134 = *(&v517 + 1);
  v133 = v517;
  v135 = *(&v518 + 1);
  v163 = v494;
  *&v459 = v518;
  if (v518)
  {
    v164 = *(&v516 + 1);
    goto LABEL_92;
  }

LABEL_79:
  *&v521 = v129;
  *(&v521 + 1) = v130;
  *&v522 = v152;
  *(&v522 + 1) = v162;
  *&v523 = v133;
  *(&v523 + 1) = v134;
  *&v524 = 0;
  *(&v524 + 1) = v135;
  *&v525 = v163;
  sub_1D6D0983C(&v521, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v165 = v452;
  if ((*v491 & 1) == 0)
  {
    sub_1D62F191C(v452);
    v167 = v166;

    v165 = v167;
  }

  v168 = *(v165 + 16);
  v169 = v165;

  if (v168)
  {
    v170 = 0;
    v171 = 32;
    while (1)
    {
      if (v170 >= *(v169 + 16))
      {
        goto LABEL_303;
      }

      v172 = *(v169 + v171 + 32);
      v173 = *(v169 + v171 + 48);
      v174 = *(v169 + v171 + 16);
      v515 = *(v169 + v171);
      v516 = v174;
      v517 = v172;
      v518 = v173;
      v457 = v174;
      v458 = v515;
      v459 = v173;
      v456 = v172;
      sub_1D63071F4(&v515, &v494);
      if (!v459)
      {
        goto LABEL_87;
      }

      v515 = v458;
      v516 = v457;
      v517 = v456;
      v518 = v459;
      if ((v492 & ~v458) == 0)
      {
        break;
      }

      ++v170;
      sub_1D5F2DE58(&v515);
      v171 += 64;
      if (v168 == v170)
      {
        goto LABEL_87;
      }
    }

    *&v528 = v169;
    sub_1D5EC1F20(v170, &v494);
    sub_1D5F2DE58(&v515);
    v130 = *(&v494 + 1);
    v129 = v494;
    v152 = v495;
    v151 = v496;
    v133 = v497;
    v150 = v498;
    v149 = v500;
    v175 = v528;
    *&v459 = v499;
    if (v499)
    {
LABEL_144:
      v164 = v151;
      v492 = v150;
      *&v486 = v149;
      goto LABEL_145;
    }
  }

  else
  {
LABEL_87:
    swift_bridgeObjectRelease_n();
    v175 = 0;
    v149 = 0;
    v150 = 0;
    v133 = 0;
    v151 = 0;
    v152 = 0;
    v130 = 0;
    v129 = 0;
  }

  *&v515 = v129;
  *(&v515 + 1) = v130;
  *&v516 = v152;
  *(&v516 + 1) = v151;
  *&v517 = v133;
  *(&v517 + 1) = v150;
  *&v518 = 0;
  *(&v518 + 1) = v149;
  *&v519 = v175;
  v153 = &v515;
LABEL_89:
  sub_1D6D0983C(v153, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v78 = v487;
  v177 = v489;
  v176 = v490;

  v523 = 0u;
  v524 = 0u;
  v521 = 0u;
  v522 = 0u;
  sub_1D6D09524(&v521, &unk_1EDF154F0, &type metadata for FeedPuzzleType, MEMORY[0x1E69E6720]);
  sub_1D5ED8048();
  v75 = swift_allocError();
  strcpy(v178, "FeedPuzzleType");
  v178[15] = -18;
  v179 = v493;
  *(v178 + 2) = v534;
  *(v178 + 3) = v179;
  *(v178 + 4) = v492;
  *(v178 + 5) = 1;
  *(v178 + 6) = v176;
  *(v178 + 7) = v177;
  v178[64] = 0;
  swift_willThrow();

LABEL_16:
  if ((*(v78 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    swift_willThrow();
    return;
  }

  v79 = *(v486 + 16);
  v489 = v75;
  v80 = 0;
  if (v79)
  {
    v81 = (v486 + 32);
    do
    {
      v82 = *v81++;
      v83 = qword_1D7349118[v82];
      if ((v83 & ~v80) == 0)
      {
        v83 = 0;
      }

      v80 |= v83;
      --v79;
    }

    while (v79);
  }

  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  v85 = swift_allocObject();
  v490 = v85;
  v86 = MEMORY[0x1E69E7CC0];
  *(v85 + 16) = MEMORY[0x1E69E7CC0];
  v87 = (v85 + 16);
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1D6D0A52C;
  *(v88 + 24) = v84;
  swift_beginAccess();

  v89 = sub_1D6990B38(0, 1, 1, v86);
  v91 = v89[2];
  v90 = v89[3];
  if (v91 >= v90 >> 1)
  {
    v89 = sub_1D6990B38((v90 > 1), v91 + 1, 1, v89);
  }

  v89[2] = v91 + 1;
  v92 = &v89[2 * v91];
  v92[4] = sub_1D6D0A518;
  v92[5] = v88;
  v488 = v89;
  *v87 = v89;
  swift_endAccess();

  v93 = *(v68 + 16);
  v94 = v493;

  if (!v93 || (v95 = sub_1D5BCF83C(0x7A7A755064656546, 0xEE0065707954656CLL, v534, v94), (v96 & 1) == 0) || (v97 = *(*(v68 + 56) + 8 * v95), !*(v97 + 2)))
  {
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v100, "FeedPuzzleType");
    v100[15] = -18;
    *(v100 + 2) = v534;
    *(v100 + 3) = v94;
    *(v100 + 4) = v492;
    *(v100 + 5) = 1;
    *(v100 + 6) = 0;
    *(v100 + 7) = 0;
    v100[64] = 0;
    swift_willThrow();

    swift_setDeallocating();
    goto LABEL_30;
  }

  v99 = sub_1D5BF08EC(v98, 0, 0);
  v111 = sub_1D714F420(v99);

  if (!v111)
  {
LABEL_44:

    sub_1D5ED8048();
    swift_allocError();
    *v122 = 0x7A7A755064656546;
    goto LABEL_140;
  }

  v112 = v111;
  v113 = *(v111 + 16);
  if (!v113)
  {

    goto LABEL_44;
  }

  v114 = v482;
  v115 = v491;
  v116 = *&v491[*(v482 + 68)];
  v117 = *(v482 + 76);
  v118 = *&v491[v117];
  v453 = 0;
  v455 = v117;
  *&v456 = v118;
  if (v118 >= v116)
  {
    goto LABEL_102;
  }

  v119 = *v491;
  *&v457 = v112;
  if (v119)
  {
    v120 = v112;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_1D62F191C(v112);
    v120 = v180;
    v113 = *(v180 + 16);

    if (!v113)
    {
      goto LABEL_100;
    }
  }

  v181 = 0;
  v182 = v492 | 0x1000;
  v183 = 32;
  while (2)
  {
    if (v181 >= *(v120 + 16))
    {
      goto LABEL_302;
    }

    v184 = *(v120 + v183 + 32);
    v185 = *(v120 + v183 + 48);
    v186 = *(v120 + v183 + 16);
    v521 = *(v120 + v183);
    v522 = v186;
    v523 = v184;
    v524 = v185;
    v485 = v521;
    v486 = v185;
    v458 = v184;
    v459 = v186;
    sub_1D63071F4(&v521, &v515);
    if (!v486)
    {
      break;
    }

    v521 = v485;
    v522 = v459;
    v523 = v458;
    v524 = v486;
    if ((v182 & ~v485) == 0)
    {

      *&v494 = v120;
      sub_1D5EC1F20(v181, &v515);
      sub_1D5F2DE58(&v521);
      v193 = *(&v515 + 1);
      v194 = v515;
      v191 = *(&v516 + 1);
      v192 = v516;
      v189 = *(&v517 + 1);
      v190 = v517;
      v188 = *(&v518 + 1);
      v225 = v518;
      v187 = v494;
      v243 = v487;
      if (!v518)
      {
        v117 = v455;
        goto LABEL_101;
      }

      *&v482 = *(&v516 + 1);
      v492 = *(&v517 + 1);
      *&v485 = v517;
      *&v486 = *(&v518 + 1);

LABEL_160:
      v117 = v455;
LABEL_168:
      *&v501 = v194;
      *(&v501 + 1) = v193;
      *&v502 = v192;
      *(&v502 + 1) = v482;
      *&v503 = v485;
      *(&v503 + 1) = v492;
      *&v504 = v225;
      *(&v504 + 1) = v486;
      v278 = v453;
      v279 = v493;
      if ((v194 & 0x1000) != 0)
      {
        if (__OFADD__(v456, 1))
        {
          goto LABEL_312;
        }

        *&v491[v117] = v456 + 1;
      }

      if ((v481 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v244, v245);
        *(&v450 - 2) = &v501;
        v97 = sub_1D5BF5F6C(sub_1D6D09EDC, (&v450 - 4), v97);
        v453 = v278;
      }

      strcpy(&v521, "FeedPuzzleType");
      HIBYTE(v521) = -18;
      *&v522 = v534;
      *(&v522 + 1) = v279;
      sub_1D5BDACA8(&v521, v97);

      swift_setDeallocating();
      swift_deallocClassInstance();

      v272 = *(&v501 + 1);
      v264 = v501;
      v266 = v502;
      *&v458 = *(&v502 + 1);
      *&v457 = v503;

      v280 = v476;
      v281 = v225;
      v282 = v492;
      v283 = sub_1D6196E44(v476, 42, 0xE100000000000000, v492, v281);

      v455 = v283;
      v533 = v283;

      v284 = v282;
      v261 = v281;
      v262 = sub_1D6196F00(v280, 42, 0xE100000000000000, v284, v281);

      v532 = v262;
      v285 = v280[2];

      if (v285 && (v286 = sub_1D5B69D90(42, 0xE100000000000000), (v287 & 1) != 0))
      {
        v288 = *(*(v280[7] + 8 * v286) + 136);
        v289 = *(v288 + 16);

        if (v289)
        {
          v534 = sub_1D5B69D90(v492, v281);
          v291 = v290;

          if (v291)
          {
            v292 = (*(v288 + 56) + 48 * v534);
            v293 = v292[1];
            v490 = *v292;
            v294 = v292[2];
            v295 = v292[3];
            v297 = v292[4];
            v296 = v292[5];
            *&v482 = v297;
            v493 = v296;
            v534 = v293;

            v488 = v294;

            *&v485 = v295;
          }

          else
          {

            v490 = 0;
            v534 = 0;
            v488 = 0;
            *&v485 = 0;
            *&v482 = 0;
            v493 = 0;
          }

          v261 = v281;
          goto LABEL_189;
        }
      }

      else
      {
      }

      v490 = 0;
      v534 = 0;
      v488 = 0;
      *&v485 = 0;
      *&v482 = 0;
      v493 = 0;
      goto LABEL_189;
    }

    ++v181;
    sub_1D5F2DE58(&v521);
    v183 += 64;
    if (v113 != v181)
    {
      continue;
    }

    break;
  }

  v117 = v455;
LABEL_100:
  swift_bridgeObjectRelease_n();
  v187 = 0;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v194 = 0;
LABEL_101:
  *&v521 = v194;
  *(&v521 + 1) = v193;
  *&v522 = v192;
  *(&v522 + 1) = v191;
  *&v523 = v190;
  *(&v523 + 1) = v189;
  *&v524 = 0;
  *(&v524 + 1) = v188;
  *&v525 = v187;
  sub_1D6D0983C(&v521, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v115 = v491;
  v114 = v482;
  v118 = v456;
  v112 = v457;
LABEL_102:
  v195 = *&v115[*(v114 + 72)];
  v196 = v195 - v118;
  if (__OFSUB__(v195, v118))
  {
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  v197 = *v115;
  if (v196 < 1)
  {
    *&v457 = v112;
    if (v197)
    {
    }

    else
    {
      sub_1D62F191C(v112);
    }

    v214 = v213;
    v215 = *(v213 + 16);

    if (v215)
    {
      v216 = 0;
      v217 = 32;
      while (1)
      {
        if (v216 >= *(v214 + 16))
        {
          goto LABEL_305;
        }

        v218 = *(v214 + v217 + 32);
        v219 = *(v214 + v217 + 48);
        v220 = *(v214 + v217 + 16);
        v521 = *(v214 + v217);
        v522 = v220;
        v523 = v218;
        v524 = v219;
        v482 = v220;
        v485 = v521;
        v486 = v219;
        v459 = v218;
        sub_1D63071F4(&v521, &v515);
        if (!v486)
        {
          goto LABEL_128;
        }

        v521 = v485;
        v522 = v482;
        v523 = v459;
        v524 = v486;
        if ((v492 & ~v485) == 0 && (v485 & 0x1000) == 0)
        {
          break;
        }

        sub_1D5F2DE58(&v521);
        ++v216;
        v217 += 64;
        if (v215 == v216)
        {
          goto LABEL_128;
        }
      }

      *&v494 = v214;
      sub_1D5EC1F20(v216, &v515);
      sub_1D5F2DE58(&v521);
      v193 = *(&v515 + 1);
      v194 = v515;
      v221 = *(&v516 + 1);
      v192 = v516;
      v222 = *(&v517 + 1);
      v223 = v517;
      v224 = *(&v518 + 1);
      v225 = v518;
      v226 = v494;
      if (v518)
      {
        *&v482 = *(&v516 + 1);
        v492 = *(&v517 + 1);
        *&v485 = v517;
        *&v486 = *(&v518 + 1);

LABEL_167:

        v243 = v487;
        goto LABEL_168;
      }
    }

    else
    {
LABEL_128:
      swift_bridgeObjectRelease_n();
      v226 = 0;
      v224 = 0;
      v222 = 0;
      v223 = 0;
      v221 = 0;
      v192 = 0;
      v193 = 0;
      v194 = 0;
    }

    *&v521 = v194;
    *(&v521 + 1) = v193;
    *&v522 = v192;
    *(&v522 + 1) = v221;
    *&v523 = v223;
    *(&v523 + 1) = v222;
    *&v524 = 0;
    *(&v524 + 1) = v224;
    *&v525 = v226;
    sub_1D6D0983C(&v521, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
    v227 = v457;
    if ((*v491 & 1) == 0)
    {
      sub_1D62F191C(v457);
      v229 = v228;

      v227 = v229;
    }

    v230 = *(v227 + 16);
    v231 = v227;

    if (v230)
    {
      v232 = 0;
      v233 = 32;
      while (1)
      {
        if (v232 >= *(v231 + 16))
        {
          goto LABEL_306;
        }

        v234 = *(v231 + v233 + 32);
        v235 = *(v231 + v233 + 48);
        v236 = *(v231 + v233 + 16);
        v515 = *(v231 + v233);
        v516 = v236;
        v517 = v234;
        v518 = v235;
        v482 = v236;
        v485 = v515;
        v486 = v235;
        v459 = v234;
        sub_1D63071F4(&v515, &v494);
        if (!v486)
        {
          goto LABEL_137;
        }

        v515 = v485;
        v516 = v482;
        v517 = v459;
        v518 = v486;
        if ((v492 & ~v485) == 0)
        {
          break;
        }

        ++v232;
        sub_1D5F2DE58(&v515);
        v233 += 64;
        if (v230 == v232)
        {
          goto LABEL_137;
        }
      }

      *&v528 = v231;
      sub_1D5EC1F20(v232, &v494);
      sub_1D5F2DE58(&v515);
      v193 = *(&v494 + 1);
      v194 = v494;
      v192 = v495;
      v241 = v496;
      v240 = v497;
      v239 = v498;
      v225 = v499;
      v238 = v500;
      v237 = v528;
      if (v499)
      {
        *&v482 = v496;
        *&v485 = v497;
        v492 = v498;
        *&v486 = v500;
        goto LABEL_167;
      }
    }

    else
    {
LABEL_137:
      swift_bridgeObjectRelease_n();
      v237 = 0;
      v238 = 0;
      v239 = 0;
      v240 = 0;
      v241 = 0;
      v192 = 0;
      v193 = 0;
      v194 = 0;
    }

    *&v515 = v194;
    *(&v515 + 1) = v193;
    *&v516 = v192;
    *(&v516 + 1) = v241;
    *&v517 = v240;
    *(&v517 + 1) = v239;
    *&v518 = 0;
    *(&v518 + 1) = v238;
    *&v519 = v237;
    v212 = &v515;
    goto LABEL_139;
  }

  if ((*v115 & 1) == 0)
  {
    sub_1D62F191C(v112);
    v199 = v198;

    v112 = v199;
  }

  v200 = *(v112 + 16);
  v201 = v112;

  if (v200)
  {
    v202 = 0;
    v203 = 32;
    while (1)
    {
      if (v202 >= *(v201 + 16))
      {
        goto LABEL_304;
      }

      v204 = *(v201 + v203 + 32);
      v205 = *(v201 + v203 + 48);
      v206 = *(v201 + v203 + 16);
      v521 = *(v201 + v203);
      v522 = v206;
      v523 = v204;
      v524 = v205;
      v482 = v206;
      v485 = v521;
      v486 = v205;
      v459 = v204;
      sub_1D63071F4(&v521, &v515);
      if (!v486)
      {
        goto LABEL_112;
      }

      v521 = v485;
      v522 = v482;
      v523 = v459;
      v524 = v486;
      if ((v492 & ~v485) == 0)
      {
        break;
      }

      ++v202;
      sub_1D5F2DE58(&v521);
      v203 += 64;
      if (v200 == v202)
      {
        goto LABEL_112;
      }
    }

    *&v494 = v201;
    sub_1D5EC1F20(v202, &v515);
    sub_1D5F2DE58(&v521);
    v193 = *(&v515 + 1);
    v194 = v515;
    v211 = *(&v516 + 1);
    v192 = v516;
    v209 = *(&v517 + 1);
    v210 = v517;
    v208 = *(&v518 + 1);
    v225 = v518;
    v207 = v494;
    if (v518)
    {
      *&v482 = *(&v516 + 1);
      v492 = *(&v517 + 1);
      *&v485 = v517;
      *&v486 = *(&v518 + 1);

      v243 = v487;
      goto LABEL_160;
    }
  }

  else
  {
LABEL_112:
    swift_bridgeObjectRelease_n();
    v207 = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v211 = 0;
    v192 = 0;
    v193 = 0;
    v194 = 0;
  }

  *&v521 = v194;
  *(&v521 + 1) = v193;
  *&v522 = v192;
  *(&v522 + 1) = v211;
  *&v523 = v210;
  *(&v523 + 1) = v209;
  *&v524 = 0;
  *(&v524 + 1) = v208;
  *&v525 = v207;
  v212 = &v521;
LABEL_139:
  sub_1D6D0983C(v212, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);

  v523 = 0u;
  v524 = 0u;
  v521 = 0u;
  v522 = 0u;
  sub_1D6D09524(&v521, &unk_1EDF154F0, &type metadata for FeedPuzzleType, MEMORY[0x1E69E6720]);
  sub_1D5ED8048();
  swift_allocError();
  *v122 = 0x7A7A755064656546;
LABEL_140:
  *(v122 + 8) = 0xEE0065707954656CLL;
  v242 = v493;
  *(v122 + 16) = v534;
  *(v122 + 24) = v242;
  *(v122 + 32) = v492;
  *(v122 + 40) = 1;
  *(v122 + 48) = 0;
  *(v122 + 56) = 0;
  *(v122 + 64) = 0;
  swift_willThrow();

  swift_setDeallocating();
LABEL_30:
  swift_deallocClassInstance();
}