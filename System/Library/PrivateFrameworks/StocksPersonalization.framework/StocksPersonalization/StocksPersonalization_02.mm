uint64_t sub_2203F3B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203F3B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_2203F95D4(a1, &v14 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_2203F3B20(v6, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_22042B650();
  return (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
}

uint64_t sub_2203F3DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_2203F96B8(a1, &v17 - v13, a6);
  sub_2203F9564(a2, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F3B20(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_2203F3EE8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_2203F9564(v3, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F3B20(a1, v3, a2);
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.symbolFeedVisit.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_2203F95D4(v2, v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_2203F9564(v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_22042B670();
    v17 = *(v11 + 20);
    v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = sub_22042B650();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_2203F428C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_2203F3B20(v10, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  return sub_2203F428C;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.watchSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_2203F95D4(v2, &v11 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_2203F3B20(v6, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  return (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
}

uint64_t sub_2203F44AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_2203F95D4(a1, &v11 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_2203F3B20(v6, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0) + 20);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  return (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.watchSymbol.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_2203F95D4(v1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_22042B670();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_2203F493C;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_2203F3B20(v9, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  return sub_2203F493C;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.unwatchSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_2203F95D4(v2, &v11 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_2203F3B20(v6, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  return (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
}

uint64_t sub_2203F4B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_2203F95D4(a1, &v11 - v5, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_2203F9564(v6, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_2203F3B20(v6, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    }

    sub_2203F389C(v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0) + 20);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  return (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.unwatchSymbol.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_2203F95D4(v1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_22042B670();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_2203F4FEC;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_2203F3B20(v9, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  return sub_2203F4FEC;
}

void sub_2203F5030(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_2203F96B8((*a1)[3], v10, a5);
    sub_2203F9564(v13, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_2203F389C(v11, a6);
  }

  else
  {
    sub_2203F9564(**a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_22042B670();
  v4 = *(v3 + 24);
  v5 = sub_22042B600();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_2203F53CC()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA2148);
  __swift_project_value_buffer(v0, qword_280FA2148);
  sub_2203F2FE0(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042F4D0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "timestamp";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "articleRead";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "symbolFeedVisit";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "watchSymbol";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "unwatchSymbol";
  *(v16 + 8) = 13;
  *(v16 + 16) = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2140 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_2203F5828(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_2203F58DC(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_2203F5F10(v5, a1, a2, a3);
          break;
        case 4:
          sub_2203F6560(v5, a1, a2, a3);
          break;
        case 5:
          sub_2203F6BB0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_2203F5828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_22042B600();
  sub_2203F91B0(&qword_280FA2230, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_22042B7A0();
}

uint64_t sub_2203F58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v46 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  sub_2203F2FE0(0, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v40 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v34 - v23;
  v39 = v5;
  v25 = *(v5 + 56);
  v42 = v4;
  v36 = v25;
  v25(&v34 - v23, 1, 1, v4);
  sub_2203F95D4(v46, v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v35 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_2203F9564(v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_5:
    v27 = v42;
    goto LABEL_6;
  }

  sub_2203F3B20(v12, v19, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F3B20(v19, v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2203F389C(v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_2203F9564(v24, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  v31 = v37;
  sub_2203F3B20(v17, v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  sub_2203F3B20(v31, v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  v27 = v42;
  v36(v24, 0, 1, v42);
LABEL_6:
  v28 = v40;
  sub_2203F91B0(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  v29 = v41;
  sub_22042B7A0();
  if (v29)
  {
    return sub_2203F9564(v24, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  }

  sub_2203F95D4(v24, v28, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  if ((*(v39 + 48))(v28, 1, v27) == 1)
  {
    sub_2203F9564(v24, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    return sub_2203F9564(v28, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  }

  else
  {
    v32 = v38;
    sub_2203F3B20(v28, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    if (v26 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v24, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    v33 = v46;
    sub_2203F9564(v46, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v32, v33, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    swift_storeEnumTagMultiPayload();
    return (*(v35 + 56))(v33, 0, 1, v13);
  }
}

uint64_t sub_2203F5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v47 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  sub_2203F2FE0(0, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v40 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v39 = v5;
  v23 = *(v5 + 56);
  v41 = &v35 - v24;
  v43 = v4;
  v23();
  sub_2203F95D4(v47, v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v36 = v14;
  v25 = (*(v14 + 48))(v12, 1, v13);
  if (v25 == 1)
  {
    sub_2203F9564(v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v26 = v13;
  }

  else
  {
    sub_2203F3B20(v12, v19, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v19, v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v26 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v41;
      sub_2203F9564(v41, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
      v28 = v38;
      sub_2203F3B20(v17, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
      sub_2203F3B20(v28, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
      v29 = v43;
      (v23)(v27, 0, 1, v43);
      goto LABEL_7;
    }

    sub_2203F389C(v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  v29 = v43;
  v27 = v41;
LABEL_7:
  v30 = v40;
  sub_2203F91B0(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  v31 = v42;
  sub_22042B7A0();
  if (v31)
  {
    return sub_2203F9564(v27, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  }

  sub_2203F95D4(v27, v30, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  if ((*(v39 + 48))(v30, 1, v29) == 1)
  {
    sub_2203F9564(v27, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    return sub_2203F9564(v30, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  }

  else
  {
    v33 = v37;
    sub_2203F3B20(v30, v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    if (v25 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v27, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    v34 = v47;
    sub_2203F9564(v47, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v33, v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    swift_storeEnumTagMultiPayload();
    return (*(v36 + 56))(v34, 0, 1, v26);
  }
}

uint64_t sub_2203F6560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v47 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  sub_2203F2FE0(0, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v40 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v39 = v5;
  v23 = *(v5 + 56);
  v41 = &v35 - v24;
  v43 = v4;
  v23();
  sub_2203F95D4(v47, v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v36 = v14;
  v25 = (*(v14 + 48))(v12, 1, v13);
  if (v25 == 1)
  {
    sub_2203F9564(v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v26 = v13;
  }

  else
  {
    sub_2203F3B20(v12, v19, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v19, v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v26 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = v41;
      sub_2203F9564(v41, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      v28 = v38;
      sub_2203F3B20(v17, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      sub_2203F3B20(v28, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      v29 = v43;
      (v23)(v27, 0, 1, v43);
      goto LABEL_7;
    }

    sub_2203F389C(v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  v29 = v43;
  v27 = v41;
LABEL_7:
  v30 = v40;
  sub_2203F91B0(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  v31 = v42;
  sub_22042B7A0();
  if (v31)
  {
    return sub_2203F9564(v27, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  }

  sub_2203F95D4(v27, v30, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  if ((*(v39 + 48))(v30, 1, v29) == 1)
  {
    sub_2203F9564(v27, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    return sub_2203F9564(v30, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  }

  else
  {
    v33 = v37;
    sub_2203F3B20(v30, v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    if (v25 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v27, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    v34 = v47;
    sub_2203F9564(v47, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v33, v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    swift_storeEnumTagMultiPayload();
    return (*(v36 + 56))(v34, 0, 1, v26);
  }
}

uint64_t sub_2203F6BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v47 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  sub_2203F2FE0(0, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v40 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v39 = v5;
  v23 = *(v5 + 56);
  v41 = &v35 - v24;
  v43 = v4;
  v23();
  sub_2203F95D4(v47, v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v36 = v14;
  v25 = (*(v14 + 48))(v12, 1, v13);
  if (v25 == 1)
  {
    sub_2203F9564(v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v26 = v13;
  }

  else
  {
    sub_2203F3B20(v12, v19, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v19, v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v26 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v27 = v41;
      sub_2203F9564(v41, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      v28 = v38;
      sub_2203F3B20(v17, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      sub_2203F3B20(v28, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      v29 = v43;
      (v23)(v27, 0, 1, v43);
      goto LABEL_7;
    }

    sub_2203F389C(v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  v29 = v43;
  v27 = v41;
LABEL_7:
  v30 = v40;
  sub_2203F91B0(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  v31 = v42;
  sub_22042B7A0();
  if (v31)
  {
    return sub_2203F9564(v27, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  }

  sub_2203F95D4(v27, v30, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  if ((*(v39 + 48))(v30, 1, v29) == 1)
  {
    sub_2203F9564(v27, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    return sub_2203F9564(v30, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  }

  else
  {
    v33 = v37;
    sub_2203F3B20(v30, v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    if (v25 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v27, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    v34 = v47;
    sub_2203F9564(v47, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v33, v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    swift_storeEnumTagMultiPayload();
    return (*(v36 + 56))(v34, 0, 1, v26);
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  result = sub_2203F7424(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2203F95D4(v3, v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_2203F7B3C(v3, a1, a2, a3);
        }

        else
        {
          sub_2203F7DA4(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_2203F78D4(v3, a1, a2, a3);
      }

      else
      {
        sub_2203F7670(v3, a1, a2, a3);
      }

      sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    }

    type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203F7424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_22042B600();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(a1 + *(v13 + 24), v8, &qword_280FA2228, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2203F9564(v8, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_2203F91B0(&qword_280FA2230, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_22042B890();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2203F7670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_2203F9564(v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_2203F3B20(v7, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    sub_2203F91B0(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    sub_22042B890();
    return sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  }

  result = sub_2203F389C(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2203F78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_2203F9564(v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2203F3B20(v7, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    sub_2203F91B0(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    sub_22042B890();
    return sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  }

  result = sub_2203F389C(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2203F7B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_2203F9564(v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2203F3B20(v7, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    sub_2203F91B0(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    sub_22042B890();
    return sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  }

  result = sub_2203F389C(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2203F7DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_2203F9564(v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2203F3B20(v7, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    sub_2203F91B0(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    sub_22042B890();
    return sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  }

  result = sub_2203F389C(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F91B0(&qword_27CF52568, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F8098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  sub_22042B670();
  v5 = *(a1 + 24);
  v6 = sub_22042B600();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_2203F8174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2203F81E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2203F82B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203F91B0(&qword_27CF52578, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203F832C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2140 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203F83D4(uint64_t a1)
{
  v2 = sub_2203F91B0(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203F8440(uint64_t a1, uint64_t a2)
{
  sub_2203F91B0(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B13_SessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v43 - v7;
  sub_2203F9490(0, &qword_27CF52580, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = &v43 - v9;
  v10 = sub_22042B600();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], v5);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  sub_2203F9490(0, &qword_27CF52588, &qword_280FA2228, v14);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v45 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v22 = *(v45 + 24);
  v23 = *(v19 + 56);
  v51 = a1;
  sub_2203F95D4(a1 + v22, v21, &qword_280FA2228, v14);
  v24 = v52 + v22;
  v25 = v52;
  sub_2203F95D4(v24, &v21[v23], &qword_280FA2228, v14);
  v26 = *(v11 + 48);
  if (v26(v21, 1, v10) != 1)
  {
    sub_2203F95D4(v21, v17, &qword_280FA2228, MEMORY[0x277D21570]);
    if (v26(&v21[v23], 1, v10) != 1)
    {
      (*(v11 + 32))(v13, &v21[v23], v10);
      sub_2203F91B0(&qword_27CF52590, MEMORY[0x277D21570], MEMORY[0x277D21578]);
      v31 = sub_22042BA10();
      v32 = *(v11 + 8);
      v32(v13, v10);
      v32(v17, v10);
      sub_2203F9564(v21, &qword_280FA2228, MEMORY[0x277D21570]);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v11 + 8))(v17, v10);
LABEL_6:
    v27 = &qword_27CF52588;
    v28 = &qword_280FA2228;
    v29 = MEMORY[0x277D21570];
    v30 = v21;
LABEL_14:
    sub_2203F9508(v30, v27, v28, v29);
    goto LABEL_15;
  }

  if (v26(&v21[v23], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_2203F9564(v21, &qword_280FA2228, MEMORY[0x277D21570]);
LABEL_8:
  v33 = *(v47 + 48);
  v34 = v50;
  sub_2203F95D4(v51, v50, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F95D4(v25, v34 + v33, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_2203F9564(v34, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_18:
      sub_22042B680();
      sub_2203F91B0(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_22042BA10();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v46;
  sub_2203F95D4(v34, v46, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_2203F389C(v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_13:
    v27 = &qword_27CF52580;
    v28 = qword_280FA21D0;
    v29 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_2203F3B20(v40, v44, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v42 = _s21StocksPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(v37, v41);
  sub_2203F389C(v41, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F389C(v37, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F9564(v34, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(0);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(0);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  sub_2203F9654(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 56);
  sub_2203F96B8(v44, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F96B8(v45, &v27[v28], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2203F96B8(v27, v18, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol;
        v31 = v18;
        goto LABEL_15;
      }

      v32 = &v27[v28];
      v33 = v42;
      sub_2203F3B20(v32, v42, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventWatchSymbolV2eeoiySbAC_ACtFZ_0(v18, v33);
      v35 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol;
      sub_2203F389C(v33, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      v36 = v18;
    }

    else
    {
      sub_2203F96B8(v27, v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v30 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol;
        v31 = v15;
        goto LABEL_15;
      }

      v38 = &v27[v28];
      v39 = v43;
      sub_2203F3B20(v38, v43, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B26_SessionEventUnwatchSymbolV2eeoiySbAC_ACtFZ_0(v15, v39);
      v35 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol;
      sub_2203F389C(v39, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      v36 = v15;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_2203F96B8(v27, v21, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit;
      v31 = v21;
      goto LABEL_15;
    }

    sub_2203F3B20(&v27[v28], v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B28_SessionEventSymbolFeedVisitV2eeoiySbAC_ACtFZ_0(v21, v8);
    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    v36 = v21;
    v37 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit;
LABEL_18:
    sub_2203F389C(v36, v37);
    v40 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event;
    goto LABEL_19;
  }

  sub_2203F96B8(v27, v23, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_2203F3B20(&v27[v28], v11, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(v23, v11);
    v35 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead;
    sub_2203F389C(v11, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    v36 = v23;
LABEL_17:
    v37 = v35;
    goto LABEL_18;
  }

  v30 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead;
  v31 = v23;
LABEL_15:
  sub_2203F389C(v31, v30);
  V2eeoiySbAC_ACtFZ_0 = 0;
  v40 = sub_2203F9654;
LABEL_19:
  sub_2203F389C(v27, v40);
  return V2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_2203F91B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2203F92F8(uint64_t a1)
{
  sub_2203F2FE0(319, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22042B680();
    if (v2 <= 0x3F)
    {
      sub_2203F2FE0(319, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2203F93F4(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_2203F9490(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2203F2FE0(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2203F9508(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F9490(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2203F9564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203F2FE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2203F95D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F2FE0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2203F9654(uint64_t a1)
{
  if (!qword_27CF525A8)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF525A8);
    }
  }
}

uint64_t sub_2203F96B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t Com_Apple_Stocks_Personalization_FeedType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2203F979C(uint64_t a1, uint64_t a2)
{
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F9808(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203F9E10();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2203F9854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F98D0()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF525B0);
  __swift_project_value_buffer(v0, qword_27CF525B0);
  sub_2203E4774(0);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042F6E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "FEED_TYPE_UNKNOWN";
  *(v7 + 8) = 17;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "FEED_TYPE_SYMBOL";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "FEED_TYPE_FOR_YOU";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "FEED_TYPE_EOA";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_FeedType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF525B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203F9BA8()
{
  result = qword_27CF525C8;
  if (!qword_27CF525C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525C8);
  }

  return result;
}

unint64_t sub_2203F9C00()
{
  result = qword_27CF525D0;
  if (!qword_27CF525D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525D0);
  }

  return result;
}

unint64_t sub_2203F9C58()
{
  result = qword_27CF525D8;
  if (!qword_27CF525D8)
  {
    sub_2203F9CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525D8);
  }

  return result;
}

void sub_2203F9CB0()
{
  if (!qword_27CF525E0)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF525E0);
    }
  }
}

unint64_t sub_2203F9D04()
{
  result = qword_27CF525E8;
  if (!qword_27CF525E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525E8);
  }

  return result;
}

uint64_t sub_2203F9D58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF525B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203F9E10()
{
  result = qword_27CF525F0;
  if (!qword_27CF525F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525F0);
  }

  return result;
}

uint64_t type metadata accessor for ArticleScoringRequestEventProcessor(uint64_t a1)
{
  result = qword_280FA0660;
  if (!qword_280FA0660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203F9EFC()
{
  v1 = sub_22042A5E0();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22042A5B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22042B370();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22042B560();
  result = MEMORY[0x28223BE20](v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_27CF525F8))
  {
    v25[3] = *(v0 + qword_27CF525F8);
    v26 = v14;
    v27 = result;
    sub_22042B240();
    v25[1] = sub_22042B330();
    v25[2] = v17;
    (*(v9 + 8))(v11, v8);
    sub_22042A5A0();
    sub_22042A570();
    v19 = v18;
    v20 = v18;
    result = (*(v5 + 8))(v7, v4);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v30 = v19;
        v31 = sub_22042BF20();
        v32 = v21;
        MEMORY[0x223D7BDE0](45, 0xE100000000000000);
        sub_22042A5D0();
        v22 = sub_22042A5C0();
        v24 = v23;
        (*(v28 + 8))(v3, v29);
        MEMORY[0x223D7BDE0](v22, v24);

        sub_22042B550();
        sub_22042B5A0();
        return (*(v26 + 8))(v16, v27);
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0) + 52);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(uint64_t a1)
{
  result = qword_280FA1DC0;
  if (!qword_280FA1DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0) + 52);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  return sub_22042B670();
}

uint64_t sub_2203FA7A0()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1DE8);
  __swift_project_value_buffer(v0, qword_280FA1DE8);
  sub_2203E4774(0);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22042F8C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "is_audio";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "is_featured";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "is_evergreen";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "is_anf";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "is_paid";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "is_video";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "is_bundle_paid";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "is_aigc";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "is_press_release";
  *(v23 + 8) = 16;
  *(v23 + 16) = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_ArticleFeatures._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22042B700();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_9;
      }

LABEL_10:
      result = sub_22042B700();
    }

    if (result > 9)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_22042B720();
    goto LABEL_10;
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_22042B820(), !v4))
  {
    if (v3[1] != 1 || (result = sub_22042B820(), !v4))
    {
      if (v3[2] != 1 || (result = sub_22042B820(), !v4))
      {
        if (v3[3] != 1 || (result = sub_22042B820(), !v4))
        {
          if (v3[4] != 1 || (result = sub_22042B820(), !v4))
          {
            if (v3[5] != 1 || (result = sub_22042B820(), !v4))
            {
              if (v3[6] != 1 || (result = sub_22042B820(), !v4))
              {
                if (v3[7] != 1 || (result = sub_22042B820(), !v4))
                {
                  if (v3[8] != 1 || (result = sub_22042B820(), !v4))
                  {
                    type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
                    return sub_22042B660();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  sub_2203FB5AC(&qword_27CF52600, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203FAF18@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  return sub_22042B670();
}

uint64_t sub_2203FAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2203FAFD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2203FB098(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203FB5AC(&qword_27CF52610, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_ArticleFeatures);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203FB114@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203FB1BC(uint64_t a1)
{
  v2 = sub_2203FB5AC(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_ArticleFeatures);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203FB228(uint64_t a1, uint64_t a2)
{
  sub_2203FB5AC(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_ArticleFeatures);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B16_ArticleFeaturesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[8] != a2[8])
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  sub_22042B680();
  sub_2203FB5AC(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22042BA10() & 1;
}

uint64_t sub_2203FB518(uint64_t a1)
{
  result = sub_22042B680();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2203FB5AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.getter()
{
  v1 = *v0;
  sub_2203DF3D8(*v0, *(v0 + 8));
  return v1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2203DF1B0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(uint64_t a1)
{
  result = qword_280FA0600;
  if (!qword_280FA0600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22042D6B0;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  return sub_22042B670();
}

uint64_t sub_2203FB868()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA0630);
  __swift_project_value_buffer(v0, qword_280FA0630);
  sub_2203E4774(0);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22042D3F0;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "little_endian_bytes";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22042B8A0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22042B8B0();
}

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Float16List._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA0628 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA0630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22042B700();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22042B740();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22042B840();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  return sub_22042B660();
}

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Float16List.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_2203FC480(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_22042B680();
  sub_2203FC7AC(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22042BA10() & 1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_2203FC7AC(&qword_27CF52618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203FBD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203FC7AC(&qword_27CF52628, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203FBDCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA0628 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA0630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203FBE74(uint64_t a1)
{
  v2 = sub_2203FC7AC(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203FBEE0(uint64_t a1, uint64_t a2)
{
  sub_2203FC7AC(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return sub_22042B800();
}

uint64_t sub_2203FBF5C(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_2203FC480(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_22042B680();
  sub_2203FC7AC(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22042BA10() & 1;
}

uint64_t sub_2203FC008@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22042A430();
    if (v10)
    {
      v11 = sub_22042A460();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22042A450();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22042A430();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22042A460();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22042A450();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2203FC238(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2203FC3C8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2203DF1B0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2203FC008(v13, a3, a4, &v12);
  v10 = v4;
  sub_2203DF1B0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2203FC3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22042A430();
  v11 = result;
  if (result)
  {
    result = sub_22042A460();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22042A450();
  sub_2203FC008(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2203FC480(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2203DF3D8(a3, a4);
          return sub_2203FC238(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2203FC730(uint64_t a1)
{
  result = sub_22042B680();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2203FC7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void UserEventsFeatureResolver.resolveFeatures(inputKeys:configuration:nodeID:)(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);

  os_unfair_lock_lock((v4 + v5));
  sub_2203FCAA8(v4 + v6, a1);
  os_unfair_lock_unlock((v4 + v5));
  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_2203FC90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2203FCC64(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203FCCBC(a1, v8);
  v9 = sub_22042B370();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  sub_2203FCD20(a1);
  sub_2203FCD20(v8);
  v11 = *(a2 + 152);
  v13[0] = *(a2 + 136);
  v13[1] = v11;
  v14 = *(a2 + 168);
  sub_2203C6B90(v13, a3);
  (*(v10 + 16))(a1, a3, v9);
  return (*(v10 + 56))(a1, 0, 1, v9);
}

uint64_t UserEventsFeatureResolver.deinit()
{

  return v0;
}

uint64_t UserEventsFeatureResolver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_2203FCB30(uint64_t a1@<X8>)
{
  v4 = *(*v1 + 16);
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v4 + v6));
  sub_2203FCD7C(v4 + v5, a1);
  os_unfair_lock_unlock((v4 + v6));
  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_2203FCC64(uint64_t a1)
{
  if (!qword_280FA22F0)
  {
    sub_22042B370();
    v1 = sub_22042BCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA22F0);
    }
  }
}

uint64_t sub_2203FCCBC(uint64_t a1, uint64_t a2)
{
  sub_2203FCC64(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203FCD20(uint64_t a1)
{
  sub_2203FCC64(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Com_Apple_Stocks_Personalization_GroupType.string.getter()
{
  if (*(v0 + 8) == 1)
  {
    return *&aUnknown_3[8 * *v0];
  }

  else
  {
    return 0;
  }
}

unint64_t Com_Apple_Stocks_Personalization_GroupType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2203FCE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203FD48C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2203FCE8C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF52630);
  __swift_project_value_buffer(v0, qword_27CF52630);
  sub_2203E4774(0);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042FDB0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "GROUP_TYPE_UNKNOWN";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "GROUP_TYPE_CURATED";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "GROUP_TYPE_TOP_STORIES";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "GROUP_TYPE_SYMBOL";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "GROUP_TYPE_MORE_FROM";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "GROUP_TYPE_RELATED";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "GROUP_TYPE_AD";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_GroupType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F00 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203FD224()
{
  result = qword_27CF52648;
  if (!qword_27CF52648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52648);
  }

  return result;
}

unint64_t sub_2203FD27C()
{
  result = qword_27CF52650;
  if (!qword_27CF52650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52650);
  }

  return result;
}

unint64_t sub_2203FD2D4()
{
  result = qword_27CF52658;
  if (!qword_27CF52658)
  {
    sub_2203FD32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52658);
  }

  return result;
}

void sub_2203FD32C()
{
  if (!qword_27CF52660)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF52660);
    }
  }
}

unint64_t sub_2203FD380()
{
  result = qword_27CF52668;
  if (!qword_27CF52668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52668);
  }

  return result;
}

uint64_t sub_2203FD3D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F00 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203FD48C()
{
  result = qword_27CF52670;
  if (!qword_27CF52670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52670);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.humanReadableJSON(headlineService:tagService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_22042BA70();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_22042B6A0();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_22042AE70();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203FD694, 0, 0);
}

uint64_t sub_2203FD694()
{
  v16 = v0;
  v15[5] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v1 = sub_2203FE6B0();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = sub_2203FFAE4(*(v1 + 16), 0);
    v5 = sub_220401AC4(v15, v4 + 4, v3, v2);
    sub_220401C1C(v15[0]);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v6 = *(v0 + 64);
  sub_22042B940();

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v7 = sub_2203FEC38();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = sub_2203FFAE4(*(v7 + 16), 0);
    v11 = sub_220401AC4(v15, v10 + 4, v9, v8);
    sub_220401C1C(v15[0]);
    if (v11 == v9)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

LABEL_9:
  sub_22042B930();

  v12 = sub_22042AEA0();
  *(v0 + 160) = sub_22042AE90();

  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_2203FD8DC;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_2203FD8DC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2203FE5E8;
  }

  else
  {

    v2 = sub_2203FDA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2203FDA2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  v105 = v1 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_34:
    v35 = v102;
    if (v102 >> 62)
    {
      goto LABEL_78;
    }

    v36 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
    v37 = v103;
    v96 = v1;
    if (v36)
    {
      v38 = 0;
      v99 = v35 & 0xFFFFFFFFFFFFFF8;
      v101 = v35 & 0xC000000000000001;
      v39 = MEMORY[0x277D84F98];
      v97 = v36;
      do
      {
        if (v101)
        {
          v41 = MEMORY[0x223D7C0A0](v38, v35);
          v42 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v38 >= *(v99 + 16))
          {
            goto LABEL_74;
          }

          v41 = *(v35 + 8 * v38 + 32);
          swift_unknownObjectRetain();
          v42 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }
        }

        v106 = v42;
        v43 = [v41 identifier];
        v44 = sub_22042BA30();
        v46 = v45;

        v47 = [v41 name];
        v37 = sub_22042BA30();
        v49 = v48;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = sub_2203FFB78(v44, v46);
        v51 = v39[2];
        v52 = (v50 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          goto LABEL_75;
        }

        v54 = v50;
        if (v39[3] >= v53)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v50)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_22040139C();
            if (v54)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          sub_2204004B8(v53, isUniquelyReferenced_nonNull_native);
          v55 = sub_2203FFB78(v44, v46);
          if ((v54 & 1) != (v56 & 1))
          {
            goto LABEL_61;
          }

          v35 = v55;
          if (v54)
          {
LABEL_38:

            v40 = (v39[7] + 16 * v35);
            *v40 = v37;
            v40[1] = v49;

            swift_unknownObjectRelease();
            goto LABEL_39;
          }
        }

        v39[(v35 >> 6) + 8] |= 1 << v35;
        v57 = (v39[6] + 16 * v35);
        *v57 = v44;
        v57[1] = v46;
        v58 = (v39[7] + 16 * v35);
        *v58 = v37;
        v58[1] = v49;
        swift_unknownObjectRelease();
        v59 = v39[2];
        v22 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v22)
        {
          __break(1u);
LABEL_78:
          v94 = v1;
          v95 = sub_22042BE10();
          v1 = v94;
          v36 = v95;
          goto LABEL_36;
        }

        v39[2] = v60;
LABEL_39:
        ++v38;
        v35 = v102;
        v37 = v103;
      }

      while (v106 != v97);
    }

    v61 = v37[22];
    v107 = sub_22042AE20();

    sub_22042A380();
    swift_allocObject();
    sub_22042A370();
    sub_22042A3E0();
    swift_allocObject();
    sub_22042A3D0();
    swift_allocObject();
    sub_22042A370();
    sub_22042B690();
    type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
    sub_220401C24(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
    v62 = sub_22042B7B0();
    v64 = v37[14];
    v63 = v37[15];
    if (v61)
    {
      (*(v64 + 8))(v63, v37[13], v62);
    }

    else
    {
      v65 = v37[11];
      v66 = v37[12];
      v67 = v37[10];
      (*(v64 + 8))(v63, v37[13]);
      sub_22042BA60();
      v68 = sub_22042BA40();
      v70 = v69;

      result = (*(v65 + 8))(v66, v67);
      if (v70 >> 60 == 15)
      {
        __break(1u);
        return result;
      }

      sub_220401C24(&qword_27CF52678, MEMORY[0x277D6CED0], MEMORY[0x277D6CEE0]);
      sub_22042A360();
      v72 = v37[19];
      v73 = *(v103 + 144);
      v74 = *(v103 + 136);
      v75 = *(v103 + 128);
      sub_2203DF298(v68, v70);

      sub_2203FF588(v73, v107, v72);

      v76 = *(v74 + 8);
      v37 = v103;
      v76(v73, v75);
      sub_220401C24(&qword_280FA2408, MEMORY[0x277D6CED0], MEMORY[0x277D6CED8]);
      v77 = sub_22042A3C0();
      v78 = *(v103 + 152);
      v79 = *(v103 + 128);
      v81 = v77;
      v83 = v82;
      v84 = objc_opt_self();
      v76(v78, v79);

      v85 = sub_22042A540();
      sub_2203DF1B0(v81, v83);
      *(v103 + 32) = 0;
      v86 = [v84 JSONObjectWithData:v85 options:0 error:v103 + 32];

      v87 = *(v103 + 32);
      if (v86)
      {
        *(v103 + 40) = 0;
        v88 = v87;
        v89 = [v84 dataWithJSONObject:v86 options:2 error:v103 + 40];
        swift_unknownObjectRelease();
        v90 = *(v103 + 40);
        if (v89)
        {
          isUniquelyReferenced_nonNull_native = sub_22042A550();
          v35 = v91;

          sub_22042A360();
LABEL_76:

          sub_2203DF1B0(isUniquelyReferenced_nonNull_native, v35);

          v80 = v37[1];
          goto LABEL_65;
        }

        v93 = v90;

        sub_22042A480();

        swift_willThrow();
      }

      else
      {
        v92 = v87;

        sub_22042A480();

        swift_willThrow();
      }
    }

    v80 = v37[1];
LABEL_65:

    return v80();
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v104 = MEMORY[0x277D84F98];
LABEL_4:
  v0 = v4;
  while (1)
  {
    if (v5)
    {
      v6 = v1;
      v7 = MEMORY[0x223D7C0A0](v0);
      v4 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v0 >= *(v105 + 16))
      {
        goto LABEL_32;
      }

      v6 = v1;
      v7 = *(v1 + 8 * v0 + 32);
      swift_unknownObjectRetain();
      v4 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v105 = v1 & 0xFFFFFFFFFFFFFF8;
        v33 = v1;
        v34 = sub_22042BE10();
        v1 = v33;
        isUniquelyReferenced_nonNull_native = v34;
        v102 = v2;
        v103 = v0;
        if (!v34)
        {
          goto LABEL_34;
        }

        goto LABEL_3;
      }
    }

    v8 = [v7 identifier];
    v9 = sub_22042BA30();
    v11 = v10;

    v12 = [v7 title];
    if (v12)
    {
      break;
    }

    v13 = sub_2203FFB78(v9, v11);
    v2 = v14;

    if (v2)
    {
      v26 = v104;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_22040139C();
        v26 = v104;
      }

      v2 = 16 * v13;

      v104 = v26;
      sub_220401914(v13, v26);
LABEL_25:
      swift_unknownObjectRelease();
LABEL_29:
      v1 = v6;
      if (v4 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
    }

    swift_unknownObjectRelease();
    ++v0;
    v1 = v6;
    if (v4 == isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }
  }

  v15 = v12;
  v98 = sub_22042BA30();
  v100 = v16;

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = sub_2203FFB78(v9, v11);
  v20 = v104[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_80;
  }

  v24 = v19;
  if (v104[3] >= v23)
  {
    if ((v17 & 1) == 0)
    {
      v28 = v18;
      sub_22040139C();
      v18 = v28;
      if (v24)
      {
LABEL_24:
        v2 = v18;

        v27 = (v104[7] + 16 * v2);
        *v27 = v98;
        v27[1] = v100;

        goto LABEL_25;
      }

LABEL_27:
      v2 = v104;
      v104[(v18 >> 6) + 8] |= 1 << v18;
      v29 = (v104[6] + 16 * v18);
      *v29 = v9;
      v29[1] = v11;
      v30 = (v104[7] + 16 * v18);
      *v30 = v98;
      v30[1] = v100;
      swift_unknownObjectRelease();
      v31 = v104[2];
      v22 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (!v22)
      {
        v104[2] = v32;
        goto LABEL_29;
      }

LABEL_80:
      __break(1u);
    }

LABEL_23:
    if (v24)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  sub_2204004B8(v23, v17);
  v18 = sub_2203FFB78(v9, v11);
  if ((v24 & 1) == (v25 & 1))
  {
    goto LABEL_23;
  }

LABEL_61:

  return sub_22042BF70();
}

uint64_t sub_2203FE5E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2203FE6B0()
{
  sub_220402018(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - v2;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  MEMORY[0x28223BE20](v36);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220402018(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    v19 = MEMORY[0x277D84F90];
    v34 = (v5 + 48);
    v35 = v4;
    v20 = v37;
    v38 = v8;
    while (1)
    {
      sub_22040206C(v18, v15);
      sub_2204020D0(v15, v11, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      v21 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
      if ((*(*(v21 - 8) + 48))(v11, 1, v21) != 1)
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v39 = v19;
          sub_220402214(v11, v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          sub_2204020D0(&v8[*(v36 + 20)], v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v22 = *v34;
          if ((*v34)(v3, 1, v4) == 1)
          {
            *v20 = 0;
            *(v20 + 1) = 0xE000000000000000;
            v23 = *(v4 + 20);
            v24 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
            (*(*(v24 - 8) + 56))(&v20[v23], 1, 1, v24);
            sub_22042B670();
            sub_22040213C(v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
            if (v22(v3, 1, v4) != 1)
            {
              sub_22040219C(v3);
            }
          }

          else
          {
            sub_22040213C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
            sub_220402214(v3, v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          }

          v25 = v3;
          v27 = *v20;
          v26 = *(v20 + 1);

          sub_22040213C(v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          sub_22040213C(v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
          v19 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_22041ECD0(0, *(v19 + 2) + 1, 1, v19);
          }

          v29 = *(v19 + 2);
          v28 = *(v19 + 3);
          if (v29 >= v28 >> 1)
          {
            v19 = sub_22041ECD0((v28 > 1), v29 + 1, 1, v19);
          }

          *(v19 + 2) = v29 + 1;
          v30 = &v19[16 * v29];
          *(v30 + 4) = v27;
          *(v30 + 5) = v26;
          v3 = v25;
          v4 = v35;
          v20 = v37;
          v8 = v38;
          goto LABEL_5;
        }

        sub_22040213C(v11, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      }

      sub_22040213C(v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
LABEL_5:
      v18 += v40;
      if (!--v17)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_18:
  v31 = sub_2204216C8(v19);

  return v31;
}

uint64_t sub_2203FEC38()
{
  v60 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x28223BE20](v60);
  v2 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220402018(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v57 - v4;
  sub_220402018(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead(0);
  MEMORY[0x28223BE20](v64);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220402018(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) - 8;
  result = MEMORY[0x28223BE20](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 16);
  v22 = *(v21 + 16);
  if (v22)
  {
    v61 = v2;
    v23 = v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v68 = *(v18 + 72);
    v24 = MEMORY[0x277D84F90];
    v25 = (v9 + 48);
    v59 = xmmword_22042D3F0;
    v66 = v8;
    v58 = v7;
    v62 = v12;
    while (1)
    {
      v26 = v25;
      sub_22040206C(v23, v20);
      sub_2204020D0(v20, v15, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      v27 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
      if ((*(*(v27 - 8) + 48))(v15, 1, v27) != 1)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          sub_22040213C(v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
        }

        else
        {
          v67 = v24;
          sub_220402214(v15, v12, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          sub_2204020D0(&v12[*(v64 + 20)], v7, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v28 = *v26;
          if ((*v26)(v7, 1, v8) == 1)
          {
            v29 = v63;
            *v63 = 0;
            v29[1] = 0xE000000000000000;
            v30 = *(v66 + 20);
            v31 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
            v32 = v29 + v30;
            v8 = v66;
            (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
            sub_22042B670();
            if (v28(v7, 1, v8) != 1)
            {
              sub_22040219C(v7);
            }
          }

          else
          {
            v29 = v63;
            sub_220402214(v7, v63, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          }

          v33 = v65;
          sub_2204020D0(v29 + *(v8 + 20), v65, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
          sub_22040213C(v29, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v34 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
          if ((*(*(v34 - 8) + 48))(v33, 1, v34) != 1)
          {
            v35 = v61;
            sub_220402214(v33, v61, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
            v36 = *(v35 + *(v60 + 20));
            swift_beginAccess();
            v37 = v36[2];
            sub_22040227C(0, &qword_280FA2560, MEMORY[0x277D84560]);
            inited = swift_initStackObject();
            *(inited + 16) = v59;
            swift_beginAccess();
            v39 = v36[3];
            v40 = v36[4];
            *(inited + 32) = v39;
            *(inited + 40) = v40;
            v41 = *(v37 + 16);

            result = swift_isUniquelyReferenced_nonNull_native();
            if (!result || (v42 = *(v37 + 24) >> 1, v42 <= v41))
            {
              result = sub_22041ECD0(result, v41 + 1, 1, v37);
              v37 = result;
              v42 = *(result + 24) >> 1;
            }

            v12 = v62;
            if (v42 <= *(v37 + 16))
            {
              goto LABEL_51;
            }

            swift_arrayInitWithCopy();

            ++*(v37 + 16);
            sub_22040213C(v12, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
            sub_22040213C(v61, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
            sub_22040213C(v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
            v24 = v67;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_22041EF44(0, v24[2] + 1, 1, v24);
              v24 = result;
            }

            v44 = v24[2];
            v43 = v24[3];
            if (v44 >= v43 >> 1)
            {
              result = sub_22041EF44((v43 > 1), v44 + 1, 1, v24);
              v25 = v26;
              v24 = result;
            }

            else
            {
              v25 = v26;
            }

            v24[2] = v44 + 1;
            v24[v44 + 4] = v37;
            v7 = v58;
            v8 = v66;
            goto LABEL_10;
          }

          v12 = v62;
          sub_22040213C(v62, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          v24 = v67;
        }
      }

      result = sub_22040213C(v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
      v25 = v26;
LABEL_10:
      v23 += v68;
      if (!--v22)
      {
        goto LABEL_26;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_26:
  v45 = v24[2];
  if (!v45)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_45:

    v56 = sub_2204216C8(v47);

    return v56;
  }

  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  while (v46 < v24[2])
  {
    v48 = v24[v46 + 4];
    v49 = *(v48 + 16);
    v50 = *(v47 + 16);
    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_47;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v51 <= *(v47 + 24) >> 1)
    {
      if (*(v48 + 16))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v50 <= v51)
      {
        v52 = v50 + v49;
      }

      else
      {
        v52 = v50;
      }

      result = sub_22041ECD0(result, v52, 1, v47);
      v47 = result;
      if (*(v48 + 16))
      {
LABEL_40:
        if ((*(v47 + 24) >> 1) - *(v47 + 16) < v49)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v49)
        {
          v53 = *(v47 + 16);
          v54 = __OFADD__(v53, v49);
          v55 = v53 + v49;
          if (v54)
          {
            goto LABEL_50;
          }

          *(v47 + 16) = v55;
        }

        goto LABEL_29;
      }
    }

    if (v49)
    {
      goto LABEL_48;
    }

LABEL_29:
    if (v45 == ++v46)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void *sub_2203FF588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22042AE70();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v49[-v13];
  v59 = *(v7 + 16);
  v60 = v7 + 16;
  v59(&v49[-v13], a1, v6);
  v15 = (*(v7 + 88))(v14, v6);
  v16 = v15;
  if (v15 == *MEMORY[0x277D6CEC0])
  {
    (*(v7 + 96))(v14, v6);
    v17 = swift_allocObject();

    v19 = sub_220401D3C(v18, a2);

    *(v17 + 16) = v19;
    *a3 = v17;
    (*(v7 + 104))(a3, v16, v6);
  }

  else if (v15 == *MEMORY[0x277D6CEB8])
  {
    (*(v7 + 96))(v14, v6);
    v52 = *v14;
    v21 = *(v52 + 16);
    v22 = *(v21 + 16);
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v50 = v16;
      v51 = a3;
      v61 = MEMORY[0x277D84F90];

      result = sub_2203CE9AC(0, v22, 0);
      v24 = 0;
      v23 = v61;
      v56 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v57 = v21;
      v55 = v21 + v56;
      v53 = (v7 + 32);
      v54 = v7 + 8;
      while (v24 < *(v21 + 16))
      {
        v25 = v22;
        v26 = *(v7 + 72);
        v27 = v58;
        v59(v58, v55 + v26 * v24, v6);
        v28 = a2;
        sub_2203FF588(v27, a2, v12);
        v29 = v7;
        (*(v7 + 8))(v27, v6);
        v61 = v23;
        v30 = v6;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_2203CE9AC((v31 > 1), v32 + 1, 1);
          v23 = v61;
        }

        ++v24;
        *(v23 + 16) = v32 + 1;
        result = (*v53)(v23 + v56 + v32 * v26, v12, v30);
        v22 = v25;
        v6 = v30;
        v7 = v29;
        a2 = v28;
        v21 = v57;
        if (v25 == v24)
        {

          a3 = v51;
          v16 = v50;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      v48 = swift_allocObject();
      *(v48 + 16) = v23;
      *a3 = v48;
      (*(v7 + 104))(a3, v16, v6);
    }
  }

  else if (v15 == *MEMORY[0x277D6CEC8])
  {
    v33 = a2;
    v34 = v15;
    v60 = v7;
    v35 = *(v7 + 96);
    v36 = v6;
    v35(v14, v6);
    v38 = *(*v14 + 16);
    v37 = *(*v14 + 24);
    v39 = swift_allocObject();
    v40 = *(v33 + 16);

    if (v40)
    {
      v41 = sub_2203FFB78(v38, v37);
      if (v42)
      {
        v43 = (*(v33 + 56) + 16 * v41);
        v51 = a3;
        v44 = *v43;
        v45 = v43[1];
        v61 = 10272;
        v62 = 0xE200000000000000;
        swift_bridgeObjectRetain_n();
        MEMORY[0x223D7BDE0](v38, v37);
        MEMORY[0x223D7BDE0](41, 0xE100000000000000);
        v46 = v61;
        v47 = v62;
        v61 = v44;
        v62 = v45;

        MEMORY[0x223D7BDE0](v46, v47);

        a3 = v51;
        swift_bridgeObjectRelease_n();

        v38 = v61;
        v37 = v62;
      }
    }

    *(v39 + 16) = v38;
    *(v39 + 24) = v37;
    *a3 = v39;
    (*(v60 + 104))(a3, v34, v36);
  }

  else
  {
    v59(a3, a1, v6);
    return (*(v7 + 8))(v14, v6);
  }

  return result;
}

void *sub_2203FFAE4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22040227C(0, &qword_280FA2560, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_2203FFB78(uint64_t a1, uint64_t a2)
{
  sub_22042BFC0();
  sub_22042BAA0();
  v4 = sub_22042BFE0();

  return sub_220400DB4(a1, a2, v4);
}

uint64_t sub_2203FFBF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_220401C6C(0, &qword_280FA0300, &qword_280FA25C8, MEMORY[0x277D83940], sub_22040227C);
  v34 = v4;
  result = sub_22042BE30();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2203FFEC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2204022D0(0, &qword_280FA02F8, MEMORY[0x277D839F8]);
  v33 = v4;
  result = sub_22042BE30();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2204001CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_220401C6C(0, a3, a4, a5, sub_2203CFDB8);
  v37 = v8;
  result = sub_22042BE30();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = (*(v9 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v9 + 56) + 40 * v24;
      if (v37)
      {
        a6(v28, v39);
      }

      else
      {
        sub_2203C37C0(v28, v39);
      }

      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a6)(v39, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v7 = v6;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

uint64_t sub_2204004B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2204022D0(0, &qword_27CF52688, MEMORY[0x277D837D0]);
  v37 = v4;
  result = sub_22042BE30();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22040077C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_22042A9A0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_220401CD8(0, &qword_280FA2598, MEMORY[0x277D69428]);
  v42 = v4;
  result = sub_22042BE30();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_220400B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2204022D0(0, &unk_280FA02E8, MEMORY[0x277D83B88]);
  v34 = v4;
  result = sub_22042BE30();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_220400DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22042BF50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_220400E6C()
{
  v1 = v0;
  sub_220401C6C(0, &qword_280FA0300, &qword_280FA25C8, MEMORY[0x277D83940], sub_22040227C);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

  return result;
}

void *sub_220401008()
{
  v1 = v0;
  sub_2204022D0(0, &qword_280FA02F8, MEMORY[0x277D839F8]);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

  return result;
}

void *sub_2204011D4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v5 = v4;
  sub_220401C6C(0, a1, a2, a3, sub_2203CFDB8);
  v6 = *v4;
  v7 = sub_22042BE20();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v5;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = 40 * v21;
        sub_2203C37C0(*(v6 + 56) + 40 * v21, v30);
        v27 = (*(v8 + 48) + v22);
        *v27 = v24;
        v27[1] = v25;
        a4(v30, *(v8 + 56) + v26);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v5 = v28;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void *sub_22040139C()
{
  v1 = v0;
  sub_2204022D0(0, &qword_27CF52688, MEMORY[0x277D837D0]);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

char *sub_220401518()
{
  v1 = v0;
  v35 = sub_22042A9A0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220401CD8(0, &qword_280FA2598, MEMORY[0x277D69428]);
  v3 = *v0;
  v4 = sub_22042BE20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2204017A8()
{
  v1 = v0;
  sub_2204022D0(0, &unk_280FA02E8, MEMORY[0x277D83B88]);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

  return result;
}

uint64_t sub_220401914(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22042BD30() + 1) & ~v5;
    do
    {
      sub_22042BFC0();

      sub_22042BAA0();
      v9 = sub_22042BFE0();

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

void *sub_220401AC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_220401C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220401C6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22042BE50();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220401CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BE50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220401D3C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v41 = sub_22042AE70();
  v3 = *(v41 - 8);
  v4 = MEMORY[0x28223BE20](v41);
  v39 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v38 = v33 - v6;
  sub_220401CD8(0, &qword_27CF52680, MEMORY[0x277D6CED0]);
  result = sub_22042BE20();
  v8 = result;
  v9 = 0;
  v42 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = v3 + 8;
  v36 = v3 + 16;
  v40 = v3;
  v33[2] = v3 + 32;
  v34 = result + 64;
  v37 = result;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v46 = 16 * v20;
      v21 = v41;
      v22 = *(v42 + 56);
      v23 = (*(v42 + 48) + 16 * v20);
      v24 = v23[1];
      v47 = *v23;
      v25 = v40;
      v45 = *(v40 + 72) * v20;
      v26 = v38;
      (*(v40 + 16))(v38, v22 + v45, v41);

      v27 = v39;
      sub_2203FF588(v26, v43, v39);
      (*(v25 + 8))(v26, v21);
      *(v34 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v8 = v37;
      v28 = v45;
      v29 = (*(v37 + 48) + v46);
      *v29 = v47;
      v29[1] = v24;
      result = (*(v25 + 32))(*(v8 + 56) + v28, v27, v21);
      v30 = *(v8 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v8 + 16) = v32;
      v15 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220402018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22040206C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204020D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220402018(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22040213C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22040219C(uint64_t a1)
{
  sub_220402018(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220402214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22040227C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2204022D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22042BE50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_FeedType.string.getter()
{
  if (*(v0 + 8) == 1)
  {
    return *&aUnknown_4[8 * *v0];
  }

  else
  {
    return 0;
  }
}

unint64_t Com_Apple_Stocks_Personalization_SessionMessageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionMessageVersion.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_2204023B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2204023CC()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_2204023F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_220402414(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_220402434(uint64_t a1, uint64_t a2)
{
  v4 = sub_220402980();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_220402480(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_2204024BC()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF52690);
  __swift_project_value_buffer(v0, qword_27CF52690);
  sub_2203E4774(0);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "SESSION_MESSAGE_VERSION_UNKNOWN";
  *(v7 + 8) = 31;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "SESSION_MESSAGE_VERSION_ONE";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionMessageVersion._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F08 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52690);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_220402718()
{
  result = qword_280FA1D08;
  if (!qword_280FA1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1D08);
  }

  return result;
}

unint64_t sub_220402770()
{
  result = qword_280FA1CF8;
  if (!qword_280FA1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1CF8);
  }

  return result;
}

unint64_t sub_2204027C8()
{
  result = qword_27CF526A8;
  if (!qword_27CF526A8)
  {
    sub_220402820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF526A8);
  }

  return result;
}

void sub_220402820()
{
  if (!qword_27CF526B0)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF526B0);
    }
  }
}

unint64_t sub_220402874()
{
  result = qword_280FA1D00;
  if (!qword_280FA1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1D00);
  }

  return result;
}

uint64_t sub_2204028C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F08 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52690);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_220402980()
{
  result = qword_280FA1D10[0];
  if (!qword_280FA1D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA1D10);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(v1 + *(v7 + 36), v6, &qword_280FA2228, v3);
  v8 = sub_22042B600();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22042B5F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_220406BCC(v6, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_Session(uint64_t a1)
{
  result = qword_280FA1620;
  if (!qword_280FA1620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Com_Apple_Stocks_Personalization_Session.hasStartedAt.getter()
{
  v1 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(v0 + *(v5 + 36), v4, &qword_280FA2228, v1);
  v6 = sub_22042B600();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_220406BCC(v4, &qword_280FA2228, v1);
  return v7;
}

uint64_t Com_Apple_Stocks_Personalization_Session.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 36);
  sub_220406BCC(v1 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
  v4 = sub_22042B600();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_Stocks_Personalization_Session.hasEndedAt.getter()
{
  v1 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(v0 + *(v5 + 40), v4, &qword_280FA2228, v1);
  v6 = sub_22042B600();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_220406BCC(v4, &qword_280FA2228, v1);
  return v7;
}

uint64_t Com_Apple_Stocks_Personalization_Session.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 40);
  sub_220406BCC(v1 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
  v4 = sub_22042B600();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_Session.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_Session.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220403034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(a1 + *(v8 + 36), v7, &qword_280FA2228, v4);
  v9 = sub_22042B600();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22042B5F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_220406BCC(v7, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_2204031CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 36);
  sub_220406BCC(a2 + v8, &qword_280FA2228, MEMORY[0x277D21570]);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t (*Com_Apple_Stocks_Personalization_Session.startedAt.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B600();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 36);
  *(v5 + 12) = v16;
  sub_220406AF0(v1 + v16, v9, &qword_280FA2228, MEMORY[0x277D21570]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B5F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_220406BCC(v9, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_220406DAC;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_Session.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 36);
  sub_220406BCC(v0 + v1, &qword_280FA2228, MEMORY[0x277D21570]);
  v2 = sub_22042B600();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_Session.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(v1 + *(v7 + 40), v6, &qword_280FA2228, v3);
  v8 = sub_22042B600();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22042B5F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_220406BCC(v6, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_220403780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(a1 + *(v8 + 40), v7, &qword_280FA2228, v4);
  v9 = sub_22042B600();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22042B5F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_220406BCC(v7, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_220403918(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 40);
  sub_220406BCC(a2 + v8, &qword_280FA2228, MEMORY[0x277D21570]);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t (*Com_Apple_Stocks_Personalization_Session.endedAt.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B600();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 40);
  *(v5 + 12) = v16;
  sub_220406AF0(v1 + v16, v9, &qword_280FA2228, MEMORY[0x277D21570]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B5F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_220406BCC(v9, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_220403CA0;
}

void sub_220403CA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_220406BCC(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_220406BCC(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_Session.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 40);
  sub_220406BCC(v0 + v1, &qword_280FA2228, MEMORY[0x277D21570]);
  v2 = sub_22042B600();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_Session.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.clientVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_Session.clientVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Com_Apple_Stocks_Personalization_Session.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Stocks_Personalization_Session.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 32);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Stocks_Personalization_Session.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session(0) + 32);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_Session.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_22042B670();
  v3 = *(v2 + 36);
  v4 = sub_22042B600();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 40);

  return v7(v5, 1, 1, v4);
}

uint64_t sub_220404224()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF526B8);
  __swift_project_value_buffer(v0, qword_27CF526B8);
  sub_220406D48(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_220430150;
  v5 = v20 + v4;
  v6 = v20 + v4 + *(v2 + 56);
  *(v20 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "ended_at";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "events";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "client_version";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "message_version";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_Session._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F10 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF526B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_Session.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22042B700();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
            sub_220406D00(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
            sub_22042B790();
            break;
          case 5:
LABEL_18:
            sub_22042B770();
            break;
          case 6:
            sub_220402980();
            sub_22042B730();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_220404754(a1, v5, a2, a3);
            break;
          case 3:
            sub_220404808(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_22042B700();
    }
  }

  return result;
}

uint64_t sub_220404754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_22042B600();
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_22042B7A0();
}

uint64_t sub_220404808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_22042B600();
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_Session.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_22042B860(), !v4))
  {
    result = sub_220404A84(v3, a1, a2, a3);
    if (!v4)
    {
      sub_220404CD0(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
        sub_220406D00(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionEvent);
        sub_22042B880();
      }

      v11 = v3[4];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_22042B860();
      }

      if (v3[5])
      {
        sub_220402980();
        sub_22042B830();
      }

      type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
      return sub_22042B660();
    }
  }

  return result;
}

uint64_t sub_220404A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_22042B600();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(a1 + *(v13 + 36), v8, &qword_280FA2228, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_220406BCC(v8, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_22042B890();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_220404CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_22042B600();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406AF0(a1 + *(v13 + 40), v8, &qword_280FA2228, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_220406BCC(v8, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_22042B890();
  return (*(v10 + 8))(v12, v9);
}

uint64_t Com_Apple_Stocks_Personalization_Session.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  sub_220406D00(&qword_27CF526D0, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_220404FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  sub_22042B670();
  v4 = *(a1 + 36);
  v5 = sub_22042B600();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 40);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_2204050A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_220405118(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2204051E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_220406D00(&qword_27CF526E0, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22040525C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F10 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF526B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_220405304(uint64_t a1)
{
  v2 = sub_220406D00(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_220405370(uint64_t a1, uint64_t a2)
{
  sub_220406D00(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_Session);

  return sub_22042B800();
}

uint64_t sub_2204053F0(uint64_t a1, uint64_t a2)
{
  v73 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v4 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_220406D48(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v59 - v8;
  sub_220406A10(0, &qword_27CF52580, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v59 - v11;
  v71 = sub_22042B600();
  v12 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], v6);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  sub_220406A10(0, &qword_27CF52588, &qword_280FA2228, v14);
  v69 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v74 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v21 = MEMORY[0x28223BE20](v74);
  v76 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
LABEL_27:
    v53 = 0;
    return v53 & 1;
  }

  if (!v26 || a1 == a2)
  {
    v53 = 1;
    return v53 & 1;
  }

  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v67 = (v12 + 48);
  v59 = (v12 + 32);
  v60 = (v12 + 8);
  v65 = (v4 + 48);
  v63 = *(v23 + 72);
  v72 = v9;
  v75 = &v59 - v24;
  v61 = v17;
  while (1)
  {
    result = sub_220406A88(v28, v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (!v26)
    {
      break;
    }

    v31 = v76;
    sub_220406A88(v29, v76, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v32 = *(v74 + 24);
    v33 = *(v69 + 48);
    v34 = MEMORY[0x277D21570];
    sub_220406AF0(&v25[v32], v20, &qword_280FA2228, MEMORY[0x277D21570]);
    sub_220406AF0(v31 + v32, &v20[v33], &qword_280FA2228, v34);
    v35 = *v67;
    v36 = v71;
    if ((*v67)(v20, 1, v71) == 1)
    {
      v37 = v35(&v20[v33], 1, v36);
      v38 = v70;
      if (v37 != 1)
      {
        goto LABEL_22;
      }

      sub_220406BCC(v20, &qword_280FA2228, MEMORY[0x277D21570]);
      v39 = v72;
      v40 = v65;
    }

    else
    {
      v41 = v61;
      sub_220406AF0(v20, v61, &qword_280FA2228, MEMORY[0x277D21570]);
      v42 = v35(&v20[v33], 1, v36);
      v38 = v70;
      if (v42 == 1)
      {
        (*v60)(v41, v36);
LABEL_22:
        v55 = &qword_27CF52588;
        v56 = &qword_280FA2228;
        v57 = MEMORY[0x277D21570];
        v58 = v20;
LABEL_25:
        sub_220406B70(v58, v55, v56, v57);
LABEL_26:
        sub_220406C3C(v76, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
        sub_220406C3C(v75, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
        goto LABEL_27;
      }

      v43 = v66;
      (*v59)(v66, &v20[v33], v36);
      sub_220406D00(&qword_27CF52590, MEMORY[0x277D21570], MEMORY[0x277D21578]);
      v62 = sub_22042BA10();
      v44 = *v60;
      (*v60)(v43, v36);
      v44(v41, v36);
      sub_220406BCC(v20, &qword_280FA2228, MEMORY[0x277D21570]);
      v39 = v72;
      v40 = v65;
      if ((v62 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v45 = *(v68 + 48);
    sub_220406AF0(v75, v38, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_220406AF0(v76, v38 + v45, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v46 = *v40;
    if ((*v40)(v38, 1, v73) == 1)
    {
      if (v46(v38 + v45, 1, v73) != 1)
      {
        goto LABEL_24;
      }

      sub_220406BCC(v38, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    }

    else
    {
      sub_220406AF0(v38, v39, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if (v46(v38 + v45, 1, v73) == 1)
      {
        sub_220406C3C(v39, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_24:
        v55 = &qword_27CF52580;
        v56 = qword_280FA21D0;
        v57 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event;
        v58 = v38;
        goto LABEL_25;
      }

      v47 = v64;
      sub_220406C9C(v38 + v45, v64);
      v48 = static Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.== infix(_:_:)();
      v49 = v47;
      v50 = v72;
      sub_220406C3C(v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      sub_220406C3C(v50, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      sub_220406BCC(v38, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if ((v48 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_22042B680();
    sub_220406D00(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v51 = v75;
    v52 = v76;
    v53 = sub_22042BA10();
    sub_220406C3C(v52, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    sub_220406C3C(v51, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v53)
    {
      v29 += v63;
      v28 += v63;
      v54 = v26-- == 1;
      v25 = v75;
      if (!v54)
      {
        continue;
      }
    }

    return v53 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_220405D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22042BF50() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_220405DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_220406A88(v13, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        sub_220406A88(v14, v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_22042BF50() & 1) == 0))
          {
LABEL_27:
            sub_220406C3C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
            sub_220406C3C(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
            goto LABEL_28;
          }
        }

        else if (v20)
        {
          goto LABEL_27;
        }

        v22 = *(v4 + 24);
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_27;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_22042BF50() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v26)
        {
          goto LABEL_27;
        }

        sub_22042B680();
        sub_220406D00(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = sub_22042BA10();
        sub_220406C3C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        sub_220406C3C(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        if (v28)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_28:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B8_SessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v48[-v12];
  sub_220406A10(0, &qword_27CF52588, &qword_280FA2228, v8);
  v15 = v14;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v48[-v19];
  v21 = *a1;
  v22 = a1[1];
  v55 = a1;
  if ((v21 != *a2 || v22 != a2[1]) && (sub_22042BF50() & 1) == 0)
  {
    goto LABEL_18;
  }

  v50 = v7;
  v51 = type metadata accessor for Com_Apple_Stocks_Personalization_Session(0);
  v23 = *(v51 + 36);
  v24 = *(v15 + 48);
  v54 = v5;
  v25 = MEMORY[0x277D21570];
  sub_220406AF0(v55 + v23, v20, &qword_280FA2228, MEMORY[0x277D21570]);
  v52 = a2;
  v26 = v25;
  v27 = v54;
  sub_220406AF0(a2 + v23, &v20[v24], &qword_280FA2228, v26);
  v28 = *(v27 + 48);
  if (v28(v20, 1, v4) == 1)
  {
    if (v28(&v20[v24], 1, v4) == 1)
    {
      sub_220406BCC(v20, &qword_280FA2228, MEMORY[0x277D21570]);
      goto LABEL_11;
    }

LABEL_9:
    v29 = MEMORY[0x277D21570];
    v30 = v20;
LABEL_17:
    sub_220406B70(v30, &qword_27CF52588, &qword_280FA2228, v29);
    goto LABEL_18;
  }

  sub_220406AF0(v20, v13, &qword_280FA2228, MEMORY[0x277D21570]);
  if (v28(&v20[v24], 1, v4) == 1)
  {
    (*(v27 + 8))(v13, v4);
    goto LABEL_9;
  }

  v31 = v50;
  (*(v27 + 32))(v50, &v20[v24], v4);
  sub_220406D00(&qword_27CF52590, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v49 = sub_22042BA10();
  v32 = *(v27 + 8);
  v32(v31, v4);
  v32(v13, v4);
  sub_220406BCC(v20, &qword_280FA2228, MEMORY[0x277D21570]);
  if ((v49 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v33 = *(v51 + 40);
  v34 = *(v15 + 48);
  v35 = MEMORY[0x277D21570];
  v36 = v55;
  sub_220406AF0(v55 + v33, v18, &qword_280FA2228, MEMORY[0x277D21570]);
  sub_220406AF0(v52 + v33, &v18[v34], &qword_280FA2228, v35);
  if (v28(v18, 1, v4) != 1)
  {
    v37 = v53;
    sub_220406AF0(v18, v53, &qword_280FA2228, MEMORY[0x277D21570]);
    if (v28(&v18[v34], 1, v4) != 1)
    {
      v40 = v54;
      v41 = &v18[v34];
      v42 = v50;
      (*(v54 + 32))(v50, v41, v4);
      sub_220406D00(&qword_27CF52590, MEMORY[0x277D21570], MEMORY[0x277D21578]);
      v43 = sub_22042BA10();
      v44 = *(v40 + 8);
      v44(v42, v4);
      v44(v37, v4);
      sub_220406BCC(v18, &qword_280FA2228, MEMORY[0x277D21570]);
      if ((v43 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    (*(v54 + 8))(v37, v4);
    goto LABEL_16;
  }

  if (v28(&v18[v34], 1, v4) != 1)
  {
LABEL_16:
    v29 = MEMORY[0x277D21570];
    v30 = v18;
    goto LABEL_17;
  }

  sub_220406BCC(v18, &qword_280FA2228, MEMORY[0x277D21570]);
LABEL_21:
  v45 = v52;
  if (sub_2204053F0(v36[2], v52[2]) & 1) != 0 && (v36[3] == v45[3] && v36[4] == v45[4] || (sub_22042BF50()))
  {
    v46 = v36[5];
    v47 = v45[5];
    if (*(v36 + 48))
    {
      v46 = v46 != 0;
    }

    if (*(v45 + 48) == 1)
    {
      if (v47)
      {
        if (v46 == 1)
        {
          goto LABEL_34;
        }
      }

      else if (!v46)
      {
LABEL_34:
        sub_22042B680();
        sub_220406D00(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v38 = sub_22042BA10();
        return v38 & 1;
      }
    }

    else if (v46 == v47)
    {
      goto LABEL_34;
    }
  }

LABEL_18:
  v38 = 0;
  return v38 & 1;
}

void sub_2204068F4(uint64_t a1)
{
  sub_220406D48(319, &unk_280FA0430, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22042B680();
    if (v2 <= 0x3F)
    {
      sub_220406D48(319, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220406A10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_220406D48(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_220406A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220406AF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220406D48(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220406B70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220406A10(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_220406BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220406D48(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220406C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220406C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220406D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220406D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.topicIds.getter()
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  swift_beginAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.publisherID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.length.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v2 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.embedding.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(v6 + v7, v5, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_220407E70(v5, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a1 = xmmword_22042D6B0;
  sub_22042B670();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_220407E00(v5, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.features.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_220407D80(v6 + v7, v5, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_220407E70(v5, a1, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  sub_22042B670();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_220407E00(v5, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.groupBackingStock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v6 + v7, v5, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_220407E70(v5, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_22042B670();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_220407E00(v5, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_220407450(uint64_t *a1)
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  swift_beginAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.publisherID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_22040B3C8(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.topicIds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_22040B3C8(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 2) = a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.features.setter(uint64_t a1)
{
  v2 = v1;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v9 = sub_22040B3C8(v9);
    *(v2 + v7) = v9;
  }

  sub_220407E70(a1, v6, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_22040BA48(v6, &v9[v11], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  return swift_endAccess();
}

uint64_t sub_2204077B0(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v9 = sub_22040B3C8(v9);
    *(v4 + v7) = v9;
  }

  v10 = &v9[*a2];
  result = swift_beginAccess();
  *v10 = v5;
  v10[8] = v6;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.groupBackingStock.setter(uint64_t a1)
{
  v2 = v1;
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v9 = sub_22040B3C8(v9);
    *(v2 + v7) = v9;
  }

  sub_220407E70(a1, v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_22040BA48(v6, &v9[v11], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return swift_endAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.embedding.setter(uint64_t a1)
{
  v2 = v1;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v9 = sub_22040B3C8(v9);
    *(v2 + v7) = v9;
  }

  sub_220407E70(a1, v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_22040BA48(v6, &v9[v11], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.length.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_22040B3C8(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  result = swift_beginAccess();
  *&v6[v7] = a1;
  return result;
}

uint64_t sub_220407C54(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_22040B3C8(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a2;
  swift_beginAccess();
  *&v8[v9] = a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22042B670();
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_280FA1A10 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_280FA1A18;
}

uint64_t sub_220407D80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22040EA84(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220407E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22040EA84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220407E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220407EF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_220407F54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_22040B3C8(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 2) = v3;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.topicIds.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);

  return sub_2204080A0;
}

void sub_2204080A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v7 = sub_22040B3C8(v7);
      *(v9 + v8) = v7;
    }

    swift_beginAccess();
    *(v7 + 2) = v3;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v5 + v4);
    if ((v10 & 1) == 0)
    {
      v12 = *(v2 + 88);
      v13 = *(v2 + 80);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v11 = sub_22040B3C8(v11);
      *(v13 + v12) = v11;
    }

    swift_beginAccess();
    *(v11 + 2) = v3;
  }

  free(v2);
}

uint64_t sub_2204081D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_22040822C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v7 = sub_22040B3C8(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 3) = v4;
  *(v7 + 4) = v3;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.publisherID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v4 + 72) = *(v6 + 24);
  *(v4 + 80) = v7;

  return sub_220408380;
}

void sub_220408380(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v8 = sub_22040B3C8(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 3) = v3;
    *(v8 + 4) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v12 = sub_22040B3C8(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 3) = v3;
    *(v12 + 4) = v5;
  }

  free(v2);
}

uint64_t sub_2204084B0(uint64_t a1, uint64_t a2)
{
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040E580(a1, v10, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v13 = sub_22040B3C8(v13);
    *(a2 + v11) = v13;
  }

  sub_220407E70(v10, v6, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_22040BA48(v6, &v13[v14], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  return swift_endAccess();
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.features.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_220407D80(v17 + v18, v9, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *(v15 + 8) = 0;
    *v15 = 0;
    sub_22042B670();
    if (v19(v9, 1, v10) != 1)
    {
      sub_220407E00(v9, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    }
  }

  else
  {
    sub_220407E70(v9, v15, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  return sub_220408964;
}

void sub_220408964(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22040E580(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v6 = sub_22040B3C8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_220407E70(v10, v14, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
    swift_beginAccess();
    sub_22040BA48(v14, &v6[v15], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    swift_endAccess();
    sub_22040E5E8(v9, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v18 = sub_22040B3C8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_220407E70(v9, v14, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
    swift_beginAccess();
    sub_22040BA48(v14, &v18[v23], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_220408C44(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_22040B3C8(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  result = swift_beginAccess();
  *&v6[v7] = v3;
  return result;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.length.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_220408D88;
}

void sub_220408D88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v7 = sub_22040B3C8(v7);
    *(v9 + v8) = v7;
  }

  v10 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  *&v7[v10] = v3;

  free(v2);
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.group.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_220408F14;
}

uint64_t sub_220408F2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_220408F9C@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_220409010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v11 = sub_22040B3C8(v11);
    *(a2 + v9) = v11;
  }

  v12 = &v11[*a5];
  result = swift_beginAccess();
  *v12 = v7;
  v12[8] = v8;
  return result;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.feed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_220409174;
}

void sub_220409180(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 88);
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_22040B3C8(v10);
    *(v12 + v11) = v10;
  }

  v13 = &v10[*a3];
  swift_beginAccess();
  *v13 = v5;
  v13[8] = v8;

  free(v4);
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.viewAction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_220409320;
}

uint64_t sub_22040932C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v8 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(v7 + v8, v6, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_220407E70(v6, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_22042D6B0;
  sub_22042B670();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_220407E00(v6, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t sub_2204094E8(uint64_t a1, uint64_t a2)
{
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040E580(a1, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v13 = sub_22040B3C8(v13);
    *(a2 + v11) = v13;
  }

  sub_220407E70(v10, v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_22040BA48(v6, &v13[v14], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.embedding.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(v17 + v18, v9, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = xmmword_22042D6B0;
    sub_22042B670();
    if (v19(v9, 1, v10) != 1)
    {
      sub_220407E00(v9, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_220407E70(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_2204099A0;
}

void sub_2204099A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22040E580(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v6 = sub_22040B3C8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_220407E70(v10, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
    swift_beginAccess();
    sub_22040BA48(v14, &v6[v15], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    sub_22040E5E8(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v18 = sub_22040B3C8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_220407E70(v9, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
    swift_beginAccess();
    sub_22040BA48(v14, &v18[v23], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.adCategories.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_220409CF4;
}

uint64_t sub_220409D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v8 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v7 + v8, v6, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_220407E70(v6, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_22042B670();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_220407E00(v6, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_220409EC4(uint64_t a1, uint64_t a2)
{
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040E580(a1, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v13 = sub_22040B3C8(v13);
    *(a2 + v11) = v13;
  }

  sub_220407E70(v10, v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_22040BA48(v6, &v13[v14], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return swift_endAccess();
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.groupBackingStock.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v17 + v18, v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v20 = (v15 + *(v10 + 20));
    *v20 = 0;
    v20[1] = 0;
    v21 = (v15 + *(v10 + 24));
    *v21 = 0;
    v21[1] = 0;
    if (v19(v9, 1, v10) != 1)
    {
      sub_220407E00(v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    sub_220407E70(v9, v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return sub_22040A384;
}

void sub_22040A384(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22040E580(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v6 = sub_22040B3C8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_220407E70(v10, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
    swift_beginAccess();
    sub_22040BA48(v14, &v6[v15], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    swift_endAccess();
    sub_22040E5E8(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v18 = sub_22040B3C8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_220407E70(v9, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
    swift_beginAccess();
    sub_22040BA48(v14, &v18[v23], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL sub_22040A628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t (*a4)(void))
{
  sub_22040EA84(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_220407D80(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_220407E00(v11, a1, a2);
  return v15;
}

uint64_t sub_22040A79C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  sub_22040EA84(0, a1, a2, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v15 = sub_22040B3C8(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_22040BA48(v12, &v15[v17], a1, a2);
  return swift_endAccess();
}

uint64_t sub_22040A908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_22040A974(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_22040B3C8(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  swift_beginAccess();
  *&v10[v11] = v7;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.stocks.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22040AAD8;
}

void sub_22040AAE4(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 88);
      v11 = *(v4 + 80);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v9 = sub_22040B3C8(v9);
      *(v11 + v10) = v9;
    }

    v12 = *a3;
    swift_beginAccess();
    *&v9[v12] = v5;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v7 + v6);
    if ((v13 & 1) == 0)
    {
      v15 = *(v4 + 88);
      v16 = *(v4 + 80);
      type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v14 = sub_22040B3C8(v14);
      *(v16 + v15) = v14;
    }

    v17 = *a3;
    swift_beginAccess();
    *&v14[v17] = v5;
  }

  free(v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22040AD34()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA17B0);
  __swift_project_value_buffer(v0, qword_280FA17B0);
  sub_22040EA84(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_220430320;
  v5 = v29 + v4;
  v6 = v29 + v4 + *(v2 + 56);
  *(v29 + v4) = 1;
  *v6 = "topic_ids";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "publisher_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "features";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "length";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "group";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "feed";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "view_action";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "embedding";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "ad_categories";
  *(v23 + 8) = 13;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "group_backing_stock";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "stocks";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA17B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_22040B210()
{
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
  swift_allocObject();
  result = sub_22040B250();
  qword_280FA1A18 = result;
  return result;
}

char *sub_22040B250()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 2) = MEMORY[0x277D84F90];
  *(v0 + 3) = 0;
  *(v0 + 4) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length] = 0;
  v4 = &v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  *&v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories] = v1;
  v9 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v10 - 8) + 56))(&v0[v9], 1, 1, v10);
  *&v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks] = v1;
  return v0;
}

char *sub_22040B3C8(void *a1)
{
  v62 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock;
  v3 = MEMORY[0x277D83D88];
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
  v61 = &v51 - v5;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, v3);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v51 - v7;
  v54 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v51 - v9;
  v10 = MEMORY[0x277D84F90];
  *(v1 + 2) = MEMORY[0x277D84F90];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v51 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v53 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  *&v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length] = 0;
  v13 = &v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction];
  *v15 = 0;
  v15[8] = 1;
  v16 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  v55 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v56 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  *&v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories] = v10;
  v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v57 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  (*(*(v19 - 8) + 56))(&v1[v18], 1, 1, v19);
  v58 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  *&v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks] = v10;
  swift_beginAccess();
  v20 = a1[2];
  swift_beginAccess();
  *(v1 + 2) = v20;
  swift_beginAccess();
  v21 = a1[3];
  v22 = a1[4];
  swift_beginAccess();
  *(v1 + 3) = v21;
  *(v1 + 4) = v22;
  v23 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;

  swift_beginAccess();
  v24 = a1 + v23;
  v25 = v52;
  v26 = v54;
  sub_220407D80(v24, v52, qword_280FA1D70, v54);
  v27 = v51;
  swift_beginAccess();
  sub_22040BA48(v25, &v1[v27], qword_280FA1D70, v26);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  LODWORD(v28) = *(a1 + v28);
  v29 = v53;
  swift_beginAccess();
  *&v1[v29] = v28;
  v30 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = v30[8];
  swift_beginAccess();
  *v13 = v31;
  v13[8] = v30;
  v32 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = v32[8];
  swift_beginAccess();
  *v14 = v33;
  v14[8] = v32;
  v34 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = v34[8];
  swift_beginAccess();
  *v15 = v35;
  v15[8] = v34;
  v36 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v38 = v59;
  v37 = v60;
  sub_220407D80(a1 + v36, v59, qword_280FA05D0, v60);
  v39 = v55;
  swift_beginAccess();
  sub_22040BA48(v38, &v1[v39], qword_280FA05D0, v37);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = v56;
  swift_beginAccess();
  *&v1[v42] = v41;

  v43 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  v45 = v61;
  v44 = v62;
  sub_220407D80(a1 + v43, v61, qword_280FA2010, v62);
  v46 = v57;
  swift_beginAccess();
  sub_22040BA48(v45, &v1[v46], qword_280FA2010, v44);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  v48 = *(a1 + v47);

  v49 = v58;
  swift_beginAccess();
  *&v1[v49] = v48;

  return v1;
}

uint64_t sub_22040BA48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22040EA84(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22040BAC8()
{

  sub_220407E00(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_220407E00(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  sub_220407E00(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_22040B3C8(v11);
    *(v4 + v8) = v10;
  }

  return sub_22040BC78(v10, a1, a2, a3);
}

uint64_t sub_22040BC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22042B700();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_22040BEFC(a2, a1, a3, a4);
          }

          else if (result == 2)
          {
            sub_22040BF80(a2, a1, a3, a4);
          }
        }

        else if (result == 3)
        {
          sub_22040C004(a2, a1, a3, a4);
        }

        else
        {
          if (result != 4)
          {
            v11 = sub_2203FD48C;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
            v17 = &type metadata for Com_Apple_Stocks_Personalization_GroupType;
            goto LABEL_5;
          }

          sub_22040C0E0(a2, a1, a3, a4);
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            sub_22040C2F0(a2, a1, a3, a4);
            break;
          case 10:
            sub_22040C37C(a2, a1, a3, a4);
            break;
          case 11:
            sub_22040C458(a2, a1, a3, a4);
            break;
        }
      }

      else
      {
        if (result == 6)
        {
          v11 = sub_2203F9E10;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
          v17 = &type metadata for Com_Apple_Stocks_Personalization_FeedType;
          goto LABEL_5;
        }

        if (result == 7)
        {
          v11 = sub_22040EA30;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
          v17 = &type metadata for Com_Apple_Stocks_Personalization_ViewActionType;
LABEL_5:
          sub_22040C16C(v12, v13, v14, v15, v16, v11, v17);
          goto LABEL_6;
        }

        sub_22040C214(a2, a1, a3, a4);
      }

LABEL_6:
      result = sub_22042B700();
    }
  }

  return result;
}

uint64_t sub_22040BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22042B750();
  return swift_endAccess();
}

uint64_t sub_22040BF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22042B770();
  return swift_endAccess();
}

uint64_t sub_22040C004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  sub_22040E690(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22042B7A0();
  return swift_endAccess();
}

uint64_t sub_22040C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22042B780();
  return swift_endAccess();
}

uint64_t sub_22040C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  sub_22042B730();
  return swift_endAccess();
}

uint64_t sub_22040C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_22040E690(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22042B7A0();
  return swift_endAccess();
}

uint64_t sub_22040C2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22042B750();
  return swift_endAccess();
}

uint64_t sub_22040C37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B7A0();
  return swift_endAccess();
}

uint64_t sub_22040C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B790();
  return swift_endAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  result = sub_22040C5A0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_22040C5A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1[2] + 16))
  {

    sub_22042B850();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v10 = a1[4];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (, sub_22042B860(), result = , !v4))
  {
    result = sub_22040C95C(a1, a2, a3, a4);
    if (!v4)
    {
      v12 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
      swift_beginAccess();
      if (*(a1 + v12))
      {
        sub_22042B870();
      }

      v13 = (a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group);
      swift_beginAccess();
      if (*v13)
      {
        sub_2203FD48C();
        sub_22042B830();
      }

      v14 = (a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed);
      swift_beginAccess();
      if (*v14)
      {
        sub_2203F9E10();
        sub_22042B830();
      }

      v15 = (a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction);
      swift_beginAccess();
      if (*v15)
      {
        sub_22040EA30();
        sub_22042B830();
      }

      sub_22040CBB4(a1, a2, a3, a4);
      v16 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
      swift_beginAccess();
      if (*(*(a1 + v16) + 16))
      {

        sub_22042B850();
      }

      sub_22040CE0C(a1, a2, a3, a4);
      v17 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
      result = swift_beginAccess();
      if (*(*(a1 + v17) + 16))
      {
        type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
        sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);

        sub_22042B880();
      }
    }
  }

  return result;
}

uint64_t sub_22040C95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_220407D80(a1 + v12, v7, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_220407E00(v7, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  sub_220407E70(v7, v11, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22040E690(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22042B890();
  return sub_22040E5E8(v11, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
}

uint64_t sub_22040CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(a1 + v12, v7, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_220407E00(v7, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_220407E70(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22040E690(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22042B890();
  return sub_22040E5E8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_22040CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(a1 + v12, v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_220407E00(v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_220407E70(v7, v11, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, &protocol conformance descriptor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_22040E5E8(v11, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
}

uint64_t sub_22040D064(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock(0);
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040EAE8(0, &qword_27CF52418, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v96 - v7;
  v9 = MEMORY[0x277D83D88];
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v100 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v96 - v13;
  v109 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v104 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040EAE8(0, &qword_27CF52700, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v106 = v15;
  MEMORY[0x28223BE20](v15);
  v108 = &v96 - v16;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, v9);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v105 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v96 - v20;
  v21 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures(0);
  v114 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v113 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040EAE8(0, &qword_27CF52708, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v24 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = &v96 - v25;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, v9);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v96 - v31;
  swift_beginAccess();
  v33 = a1[2];
  swift_beginAccess();
  if ((sub_220405D20(v33, a2[2]) & 1) == 0)
  {
    goto LABEL_65;
  }

  v96 = v8;
  swift_beginAccess();
  v35 = a1[3];
  v34 = a1[4];
  v111 = a1;
  swift_beginAccess();
  if ((v35 != a2[3] || v34 != a2[4]) && (sub_22042BF50() & 1) == 0)
  {
    goto LABEL_65;
  }

  v97 = v30;
  v98 = a2;
  v36 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v37 = v111;
  swift_beginAccess();
  sub_220407D80(v37 + v36, v32, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v38 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v39 = v98;
  swift_beginAccess();
  v40 = *(v24 + 48);
  sub_220407D80(v32, v26, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_220407D80(v39 + v38, &v26[v40], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v41 = *(v114 + 48);
  if (v41(v26, 1, v21) == 1)
  {

    sub_220407E00(v32, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    v42 = v37;
    if (v41(&v26[v40], 1, v21) == 1)
    {
      sub_220407E00(v26, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
      goto LABEL_13;
    }

LABEL_10:
    v44 = &qword_27CF52708;
    v45 = qword_280FA1D70;
    v46 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures;
    v47 = v26;
LABEL_11:
    sub_22040EB60(v47, v44, v45, v46);
    goto LABEL_64;
  }

  v43 = v97;
  sub_220407D80(v26, v97, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  if (v41(&v26[v40], 1, v21) == 1)
  {

    sub_220407E00(v32, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    sub_22040E5E8(v43, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    goto LABEL_10;
  }

  v48 = v113;
  sub_220407E70(&v26[v40], v113, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v42 = v111;

  v49 = _s21StocksPersonalization010Com_Apple_a1_B16_ArticleFeaturesV2eeoiySbAC_ACtFZ_0(v43, v48);
  sub_22040E5E8(v48, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_220407E00(v32, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22040E5E8(v43, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v39 = v98;
  sub_220407E00(v26, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  if ((v49 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_13:
  v50 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  LODWORD(v50) = *(v42 + v50);
  v51 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  if (v50 != *(v39 + v51))
  {
    goto LABEL_64;
  }

  v52 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v53 = *(v42 + v52);
  v54 = v39 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v55 = *v54;
  if (v54[8] == 1)
  {
    v56 = v112;
    if (v55 <= 2)
    {
      if (v55)
      {
        if (v55 == 1)
        {
          if (v53 != 1)
          {
            goto LABEL_64;
          }
        }

        else if (v53 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v53)
      {
        goto LABEL_64;
      }
    }

    else if (v55 > 4)
    {
      if (v55 == 5)
      {
        if (v53 != 5)
        {
          goto LABEL_64;
        }
      }

      else if (v53 != 6)
      {
        goto LABEL_64;
      }
    }

    else if (v55 == 3)
    {
      if (v53 != 3)
      {
        goto LABEL_64;
      }
    }

    else if (v53 != 4)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v56 = v112;
    if (v53 != v55)
    {
      goto LABEL_64;
    }
  }

  v57 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v58 = *(v42 + v57);
  v59 = v39 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v60 = *v59;
  if (v59[8] == 1)
  {
    if (v60 > 1)
    {
      if (v60 == 2)
      {
        if (v58 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v58 != 3)
      {
        goto LABEL_64;
      }
    }

    else if (v60)
    {
      if (v58 != 1)
      {
        goto LABEL_64;
      }
    }

    else if (v58)
    {
      goto LABEL_64;
    }
  }

  else if (v58 != v60)
  {
    goto LABEL_64;
  }

  v61 = v42 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
  swift_beginAccess();
  v62 = *v61;
  v63 = v61[8];
  v64 = (v39 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction);
  swift_beginAccess();
  if (!sub_2203EABD4(v62, v63, *v64))
  {
    goto LABEL_64;
  }

  v65 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v66 = v110;
  sub_220407D80(v42 + v65, v110, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v67 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v68 = *(v106 + 48);
  v69 = v108;
  sub_220407D80(v66, v108, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v70 = v69;
  sub_220407D80(v39 + v67, v69 + v68, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v71 = *(v107 + 48);
  v72 = v69;
  v73 = v109;
  if (v71(v72, 1, v109) == 1)
  {
    sub_220407E00(v66, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v71(v70 + v68, 1, v73) == 1)
    {
      sub_220407E00(v70, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_31;
    }

    goto LABEL_59;
  }

  v83 = v105;
  sub_220407D80(v70, v105, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v71(v70 + v68, 1, v73) == 1)
  {
    sub_220407E00(v110, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_22040E5E8(v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_59:
    v44 = &qword_27CF52700;
    v45 = qword_280FA05D0;
    v46 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v47 = v70;
    goto LABEL_11;
  }

  v84 = v104;
  sub_220407E70(v70 + v68, v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (!sub_2203FC480(*v83, *(v83 + 8), *v84, *(v84 + 8)))
  {
    sub_220407E00(v110, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_22040E5E8(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_22040E5E8(v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_220407E00(v70, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_64;
  }

  sub_22042B680();
  sub_22040E690(&qword_27CF52420, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v85 = sub_22042BA10();
  sub_220407E00(v110, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22040E5E8(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v39 = v98;
  sub_22040E5E8(v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_220407E00(v70, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v85 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_31:
  v74 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  v75 = *(v42 + v74);
  v76 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  if ((sub_220405D20(v75, *(v39 + v76)) & 1) == 0)
  {
    goto LABEL_64;
  }

  v77 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v42 + v77, v56, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v78 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  v79 = *(v101 + 48);
  v80 = v96;
  sub_220407D80(v56, v96, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_220407D80(v39 + v78, v80 + v79, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v81 = v103;
  v82 = *(v102 + 48);
  if (v82(v80, 1, v103) == 1)
  {
    sub_220407E00(v56, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    if (v82(v80 + v79, 1, v81) == 1)
    {
      sub_220407E00(v80, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_71:
      v92 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
      swift_beginAccess();
      v93 = *(v42 + v92);
      v94 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
      swift_beginAccess();
      v95 = *(v39 + v94);

      v86 = sub_220405DB0(v93, v95);

      return v86 & 1;
    }

    goto LABEL_69;
  }

  v88 = v100;
  sub_220407D80(v80, v100, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v82(v80 + v79, 1, v81) == 1)
  {
    sub_220407E00(v56, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    sub_22040E5E8(v88, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_69:
    v44 = &qword_27CF52418;
    v45 = qword_280FA2010;
    v46 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock;
    v47 = v80;
    goto LABEL_11;
  }

  v89 = v80 + v79;
  v90 = v99;
  sub_220407E70(v89, v99, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v91 = _s21StocksPersonalization010Com_Apple_a1_B13_SessionStockV2eeoiySbAC_ACtFZ_0(v88, v90);
  sub_22040E5E8(v90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_220407E00(v56, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22040E5E8(v88, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v39 = v98;
  sub_220407E00(v80, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v91)
  {
    goto LABEL_71;
  }

LABEL_64:

LABEL_65:
  v86 = 0;
  return v86 & 1;
}