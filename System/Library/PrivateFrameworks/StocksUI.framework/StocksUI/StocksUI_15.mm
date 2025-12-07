uint64_t sub_2206033FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_220603D2C(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  sub_220603D2C(0, qword_281292F18, type metadata accessor for StockFeedConfig);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  sub_220603EB0(0);
  v13 = v12;
  v18 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220603F0C();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for StockFeedConfig(0);
    v21 = 0;
    sub_220603F60(&qword_281292F60, type metadata accessor for StockFeedConfig, &unk_2208ABF54);
    sub_22089271C();
    type metadata accessor for StockFeedKnobsConfig(0);
    v20 = 1;
    sub_220603F60(&qword_28128E898, type metadata accessor for StockFeedKnobsConfig, &unk_2208AFE88);
    sub_22089271C();
    sub_220602A44(v11, v7, v19);
    (*(v18 + 8))(v16, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2206036C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F4373626F6E6BLL;
  }

  else
  {
    v3 = 0x666E6F4364656566;
  }

  if (v2)
  {
    v4 = 0xEA00000000006769;
  }

  else
  {
    v4 = 0xEB00000000676966;
  }

  if (*a2)
  {
    v5 = 0x6E6F4373626F6E6BLL;
  }

  else
  {
    v5 = 0x666E6F4364656566;
  }

  if (*a2)
  {
    v6 = 0xEB00000000676966;
  }

  else
  {
    v6 = 0xEA00000000006769;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_220603778()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_220603808(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_220603884()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_220603910(char *a2@<X8>)
{
  v3 = sub_22089270C();

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

void sub_220603970(uint64_t *a1@<X8>)
{
  v2 = 0x666E6F4364656566;
  if (*v1)
  {
    v2 = 0x6E6F4373626F6E6BLL;
  }

  v3 = 0xEA00000000006769;
  if (*v1)
  {
    v3 = 0xEB00000000676966;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2206039BC()
{
  if (*v0)
  {
    return 0x6E6F4373626F6E6BLL;
  }

  else
  {
    return 0x666E6F4364656566;
  }
}

void sub_220603A04(char *a3@<X8>)
{
  v4 = sub_22089270C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_220603A68(uint64_t a1)
{
  v2 = sub_220603F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220603AA4(uint64_t a1)
{
  v2 = sub_220603F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220603B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_220603D2C(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  sub_220603D2C(0, qword_281292F18, type metadata accessor for StockFeedConfig);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - v13;
  sub_220603FA8(a1, &v18 - v13, type metadata accessor for StockFeedConfig);
  v15 = type metadata accessor for StockFeedConfig(0);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_220603FA8(v3 + *(a2 + 20), v10, type metadata accessor for StockFeedKnobsConfig);
  v16 = type metadata accessor for StockFeedKnobsConfig(0);
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  return sub_220602A44(v14, v10, a3);
}

void sub_220603D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220603D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220603DE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220603D2C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220603E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220603D2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220603EB0(uint64_t a1)
{
  if (!qword_28127E238)
  {
    sub_220603F0C();
    v1 = sub_2208927BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E238);
    }
  }
}

unint64_t sub_220603F0C()
{
  result = qword_28128C660;
  if (!qword_28128C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C660);
  }

  return result;
}

uint64_t sub_220603F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220603FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_220604024()
{
  result = qword_27CF57958;
  if (!qword_27CF57958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57958);
  }

  return result;
}

unint64_t sub_22060407C()
{
  result = qword_28128C650;
  if (!qword_28128C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C650);
  }

  return result;
}

unint64_t sub_2206040D4()
{
  result = qword_28128C658;
  if (!qword_28128C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C658);
  }

  return result;
}

void sub_220604128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v29[1] = a2;
  v30 = sub_2208893DC();
  v29[0] = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206044C8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220886E8C();
  v19 = MEMORY[0x28223BE20](v17, v18);
  (*(v21 + 16))(v29 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_220886E6C();
    v23 = sub_2208871CC();
    v25 = v24;

    if (!v5)
    {
      sub_22060455C(&qword_281298500, MEMORY[0x277D68478], MEMORY[0x277D68480]);
      v26 = v30;
      sub_22088827C();
      sub_220457EE8(v23, v25);
      (*(v29[0] + 32))(a5, v10, v26);
      v27 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(a5, 0, 1, v27);
    }
  }

  else
  {
    v28 = type metadata accessor for EngagementEvent(0);
    (*(*(v28 - 8) + 56))(a5, 1, 1, v28);
  }
}

void sub_2206044C8(uint64_t a1)
{
  if (!qword_281298C38)
  {
    sub_2208893EC();
    sub_22060455C(&qword_2812984F8, MEMORY[0x277D68488], MEMORY[0x277D68470]);
    v1 = sub_220886E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298C38);
    }
  }
}

uint64_t sub_22060455C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2206045A4(void (*a1)(void), uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_22088CB0C();
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    if (sub_22088CAEC())
    {
      sub_2204A80F0(a1, a2);
      sub_22088CACC();
    }

    else
    {
      if (a1)
      {
        a1();
      }

      return 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206046EC()
{
  v0 = MEMORY[0x277D84560];
  sub_22060540C(0, &qword_28127E140, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v1 = sub_220888A2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220899920;
  v6 = (v5 + v4);
  *v6 = 0x676E6979616C70;
  v6[1] = 0xE700000000000000;
  v7 = *(v2 + 104);
  (v7)(v6, *MEMORY[0x277D6CC80], v1);
  v8 = (v6 + v3);
  *v8 = 0x64656B636F64;
  v8[1] = 0xE600000000000000;
  v7();
  sub_22060540C(0, &qword_28127DED0, sub_220605374, v0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x49656C6369747261;
  *(inited + 40) = 0xE900000000000044;
  sub_22060540C(0, &qword_28127E138, MEMORY[0x277D6CCB8], v0);
  v10 = sub_220888A8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220899920;
  v15 = (v14 + v13);
  *v15 = 65;
  v15[1] = 0xE100000000000000;
  v16 = *(v11 + 104);
  result = v16(v15, *MEMORY[0x277D6CCA8], v10);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v15 + v12) = *MEMORY[0x277D30A00];
    v16((v15 + v12), *MEMORY[0x277D6CCB0], v10);
    *(inited + 48) = v14;
    sub_2205CEF04(inited);
    swift_setDeallocating();
    sub_220605470(inited + 32);
    v18 = sub_220888A5C();

    return v18;
  }

  return result;
}

BOOL sub_220604A28(uint64_t a1)
{
  v1 = sub_220884E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = aBlock - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = aBlock - v12;
  v14 = sub_22088880C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060540C(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_22088899C();
  sub_2208887AC();
  (*(v15 + 8))(v18, v14);
  v19 = sub_220884E1C();
  v20 = *(v2 + 8);
  v20(v13, v1);
  sub_220604E58();
  v21 = objc_opt_self();
  sub_2205AF924(v19);

  v22 = sub_2208916DC();

  sub_220884AAC();
  v23 = sub_2208916DC();

  v24 = [v21 fc:v22 NewsURLWithPathComponents:v23 queryItems:0 internal:?];

  if (v24)
  {
    sub_220884E4C();

    (*(v2 + 32))(v9, v5, v1);
    v25 = [objc_opt_self() sharedApplication];
    v26 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_22060520C(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
    v27 = sub_22089125C();

    aBlock[4] = sub_220605170;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2206B2490;
    aBlock[3] = &block_descriptor_15;
    v28 = _Block_copy(aBlock);
    [v25 openURL:v26 options:v27 completionHandler:v28];
    _Block_release(v28);

    v20(v9, v1);
  }

  return v24 != 0;
}

uint64_t sub_220604E58()
{
  v0 = sub_220884E9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088880C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060540C(0, &qword_281299510, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  sub_22060540C(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_22088899C();
  sub_2208887AC();
  (*(v6 + 8))(v9, v5);
  sub_220884ACC();
  (*(v1 + 8))(v4, v0);
  sub_220605254(v17, v13);
  v18 = sub_220884B5C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_2206052E8(v13);
LABEL_5:
    sub_2206052E8(v17);

    return MEMORY[0x277D84F90];
  }

  v20 = sub_220884ABC();
  (*(v19 + 8))(v13, v18);
  if (!v20)
  {
    goto LABEL_5;
  }

  sub_2206052E8(v17);
  return v20;
}

void sub_220605170()
{
  sub_22048D2F4();
  v1 = sub_2208922FC();
  v0 = sub_220891AFC();
  sub_22088A7EC("AudioNewsProxyNowPlayingURLHandler successfully opened News to play audio", 73, 2, &dword_22043F000, v1, v0, MEMORY[0x277D84F90]);
}

uint64_t sub_22060520C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220605254(uint64_t a1, uint64_t a2)
{
  sub_22060540C(0, &qword_281299510, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206052E8(uint64_t a1)
{
  sub_22060540C(0, &qword_281299510, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220605374(uint64_t a1)
{
  if (!qword_28127EB90)
  {
    sub_22060540C(255, &qword_28127EAC8, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EB90);
    }
  }
}

void sub_22060540C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220605470(uint64_t a1)
{
  sub_220605374(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206054DC(uint64_t a1, void (*a2)(char *))
{
  sub_220605630(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x277D6DF80], v4, v7);
  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_2206055DC()
{
  result = qword_281299668;
  if (!qword_281299668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299668);
  }

  return result;
}

void sub_220605630(uint64_t a1)
{
  if (!qword_281297838)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_2205BF404(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_2205BF404(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v1 = sub_22088C68C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297838);
    }
  }
}

uint64_t sub_220605740()
{
  v1 = v0;
  sub_220605A2C(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22088FEFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22088A05C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, v1, v6, v14);
  v17 = (*(v7 + 88))(v10, v6);
  if (v17 == *MEMORY[0x277D32D70])
  {
    v18 = MEMORY[0x277D68F58];
LABEL_9:
    (*(v12 + 104))(v16, *v18, v11);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D32D80] || v17 == *MEMORY[0x277D32D68])
  {
    v18 = MEMORY[0x277D68F40];
    goto LABEL_9;
  }

  v26 = *MEMORY[0x277D32D78];
  v22 = *MEMORY[0x277D32D60];
  v23 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x277D68F58], v11);
  if (v23 != v26 && v23 != v22)
  {
    (*(v7 + 8))(v10, v6);
  }

LABEL_10:
  v20 = sub_22088A15C();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  return sub_22088A03C();
}

void sub_220605A2C(uint64_t a1)
{
  if (!qword_281298270)
  {
    sub_22088A15C();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298270);
    }
  }
}

uint64_t sub_220605AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

double sub_220605C2C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_22088830C();

  return result;
}

void sub_220605D50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22089132C();
  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v20, &aBlock);
    type metadata accessor for ForYouFeedViewController();
    swift_dynamicCast();
    v8 = v19;
    sub_22088C71C();
    v9 = sub_22088BFCC();

    [v9 contentSize];
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v17 = sub_220605F24;
    v18 = v12;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v15 = sub_2204C35E8;
    v16 = &block_descriptor_16;
    v13 = _Block_copy(&aBlock);

    [v9 su:v13 performScrollTestWithLength:v11 completion:?];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

id sub_220605F2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_2204C5FB4();
  v10 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v11 = MEMORY[0x277D740C0];
  *(inited + 40) = v9;
  v12 = *v11;
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v13 = v4[5];
  v14 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v13);
  v15 = *(v14 + 16);
  if (a3)
  {
    v16 = *(v15 + 120);
  }

  else
  {
    v16 = *(v15 + 264);
  }

  v17 = v12;
  v18 = v16(v13, v15);
  v19 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D741E0];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFC999999999999ALL;
  v21 = v20;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v24 = sub_22089125C();

  v25 = [v22 initWithString:v23 attributes:v24];

  return v25;
}

id sub_22060617C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v10 = v9;
  v11 = sub_2204C3D84();
  v12 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  if (a4)
  {
    v14 = v5[5];
    v15 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v14);
    v16 = *(v15 + 16);
    v17 = *(v16 + 40);
    v18 = v13;
    v19 = v17(v14, v16);
  }

  else
  {
    v20 = *&a3;
    v21 = v5[5];
    v22 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v21);
    if (v20 >= 0.0)
    {
      v23 = *(v22 + 24);
    }

    else
    {
      v23 = *(v22 + 32);
    }

    v24 = v13;
    v19 = v23(v21, v22);
  }

  v25 = v19;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v25;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v28 = sub_22089125C();

  v29 = [v26 initWithString:v27 attributes:v28];

  return v29;
}

id sub_2206063EC(char a1)
{
  sub_22048BC00();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22089B120;
  if (a1)
  {
    *(v3 + 32) = [objc_opt_self() whiteColor];
    v4 = v1[5];
    v5 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
    *(v3 + 40) = (*(*(v5 + 16) + 128))(v4);
    sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    v6 = sub_2208916DC();

    v7 = objc_opt_self();
    v8 = [v7 configurationWithPaletteColors_];

    if (qword_27CF558B8 != -1)
    {
      swift_once();
    }

    v9 = [qword_27CF6CEE0 imageWithConfiguration_];
    v10 = [v7 configurationWithTextStyle_];
    v11 = [v9 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v12 = v1[5];
    v13 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
    *(v3 + 32) = (*(*(v13 + 16) + 128))(v12);
    *(v3 + 40) = [objc_opt_self() secondarySystemFillColor];
    sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    v14 = sub_2208916DC();

    v15 = objc_opt_self();
    v8 = [v15 configurationWithPaletteColors_];

    if (qword_27CF558C0 != -1)
    {
      swift_once();
    }

    v9 = [qword_27CF6CEE8 imageWithConfiguration_];
    v10 = [v15 configurationWithTextStyle_];
    v11 = [v9 imageByApplyingSymbolConfiguration_];
  }

  v16 = v11;

  if (!v16)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return v16;
}

uint64_t sub_220606718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

id sub_220606880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = v5;
  v7 = sub_2204C5DB4();
  v8 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v9 = MEMORY[0x277D740C0];
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 272);
  v15 = v10;
  v16 = v14(v11, v13);
  v17 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D741E0];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFC999999999999ALL;
  v19 = v18;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v21 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v22 = sub_22089125C();

  v23 = [v20 initWithString:v21 attributes:v22];

  return v23;
}

id sub_220606AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = v5;
  v7 = sub_2204C528C();
  v8 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v9 = MEMORY[0x277D740C0];
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 40);
  v15 = v10;
  v16 = v14(v11, v13);
  v17 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D741E0];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFDB851EB851EB85;
  v19 = v18;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v21 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v22 = sub_22089125C();

  v23 = [v20 initWithString:v21 attributes:v22];

  return v23;
}

id sub_220606CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = v5;
  v7 = sub_2204C3D84();
  v8 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v9 = MEMORY[0x277D740C0];
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 40);
  v15 = v10;
  v16 = v14(v11, v13);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v19 = sub_22089125C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

void *sub_220606EC4()
{
  v1 = v0;
  sub_22060A908(0, &qword_2812984D0, MEMORY[0x277D685B0]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v154 = &v137 - v4;
  v156 = sub_2208894CC();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v5);
  v147 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &unk_281298520, MEMORY[0x277D683E0]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v161 = &v137 - v9;
  v10 = sub_22088931C();
  v162 = *(v10 - 8);
  v163 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v152 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &unk_2812984A0, MEMORY[0x277D686A0]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v159 = &v137 - v15;
  v160 = sub_2208895EC();
  v164 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v16);
  v146 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22088A0EC();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v18);
  v143 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &qword_281298288, MEMORY[0x277D68FD8]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v148 = &v137 - v22;
  v158 = sub_22088A0DC();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v23);
  v149 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_220889FFC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v25);
  v139 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v137 - v29;
  v31 = sub_22088A20C();
  v32 = *(v31 - 8);
  v165 = v31;
  v166 = v32;
  MEMORY[0x28223BE20](v31, v33);
  v138 = (&v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35, v36);
  v151 = (&v137 - v37);
  MEMORY[0x28223BE20](v38, v39);
  v150 = (&v137 - v40);
  MEMORY[0x28223BE20](v41, v42);
  v142 = (&v137 - v43);
  MEMORY[0x28223BE20](v44, v45);
  v47 = (&v137 - v46);
  v48 = MEMORY[0x277D68ED8];
  sub_22060A908(0, &qword_2812982D0, MEMORY[0x277D68ED8]);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v52 = &v137 - v51;
  v53 = sub_220889FEC();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v137 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData;
  swift_beginAccess();
  v153 = v1;
  sub_22060AD94(v1 + v58, v52, &qword_2812982D0, v48);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_22060AE00(v52, &qword_2812982D0, MEMORY[0x277D68ED8]);
    v59 = MEMORY[0x277D84F90];
    v60 = v156;
    v61 = v165;
    v62 = v159;
  }

  else
  {
    (*(v54 + 32))(v57, v52, v53);
    sub_220889FDC();
    v63 = v140;
    v64 = v139;
    v65 = v141;
    (*(v140 + 16))(v139, v30, v141);
    v66 = (*(v63 + 88))(v64, v65);
    v61 = v165;
    v67 = v65;
    v68 = v63;
    v69 = v30;
    if (v66 == *MEMORY[0x277D68EF8])
    {
      v70 = 0;
      v71 = v166;
      v62 = v159;
    }

    else
    {
      v71 = v166;
      v62 = v159;
      if (v66 == *MEMORY[0x277D68EF0])
      {
        v70 = 21;
      }

      else if (v66 == *MEMORY[0x277D68EE8])
      {
        v70 = 1;
      }

      else
      {
        if (v66 != *MEMORY[0x277D68EE0])
        {
          result = sub_2208928AC();
          __break(1u);
          return result;
        }

        v70 = 16;
      }
    }

    (*(v68 + 8))(v69, v67);
    v72 = sub_220889FBC();
    *v47 = v70;
    v47[1] = v72;
    v47[3] = 0;
    v47[4] = 0;
    v47[2] = v73;
    (*(v71 + 104))(v47, *MEMORY[0x277D34DD8], v61);
    v59 = sub_220588198(0, 1, 1, MEMORY[0x277D84F90]);
    v75 = v59[2];
    v74 = v59[3];
    if (v75 >= v74 >> 1)
    {
      v59 = sub_220588198((v74 > 1), v75 + 1, 1, v59);
    }

    v60 = v156;
    (*(v54 + 8))(v57, v53);
    v59[2] = v75 + 1;
    (*(v166 + 32))(v59 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v75, v47, v61);
  }

  v76 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData;
  v77 = v153;
  swift_beginAccess();
  v78 = v148;
  sub_22060AD94(v77 + v76, v148, &qword_281298288, MEMORY[0x277D68FD8]);
  v79 = v157;
  v80 = v158;
  v81 = (*(v157 + 48))(v78, 1, v158);
  v82 = v155;
  if (v81 == 1)
  {
    v83 = v155;
    v84 = v60;
    sub_22060AE00(v78, &qword_281298288, MEMORY[0x277D68FD8]);
    v85 = v166;
    v86 = v161;
  }

  else
  {
    (*(v79 + 32))(v149, v78, v80);
    v87 = v143;
    sub_22088A0CC();
    v88 = sub_220713B50();
    (*(v144 + 8))(v87, v145);
    v89 = sub_22088A0AC();
    v91 = v90;
    v92 = sub_22088A09C();
    v93 = sub_22088A08C();
    v94 = v142;
    *v142 = 0x6E776F6E6B6E75;
    v94[1] = 0xE700000000000000;
    v94[2] = v88;
    v94[3] = v89;
    v94[4] = v91;
    v94[5] = v92;
    v61 = v165;
    v85 = v166;
    v94[6] = v93;
    (*(v85 + 104))(v94, *MEMORY[0x277D34DE0], v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_220588198(0, v59[2] + 1, 1, v59);
    }

    v96 = v59[2];
    v95 = v59[3];
    v83 = v82;
    if (v96 >= v95 >> 1)
    {
      v59 = sub_220588198((v95 > 1), v96 + 1, 1, v59);
    }

    v84 = v60;
    (*(v157 + 8))(v149, v158);
    v59[2] = v96 + 1;
    (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v96, v94, v61);
    v86 = v161;
    v62 = v159;
  }

  v97 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData;
  swift_beginAccess();
  sub_22060AD94(v77 + v97, v62, &unk_2812984A0, MEMORY[0x277D686A0]);
  v98 = v62;
  v99 = v164;
  v100 = v160;
  if ((*(v164 + 48))(v98, 1, v160) == 1)
  {
    sub_22060AE00(v98, &unk_2812984A0, MEMORY[0x277D686A0]);
    v101 = v84;
    v102 = v83;
    v103 = v162;
  }

  else
  {
    v104 = *(v99 + 32);
    v105 = v146;
    v104(v146, v98, v100);
    v106 = sub_2208895DC();
    v107 = v150;
    *v150 = v106;
    v107[1] = v108;
    *(v107 + 1) = 0u;
    *(v107 + 2) = 0u;
    *(v107 + 3) = 0u;
    (*(v85 + 104))(v107, *MEMORY[0x277D34DF8], v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_220588198(0, v59[2] + 1, 1, v59);
    }

    v101 = v84;
    v110 = v59[2];
    v109 = v59[3];
    v111 = v164;
    v102 = v83;
    if (v110 >= v109 >> 1)
    {
      v136 = sub_220588198((v109 > 1), v110 + 1, 1, v59);
      v111 = v164;
      v59 = v136;
    }

    v103 = v162;
    (*(v111 + 8))(v105, v160);
    v59[2] = v110 + 1;
    (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v110, v150, v61);
    v86 = v161;
  }

  v112 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData;
  swift_beginAccess();
  sub_22060AD94(v77 + v112, v86, &unk_281298520, MEMORY[0x277D683E0]);
  v113 = v163;
  if ((*(v103 + 48))(v86, 1, v163) == 1)
  {
    sub_22060AE00(v86, &unk_281298520, MEMORY[0x277D683E0]);
  }

  else
  {
    (*(v103 + 32))(v152, v86, v113);
    v114 = sub_2208892EC();
    v116 = v115;
    v117 = sub_22088930C();
    v119 = v118;
    v120 = sub_2208892FC();
    v121 = v151;
    *v151 = v114;
    v121[1] = v116;
    v121[2] = v117;
    v121[3] = v119;
    v61 = v165;
    v85 = v166;
    v121[4] = v120;
    v121[5] = v122;
    (*(v85 + 104))(v121, *MEMORY[0x277D34E08], v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_220588198(0, v59[2] + 1, 1, v59);
    }

    v124 = v59[2];
    v123 = v59[3];
    v125 = v162;
    if (v124 >= v123 >> 1)
    {
      v59 = sub_220588198((v123 > 1), v124 + 1, 1, v59);
    }

    (*(v125 + 8))(v152, v163);
    v59[2] = v124 + 1;
    (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v124, v151, v61);
  }

  v126 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData;
  swift_beginAccess();
  v127 = v77 + v126;
  v128 = v154;
  sub_22060AD94(v127, v154, &qword_2812984D0, MEMORY[0x277D685B0]);
  if ((*(v102 + 48))(v128, 1, v101) == 1)
  {
    sub_22060AE00(v128, &qword_2812984D0, MEMORY[0x277D685B0]);
  }

  else
  {
    v129 = v147;
    (*(v102 + 32))(v147, v128, v101);
    v130 = sub_2208894BC();
    if (v131)
    {
      v132 = v138;
      *v138 = v130;
      v132[1] = v131;
      *(v132 + 16) = 1;
      (*(v85 + 104))(v132, *MEMORY[0x277D34DD0], v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_220588198(0, v59[2] + 1, 1, v59);
      }

      v134 = v59[2];
      v133 = v59[3];
      if (v134 >= v133 >> 1)
      {
        v59 = sub_220588198((v133 > 1), v134 + 1, 1, v59);
      }

      (*(v102 + 8))(v129, v101);
      v59[2] = v134 + 1;
      (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v134, v132, v61);
    }

    else
    {
      (*(v102 + 8))(v129, v101);
    }
  }

  return v59;
}

uint64_t sub_22060808C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a5;
  v103 = a6;
  v97 = a4;
  v107 = a3;
  v8 = sub_2208899EC();
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v104 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22088A34C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v11);
  v81 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088922C();
  v100 = *(v13 - 8);
  v101 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v99 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22088A56C();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v16);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088923C();
  v95 = *(v18 - 8);
  v96 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v98 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v93 = &v80 - v23;
  v90 = sub_22088937C();
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v24);
  v89 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22088938C();
  v110 = *(v26 - 8);
  v111 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v108 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v109 = &v80 - v31;
  v88 = MEMORY[0x277D685B0];
  sub_22060A908(0, &qword_2812984D0, MEMORY[0x277D685B0]);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v87 = &v80 - v34;
  v85 = MEMORY[0x277D683E0];
  sub_22060A908(0, &unk_281298520, MEMORY[0x277D683E0]);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v80 - v37;
  v84 = MEMORY[0x277D686A0];
  sub_22060A908(0, &unk_2812984A0, MEMORY[0x277D686A0]);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v42 = &v80 - v41;
  v43 = MEMORY[0x277D68FD8];
  sub_22060A908(0, &qword_281298288, MEMORY[0x277D68FD8]);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = &v80 - v46;
  v48 = MEMORY[0x277D68ED8];
  sub_22060A908(0, &qword_2812982D0, MEMORY[0x277D68ED8]);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v52 = &v80 - v51;
  sub_220889FEC();
  sub_22060AD4C(&qword_2812982D8, MEMORY[0x277D68ED8], MEMORY[0x277D68ED0]);
  sub_220886F0C();
  v53 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData;
  swift_beginAccess();
  sub_22060ACE0(v52, a2 + v53, &qword_2812982D0, v48);
  swift_endAccess();
  sub_22088A0DC();
  sub_22060AD4C(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  sub_220886F0C();
  v54 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData;
  swift_beginAccess();
  v55 = v47;
  v56 = v86;
  sub_22060ACE0(v55, a2 + v54, &qword_281298288, v43);
  swift_endAccess();
  sub_2208895EC();
  sub_22060AD4C(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  sub_220886F0C();
  v57 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData;
  swift_beginAccess();
  sub_22060ACE0(v42, a2 + v57, &unk_2812984A0, v84);
  swift_endAccess();
  sub_22088931C();
  sub_22060AD4C(&qword_281298530, MEMORY[0x277D683E0], MEMORY[0x277D683D8]);
  sub_220886F0C();
  v58 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData;
  swift_beginAccess();
  sub_22060ACE0(v38, a2 + v58, &unk_281298520, v85);
  swift_endAccess();
  sub_2208894CC();
  sub_22060AD4C(&qword_2812984D8, MEMORY[0x277D685B0], MEMORY[0x277D685A8]);
  v59 = v87;
  sub_220886F0C();
  v60 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData;
  swift_beginAccess();
  sub_22060ACE0(v59, a2 + v60, &qword_2812984D0, v88);
  swift_endAccess();
  v61 = sub_22088A1BC();
  v62 = v109;
  sub_2206770C4(a2[5], v61, v109);
  sub_22088A19C();
  (*(v110 + 16))(v108, v62, v111);
  v63 = v89;
  v64 = v92;
  sub_22088936C();
  sub_22060AD4C(&qword_281298510, MEMORY[0x277D68410], MEMORY[0x277D68408]);
  v65 = v63;
  v66 = v90;
  v108 = a1;
  sub_220886F1C();
  v67 = v94;
  (*(v91 + 8))(v65, v66);
  (*(v67 + 16))(v56, v97, v64);
  v68 = (*(v67 + 88))(v56, v64);
  if (v68 == *MEMORY[0x277D351D0])
  {
    v70 = v95;
    v69 = v96;
    v71 = v93;
    (*(v95 + 104))(v93, *MEMORY[0x277D68390], v96);
    v72 = v69;
    goto LABEL_10;
  }

  v71 = v93;
  v70 = v95;
  v72 = v96;
  if (v68 == *MEMORY[0x277D35188])
  {
    v73 = MEMORY[0x277D68388];
LABEL_9:
    (*(v95 + 104))(v93, *v73, v96);
    goto LABEL_10;
  }

  if (v68 == *MEMORY[0x277D35190])
  {
    goto LABEL_6;
  }

  if (v68 == *MEMORY[0x277D35168])
  {
    v73 = MEMORY[0x277D68380];
    goto LABEL_9;
  }

  if (v68 == *MEMORY[0x277D351A0] || v68 == *MEMORY[0x277D35170] || v68 == *MEMORY[0x277D351E0] || v68 == *MEMORY[0x277D351B8] || v68 == *MEMORY[0x277D351B0] || v68 == *MEMORY[0x277D35178] || v68 == *MEMORY[0x277D35180] || v68 == *MEMORY[0x277D351A8] || v68 == *MEMORY[0x277D351F0] || v68 == *MEMORY[0x277D351E8])
  {
LABEL_6:
    v73 = MEMORY[0x277D68390];
    goto LABEL_9;
  }

  (*(v95 + 104))(v93, *MEMORY[0x277D68390], v96);
  (*(v67 + 8))(v56, v64);
LABEL_10:
  (*(v70 + 16))(v98, v71, v72);
  v74 = v99;
  sub_22088921C();
  sub_22060AD4C(&unk_281298550, MEMORY[0x277D68378], MEMORY[0x277D68370]);
  v75 = v101;
  sub_220886F1C();
  (*(v100 + 8))(v74, v75);
  if (a2[3])
  {
    swift_getObjectType();
    v76 = v81;
    sub_22088A1AC();
    sub_22088A55C();
    (*(v82 + 8))(v76, v83);
  }

  v77 = v104;
  sub_2208899DC();
  sub_22060AD4C(&unk_2812983E0, MEMORY[0x277D68948], MEMORY[0x277D68940]);
  v78 = v106;
  sub_220886F1C();
  (*(v105 + 8))(v77, v78);
  sub_220889A9C();
  sub_22060AD4C(&qword_2812983A8, MEMORY[0x277D68A00], MEMORY[0x277D689F8]);
  sub_220886F2C();
  (*(v70 + 8))(v71, v72);
  return (*(v110 + 8))(v109, v111);
}

uint64_t sub_220608F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220889A9C();
  sub_22060AD4C(&qword_2812983A8, MEMORY[0x277D68A00], MEMORY[0x277D689F8]);
  sub_220886ECC();
  return sub_220886EDC();
}

uint64_t sub_220608FC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2208890EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2208890DC();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088A4EC();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a2, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == *MEMORY[0x277D35090])
  {
    (*(v13 + 96))(v17, v12);
    v19 = *(v4 + 104);
    if (*v17 == 1)
    {
      v19(v7, *MEMORY[0x277D68240], v3);
    }

    else
    {
      v19(v7, *MEMORY[0x277D68238], v3);
    }

    sub_2208890CC();
    sub_22060AD4C(&qword_27CF579F0, MEMORY[0x277D68230], MEMORY[0x277D68228]);
    v21 = v24;
    sub_220886F1C();
    (*(v8 + 8))(v11, v21);
  }

  else if (v18 == *MEMORY[0x277D35088])
  {
    (*(v13 + 96))(v17, v12);
    (*(v4 + 104))(v7, *MEMORY[0x277D68238], v3);
    sub_2208890CC();
    sub_22060AD4C(&qword_27CF579F0, MEMORY[0x277D68230], MEMORY[0x277D68228]);
    v20 = v24;
    sub_220886F1C();
    (*(v8 + 8))(v11, v20);
  }

  else
  {
    (*(v13 + 8))(v17, v12);
  }

  sub_220889F3C();
  sub_22060AD4C(&qword_27CF579E8, MEMORY[0x277D68E60], MEMORY[0x277D68E58]);
  memset(v25, 0, sizeof(v25));
  sub_220886F3C();
  return sub_22056D130(v25);
}

uint64_t sub_2206094B4(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v61 = a1;
  v4 = sub_220889DAC();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v52 - v9;
  v11 = sub_22088A51C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v52 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v54 = &v52 - v17;
  v57 = sub_220889D6C();
  v18 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v19);
  v55 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v56 = &v52 - v23;
  v24 = sub_22088A21C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_220889CAC();
  v29 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v30);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v62 = &v52 - v35;
  sub_22088A1CC();
  v36 = (*(v25 + 88))(v28, v24);
  if (v36 == *MEMORY[0x277D34E40])
  {
    (*(v25 + 8))(v28, v24);
    goto LABEL_3;
  }

  if (v36 == *MEMORY[0x277D34E68])
  {
    v37 = MEMORY[0x277D68BE0];
    goto LABEL_6;
  }

  if (v36 == *MEMORY[0x277D34E78] || v36 == *MEMORY[0x277D34E48] || v36 == *MEMORY[0x277D34E80] || v36 == *MEMORY[0x277D34E58] || v36 == *MEMORY[0x277D34E50])
  {
LABEL_3:
    v37 = MEMORY[0x277D68BE8];
LABEL_6:
    (*(v29 + 104))(v62, *v37, v63);
    goto LABEL_7;
  }

  (*(v29 + 104))(v62, *MEMORY[0x277D68BE8], v63);
  (*(v25 + 8))(v28, v24);
LABEL_7:
  sub_22060AD94(v53, v10, &qword_27CF579E0, MEMORY[0x277D350F8]);
  v38 = (*(v12 + 48))(v10, 1, v11);
  v40 = v56;
  v39 = v57;
  if (v38 != 1)
  {
    v41 = v54;
    (*(v12 + 32))(v54, v10, v11);
    v42 = v52;
    (*(v12 + 16))(v52, v41, v11);
    v43 = (*(v12 + 88))(v42, v11);
    if (v43 == *MEMORY[0x277D350E8])
    {
      v44 = MEMORY[0x277D68CB0];
    }

    else if (v43 == *MEMORY[0x277D350E0])
    {
      v44 = MEMORY[0x277D68CA0];
    }

    else
    {
      if (v43 != *MEMORY[0x277D350F0])
      {
        v46 = *(v18 + 104);
        if (v43 != *MEMORY[0x277D350D8])
        {
          v46(v40, *MEMORY[0x277D68CB0], v39);
          (*(v12 + 8))(v42, v11);
          goto LABEL_23;
        }

        v45 = *MEMORY[0x277D68C98];
LABEL_22:
        v46(v40, v45, v39);
LABEL_23:
        (*(v12 + 8))(v54, v11);
        goto LABEL_24;
      }

      v44 = MEMORY[0x277D68CA8];
    }

    v45 = *v44;
    v46 = *(v18 + 104);
    goto LABEL_22;
  }

  sub_22060AE00(v10, &qword_27CF579E0, MEMORY[0x277D350F8]);
  (*(v18 + 104))(v40, *MEMORY[0x277D68CB0], v39);
LABEL_24:
  v48 = v62;
  v47 = v63;
  (*(v29 + 16))(v32, v62, v63);
  (*(v18 + 16))(v55, v40, v39);
  v49 = v58;
  sub_220889D9C();
  sub_22060AD4C(&qword_27CF570F8, MEMORY[0x277D68D00], MEMORY[0x277D68CF8]);
  v50 = v60;
  sub_220886F1C();
  (*(v59 + 8))(v49, v50);
  sub_220889CBC();
  sub_22060AD4C(&qword_27CF57100, MEMORY[0x277D68BF8], MEMORY[0x277D68BF0]);
  memset(v64, 0, sizeof(v64));
  sub_220886F3C();
  sub_22056D130(v64);
  (*(v18 + 8))(v40, v39);
  return (*(v29 + 8))(v48, v47);
}

uint64_t sub_220609CF0()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData, &qword_2812982D0, MEMORY[0x277D68ED8]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData, &qword_281298288, MEMORY[0x277D68FD8]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData, &unk_2812984A0, MEMORY[0x277D686A0]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData, &unk_281298520, MEMORY[0x277D683E0]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData, &qword_2812984D0, MEMORY[0x277D685B0]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PaywallTracker(uint64_t a1)
{
  result = qword_281294238;
  if (!qword_281294238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220609E8C(uint64_t a1)
{
  sub_22060A908(319, &qword_2812982D0, MEMORY[0x277D68ED8]);
  if (v1 <= 0x3F)
  {
    sub_22060A908(319, &qword_281298288, MEMORY[0x277D68FD8]);
    if (v2 <= 0x3F)
    {
      sub_22060A908(319, &unk_2812984A0, MEMORY[0x277D686A0]);
      if (v3 <= 0x3F)
      {
        sub_22060A908(319, &unk_281298520, MEMORY[0x277D683E0]);
        if (v4 <= 0x3F)
        {
          sub_22060A908(319, &qword_2812984D0, MEMORY[0x277D685B0]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

double sub_22060A0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a4;
  v25 = a3;
  v27 = a1;
  v28 = a2;
  v6 = sub_22088A56C();
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = sub_22088A1DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v15 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v26 = *(*v5 + 16);
  (*(v11 + 16))(v15, v24, v10, v14);
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v6);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = (v12 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  (*(v11 + 32))(v19 + v17, v15, v10);
  (*(v7 + 32))(v19 + v18, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;

  sub_22088726C();

  return result;
}

uint64_t sub_22060A334()
{
  sub_220889A9C();
  sub_22060AD4C(&qword_2812983A8, MEMORY[0x277D68A00], MEMORY[0x277D689F8]);
  return sub_22088730C();
}

double sub_22060A3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088516C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(v5 + 16);
  v14(&v21 - v12, a1, v4, v11);
  (v14)(v8, a2, v4);
  v15 = *(v5 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = (v6 + v15 + v16) & ~v15;
  v18 = swift_allocObject();
  v19 = *(v5 + 32);
  v19(v18 + v16, v13, v4);
  v19(v18 + v17, v8, v4);
  sub_22088726C();

  return result;
}

double sub_22060A55C(uint64_t a1)
{
  v2 = sub_22088A4EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_22088726C();

  return result;
}

uint64_t sub_22060A6A8(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_22088A1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D350F8];
  v21 = MEMORY[0x277D350F8];
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v20 - v14;
  sub_22088A40C();
  (*(v3 + 16))(v6, v23, v2);
  sub_22060AD94(v15, v11, &qword_27CF579E0, v7);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = (v4 + *(v20 + 80) + v16) & ~*(v20 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v16, v6, v2);
  sub_22060A95C(v11, v18 + v17);
  sub_22088726C();

  return sub_22060AE00(v15, &qword_27CF579E0, v21);
}

void sub_22060A908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22060A95C(uint64_t a1, uint64_t a2)
{
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22060A9DC(uint64_t a1)
{
  v3 = *(sub_22088A1DC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  v8 = v1 + ((v5 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80));

  return sub_2206094B4(a1, v6, v1 + v4, v8);
}

uint64_t sub_22060AACC(uint64_t a1)
{
  v3 = *(sub_22088A4EC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_220608FC4(a1, v4);
}

uint64_t sub_22060AB3C(uint64_t a1)
{
  v3 = *(sub_22088516C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_220608F18(a1, v1 + v5, v6);
}

uint64_t sub_22060ABD8(char *a1)
{
  v3 = *(sub_22088A1DC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088A56C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_22060808C(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_22060ACE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22060A908(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22060AD4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22060AD94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22060A908(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22060AE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22060A908(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22060AE5C()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 1;
  sub_22045E8CC();
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298FD8 = result;
  return result;
}

uint64_t static Settings.ChartOptions.showYTD.getter()
{
  if (qword_281298FD0 != -1)
  {
    swift_once();
  }
}

void sub_22060B080(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v29[1] = a2;
  v30 = sub_220889A4C();
  v29[0] = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060B420(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220886E8C();
  v19 = MEMORY[0x28223BE20](v17, v18);
  (*(v21 + 16))(v29 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_220886E6C();
    v23 = sub_2208871CC();
    v25 = v24;

    if (!v5)
    {
      sub_22060B4B4(&qword_2812983C8, MEMORY[0x277D68980], MEMORY[0x277D68988]);
      v26 = v30;
      sub_22088827C();
      sub_220457EE8(v23, v25);
      (*(v29[0] + 32))(a5, v10, v26);
      v27 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(a5, 0, 1, v27);
    }
  }

  else
  {
    v28 = type metadata accessor for EngagementEvent(0);
    (*(*(v28 - 8) + 56))(a5, 1, 1, v28);
  }
}

void sub_22060B420(uint64_t a1)
{
  if (!qword_281298C28)
  {
    sub_220889A5C();
    sub_22060B4B4(&qword_2812983C0, MEMORY[0x277D68990], MEMORY[0x277D68978]);
    v1 = sub_220886E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298C28);
    }
  }
}

uint64_t sub_22060B4B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22060B4FC(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_22088B8CC();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v50 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22088DDFC();
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088C5AC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088C3CC();
  swift_beginAccess();
  v25 = *(v5 + 16);
  v24 = *(v5 + 17);
  v26 = __swift_project_boxed_opaque_existential_1(v6 + 13, *(v6 + 16));
  v27 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v26, v26);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30, v28);
  v31 = (*(*(v24 + 16) + 112))(v25);
  (*(v27 + 8))(v30, v25);
  [v23 setBackgroundColor_];

  v32 = sub_22088C3CC();
  sub_22088C59C();

  v33 = sub_22088C3CC();
  (*(v19 + 104))(v22, *MEMORY[0x277D6DEE8], v18);
  sub_22088C5BC();

  v34 = sub_22088C3CC();
  v35 = v6[25];
  sub_22088C58C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = [Strong splitViewController];
    swift_unknownObjectRelease();
  }

  v38 = v53;
  sub_22088DDEC();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D6EAA0];
  v41 = v55;
  v39[5] = v55;
  v39[6] = v40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39 + 2);
  v43 = v54;
  (*(v54 + 16))(boxed_opaque_existential_1, v38, v41);
  v45 = v50;
  v44 = v51;
  *v50 = v39;
  (*(v44 + 104))(v45, *MEMORY[0x277D6D928], v52);
  sub_22088C41C();
  v46 = [objc_opt_self() effectWithRoundedRect:*MEMORY[0x277CDA138] cornerRadius:a2 curve:{a3, a4, a5, v35}];
  v47 = sub_22088C42C();
  [v46 setReferenceView_];

  [a1 setFocusEffect_];
  return (*(v43 + 8))(v38, v41);
}

void sub_22060B9D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;

        v6 = *(*(v5 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
        ObjectType = swift_getObjectType();
        (*(v6 + 56))(ObjectType, v6);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_22060BAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  sub_22046B36C(0);
  v74 = v4;
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v73 = v6;
  v72 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208854AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v64 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v17 = MEMORY[0x277D84F90];
  v79 = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v80 = v20;
        v89 = v17;
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v67 = objc_opt_self();
        v68 = ObjCClassFromMetadata;
        v22 = [v67 bundleForClass_];
        v81 = sub_220884CAC();

        v23 = swift_allocObject();
        swift_weakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v19;
        v25 = objc_allocWithZone(MEMORY[0x277D75088]);

        v82 = v19;
        v26 = sub_22089132C();

        v87 = sub_22060CC7C;
        v88 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v66 = &v85;
        v85 = sub_22060CBAC;
        v86 = &block_descriptor_17;
        v27 = _Block_copy(&aBlock);
        v28 = [v25 initWithName:v26 actionHandler:v27];

        _Block_release(v27);

        v29 = v28;
        MEMORY[0x223D89870]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_22:
          sub_22089177C();
        }

        v64[0] = v29;
        sub_22089179C();
        v30 = 0;
        v31 = 0;
        v17 = v89;
        v32 = (v8 + 8);
        v64[2] = 0x80000002208C6520;
        v64[1] = 0x80000002208C6560;
        v64[4] = (v76 + 16);
        v64[3] = (v76 + 32);
        v71 = v7;
        v70 = v15;
        v33 = v80;
        v69 = v11;
        v65 = (v8 + 8);
        do
        {
          LODWORD(v35) = v30;
          v8 = *(&unk_283410EC0 + v31 + 32);
          v36 = [v33 indexPathForCell_];
          if (v36)
          {
            v37 = v36;
            sub_22088545C();

            v38 = sub_22088547C();
            v39 = -1;
            if (!v8)
            {
              v39 = 1;
            }

            v29 = (v38 + v39);
            if (__OFADD__(v38, v39))
            {
              __break(1u);
              goto LABEL_22;
            }

            v40 = sub_22088549C();
            MEMORY[0x223D7D610](v29, v40);
            if (sub_22088547C() < 0)
            {
              v34 = *v32;
              (*v32)(v11, v7);
              v34(v15, v7);
            }

            else
            {
              v41 = sub_22088547C();
              v42 = [v33 numberOfItemsInSection_];
              LODWORD(v81) = v35;
              v35 = *v32;
              (*v32)(v11, v7);
              v35(v15, v7);
              LOBYTE(v35) = v81;
              if (v41 < v42)
              {
                v43 = [v67 bundleForClass_];
                v77 = sub_220884CAC();
                v78 = v44;

                v45 = [objc_opt_self() configurationWithPointSize_];
                v46 = sub_22089132C();
                v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

                v48 = swift_allocObject();
                swift_weakInit();
                v49 = v76;
                v50 = v72;
                v51 = v74;
                (*(v76 + 16))(v72, v75, v74);
                v52 = (*(v49 + 80) + 41) & ~*(v49 + 80);
                v53 = swift_allocObject();
                v54 = v80;
                *(v53 + 16) = v48;
                *(v53 + 24) = v54;
                v55 = v82;
                *(v53 + 32) = v82;
                *(v53 + 40) = v8;
                (*(v49 + 32))(v53 + v52, v50, v51);
                v56 = objc_allocWithZone(MEMORY[0x277D75088]);
                v57 = v55;
                v58 = v47;

                v59 = v54;
                v60 = sub_22089132C();

                v87 = sub_22060CC84;
                v88 = v53;
                aBlock = MEMORY[0x277D85DD0];
                v84 = 1107296256;
                v85 = sub_22060CBAC;
                v86 = &block_descriptor_69;
                v61 = _Block_copy(&aBlock);
                v62 = [v56 initWithName:v60 image:v58 actionHandler:v61];

                _Block_release(v61);

                v35 = v62;
                MEMORY[0x223D89870]();
                if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_22089177C();
                }

                sub_22089179C();

                v17 = v89;
                v7 = v71;
                v15 = v70;
                v33 = v80;
                v11 = v69;
                v32 = v65;
                LOBYTE(v35) = v81;
              }
            }
          }

          v30 = 1;
          v31 = 1u;
        }

        while ((v35 & 1) == 0);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return v17;
}

uint64_t sub_22060C4E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v4 = *(*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
        ObjectType = swift_getObjectType();
        (*(v4 + 56))(ObjectType, v4);
        swift_unknownObjectRelease();

        return 1;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_22060C5D8(__n128 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7)
{
  v32 = a6;
  v10 = sub_2208854AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v31 = a7;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v25 = [a4 indexPathForCell_];
  if (!v25)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v26 = v25;
  sub_22088545C();

  (*(v11 + 32))(v22, v18, v10);
  result = sub_22088547C();
  v27 = -1;
  if ((v32 & 1) == 0)
  {
    v27 = 1;
  }

  v28 = result + v27;
  if (__OFADD__(result, v27))
  {
    __break(1u);
  }

  else
  {
    v29 = sub_22088549C();
    MEMORY[0x223D7D610](v28, v29);
    sub_220767638(v31, v22, v14);
    swift_unknownObjectRelease();

    v30 = *(v11 + 8);
    v30(v14, v10);
    v30(v22, v10);
    return 1;
  }

  return result;
}

double sub_22060C850(uint64_t a1)
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 160), *(Strong + 184));
    sub_2208863EC();
    swift_getObjectType();
    if (qword_281297010 != -1)
    {
      swift_once();
    }

    (*(v6 + 16))(v4, v9, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_22088B81C();
    sub_2204D6128(v4, sub_2204961E0);
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

void *sub_22060CA88()
{
  sub_22054B9F8(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  return v0;
}

uint64_t sub_22060CAE8()
{
  sub_22060CA88();

  return swift_deallocClassInstance();
}

uint64_t sub_22060CBAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_22060CC14()
{
  sub_22046B36C(0);
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_22060BAD0(v3, v4, v5, v6);
}

uint64_t sub_22060CC84(uint64_t a1)
{
  sub_22046B36C(0);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(*(v4 - 8) + 80) + 41) & ~*(*(v4 - 8) + 80));

  return sub_22060C5D8(v3, a1, v5, v6, v7, v8, v9);
}

uint64_t sub_22060CD08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for StocksV2UserActivityDeserializer();
    result = sub_2208884CC();
    if (result)
    {
      v3 = result;
      type metadata accessor for StocksShortcutItemHandler(0);
      v4 = swift_allocObject();
      sub_22060CFA8(0);
      sub_22088CF8C();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_220899360;
      sub_22088CF7C();
      *(v4 + 16) = v5;
      type metadata accessor for StocksActivity(0);
      sub_22060D000(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
      sub_22088AC3C();
      *(v4 + OBJC_IVAR____TtC8StocksUI25StocksShortcutItemHandler_userActivityDeserializer) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22060CEE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for StocksShortcutItemHandler(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_22060D000(&qword_27CF579F8, type metadata accessor for StocksShortcutItemHandler, &unk_2208A4B3C);
    v5[0] = v4;
    sub_22088CF5C();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22060CFA8(uint64_t a1)
{
  if (!qword_27CF57A00)
  {
    sub_22088CF8C();
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57A00);
    }
  }
}

uint64_t sub_22060D000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_22060D048(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22089266C();

    if (v4)
    {
      sub_22044D56C(0, &qword_27CF57A08, 0x277D311C8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2205CE178(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_22060D10C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v102 = a8;
  v100 = a7;
  v108 = a6;
  v94 = a5;
  v103 = a4;
  v99 = a3;
  v98 = a2;
  v97 = a1;
  v12 = MEMORY[0x277D83D88];
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v104 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v105 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v15;
  MEMORY[0x28223BE20](v16, v17);
  v106 = &v90 - v18;
  v96 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v96, v19);
  v107 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CampaignRouteModel(0);
  MEMORY[0x28223BE20](v95, v21);
  v109 = (&v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_220887FAC();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v23);
  v110 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277CC9260];
  sub_220447980(0, &qword_2812994E0, MEMORY[0x277CC9260], v12);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v90 - v28;
  v30 = sub_220884E9C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447980(0, &qword_281298210, MEMORY[0x277D35078], v12);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v90 - v37;
  sub_2206102D8(a10, v29, &qword_2812994E0, v25, v12, sub_220447980);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_22061034C(v29, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_220447980);
    v39 = sub_22088A47C();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  else
  {
    v40 = *(v31 + 32);
    v40(v34, v29, v30);
    v40(v38, v34, v30);
    v41 = *MEMORY[0x277D35070];
    v42 = sub_22088A47C();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v38, v41, v42);
    (*(v43 + 56))(v38, 0, 1, v42);
  }

  v44 = [*(v11 + 64) configuration];
  if (v44)
  {
    v45 = v44;
    if ([v44 respondsToSelector_])
    {
      v46 = [v45 paidBundleConfig];
      swift_unknownObjectRelease();
      v47 = [v46 paywallConfigurationsByType];
      if (v47 && (v48 = v47, sub_22044D56C(0, &qword_28127E470, 0x277CCABB0), sub_22044D56C(0, &qword_27CF57A08, 0x277D311C8), sub_2206101A8(), v49 = sub_22089126C(), v48, v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_], v51 = sub_22060D048(v50, v49), v50, , v51))
      {
        v52 = [v51 subscriptionButtonConfig];
        if (v52)
        {
          v91 = v51;
          v90 = v52;
          v53 = [v52 shouldDismissLandingPagePostPurchase];
          v54 = *MEMORY[0x277D301F8];
          v55 = sub_220887F9C();
          v56 = v110;
          (*(*(v55 - 8) + 104))(v110, v54, v55);
          v57 = MEMORY[0x277D30208];
          if (!v53)
          {
            v57 = MEMORY[0x277D30200];
          }

          (*(v111 + 104))(v56, *v57, v112);
          if (v108)
          {
            sub_220447980(0, &qword_27CF56DD8, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
            v58 = *(sub_22088A20C() - 8);
            v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v60 = v108;
            v61 = swift_allocObject();
            *(v61 + 16) = xmmword_220899360;
            v62 = v61 + v59;
            *v62 = v94;
            *(v62 + 8) = v60;
            *(v62 + 32) = 0u;
            *(v62 + 48) = 0u;
            *(v62 + 16) = 0u;
            (*(v58 + 104))();
          }

          else
          {
            v61 = MEMORY[0x277D84F90];
          }

          v63 = v103;
          v64 = HIBYTE(v98) & 0xF;
          v65 = v97;
          if ((v98 & 0x2000000000000000) == 0)
          {
            v64 = v97 & 0xFFFFFFFFFFFFLL;
          }

          v92 = v46;
          if (v64)
          {
          }

          else
          {
            v65 = 0;
            v66 = 0;
          }

          v67 = v95;
          v68 = v109;
          (*(v111 + 16))(v109 + *(v95 + 20), v110, v112);

          v69 = sub_220891AAC();
          sub_2206102D8(v38, v68 + v67[10], &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_220447980);
          *(v68 + v67[11] + 8) = 0;
          v70 = swift_unknownObjectWeakInit();
          *v68 = v65;
          v68[1] = v66;
          v71 = (v68 + v67[6]);
          *v71 = v99;
          v71[1] = v63;
          v72 = (v68 + v67[7]);
          v73 = v102;
          *v72 = v100;
          v72[1] = v73;
          *(v68 + v67[8]) = v61;
          *(v68 + v67[9]) = v69;
          *(v70 + 8) = 0;
          swift_unknownObjectWeakAssign();
          v74 = *(v11 + 56);
          v75 = v107;
          sub_220610210(v68, v107, type metadata accessor for CampaignRouteModel);
          swift_storeEnumTagMultiPayload();
          v76 = sub_22088969C();
          v77 = v106;
          (*(*(v76 - 8) + 56))(v106, 1, 1, v76);
          v121 = 0;
          memset(v120, 0, sizeof(v120));
          v119 = 0;
          memset(v118, 0, sizeof(v118));
          v117 = v74;
          sub_2206102D8(v118, &v113, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          v93 = v38;
          if (*(&v114 + 1))
          {
            sub_220458198(&v113, v115);

            v78 = sub_220597454(v115);
            v80 = v79;
            v82 = v81;
            __swift_destroy_boxed_opaque_existential_1(v115);
          }

          else
          {

            sub_22061034C(&v113, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
            if (qword_2812908F0 != -1)
            {
              swift_once();
            }

            v78 = qword_2812908F8;
            v80 = qword_281290900;
            v82 = qword_281290908;

            sub_2204A80F4(v80, v82);
          }

          v114 = 0u;
          v113 = 0u;
          v83 = v105;
          sub_2206102D8(v77, v105, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
          sub_2206102D8(v120, v115, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          v84 = (*(v104 + 80) + 24) & ~*(v104 + 80);
          v85 = (v101 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
          v86 = swift_allocObject();
          *(v86 + 16) = 0;
          sub_2205A0994(v83, v86 + v84);
          v87 = v86 + v85;
          v88 = v115[1];
          *v87 = v115[0];
          *(v87 + 16) = v88;
          *(v87 + 32) = v116;
          v89 = (v86 + ((v85 + 47) & 0xFFFFFFFFFFFFFFF8));
          *v89 = v78;
          v89[1] = v80;
          v89[2] = v82;

          sub_2204A80F4(v80, v82);
          sub_2204549FC(0);
          sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
          sub_22088E92C();

          sub_2204DA45C(v80, v82);
          sub_22061034C(v118, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          sub_22061034C(v120, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          sub_22061034C(v77, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
          sub_220610278(v75, type metadata accessor for StocksActivity);
          sub_220610278(v109, type metadata accessor for CampaignRouteModel);
          (*(v111 + 8))(v110, v112);
          sub_22061034C(&v113, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
          v38 = v93;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_22061034C(v38, &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_220447980);
  }

  else
  {
    __break(1u);
  }
}

void sub_22060E230(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v86 = a8;
  v85 = a7;
  v90 = a6;
  v80 = a5;
  v87 = a4;
  v84 = a3;
  v83 = a2;
  v82 = a1;
  v81 = a10;
  v93 = a9;
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v88 = *(v11 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v91 = &v74 - v17;
  v18 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v18, v19);
  v89 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CampaignRouteModel(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220887FAC();
  v26 = *(v25 - 8);
  *&v28 = MEMORY[0x28223BE20](v25, v27).n128_u64[0];
  v92 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [*(v10 + 64) configuration];
  if (!v30)
  {
    __break(1u);
    return;
  }

  v31 = v30;
  if ([v30 respondsToSelector_])
  {
    v94 = [v31 paidBundleConfig];
    swift_unknownObjectRelease();
    v32 = [v94 paywallConfigurationsByType];
    if (v32 && (v33 = v32, v77 = v26, v78 = v25, sub_22044D56C(0, &qword_28127E470, 0x277CCABB0), sub_22044D56C(0, &qword_27CF57A08, 0x277D311C8), sub_2206101A8(), v34 = sub_22089126C(), v33, v35 = objc_allocWithZone(MEMORY[0x277CCABB0]), v36 = [v35 initWithUnsignedInteger_], v79 = sub_22060D048(v36, v34), v36, , v79))
    {
      v37 = [v79 subscriptionButtonConfig];
      if (v37)
      {
        v76 = v37;
        v38 = [v37 shouldDismissLandingPagePostPurchase];
        v39 = *MEMORY[0x277D301F8];
        v40 = sub_220887F9C();
        v41 = v92;
        (*(*(v40 - 8) + 104))(v92, v39, v40);
        v42 = MEMORY[0x277D30208];
        if (!v38)
        {
          v42 = MEMORY[0x277D30200];
        }

        (*(v77 + 104))(v41, *v42, v78);
        if (v90)
        {
          sub_220447980(0, &qword_27CF56DD8, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
          v43 = *(sub_22088A20C() - 8);
          v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v45 = v90;
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_220899360;
          v75 = v46;
          v47 = v46 + v44;
          *v47 = v80;
          *(v47 + 8) = v45;
          *(v47 + 32) = 0u;
          *(v47 + 48) = 0u;
          *(v47 + 16) = 0u;
          (*(v43 + 104))();
        }

        else
        {
          v75 = MEMORY[0x277D84F90];
        }

        v50 = v87;
        v51 = v83;
        v52 = HIBYTE(v83) & 0xF;
        v53 = v82;
        if ((v83 & 0x2000000000000000) == 0)
        {
          v52 = v82 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
        }

        else
        {
          v53 = 0;
          v51 = 0;
        }

        (*(v77 + 16))(&v24[v21[5]], v92, v78);

        v54 = sub_220891AAC();
        sub_2206102D8(v81, &v24[v21[10]], &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_220447980);
        *&v24[v21[11] + 8] = 0;
        v55 = swift_unknownObjectWeakInit();
        *v24 = v53;
        *(v24 + 1) = v51;
        v56 = &v24[v21[6]];
        *v56 = v84;
        v56[1] = v50;
        v57 = &v24[v21[7]];
        v58 = v86;
        *v57 = v85;
        v57[1] = v58;
        *&v24[v21[8]] = v75;
        *&v24[v21[9]] = v54;
        *(v55 + 8) = 0;
        swift_unknownObjectWeakAssign();
        v59 = *(v10 + 56);
        v60 = v89;
        sub_220610210(v24, v89, type metadata accessor for CampaignRouteModel);
        swift_storeEnumTagMultiPayload();
        v61 = sub_22088969C();
        v62 = v91;
        (*(*(v61 - 8) + 56))(v91, 1, 1, v61);
        v104 = 0;
        memset(v103, 0, sizeof(v103));
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        v99 = v59;
        sub_2206102D8(&v100, &v95, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (*(&v96 + 1))
        {
          sub_220458198(&v95, v97);

          v63 = sub_220597454(v97);
          v65 = v64;
          v67 = v66;
          __swift_destroy_boxed_opaque_existential_1(v97);
        }

        else
        {

          sub_22061034C(&v95, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          if (qword_2812908F0 != -1)
          {
            swift_once();
          }

          v63 = qword_2812908F8;
          v65 = qword_281290900;
          v67 = qword_281290908;

          sub_2204A80F4(v65, v67);
        }

        v96 = 0u;
        v95 = 0u;
        sub_2206102D8(v62, v14, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
        sub_2206102D8(v103, v97, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        v68 = (*(v88 + 80) + 24) & ~*(v88 + 80);
        v69 = (v12 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
        v70 = swift_allocObject();
        *(v70 + 16) = 0;
        sub_2205A0994(v14, v70 + v68);
        v71 = v70 + v69;
        v72 = v97[1];
        *v71 = v97[0];
        *(v71 + 16) = v72;
        *(v71 + 32) = v98;
        v73 = (v70 + ((v69 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v73 = v63;
        v73[1] = v65;
        v73[2] = v67;

        sub_2204A80F4(v65, v67);
        sub_2204549FC(0);
        sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
        sub_22088E92C();

        sub_2204DA45C(v65, v67);
        sub_22061034C(&v100, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_22061034C(v103, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_22061034C(v91, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
        sub_220610278(v60, type metadata accessor for StocksActivity);
        sub_220610278(v24, type metadata accessor for CampaignRouteModel);
        (*(v77 + 8))(v92, v78);
        sub_22061034C(&v95, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
        return;
      }

      v48 = &v101 + 8;
    }

    else
    {
      v48 = &v105;
    }

    v49 = *(v48 - 32);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

double sub_22060F06C(uint64_t a1)
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v33[-v10];
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + 56);
  sub_22061013C(0);
  v18 = *(v17 + 48);
  v19 = sub_220884E9C();
  (*(*(v19 - 8) + 16))(v15, a1, v19);
  v15[v18] = 0;
  swift_storeEnumTagMultiPayload();
  v20 = sub_22088969C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = v16;
  sub_2206102D8(v39, &v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v35 + 1))
  {
    sub_220458198(&v34, v36);
    v21 = sub_220597454(v36);
    v23 = v22;
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    sub_22061034C(&v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v21 = qword_2812908F8;
    v23 = qword_281290900;
    v25 = qword_281290908;

    sub_2204A80F4(v23, v25);
  }

  v35 = 0u;
  v34 = 0u;
  sub_2206102D8(v11, v7, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_2206102D8(v41, v36, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v26 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v27 = (v5 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  sub_2205A0994(v7, v28 + v26);
  v29 = v28 + v27;
  v30 = v36[1];
  *v29 = v36[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v37;
  v31 = (v28 + ((v27 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v21;
  v31[1] = v23;
  v31[2] = v25;

  sub_2204A80F4(v23, v25);
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v23, v25);
  sub_22061034C(v39, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22061034C(v41, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22061034C(v11, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_220610278(v15, type metadata accessor for StocksActivity);
  sub_22061034C(&v34, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  return result;
}

double sub_22060F7AC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PreBuyFlowRouteModel(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 28);
  v23 = sub_22088A1EC();
  (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
  v24 = *(v18 + 32);
  v25 = v12;
  v26 = sub_22088A2FC();
  (*(*(v26 - 8) + 16))(&v21[v24], a3, v26);
  *v21 = a1;
  v27 = *(v47 + 7);
  v47 = v21;
  sub_220610210(v21, v16, type metadata accessor for PreBuyFlowRouteModel);
  swift_storeEnumTagMultiPayload();
  v28 = sub_22088969C();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = v27;
  sub_2206102D8(v53, &v48, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v49 + 1))
  {
    sub_220458198(&v48, v50);
    v29 = a1;
    v30 = sub_220597454(v50);
    v32 = v31;
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    v35 = a1;
    sub_22061034C(&v48, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v30 = qword_2812908F8;
    v32 = qword_281290900;
    v34 = qword_281290908;

    sub_2204A80F4(v32, v34);
  }

  v49 = 0u;
  v48 = 0u;
  v36 = v12;
  v37 = v46;
  sub_2206102D8(v36, v46, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_2206102D8(v55, v50, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v38 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v39 = (v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  sub_2205A0994(v37, v40 + v38);
  v41 = v40 + v39;
  v42 = v50[1];
  *v41 = v50[0];
  *(v41 + 16) = v42;
  *(v41 + 32) = v51;
  v43 = (v40 + ((v39 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v43 = v30;
  v43[1] = v32;
  v43[2] = v34;

  sub_2204A80F4(v32, v34);
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v32, v34);
  sub_22061034C(v53, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22061034C(v55, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22061034C(v25, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_220610278(v16, type metadata accessor for StocksActivity);
  sub_220610278(v47, type metadata accessor for PreBuyFlowRouteModel);
  sub_22061034C(&v48, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  return result;
}

uint64_t sub_220610018()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22061013C(uint64_t a1)
{
  if (!qword_2812994D0)
  {
    sub_220884E9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812994D0);
    }
  }
}

unint64_t sub_2206101A8()
{
  result = qword_27CF57A10;
  if (!qword_27CF57A10)
  {
    sub_22044D56C(255, &qword_28127E470, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A10);
  }

  return result;
}

uint64_t sub_220610210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220610278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206102D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_22061034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220610538()
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);

  return sub_220598700();
}

uint64_t type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier(uint64_t a1)
{
  result = qword_27CF57A18;
  if (!qword_27CF57A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220610694(uint64_t a1)
{
  result = sub_220886A4C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ManageWatchlistsContentMode(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220610728(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v85 = a3;
  v86 = a2;
  v87 = a1;
  v4 = sub_22088B64C();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220611104(0, &qword_27CF57A30, MEMORY[0x277D6DF88]);
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v68 - v9);
  v73 = type metadata accessor for ManageWatchlistsModel(0);
  MEMORY[0x28223BE20](v73, v11);
  v71 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220611104(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v14 = v13;
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v80 = &v68 - v16;
  sub_2206111C4(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  v81 = *(v21 - 8);
  v82 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v72 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v79 = &v68 - v26;
  sub_22061121C(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220611104(0, &qword_27CF56B28, MEMORY[0x277D6D710]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v34);
  v77 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v88 = &v68 - v38;
  v70 = type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier(0);
  v39 = *(v70 + 20);
  v40 = v3;
  sub_2208869BC();
  v89 = v14;
  v41 = v87;
  sub_22088E76C();

  v42 = v33;
  v43 = *(v33 + 48);
  v90 = v32;
  if (v43(v30, 1, v32) == 1)
  {
    sub_2206112E4(v30, sub_22061121C);
    sub_220611290();
    *v10 = swift_allocError();
    v45 = v83;
    v44 = v84;
    (*(v83 + 104))(v10, *MEMORY[0x277D6DF68], v84);
    v86(v10);
    return (*(v45 + 8))(v10, v44);
  }

  else
  {
    v69 = v10;
    v47 = v33;
    (*(v33 + 32))(v88, v30, v90);
    v48 = v40;
    sub_2208869BC();
    sub_22088E70C();

    if ((*(v81 + 48))(v20, 1, v82) == 1)
    {
      sub_2206112E4(v20, sub_2206111C4);
      sub_220611290();
      v49 = swift_allocError();
      v50 = v69;
      *v69 = v49;
      v52 = v83;
      v51 = v84;
      (*(v83 + 104))(v50, *MEMORY[0x277D6DF68], v84);
      v86(v50);
      (*(v52 + 8))(v50, v51);
      return (*(v42 + 8))(v88, v90);
    }

    else
    {
      (*(v81 + 32))(v79, v20, v82);
      (*(v78 + 16))(v80, v41, v89);
      (*(v42 + 16))(v77);
      v53 = type metadata accessor for WatchlistCellViewModel(0);
      v54 = *(v53 + 28);
      v55 = sub_220886A4C();
      v56 = v71;
      (*(*(v55 - 8) + 16))(&v71[v54], v48 + v39, v55);
      sub_220596A24(v48 + *(v70 + 24), &v56[*(v53 + 32)]);
      *v56 = sub_2208869BC();
      *(v56 + 1) = v57;
      *(v56 + 2) = sub_220886A0C();
      *(v56 + 3) = v58;
      v56[32] = 0;
      swift_storeEnumTagMultiPayload();
      sub_2206110BC(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
      v59 = v72;
      sub_22088AD7C();
      sub_22088B33C();
      sub_22088E75C();
      v61 = v74;
      v60 = v75;
      v62 = v76;
      (*(v75 + 104))(v74, *MEMORY[0x277D6D868], v76);
      sub_22055DF30();
      sub_220611344();
      v63 = v69;
      sub_22088C67C();
      (*(v60 + 8))(v61, v62);
      v86(v63);
      (*(v83 + 8))(v63, v84);
      v64 = v82;
      v65 = *(v81 + 8);
      v65(v59, v82);
      v66 = *(v47 + 8);
      v67 = v90;
      v66(v77, v90);
      (*(v78 + 8))(v80, v89);
      v65(v79, v64);
      return (v66)(v88, v67);
    }
  }
}

uint64_t sub_2206110BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220611104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel(255);
    v8[2] = sub_22055DF30();
    v8[3] = sub_2206110BC(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2206111C4(uint64_t a1)
{
  if (!qword_27CF57A38)
  {
    sub_22055DDDC(255);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57A38);
    }
  }
}

void sub_22061121C(uint64_t a1)
{
  if (!qword_27CF57A40)
  {
    sub_220611104(255, &qword_27CF56B28, MEMORY[0x277D6D710]);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57A40);
    }
  }
}

unint64_t sub_220611290()
{
  result = qword_27CF57A48;
  if (!qword_27CF57A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A48);
  }

  return result;
}

uint64_t sub_2206112E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_220611344()
{
  result = qword_27CF57A50;
  if (!qword_27CF57A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A50);
  }

  return result;
}

unint64_t sub_2206113AC()
{
  result = qword_27CF57A58;
  if (!qword_27CF57A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A58);
  }

  return result;
}

id sub_220611400(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22088516C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 80);
  v13 = [v12 horizontalSizeClass];
  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      [a2 setHidden_];
    }

    return [a2 setFrame_];
  }

  else
  {
    v29 = v7;
    [a2 setHidden_];
    v14 = *(a1 + 8);
    [a2 setFrame_];
    [a2 setHeight_];
    v15 = *&a2[OBJC_IVAR____TtC8StocksUI12MastheadView_appNameLabel];
    [v15 setFrame_];
    swift_beginAccess();
    sub_22046DA2C(v3 + 16, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    if (qword_2812946D0 != -1)
    {
      swift_once();
    }

    v17 = qword_2812946D8;
    v16 = unk_2812946E0;

    v18 = sub_2204A5AE0(v17, v16, v12);

    [v15 setAttributedText_];

    __swift_destroy_boxed_opaque_existential_1(v30);
    v19 = *&a2[OBJC_IVAR____TtC8StocksUI12MastheadView_dateLabel];
    [v19 setFrame_];
    sub_22046DA2C(v3 + 16, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    if (qword_2812946E8 != -1)
    {
      swift_once();
    }

    v20 = qword_2812946F0;
    if (qword_2812946F0)
    {
      sub_22088515C();
      v21 = sub_22088509C();
      (*(v29 + 8))(v11, v6);
      v22 = [v20 stringFromDate_];

      v20 = sub_22089136C();
      v24 = v23;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v26 = sub_2204A65AC(v20, v24, v12);

    [v19 setAttributedText_];

    __swift_destroy_boxed_opaque_existential_1(v30);
    v27 = [objc_opt_self() clearColor];
    [a2 setBackgroundColor_];

    return [v19 setNumberOfLines_];
  }
}

uint64_t sub_2206117FC()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220612A64(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0x64726163616C70;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x73676E696E726165;
    }

    else
    {
      return 7364967;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v6, v10, v2);
      v13 = sub_22088F1EC();
      (*(v3 + 8))(v6, v2);
      return v13;
    }

    else
    {
      return 0x7472616863;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = *v10;
    sub_220459628(0);
    sub_2205DCAD4(v10 + *(v15 + 64));
    return v14;
  }

  else
  {
    sub_220612AC8(v10, type metadata accessor for StockFeedMastheadModel);
    return 0x646165687473616DLL;
  }
}

uint64_t sub_220611A5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_220612AC8(v7, type metadata accessor for StockFeedMastheadModel);
LABEL_2:
    v9 = *MEMORY[0x277D33180];
    v10 = sub_22089018C();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  if (EnumCaseMultiPayload == 1)
  {

    sub_220459628(0);
    v13 = *(v12 + 64);
    v14 = *MEMORY[0x277D33158];
    v15 = sub_22089018C();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return sub_2205DCAD4(&v7[v13]);
  }

  else
  {
    v16 = *MEMORY[0x277D33178];
    v17 = sub_22089018C();
    (*(*(v17 - 8) + 104))(a1, v16, v17);
    return sub_220612AC8(v7, type metadata accessor for StockFeedSectionDescriptor);
  }
}

uint64_t sub_220611C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088F23C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453C6C(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v2, v20);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    goto LABEL_2;
  }

  if (!result)
  {
    result = sub_220612AC8(v20, type metadata accessor for StockFeedMastheadModel);
LABEL_2:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (result == 1)
  {

    sub_220459628(0);
    sub_2204FBAC4(&v20[*(v22 + 64)], v16);
    sub_22051E1E0(v16, v12);
    v23 = sub_22088F39C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      sub_2205DCAD4(v16);
      result = sub_2205DCAD4(v12);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      v28 = MEMORY[0x277D31C48];
      *(a1 + 24) = v23;
      *(a1 + 32) = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(v24 + 32))(boxed_opaque_existential_1, v12, v23);
      return sub_2205DCAD4(v16);
    }
  }

  else
  {
    v25 = *(v5 + 32);
    v25(v8, v20, v4);
    v26 = MEMORY[0x277D31BA0];
    *(a1 + 24) = v4;
    *(a1 + 32) = v26;
    v27 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (v25)(v27, v8, v4);
  }

  return result;
}

uint64_t sub_220611F5C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](v3, a2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_220459628(0);
        sub_2205DCAD4(&v6[*(v9 + 64)]);
        goto LABEL_8;
      }

      v10 = type metadata accessor for StockFeedSectionDescriptor;
    }

    else
    {
      v10 = type metadata accessor for StockFeedMastheadModel;
    }

    sub_220612AC8(v6, v10);
  }

LABEL_8:
  v11 = *MEMORY[0x277D31EA0];
  v12 = sub_22088F4FC();
  return (*(*(v12 - 8) + 104))(a3, v11, v12);
}

uint64_t sub_2206120A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_220612AC8(v7, type metadata accessor for StockFeedMastheadModel);
LABEL_2:
    v9 = *MEMORY[0x277D2D3A0];
    v10 = sub_22088ECBC();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  if (EnumCaseMultiPayload == 1)
  {

    sub_220459628(0);
    v13 = *(v12 + 64);
    v14 = *MEMORY[0x277D2D3B0];
    v15 = sub_22088ECBC();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return sub_2205DCAD4(&v7[v13]);
  }

  else
  {
    v16 = *MEMORY[0x277D2D398];
    v17 = sub_22088ECBC();
    (*(*(v17 - 8) + 104))(a1, v16, v17);
    return sub_220612AC8(v7, type metadata accessor for StockFeedSectionDescriptor);
  }
}

uint64_t sub_220612280()
{
  v1 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for StockFeedSectionDescriptor;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_220459628(0);
        v8 = *(v7 + 64);
        v9 = MEMORY[0x277D322A0];
        sub_220453C6C(0, &qword_28127DFD0, MEMORY[0x277D322A0], MEMORY[0x277D84560]);
        sub_22088F8CC();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_220899920;
        sub_22088F8AC();
        sub_22088F8BC();
        v12[1] = v10;
        sub_220612B8C();
        sub_220453C6C(0, &qword_28127EA48, v9, MEMORY[0x277D83940]);
        sub_220525D50();
        sub_2208923FC();
        return sub_2205DCAD4(&v4[v8]);
      }
    }

    else
    {
      v6 = type metadata accessor for StockFeedMastheadModel;
    }

    sub_220612AC8(v4, v6);
  }

  return sub_22088F89C();
}

uint64_t sub_2206124C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088F23C();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v56 = &v56 - v9;
  v10 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v56 - v24);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v56 - v28;
  sub_220612A00(0);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &v33[*(v34 + 56)];
  sub_220612A64(a1, v33);
  sub_220612A64(a2, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v47 = swift_getEnumCaseMultiPayload();
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        if (v47 != 3)
        {
          goto LABEL_26;
        }

        break;
      case 4:
        v54 = swift_getEnumCaseMultiPayload();
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        if (v54 != 4)
        {
          goto LABEL_26;
        }

        break;
      case 6:
        v46 = swift_getEnumCaseMultiPayload();
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        if (v46 != 6)
        {
          goto LABEL_26;
        }

        break;
      default:
        goto LABEL_26;
    }

    v43 = 1;
    goto LABEL_27;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_220612A64(v33, v29);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_220612B28(v29, v17);
      sub_220612B28(v35, v13);
      v43 = sub_2207557B0(v17, v13);
      sub_220612AC8(v13, type metadata accessor for StockFeedMastheadModel);
      sub_220612AC8(v17, type metadata accessor for StockFeedMastheadModel);
      v45 = type metadata accessor for StockFeedSectionDescriptor;
      goto LABEL_27;
    }

    sub_220612AC8(v29, type metadata accessor for StockFeedMastheadModel);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_220612A64(v33, v21);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v37 = v58;
        v38 = *(v58 + 32);
        v39 = v56;
        v40 = v21;
        v41 = v59;
        v38(v56, v40, v59);
        v42 = v57;
        v38(v57, v35, v41);
        v43 = sub_22088F21C();
        v44 = *(v37 + 8);
        v44(v42, v41);
        v44(v39, v41);
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        goto LABEL_27;
      }

      (*(v58 + 8))(v21, v59);
    }

LABEL_26:
    v43 = 0;
    v45 = sub_220612A00;
    goto LABEL_27;
  }

  sub_220612A64(v33, v25);
  v48 = *v25;
  v49 = v25[1];
  sub_220459628(0);
  v51 = v50;
  v52 = *(v50 + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2205DCAD4(v25 + v52);

    goto LABEL_26;
  }

  if (v48 == *v35 && v49 == *(v35 + 1))
  {
    v43 = 1;
  }

  else
  {
    v43 = sub_2208928BC();
  }

  sub_2205DCAD4(&v35[*(v51 + 64)]);
  sub_2205DCAD4(v25 + v52);
  v45 = type metadata accessor for StockFeedSectionDescriptor;
LABEL_27:
  sub_220612AC8(v33, v45);
  return v43 & 1;
}

void sub_220612A00(uint64_t a1)
{
  if (!qword_281288B50[0])
  {
    type metadata accessor for StockFeedSectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_281288B50);
    }
  }
}

uint64_t sub_220612A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220612AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220612B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedMastheadModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220612B8C()
{
  result = qword_281296B08;
  if (!qword_281296B08)
  {
    sub_22088F8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281296B08);
  }

  return result;
}

uint64_t NeverShowBilingualFeedPromptAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t NeverShowBilingualFeedPromptAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t NeverShowBilingualFeedPromptAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t NeverShowBilingualFeedPromptAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t NeverShowBilingualFeedPromptAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220612FD4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_22061308C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

char *sub_22061315C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_2812981D8, MEMORY[0x277D35160], 0);
    sub_2208884DC();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_281298250, MEMORY[0x277D34EA8], 0);
    result = sub_2208884DC();
    if (v18)
    {
      v6 = type metadata accessor for PaywallTracker(0);
      v7 = swift_allocObject();
      v8 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData;
      v9 = sub_220889FEC();
      (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
      v10 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData;
      v11 = sub_22088A0DC();
      (*(*(v11 - 8) + 56))(v7 + v10, 1, 1, v11);
      v12 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData;
      v13 = sub_2208895EC();
      (*(*(v13 - 8) + 56))(v7 + v12, 1, 1, v13);
      v14 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData;
      v15 = sub_22088931C();
      (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
      v16 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData;
      v17 = sub_2208894CC();
      (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
      *(v7 + 16) = v5;
      *(v7 + 24) = v20;
      *(v7 + 32) = v21;
      *(v7 + 40) = v18;
      *(v7 + 48) = v19;
      a2[3] = v6;
      result = sub_22045E6DC(&qword_281294250, type metadata accessor for PaywallTracker, &unk_2208A1A58);
      a2[4] = result;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220613448@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22046DA2C(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_281299150, MEMORY[0x277D69728], 0);
    result = sub_2208884DC();
    if (v8)
    {
      v6 = type metadata accessor for PaywallRouter();
      v7 = swift_allocObject();
      sub_220457328(v10, (v7 + 2));
      v7[7] = v5;
      v7[8] = v8;
      v7[9] = v9;
      a2[3] = v6;
      result = sub_22045E6DC(qword_281294610, type metadata accessor for PaywallRouter, &unk_2208A1CF0);
      a2[4] = result;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220613684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206136CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = type metadata accessor for ManageWatchlistsLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C50C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C4FC();
  sub_22055DE74(0);
  sub_22088B2AC();
  v14 = v20;
  (*(v10 + 16))(v8, v13, v9);
  v15 = swift_storeEnumTagMultiPayload();
  MEMORY[0x28223BE20](v15, v16);
  v19[-2] = a1;
  v19[-1] = a2;
  if (v14)
  {
    v17 = sub_220614414;
  }

  else
  {
    v17 = sub_220614430;
  }

  sub_2205573C4(v17, &v19[-4]);
  type metadata accessor for ManageWatchlistsLayoutModel(0);
  sub_220613684(&qword_27CF56C40, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor, &unk_2208ADAC8);
  sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel, &unk_22089EE3C);
  sub_22088C33C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_220613980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for WatchlistCellViewLayoutOptions(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ManageWatchlistsLayoutModel(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManageWatchlistsModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_22055DD44(0);
    (*(*(v32 - 8) + 56))(v34, 1, 1, v32);
    return sub_22061451C(v20, type metadata accessor for ManageWatchlistsModel);
  }

  else
  {
    sub_22061444C(v20, v16, type metadata accessor for WatchlistCellViewModel);
    sub_22057B014(0);
    v22 = &v12[*(v21 + 48)];
    sub_2206144B4(v16, v12, type metadata accessor for WatchlistCellViewModel);
    __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
    v23 = sub_22088C32C();
    (*(*(v23 - 8) + 16))(v8, a2, v23);
    sub_2205ABC74(*&v16, *&v8, v35);
    sub_22061451C(v8, type metadata accessor for WatchlistCellViewLayoutOptions);
    v24 = v35[9];
    *(v22 + 8) = v35[8];
    *(v22 + 9) = v24;
    *(v22 + 20) = v36;
    v25 = v35[5];
    *(v22 + 4) = v35[4];
    *(v22 + 5) = v25;
    v26 = v35[7];
    *(v22 + 6) = v35[6];
    *(v22 + 7) = v26;
    v27 = v35[1];
    *v22 = v35[0];
    *(v22 + 1) = v27;
    v28 = v35[3];
    *(v22 + 2) = v35[2];
    *(v22 + 3) = v28;
    swift_storeEnumTagMultiPayload();
    sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel, &unk_22089EE3C);
    v29 = v34;
    sub_22088BC2C();
    sub_22061451C(v16, type metadata accessor for WatchlistCellViewModel);
    sub_22055DD44(0);
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }
}

uint64_t sub_220613E38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a2;
  WatchlistViewLayoutOptions = type metadata accessor for CreateWatchlistViewLayoutOptions(0);
  MEMORY[0x28223BE20](WatchlistViewLayoutOptions - 8, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ManageWatchlistsLayoutModel(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  WatchlistViewModel = type metadata accessor for CreateWatchlistViewModel(0);
  MEMORY[0x28223BE20](WatchlistViewModel - 8, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManageWatchlistsModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22061444C(v20, v16, type metadata accessor for CreateWatchlistViewModel);
    sub_22057AE3C(0, v21);
    v23 = *(v22 + 48);
    sub_2206144B4(v16, v12, type metadata accessor for CreateWatchlistViewModel);
    __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
    v24 = sub_22088C32C();
    (*(*(v24 - 8) + 16))(v8, v29, v24);
    sub_22078E398(&v12[v23]);
    sub_22061451C(v8, type metadata accessor for CreateWatchlistViewLayoutOptions);
    swift_storeEnumTagMultiPayload();
    sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel, &unk_22089EE3C);
    sub_22088BC2C();
    sub_22061451C(v16, type metadata accessor for CreateWatchlistViewModel);
    sub_22055DD44(0);
    return (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
  }

  else
  {
    sub_22055DD44(0);
    (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
    return sub_22061451C(v20, type metadata accessor for ManageWatchlistsModel);
  }
}

uint64_t sub_2206141A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_22088C32C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_220614270, 0, 0);
}

uint64_t sub_220614270()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_22057320C(sub_2206143F4, v3);

  type metadata accessor for ManageWatchlistsLayoutSectionDescriptor(0);
  type metadata accessor for ManageWatchlistsLayoutModel(0);
  sub_220613684(&qword_27CF56C40, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor, &unk_2208ADAC8);
  sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel, &unk_22089EE3C);
  sub_22088B05C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22061444C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206144B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22061451C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206145DC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_22061462C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220887EFC();
  swift_allocObject();
  result = sub_220887EEC();
  v4 = MEMORY[0x277D300D8];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

double sub_2206146AC()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208885EC();
  sub_2204446D4(0, &qword_28128A5C0, &protocol descriptor for AudioPlaybackTrackerType);
  sub_220888BEC();

  sub_2208885EC();
  sub_2204446D4(0, qword_28128A5C8, &protocol descriptor for AudioPlaybackContextType);
  sub_220888BEC();

  sub_2208885EC();
  sub_2204446D4(0, qword_28128E290, &protocol descriptor for AudioTrackFactoryType);
  sub_220888BEC();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF10], v0);
  sub_2208882DC();

  (*(v1 + 8))(v4, v0);
  sub_2208885EC();
  sub_2204446D4(0, &qword_281298B20, MEMORY[0x277D2FD00]);
  sub_220888BEC();

  return result;
}

uint64_t type metadata accessor for StockChartModel(uint64_t a1)
{
  result = qword_281292FE0;
  if (!qword_281292FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220614984(uint64_t a1)
{
  result = sub_22088685C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2206149F0()
{
  v0 = sub_22088699C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208867CC();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D69868])
  {
    sub_220886BCC();
    sub_220886BAC();
    if (qword_281298FD0 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    v5 = v35;
    sub_2206152D4(0);
    v6 = sub_2208854FC();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = (v7 + 104);
    v11 = 2 * v8;
    v12 = 3 * v8;
    v13 = 4 * v8;
    v14 = swift_allocObject();
    if (v5 == 1)
    {
      *(v14 + 16) = xmmword_2208A22A0;
      v15 = v14 + v9;
      v16 = *v10;
      (*v10)(v15, *MEMORY[0x277D69128], v6);
      v16(v15 + v8, *MEMORY[0x277D69138], v6);
      v16(v15 + v11, *MEMORY[0x277D69110], v6);
      v16(v15 + v12, *MEMORY[0x277D69158], v6);
      v16(v15 + v13, *MEMORY[0x277D69100], v6);
      v16(v15 + 5 * v8, *MEMORY[0x277D69130], v6);
      v16(v15 + 6 * v8, *MEMORY[0x277D69148], v6);
      v16(v15 + 7 * v8, *MEMORY[0x277D69150], v6);
      v16(v15 + 8 * v8, *MEMORY[0x277D69140], v6);
      v16(v15 + 9 * v8, *MEMORY[0x277D69118], v6);
    }

    else
    {
      *(v14 + 16) = xmmword_2208A22C0;
      v28 = v14 + v9;
      v29 = *v10;
      (*v10)(v28, *MEMORY[0x277D69128], v6);
      v29(v28 + v8, *MEMORY[0x277D69138], v6);
      v29(v28 + v11, *MEMORY[0x277D69110], v6);
      v29(v28 + v12, *MEMORY[0x277D69158], v6);
      v29(v28 + v13, *MEMORY[0x277D69130], v6);
      v29(v28 + 5 * v8, *MEMORY[0x277D69148], v6);
      v29(v28 + 6 * v8, *MEMORY[0x277D69150], v6);
      v29(v28 + 7 * v8, *MEMORY[0x277D69140], v6);
      v29(v28 + 8 * v8, *MEMORY[0x277D69118], v6);
    }
  }

  else
  {
    sub_220886BCC();
    sub_220886BAC();
    if (qword_281298FD0 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    v17 = v36;
    sub_2206152D4(0);
    v18 = sub_2208854FC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = (v19 + 104);
    v23 = 2 * v20;
    v33 = 3 * v20;
    v34 = 4 * v20;
    v14 = swift_allocObject();
    if (v17 == 1)
    {
      *(v14 + 16) = xmmword_2208A22B0;
      v24 = v14 + v21;
      v25 = *v22;
      (*v22)(v24, *MEMORY[0x277D69120], v18);
      v25(v24 + v20, *MEMORY[0x277D69128], v18);
      v25(v24 + v23, *MEMORY[0x277D69138], v18);
      v25(v24 + v33, *MEMORY[0x277D69110], v18);
      v25(v24 + v34, *MEMORY[0x277D69158], v18);
      v25(v24 + 5 * v20, *MEMORY[0x277D69100], v18);
      v25(v24 + 6 * v20, *MEMORY[0x277D69130], v18);
      v25(v24 + 7 * v20, *MEMORY[0x277D69148], v18);
      v25(v24 + 8 * v20, *MEMORY[0x277D69150], v18);
      v25(v24 + 9 * v20, *MEMORY[0x277D69140], v18);
      v26 = v24 + 10 * v20;
      v27 = *MEMORY[0x277D69118];
    }

    else
    {
      *(v14 + 16) = xmmword_2208A22A0;
      v30 = v14 + v21;
      v25 = *v22;
      (*v22)(v30, *MEMORY[0x277D69120], v18);
      v25(v30 + v20, *MEMORY[0x277D69128], v18);
      v25(v30 + v23, *MEMORY[0x277D69138], v18);
      v25(v30 + v33, *MEMORY[0x277D69110], v18);
      v25(v30 + v34, *MEMORY[0x277D69158], v18);
      v25(v30 + 5 * v20, *MEMORY[0x277D69130], v18);
      v25(v30 + 6 * v20, *MEMORY[0x277D69148], v18);
      v25(v30 + 7 * v20, *MEMORY[0x277D69150], v18);
      v25(v30 + 8 * v20, *MEMORY[0x277D69140], v18);
      v27 = *MEMORY[0x277D69118];
      v26 = v30 + 9 * v20;
    }

    v25(v26, v27, v18);
    (*(v1 + 8))(v4, v0);
  }

  return v14;
}

void sub_2206152D4(uint64_t a1)
{
  if (!qword_28127E1C0)
  {
    sub_2208854FC();
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E1C0);
    }
  }
}

char *sub_22061532C(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = [objc_opt_self() sharedApplication];
    v5 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_220448A30(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
    v6 = sub_22089125C();

    [v4 openURL:v5 options:v6 completionHandler:0];

    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2204446D4(0, qword_281286BC0, &protocol descriptor for WebViewControllerFactoryType);
  result = sub_2208884DC();
  if (*(&v11 + 1))
  {
    sub_220458198(&v10, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = sub_220663D20(a1, &v10);
    sub_22061550C(&v10);
    if (v7)
    {
      sub_22055F760(0);
      v9 = sub_22088E0EC();
      v9(v7);
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_22061550C(uint64_t a1)
{
  sub_220615568(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220615568(uint64_t a1)
{
  if (!qword_27CF56B50)
  {
    sub_2204446D4(255, &qword_27CF58420, &protocol descriptor for WebViewCoordinatorType);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56B50);
    }
  }
}

uint64_t sub_220615640(uint64_t a1)
{
  v3 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedViewerPage(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  sub_2205CC630(a1, v10);
  sub_220615770(v10, v6);
  __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
  sub_2205EF4CC(v6);
  v13 = v12;
  sub_2206157D4(v6);
  sub_220615830(&unk_28128AF10, type metadata accessor for StockFeedViewController, &unk_2208A43BC);
  return v13;
}

uint64_t sub_220615770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedPage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206157D4(uint64_t a1)
{
  v2 = type metadata accessor for StockFeedPage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220615830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220615878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v111 = a2;
  v123 = a1;
  v119 = sub_220884E9C();
  v118 = *(v119 - 1);
  MEMORY[0x28223BE20](v119, v4);
  v112 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220617760(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v116 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v117 = &v103 - v11;
  sub_220617760(0, &qword_281298480, MEMORY[0x277D686D0]);
  v104 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v106 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v113 = &v103 - v17;
  v110 = sub_22088CBBC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v18);
  v108 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22088D1DC();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v20);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v114 = &v103 - v25;
  v26 = type metadata accessor for StocksActivity(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v115 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220617760(0, qword_281295190, type metadata accessor for StocksActivity);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v122 = &v103 - v36;
  sub_220617760(0, &unk_281295D30, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v103 - v39;
  v41 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute(0);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v103 - v48;
  v50 = v123;
  v123 = v3;
  sub_220616958(v50, v40);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v51 = &unk_281295D30;
    v52 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute;
    v53 = v40;
    return sub_220617CEC(v53, v51, v52);
  }

  sub_220617800(v40, v49, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  sub_220617868(v49, v45, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  v54 = v49;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = &qword_2812994E0;
    v56 = MEMORY[0x277CC9260];
    v57 = v117;
    sub_220617BB0(v45, v117, &qword_2812994E0, MEMORY[0x277CC9260]);
    v58 = v116;
    sub_220617B44(v57, v116, &qword_2812994E0, v56);
    v59 = v118;
    v60 = v119;
    if (v118[6](v58, 1, v119) == 1)
    {
      v61 = MEMORY[0x277CC9260];
      sub_220617CEC(v57, &qword_2812994E0, MEMORY[0x277CC9260]);
      sub_2206178D0(v54, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
      v53 = v58;
LABEL_8:
      v51 = v55;
      v52 = v61;
      return sub_220617CEC(v53, v51, v52);
    }

    v65 = v112;
    v59[4](v112, v58, v60);
    v66 = [objc_opt_self() sharedApplication];
    v67 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_220448A78(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
    v68 = sub_22089125C();

    [v66 openURL:v67 options:v68 completionHandler:0];

    (v59[1])(v65, v60);
    sub_220617CEC(v57, &qword_2812994E0, MEMORY[0x277CC9260]);
    return sub_2206178D0(v54, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  }

  else
  {
    v55 = qword_281295190;
    v62 = v45;
    v63 = v122;
    sub_220617BB0(v62, v122, qword_281295190, type metadata accessor for StocksActivity);
    sub_220617B44(v63, v33, qword_281295190, type metadata accessor for StocksActivity);
    if ((*(v27 + 48))(v33, 1, v26) == 1)
    {
      v61 = type metadata accessor for StocksActivity;
      sub_220617CEC(v63, qword_281295190, type metadata accessor for StocksActivity);
      sub_2206178D0(v49, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
      v53 = v33;
      goto LABEL_8;
    }

    v119 = v49;
    v69 = v33;
    v70 = v115;
    sub_220617800(v69, v115, type metadata accessor for StocksActivity);
    (*(v109 + 16))(v108, v111, v110);
    v71 = v114;
    sub_22088D1EC();
    v72 = v120;
    v73 = v121;
    (*(v120 + 16))(v22, v71, v121);
    v74 = (*(v72 + 88))(v22, v73);
    v75 = *MEMORY[0x277D6E598];
    v78 = *(v72 + 8);
    v76 = v72 + 8;
    v77 = v78;
    (v78)(v22, v73);
    v79 = v123;
    v80 = *(v123 + 56);
    if (v74 == v75)
    {
      v81 = sub_22088969C();
      v82 = v113;
      (*(*(v81 - 8) + 56))(v113, 1, 1, v81);
      sub_22046DA2C(v79 + 64, v132);
      v131 = 0;
      memset(v130, 0, sizeof(v130));
      v129 = v80;
      sub_220617A74(v130, &v124, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
      v120 = v76;
      v118 = v77;
      if (v126)
      {
        sub_220457328(&v124, v127);
        v83 = sub_220597454(v127);
        v85 = v84;
        v87 = v86;
        __swift_destroy_boxed_opaque_existential_1(v127);
      }

      else
      {
        sub_220617AE4(&v124, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220447FB4);
        if (qword_2812908F0 != -1)
        {
          swift_once();
        }

        v83 = qword_2812908F8;
        v85 = qword_281290900;
        v87 = qword_281290908;

        sub_2204A80F4(v85, v87);
      }

      v88 = v107;
      v123 = v87;
      v89 = v83;
      if (v107)
      {
        v90 = sub_22088731C();
        v91 = v88;
      }

      else
      {
        v91 = 0;
        v90 = 0;
        *(&v124 + 1) = 0;
        v125 = 0;
      }

      *&v124 = v91;
      v126 = v90;
      v92 = MEMORY[0x277D686D0];
      v93 = v106;
      sub_220617B44(v82, v106, &qword_281298480, MEMORY[0x277D686D0]);
      sub_220617A74(v132, v127, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
      v94 = (*(v104 + 80) + 24) & ~*(v104 + 80);
      v95 = (v105 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      *(v96 + 16) = v88;
      sub_220617BB0(v93, v96 + v94, &qword_281298480, v92);
      v97 = v96 + v95;
      v98 = v127[1];
      *v97 = v127[0];
      *(v97 + 16) = v98;
      *(v97 + 32) = v128;
      v99 = (v96 + ((v95 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v99 = v89;
      v99[1] = v85;
      v100 = v85;
      v101 = v123;
      v99[2] = v123;
      swift_retain_n();

      sub_2204A80F4(v100, v101);
      sub_2204549FC(0);
      sub_220448A78(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
      v102 = v115;
      sub_22088E92C();

      sub_2204DA45C(v100, v101);
      sub_220617AE4(v130, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220447FB4);
      sub_220617AE4(v132, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220447FB4);
      sub_220617CEC(v113, &qword_281298480, MEMORY[0x277D686D0]);
      (v118)(v114, v121);
      sub_2206178D0(v102, type metadata accessor for StocksActivity);
      sub_220617CEC(v122, qword_281295190, type metadata accessor for StocksActivity);
      sub_2206178D0(v119, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
      return sub_220617AE4(&v124, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    }

    else
    {
      sub_22088B01C();
      (v77)(v71, v121);
      sub_2206178D0(v70, type metadata accessor for StocksActivity);
      sub_220617CEC(v63, qword_281295190, type metadata accessor for StocksActivity);
      return sub_2206178D0(v119, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    }
  }
}

uint64_t sub_220616958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_220617760(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v49 - v6;
  v8 = sub_22088822C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_2208876BC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_220887C9C();
  v14 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088744C();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v23, a1, v18, v21);
  v24 = (*(v19 + 88))(v23, v18);
  if (v24 == *MEMORY[0x277D2F9B0])
  {
    (*(v19 + 96))(v23, v18);
    v25 = *v23;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_22089254C();

    v52 = 0xD000000000000013;
    v53 = 0x80000002208C6A60;
    v26 = [v25 identifier];
    v27 = sub_22089136C();
    v29 = v28;

    MEMORY[0x223D89680](v27, v29);

    sub_220884E8C();

    swift_unknownObjectRelease();
    sub_220617BB0(v7, a2, &qword_2812994E0, MEMORY[0x277CC9260]);
    v30 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute(0);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
  }

  if (v24 == *MEMORY[0x277D2F9A8])
  {
    (*(v19 + 96))(v23, v18);
    sub_220617930(0, v31);
    v33 = v32[12];
    v34 = v32[16];
    v49 = *(v23 + v32[20] + 8);
    v35 = v14;
    v36 = *(v14 + 32);
    v37 = v50;
    v36(v17, v23 + v33, v50);
    sub_220457328((v23 + v34), &v52);
    swift_unknownObjectRetain();
    sub_2208881FC();
    sub_22046DA2C(&v52, v51);
    sub_220887E9C();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_220887E8C();
    sub_2208876AC();

    sub_2204481D8(0);
    v39 = *(v38 + 48);
    v40 = a2 + *(v38 + 64);
    sub_220617868(v13, a2, MEMORY[0x277D2FB40]);
    *v40 = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_2206178D0(v13, MEMORY[0x277D2FB40]);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    (*(v35 + 8))(v17, v37);
    *(a2 + v39) = 0;
LABEL_7:
    type metadata accessor for StocksActivity.Article(0);
    swift_storeEnumTagMultiPayload();
    v45 = type metadata accessor for StocksActivity(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v45 - 8) + 56))(a2, 0, 1, v45);
    v30 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute(0);
    goto LABEL_8;
  }

  if (v24 == *MEMORY[0x277D2F980])
  {
    (*(v19 + 96))(v23, v18);
    v41 = MEMORY[0x277D2FB40];
    sub_220617800(v23, v13, MEMORY[0x277D2FB40]);
    sub_2204481D8(0);
    v43 = *(v42 + 48);
    v44 = a2 + *(v42 + 64);
    sub_220617868(v13, a2, MEMORY[0x277D2FB40]);
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0;
    sub_2206178D0(v13, v41);
    *(a2 + v43) = 0;
    goto LABEL_7;
  }

  if (v24 == *MEMORY[0x277D2F990])
  {
    (*(v19 + 8))(v23, v18);
    v47 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute(0);
    return (*(*(v47 - 8) + 56))(a2, 1, 1, v47);
  }

  else
  {
    v48 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute(0);
    (*(*(v48 - 8) + 56))(a2, 1, 1, v48);
    return (*(v19 + 8))(v23, v18);
  }
}

uint64_t sub_220617068(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for StocksActivity(0);
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220617760(0, qword_281295190, type metadata accessor for StocksActivity);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v42 - v13;
  sub_220617760(0, &unk_281295D30, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v42 - v26;
  sub_220616958(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v28 = &unk_281295D30;
    v29 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute;
    v30 = v18;
LABEL_3:
    sub_220617CEC(v30, v28, v29);
    return 0;
  }

  sub_220617800(v18, v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  sub_220617868(v27, v23, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2206178D0(v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    sub_2206178D0(v23, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    return 0;
  }

  v32 = v23;
  v33 = v14;
  sub_220617BB0(v32, v14, qword_281295190, type metadata accessor for StocksActivity);
  sub_220617B44(v14, v10, qword_281295190, type metadata accessor for StocksActivity);
  if ((*(v44 + 48))(v10, 1, v4) == 1)
  {
    sub_220617CEC(v14, qword_281295190, type metadata accessor for StocksActivity);
    sub_2206178D0(v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    v30 = v10;
    v28 = qword_281295190;
    v29 = type metadata accessor for StocksActivity;
    goto LABEL_3;
  }

  v34 = v43;
  sub_220617800(v10, v43, type metadata accessor for StocksActivity);
  v35 = *(v2 + 56);
  sub_22046DA2C(v2 + 64, v48);
  v47[4] = v35;
  v36 = v42;
  if (v42)
  {
    v37 = sub_22088731C();
    v38 = v36;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v47[1] = 0;
    v47[2] = 0;
  }

  v47[0] = v38;
  v47[3] = v37;
  sub_220617A74(v48, v45, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v40 = v45[1];
  *(v39 + 24) = v45[0];
  *(v39 + 40) = v40;
  *(v39 + 56) = v46;
  sub_2204549FC(0);
  sub_220448A78(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  swift_retain_n();
  v41 = sub_22088E91C();

  sub_220617AE4(v48, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220447FB4);
  sub_2206178D0(v34, type metadata accessor for StocksActivity);
  sub_220617CEC(v33, qword_281295190, type metadata accessor for StocksActivity);
  sub_2206178D0(v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  sub_220617AE4(v47, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  return v41;
}

uint64_t sub_220617694()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return swift_deallocClassInstance();
}

void sub_220617760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for StocksNewsArticlesRouter.ArticleRoute(uint64_t a1)
{
  result = qword_281295D40;
  if (!qword_281295D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220617800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220617868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206178D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220617930(uint64_t a1, uint64_t a2)
{
  if (!qword_27CF57A68)
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_22044826C();
    sub_220887C9C();
    sub_220446A58(255, &qword_2812989F8, MEMORY[0x277D302A0], 1);
    sub_220446A58(255, &qword_281298AA0, MEMORY[0x277D30050], 0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27CF57A68);
    }
  }
}

uint64_t sub_220617A74(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_220447FB4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_220617AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_220617B44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220617760(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220617BB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220617760(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220617C1C()
{
  sub_220617760(0, &qword_281298480, MEMORY[0x277D686D0]);

  return sub_220598700();
}

uint64_t sub_220617CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220617760(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220617D48(uint64_t a1)
{
  sub_220617760(319, qword_281295190, type metadata accessor for StocksActivity);
  if (v1 <= 0x3F)
  {
    sub_220617760(319, &qword_2812994E0, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_220617DF4(uint64_t a1)
{
  sub_220458660(0, &qword_281294298, &type metadata for ForYouFeedPool);
  sub_220888FBC();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;

  v4 = sub_220888D9C();
  sub_22089066C();
  sub_220888E3C();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;

  v6 = sub_220888D9C();
  sub_22052B704(0);
  sub_220888E3C();

  v7 = sub_220888D9C();
  v8 = sub_220888F0C();

  return v8;
}

uint64_t sub_220617FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v120 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_22061A154(0, &qword_281296808, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v116 = v92 - v6;
  sub_22061A154(0, &unk_2812967D0, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v115 = v92 - v9;
  sub_22061A154(0, &qword_281296B18, sub_22044CF38, v3);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v112 = v92 - v12;
  v13 = sub_2208906EC();
  v118 = *(v13 - 8);
  v119 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v117 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22089039C();
  v125 = *(v16 - 8);
  v126 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v124 = v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CuratedForYouFeedGroupConfigData(0) - 8;
  MEMORY[0x28223BE20](v121, v19);
  v114 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v113 = v92 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v109 = (v92 - v26);
  MEMORY[0x28223BE20](v27, v28);
  v106 = v92 - v29;
  v103 = sub_22088FD9C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v30);
  v101 = (v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_22088FBAC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v32);
  v98 = v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22088FDCC();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v34);
  v95 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_281296980, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v94 = v92 - v38;
  v39 = sub_22088FFFC();
  MEMORY[0x28223BE20](v39 - 8, v40);
  v92[1] = v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_2812967F8, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v93 = v92 - v44;
  v107 = sub_22089068C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v45);
  v129 = v92 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22088F44C();
  MEMORY[0x28223BE20](v47 - 8, v48);
  v92[0] = v92 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2208909AC();
  v122 = *(v50 - 8);
  v123 = v50;
  MEMORY[0x28223BE20](v50, v51);
  v127 = v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_281296D50, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v53 - 8, v54);
  v56 = v92 - v55;
  v111 = sub_2208904CC();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v57);
  v59 = v92 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22088ECFC();
  (*(*(v60 - 8) + 56))(v56, 1, 1, v60);
  v61 = MEMORY[0x277D84F90];
  sub_22061A200(MEMORY[0x277D84F90], sub_22061A934);
  sub_22061A200(v61, sub_22061A934);
  sub_22061A314(v61, sub_22061A858);
  sub_22061A200(v61, sub_22061A7D0);
  sub_22061A314(v61, sub_22061A760);
  sub_22061A314(v61, sub_22061A6F0);
  sub_22061A428(v61);
  v108 = v59;
  sub_2208904BC();
  sub_22088FA3C();
  sub_2208909BC();
  sub_22088FA8C();
  v62 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs;
  v128[3] = type metadata accessor for CuratedForYouFeedGroupKnobs(0);
  v128[4] = sub_22044DF88(&qword_281288618, type metadata accessor for CuratedForYouFeedGroupKnobs, &unk_2208A306C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v128);
  v64 = v104;
  sub_22061A688(v104 + v62, boxed_opaque_existential_1, type metadata accessor for CuratedForYouFeedGroupKnobs);
  v65 = v93;
  sub_2208906FC();
  v66 = sub_22089070C();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  sub_22061A154(0, &qword_28127DFB0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v67 = sub_2208909DC();
  v68 = *(v67 - 8);
  v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_220899360;
  (*(v68 + 104))(v70 + v69, *MEMORY[0x277D33FA8], v67);
  sub_2207E1AE4(v70);
  swift_setDeallocating();
  (*(v68 + 8))(v70 + v69, v67);
  swift_deallocClassInstance();
  v71 = sub_22088FEDC();
  (*(*(v71 - 8) + 56))(v94, 1, 1, v71);
  (*(v96 + 104))(v95, *MEMORY[0x277D329E0], v97);
  (*(v99 + 104))(v98, *MEMORY[0x277D32670], v100);
  (*(v102 + 104))(v101, *MEMORY[0x277D32840], v103);
  sub_22089067C();
  v72 = *(v64 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService + 24);
  v102 = *(v64 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService + 32);
  v103 = v72;
  v101 = __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService), v72);
  sub_22044CD9C(0);
  v73 = v106;
  sub_22088F48C();
  (*(v125 + 16))(v124, v73 + *(v121 + 28), v126);
  sub_22061AA58(v73, type metadata accessor for CuratedForYouFeedGroupConfigData);
  sub_22044CF38(0);
  (*(*(v74 - 8) + 56))(v112, 1, 1, v74);
  v75 = v109;
  sub_22088F48C();
  v106 = *v75;

  sub_22061AA58(v75, type metadata accessor for CuratedForYouFeedGroupConfigData);
  v77 = v122;
  v76 = v123;
  v78 = v115;
  (*(v122 + 16))(v115, v127, v123);
  (*(v77 + 56))(v78, 0, 1, v76);
  LOBYTE(v128[0]) = 2;
  sub_22044CFDC(0, &qword_2812967B8, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_2208909CC();
  v79 = v113;
  sub_22088F48C();
  sub_2207F268C();
  v80 = v79;
  v81 = v105;
  sub_22061AA58(v80, type metadata accessor for CuratedForYouFeedGroupConfigData);
  v82 = v114;
  sub_22088F48C();
  v83 = v82;
  v84 = v107;
  v85 = v116;
  sub_22061AA58(v83, type metadata accessor for CuratedForYouFeedGroupConfigData);
  (*(v81 + 16))(v85, v129, v84);
  (*(v81 + 56))(v85, 0, 1, v84);
  v86 = qword_281294340;
  *MEMORY[0x277D30BC8];
  if (v86 != -1)
  {
    swift_once();
  }

  qword_281294348;
  v87 = v117;
  sub_2208906DC();
  v88 = v124;
  v89 = v108;
  v90 = sub_22089051C();
  (*(v118 + 8))(v87, v119);
  (*(v125 + 8))(v88, v126);
  (*(v81 + 8))(v129, v84);
  (*(v122 + 8))(v127, v123);
  (*(v110 + 8))(v89, v111);
  return v90;
}

uint64_t sub_22061903C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_22052B704(0);
  v43 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v42 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v40 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CuratedForYouFeedGroup(0) - 8;
  MEMORY[0x28223BE20](v41, v10);
  v39 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_281296B70, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v37 = v34 - v14;
  v15 = sub_22088FB9C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v34[0] = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v38 = sub_22088F39C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v20);
  v34[1] = *a1;
  v35 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044CD9C(0);

  sub_22088F47C();
  sub_22088F47C();
  sub_22044CF38(0);
  sub_22088F80C();
  sub_22088F7FC();
  sub_22088F81C();
  v22 = sub_22088F68C();
  (*(*(v22 - 8) + 56))(v37, 1, 1, v22);
  v23 = v35;
  sub_22088F35C();
  v24 = v36;
  v25 = v38;
  v26 = v39;
  v27 = v23;
  (*(v36 + 16))(v39, v23, v38);
  v28 = v40;
  sub_22088F48C();
  v30 = *v28;
  v29 = v28[1];

  sub_22061AA58(v28, type metadata accessor for CuratedForYouFeedGroupConfigData);
  v31 = (v26 + *(v41 + 28));
  *v31 = v30;
  v31[1] = v29;
  sub_22061A688(v26, v42, type metadata accessor for CuratedForYouFeedGroup);
  type metadata accessor for ForYouFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22061A154(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v32 = sub_220888ECC();
  sub_22061AA58(v26, type metadata accessor for CuratedForYouFeedGroup);
  (*(v24 + 8))(v27, v25);
  return v32;
}

double sub_220619558(uint64_t a1)
{
  v1 = type metadata accessor for CuratedForYouFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[0] = 0x2064657461727543;
  v8[1] = 0xE900000000000028;
  sub_22044CD9C(0);
  sub_22088F48C();
  v5 = *v4;
  v6 = v4[1];

  sub_22061AA58(v4, type metadata accessor for CuratedForYouFeedGroupConfigData);
  MEMORY[0x223D89680](v5, v6);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  type metadata accessor for ForYouFeedGroup(0);
  sub_22044DF88(&qword_281293440, type metadata accessor for ForYouFeedGroup, &unk_2208B6450);
  sub_22088FA9C();

  return result;
}

uint64_t sub_220619714()
{
  v1 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_config;
  sub_22044CD9C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22061AA58(v0 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CuratedForYouFeedGroupEmitter(uint64_t a1)
{
  result = qword_281286820;
  if (!qword_281286820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220619838(uint64_t a1)
{
  sub_22044CD9C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CuratedForYouFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22061990C()
{
  sub_22061A9B8(0);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22061997C()
{
  v0 = type metadata accessor for CuratedForYouFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[0] = 0x2064657461727543;
  v7[1] = 0xE900000000000028;
  sub_22044CD9C(0);
  sub_22088F48C();
  v4 = *v3;
  v5 = v3[1];

  sub_22061AA58(v3, type metadata accessor for CuratedForYouFeedGroupConfigData);
  MEMORY[0x223D89680](v4, v5);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  return v7[0];
}

uint64_t sub_220619A78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_config;
  sub_22044CD9C(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for ForYouFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220619B0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for CuratedForYouFeedGroupKnobs(0);
  a1[4] = sub_22044DF88(&qword_281288610, type metadata accessor for CuratedForYouFeedGroupKnobs, &unk_2208A30FC);
  a1[5] = sub_22044DF88(&qword_27CF57AF8, type metadata accessor for CuratedForYouFeedGroupKnobs, &unk_2208A30D4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22061A688(v3 + v4, boxed_opaque_existential_1, type metadata accessor for CuratedForYouFeedGroupKnobs);
}

uint64_t sub_220619C80@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for CuratedForYouFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0x2064657461727543;
  v16 = 0xE900000000000028;
  sub_22044CD9C(0);
  sub_22088F48C();
  v7 = *v6;
  v8 = v6[1];

  sub_22061AA58(v6, type metadata accessor for CuratedForYouFeedGroupConfigData);
  MEMORY[0x223D89680](v7, v8);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  sub_22061A154(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v10 = sub_22088F46C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_22061AA58(inited + 32, sub_22052BFB4);
  sub_22061AA24(0);
  a2[3] = v12;
  a2[4] = sub_22044DF88(&qword_281298868, sub_22061AA24, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_22088883C();
}

uint64_t sub_220619EC4(uint64_t a1)
{
  sub_22044DF88(&qword_281286840, type metadata accessor for CuratedForYouFeedGroupEmitter, &unk_2208A24A0);

  return sub_22088882C();
}

uint64_t objectdestroyTm_6()
{

  return swift_deallocObject();
}

void sub_22061A154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22061A200(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2204AF97C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22061A314(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2204AF97C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22061A428(uint64_t a1)
{
  sub_22061A620(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22061A954(0, &qword_27CF57A78, MEMORY[0x277D34648]);
    v9 = sub_2208926DC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_22061A688(v11, v7, sub_22061A620);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2204AF97C(*v7, v14);
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
      v20 = sub_220890B6C();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22061A620(uint64_t a1)
{
  if (!qword_28127EBB0)
  {
    sub_220890B6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EBB0);
    }
  }
}

uint64_t sub_22061A688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22061A80C()
{
  result = qword_27CF57AC0;
  if (!qword_27CF57AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF57AC0);
  }

  return result;
}

void sub_22061A894(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22061A154(255, a3, a4, a5);
    v6 = sub_2208926EC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22061A954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2208926EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22061A9B8(uint64_t a1)
{
  if (!qword_2812985E0)
  {
    sub_220458660(255, &qword_28127DE00, MEMORY[0x277D84F70] + 8);
    v1 = sub_220888F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812985E0);
    }
  }
}

uint64_t sub_22061AA58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_22061AAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22061AB10();
  }

  return result;
}

void sub_22061AB10()
{
  v112 = sub_220885DBC();
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v1);
  v111 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SortWatchlistCommandContext(0);
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v107 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v103 = &v101 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v101 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v101 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v101 - v19;
  v21 = sub_220885DFC();
  v105 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_220886A4C();
  v25 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v26);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v0 + 64);
  v114 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 40), v29);
  v30 = v105;
  sub_2208863EC();
  sub_220886A3C();
  (*(v25 + 8))(v28, v113);
  v31 = *(v30 + 88);
  v104 = v24;
  v113 = v21;
  v32 = v31(v24, v21);
  v33 = v32;
  if (v32 == *MEMORY[0x277D694A8])
  {
    v34 = sub_220885D9C();
    v35 = *(v34 + 16);
    if (v35)
    {
      v108 = v33;
      v116 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v35, 0);
      v36 = v116;
      v37 = *(v115 + 16);
      v38 = *(v115 + 80);
      v103 = v34;
      v39 = v34 + ((v38 + 32) & ~v38);
      v106 = *(v115 + 72);
      v107 = v37;
      v115 += 16;
      v40 = (v115 + 16);
      v41 = (v30 + 104);
      do
      {
        v42 = v111;
        v43 = v112;
        v107(v111, v39, v112);
        __swift_project_boxed_opaque_existential_1((v114 + 40), *(v114 + 64));
        sub_2208863EC();
        v44 = v110;
        v45 = *(v110 + 20);
        (*v40)(&v20[v45], v42, v43);
        (*v41)(&v20[v45], v108, v113);
        v20[*(v44 + 24)] = 1;
        v116 = v36;
        v47 = *(v36 + 16);
        v46 = *(v36 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_22070C08C((v46 > 1), v47 + 1, 1);
          v36 = v116;
        }

        *(v36 + 16) = v47 + 1;
        sub_22061BAC8(v20, v36 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v47);
        v39 += v106;
        --v35;
      }

      while (v35);
LABEL_21:

      v30 = v105;
LABEL_37:
      (*(v30 + 8))(v104, v113);
LABEL_38:
      v116 = v36;

      sub_22088865C();

      return;
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694B8])
  {
    v48 = sub_220885D9C();
    v49 = *(v48 + 16);
    if (v49)
    {
      v108 = v33;
      v116 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v49, 0);
      v36 = v116;
      v50 = *(v115 + 16);
      v51 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v103 = v48;
      v52 = v48 + v51;
      v106 = *(v115 + 72);
      v107 = v50;
      v115 += 16;
      v53 = (v115 + 16);
      v54 = (v30 + 104);
      v55 = v111;
      do
      {
        v56 = v112;
        v107(v55, v52, v112);
        __swift_project_boxed_opaque_existential_1((v114 + 40), *(v114 + 64));
        sub_2208863EC();
        v57 = v110;
        v58 = *(v110 + 20);
        (*v53)(&v16[v58], v55, v56);
        (*v54)(&v16[v58], v108, v113);
        v16[*(v57 + 24)] = 1;
        v116 = v36;
        v60 = *(v36 + 16);
        v59 = *(v36 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_22070C08C((v59 > 1), v60 + 1, 1);
          v36 = v116;
        }

        *(v36 + 16) = v60 + 1;
        sub_22061BAC8(v16, v36 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v60);
        v52 += v106;
        --v49;
      }

      while (v49);
      goto LABEL_21;
    }

LABEL_36:

    v36 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  if (v32 == *MEMORY[0x277D694F0])
  {
    v61 = sub_220885D9C();
    v62 = *(v61 + 16);
    if (v62)
    {
      v108 = v33;
      v116 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v62, 0);
      v36 = v116;
      v63 = *(v115 + 16);
      v64 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v103 = v61;
      v65 = v61 + v64;
      v106 = *(v115 + 72);
      v107 = v63;
      v115 += 16;
      v66 = (v115 + 16);
      v67 = (v30 + 104);
      v68 = v111;
      do
      {
        v69 = v112;
        v107(v68, v65, v112);
        __swift_project_boxed_opaque_existential_1((v114 + 40), *(v114 + 64));
        sub_2208863EC();
        v70 = v110;
        v71 = *(v110 + 20);
        (*v66)(&v12[v71], v68, v69);
        (*v67)(&v12[v71], v108, v113);
        v12[*(v70 + 24)] = 1;
        v116 = v36;
        v73 = *(v36 + 16);
        v72 = *(v36 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_22070C08C((v72 > 1), v73 + 1, 1);
          v36 = v116;
        }

        *(v36 + 16) = v73 + 1;
        sub_22061BAC8(v12, v36 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v73);
        v65 += v106;
        --v62;
      }

      while (v62);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694E8])
  {
    v74 = sub_220885D9C();
    v75 = *(v74 + 16);
    if (v75)
    {
      v108 = v33;
      v116 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v75, 0);
      v36 = v116;
      v76 = *(v115 + 16);
      v77 = *(v115 + 80);
      v102 = v74;
      v78 = v74 + ((v77 + 32) & ~v77);
      v106 = *(v115 + 72);
      v107 = v76;
      v115 += 16;
      v79 = (v115 + 16);
      v80 = (v30 + 104);
      v81 = v103;
      do
      {
        v82 = v111;
        v83 = v112;
        v107(v111, v78, v112);
        __swift_project_boxed_opaque_existential_1((v114 + 40), *(v114 + 64));
        sub_2208863EC();
        v84 = v110;
        v85 = *(v110 + 20);
        (*v79)(v81 + v85, v82, v83);
        (*v80)(v81 + v85, v108, v113);
        *(v81 + *(v84 + 24)) = 1;
        v116 = v36;
        v87 = *(v36 + 16);
        v86 = *(v36 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_22070C08C((v86 > 1), v87 + 1, 1);
          v36 = v116;
        }

        *(v36 + 16) = v87 + 1;
        sub_22061BAC8(v81, v36 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v87);
        v78 += v106;
        --v75;
      }

      while (v75);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694C0])
  {
    v88 = sub_220885D9C();
    v89 = *(v88 + 16);
    if (v89)
    {
      v108 = v33;
      v116 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v89, 0);
      v36 = v116;
      v106 = *(v115 + 16);
      v90 = v88 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v91 = *(v115 + 72);
      v102 = v88;
      v103 = v91;
      v115 += 16;
      v92 = (v115 + 16);
      v93 = (v30 + 104);
      v94 = v107;
      do
      {
        v95 = v111;
        v96 = v112;
        v106(v111, v90, v112);
        __swift_project_boxed_opaque_existential_1((v114 + 40), *(v114 + 64));
        sub_2208863EC();
        v97 = v110;
        v98 = *(v110 + 20);
        (*v92)(v94 + v98, v95, v96);
        (*v93)(v94 + v98, v108, v113);
        *(v94 + *(v97 + 24)) = 1;
        v116 = v36;
        v100 = *(v36 + 16);
        v99 = *(v36 + 24);
        if (v100 >= v99 >> 1)
        {
          sub_22070C08C((v99 > 1), v100 + 1, 1);
          v36 = v116;
        }

        *(v36 + 16) = v100 + 1;
        sub_22061BAC8(v94, v36 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v100);
        v90 += v103;
        --v89;
      }

      while (v89);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694E0])
  {
    v36 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  sub_2208928AC();
  __break(1u);
}

void *sub_22061B694(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v10[0] = MEMORY[0x277D84F90];
  sub_22061B9EC(0, &qword_2812988F8, sub_22061B9B8, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v3[2] = sub_22088866C();
  v3[3] = a1;
  v3[4] = a2;
  sub_22046DA2C(a3, (v3 + 5));
  swift_getObjectType();
  v8 = qword_281296FA0;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_220886A4C();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296FD0 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296F78 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22061BA74();

  sub_220885FAC();

  sub_22061AB10();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

void sub_22061B9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22061BA74()
{
  result = qword_281281648;
  if (!qword_281281648)
  {
    type metadata accessor for OrderWatchlistMenuGroupOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281281648);
  }

  return result;
}

uint64_t sub_22061BAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SortWatchlistCommandContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22061BB30(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v54 = a3;
  sub_22061D1D0(0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v14, v15);
  v53 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22061C840(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B6BAC(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  sub_22061D204(a1, v20, sub_22061C840);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    sub_22061D368(v20, sub_22061C840);
  }

  else
  {
    (*(v23 + 32))(v26, v20, v22);
    if (v27 == 2 || (v28 = v54) == 0)
    {
      (*(v23 + 8))(v26, v22);
    }

    else
    {

      v29 = sub_2208905AC();
      if (v29 == 4 || (v30 = v29, (sub_2208905BC() & 1) == 0))
      {
        (*(v23 + 8))(v26, v22);
      }

      else
      {
        v31 = v28;
        if (v30)
        {
          v31 = v28 | 0x2000000000000000;
        }

        *v53 = v31;
        swift_storeEnumTagMultiPayload();

        sub_22088C4AC();
        sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
        v47 = sub_22088731C();
        if (swift_dynamicCast())
        {
          v32 = *&v61[0];
        }

        else
        {
          v32 = 0;
        }

        v33 = sub_22088969C();
        (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
        v64 = 0;
        memset(v63, 0, sizeof(v63));
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        v60 = v51;
        sub_2205A0924(v61, &v55, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
        if (v57)
        {
          sub_220458198(&v55, v58);
          v50 = sub_220597454(v58);
          v35 = v34;
          v37 = v36;
          __swift_destroy_boxed_opaque_existential_1(v58);
        }

        else
        {
          sub_2205A0B34(&v55, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          if (qword_2812908F0 != -1)
          {
            swift_once();
          }

          v35 = qword_281290900;
          v37 = qword_281290908;
          v50 = qword_2812908F8;

          sub_2204A80F4(v35, v37);
        }

        v49 = v37;
        v38 = v47;
        v48 = v35;
        if (v32)
        {
          v51 = v32;
        }

        else
        {
          v51 = 0;
          v38 = 0;
          *(&v55 + 1) = 0;
          v56 = 0;
        }

        *&v55 = v51;
        v57 = v38;
        sub_22061D204(v13, v9, sub_22061D1D0);
        sub_2205A0924(v63, v58, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
        v39 = (v52[80] + 24) & ~v52[80];
        v52 = v13;
        v40 = (v7 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
        v41 = swift_allocObject();
        *(v41 + 16) = v32;
        sub_2205A0994(v9, v41 + v39);
        v42 = v41 + v40;
        v43 = v58[1];
        *v42 = v58[0];
        *(v42 + 16) = v43;
        *(v42 + 32) = v59;
        v44 = (v41 + ((v40 + 47) & 0xFFFFFFFFFFFFFFF8));
        v45 = v48;
        *v44 = v50;
        v44[1] = v45;
        v46 = v49;
        v44[2] = v49;
        swift_retain_n();

        sub_2204A80F4(v45, v46);
        sub_2204549FC(0);
        sub_22061D320(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
        sub_22088E92C();

        sub_2204DA45C(v45, v46);
        sub_2205A0B34(v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_2205A0B34(v63, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_22061D368(v52, sub_22061D1D0);
        sub_22061D368(v53, type metadata accessor for StocksActivity);
        (*(v23 + 8))(v26, v22);
        sub_2205A0B34(&v55, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
      }
    }
  }
}

void sub_22061C480(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = sub_22089024C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22061C840(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B6BAC(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  sub_22061D204(a1, v15, sub_22061C840);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_22061D368(v15, sub_22061C840);
    return;
  }

  (*(v18 + 32))(v21, v15, v17);
  if (a3)
  {
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      if (v22 == 2)
      {
        (*(v18 + 8))(v21, v17);

        return;
      }

      sub_22089059C();
      if ((*(v8 + 88))(v11, v7) != *MEMORY[0x277D33370])
      {
        (*(v18 + 8))(v21, v17);

        (*(v8 + 8))(v11, v7);
        return;
      }

      (*(v8 + 96))(v11, v7);
      v23 = *v11;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a3;
      *(v24 + 32) = v26;
      *(v24 + 40) = v22 & 1;
      swift_unknownObjectRetain();

      sub_22088726C();
      swift_unknownObjectRelease();
    }
  }

  (*(v18 + 8))(v21, v17);
}

void sub_22061C874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_22061C8D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, __n128 a6)
{
  v69 = a5;
  v68 = a4;
  v75 = a3;
  v78 = a1;
  v58 = sub_2208891DC();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v7);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220889BFC();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v64 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061C874(0, &qword_27CF57700, MEMORY[0x277D6E130], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v56 - v14;
  v16 = sub_22088929C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v60 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22088907C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2208895EC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v67 = a2;
  sub_2206F61F0(v26);
  sub_22061C874(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v28 = v27;
  v29 = sub_220886F8C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = (v31 + 32) & ~v31;
  v71 = *(v30 + 72);
  v73 = v28;
  v33 = swift_allocObject();
  v77 = xmmword_220899360;
  *(v33 + 16) = xmmword_220899360;
  v34 = *(v30 + 104);
  v70 = *MEMORY[0x277CEAD18];
  v74 = v29;
  v76 = v34;
  v34(v33 + v32);
  sub_22061D320(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v72 = "uGroupOptionProvider";
  sub_220886F1C();

  (*(v23 + 8))(v26, v22);
  if (v75)
  {
    sub_22088C4CC();
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = sub_22088CA0C();
  (*(*(v36 - 8) + 56))(v15, v35, 1, v36);
  sub_2208892AC();
  sub_22088906C();
  v37 = swift_allocObject();
  *(v37 + 16) = v77;
  v38 = v31;
  v39 = v70;
  v40 = v74;
  v75 = v32;
  v59 = v30 + 104;
  v76(v37 + v32, v70, v74);
  sub_22061D320(&unk_27CF57B10, MEMORY[0x277D68200], MEMORY[0x277D681F8]);
  v41 = v63;
  sub_220886F1C();

  (*(v62 + 8))(v21, v41);
  v43 = v67;
  v42 = v68;
  v44 = v64;
  sub_2206F69A0(*(v68 + 80));
  v45 = v75;
  v63 = v38;
  v46 = swift_allocObject();
  *(v46 + 16) = v77;
  v47 = v39;
  v48 = v76;
  v76(v46 + v45, v47, v40);
  sub_22061D320(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
  v49 = v66;
  sub_220886F1C();

  (*(v65 + 8))(v44, v49);
  result = [v43 sourceChannel];
  if (result)
  {
    v51 = result;
    __swift_project_boxed_opaque_existential_1((v42 + 40), *(v42 + 64));
    v52 = v56;
    sub_2206EC95C(v51, v53);
    v54 = swift_allocObject();
    *(v54 + 16) = v77;
    v48(v54 + v45, v70, v74);
    sub_22061D320(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v55 = v58;
    sub_220886F1C();
    swift_unknownObjectRelease();

    result = (*(v57 + 8))(v52, v55);
  }

  if ((v69 & 1) == 0)
  {
    sub_22088A14C();
    sub_22061D320(&qword_27CF57B20, MEMORY[0x277D69080], MEMORY[0x277D69078]);
    memset(v79, 0, 32);
    sub_220886F3C();
    return sub_2205A0B34(v79, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }

  return result;
}

uint64_t sub_22061D204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22061D26C()
{
  sub_22061D1D0(0);

  return sub_220598700();
}

uint64_t sub_22061D320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22061D368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22061D3C8@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v34 = MEMORY[0x277D85248];
  sub_22044D824(0, &qword_28127E7D0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v30 = &v30 - v4;
  sub_2204753E0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CD4C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CDFC(0);
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager), *(v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager + 24));
  sub_22088600C();
  swift_getKeyPath();
  v22 = MEMORY[0x277CBCBE0];
  sub_2204534D8(&qword_281296E10, sub_2204753E0, MEMORY[0x277CBCBE0]);
  sub_22088EB9C();

  (*(v7 + 8))(v10, v6);
  sub_2204534D8(&qword_281296E40, sub_22049CD4C, MEMORY[0x277CBCB20]);
  sub_2204534D8(&qword_2812992E8, MEMORY[0x277D69488], MEMORY[0x277D69490]);
  sub_22088EBCC();
  (*(v13 + 8))(v16, v12);
  sub_22046D5B4();
  v23 = sub_220891D0C();
  v35 = v23;
  v24 = sub_220891CEC();
  v25 = v30;
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  sub_22049CE94(0);
  v26 = v33;
  v33[3] = v27;
  v26[4] = sub_2204534D8(&qword_281296DD0, sub_22049CE94, MEMORY[0x277CBCD60]);
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_2204534D8(&qword_281296E20, sub_22049CDFC, v22);
  sub_2204534D8(&qword_28127E7C8, sub_22046D5B4, MEMORY[0x277D85228]);
  v28 = v31;
  sub_22088EBAC();
  sub_22047EAD4(v25, &qword_28127E7D0, v34);

  return (*(v32 + 8))(v21, v28);
}

uint64_t sub_22061D89C()
{
  v1 = v0;
  v2 = sub_22088685C();
  v13 = *(v2 - 8);
  v3 = v13;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager;
  sub_22046DA2C(v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_2204534D8(&qword_28128EAC0, type metadata accessor for StockFeedDataManager, &unk_2208A27E0);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v14 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager;
  sub_22046DA2C(v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_2204534D8(&qword_28128EAC8, type metadata accessor for StockFeedDataManager, &unk_2208A27B0);
  sub_220885FDC();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v7 = *(v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataRefreshManager + 8);
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock, v2);
  v10 = *(v7 + 40);
  swift_unknownObjectRetain();
  v10(v6, ObjectType, v7);
  swift_unknownObjectRelease();
  v11 = *(v13 + 8);
  v11(v6, v2);
  sub_22054B9F8(v1 + 16);
  v11((v1 + v9), v2);
  __swift_destroy_boxed_opaque_existential_1((v1 + v14));
  __swift_destroy_boxed_opaque_existential_1((v1 + v15));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_quoteDetailManager));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService));

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_appConfigurationManager));

  sub_22047EAD4(v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_lastNewsRefreshDate, &qword_281299480, MEMORY[0x277CC9578]);
  return v1;
}

uint64_t sub_22061DBA8()
{
  sub_22061D89C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockFeedDataManager(uint64_t a1)
{
  result = qword_28128EAA8;
  if (!qword_28128EAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22061DC54(uint64_t a1)
{
  sub_22088685C();
  if (v1 <= 0x3F)
  {
    sub_22044D824(319, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22061DD90()
{
  v0 = sub_22088519C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = CACurrentMediaTime();
  sub_22088518C();
  v6 = sub_22088517C();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v9 = qword_281293920;
  sub_22048D7F8(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899920;
  v11 = sub_22088681C();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22048D860();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = v6;
  *(v10 + 80) = v8;

  v16 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) start fetching quote data, identifier=%{public}@", 70, 2, &dword_22043F000, v9, v16, v10);

  sub_22044D824(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  sub_220888FAC();
  v17 = swift_allocObject();
  v17[2] = v5;
  *(v17 + 3) = v6;
  *(v17 + 4) = v8;

  v18 = sub_220888D9C();
  type metadata accessor for StockFeedQuoteData(0);
  sub_220888E5C();

  v19 = swift_allocObject();
  v19[2] = v5;
  *(v19 + 3) = v6;
  *(v19 + 4) = v8;
  v20 = sub_220888D9C();
  v21 = sub_220888EAC();

  return v21;
}

uint64_t sub_22061E0DC(uint64_t a1)
{
  v2 = sub_22088831C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_quoteDetailManager), *(a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_quoteDetailManager + 24));
  sub_22088681C();
  *v6 = 0x4014000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x277D6CA48], v2);
  v7 = sub_2208860FC();

  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_22061E248(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v7 = type metadata accessor for StockFeedQuoteData(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v29 - v13;
  v15 = sub_22088676C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_2206216C0(a1, &v14[*(v7 + 20)], &qword_281299370, MEMORY[0x277D69178]);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v30 = qword_281293920;
  sub_22048D7F8(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22089EF70;
  v17 = sub_22088681C();
  v19 = v18;
  v20 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22048D860();
  *(v16 + 64) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_22089187C();
  v22 = MEMORY[0x277D83A80];
  *(v16 + 96) = MEMORY[0x277D839F8];
  *(v16 + 104) = v22;
  *(v16 + 72) = v23;
  *(v16 + 136) = v20;
  *(v16 + 144) = v21;
  *(v16 + 112) = v31;
  *(v16 + 120) = a5;
  v32 = 0;
  v33 = 0xE000000000000000;

  sub_22089264C();
  v24 = v32;
  v25 = v33;
  *(v16 + 176) = v20;
  *(v16 + 184) = v21;
  *(v16 + 152) = v24;
  *(v16 + 160) = v25;
  v26 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) successfully fetched quote data, time=%fms, identifier=%{public}@, quoteData=%@", 101, 2, &dword_22043F000, v30, v26, v16);

  sub_220621500(v14, v10);
  sub_22044D824(0, &unk_281298660, type metadata accessor for StockFeedQuoteData, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v27 = sub_220888ECC();
  sub_220621564(v14, type metadata accessor for StockFeedQuoteData);
  return v27;
}

uint64_t sub_22061E534(uint64_t a1)
{
  v34 = a1;
  v36 = *v1;
  v35 = sub_2208854FC();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v3);
  v32[1] = v4;
  v33 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088519C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = CACurrentMediaTime();
  sub_22088518C();
  v11 = sub_22088517C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v14 = qword_281293920;
  sub_22048D7F8(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220899920;
  v16 = sub_22088681C();
  v18 = v17;
  v19 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v20 = sub_22048D860();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = v19;
  *(v15 + 104) = v20;
  *(v15 + 64) = v20;
  *(v15 + 72) = v11;
  *(v15 + 80) = v13;

  v21 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) start fetching chart data, identifier=%{public}@", 70, 2, &dword_22043F000, v14, v21, v15);

  v22 = v33;
  v23 = v35;
  (*(v2 + 16))(v33, v34, v35);
  v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v25 = swift_allocObject();
  (*(v2 + 32))(v25 + v24, v22, v23);
  sub_22088665C();
  sub_220888FAC();

  v26 = swift_allocObject();
  v26[2] = v10;
  *(v26 + 3) = v11;
  *(v26 + 4) = v13;

  v27 = sub_220888D9C();
  sub_220888E5C();

  v28 = swift_allocObject();
  v28[2] = v10;
  *(v28 + 3) = v11;
  *(v28 + 4) = v13;
  v29 = sub_220888D9C();
  v30 = sub_220888EAC();

  return v30;
}

uint64_t sub_22061E940(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = sub_22088846C();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088831C();
  v15[0] = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[1] = *(a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_chartManager + 8);
  swift_getObjectType();
  sub_22088681C();
  *v11 = 0x404E000000000000;
  (*(v8 + 104))(v11, *MEMORY[0x277D6CA48], v7);
  v12 = v16;
  (*(v3 + 104))(v6, *MEMORY[0x277D6CAB8], v16);
  v13 = sub_220885AFC();

  (*(v3 + 8))(v6, v12);
  (*(v8 + 8))(v11, v15[0]);
  return v13;
}

uint64_t sub_22061EB80(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v25 = a4;
  v6 = sub_22088665C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v24 = qword_281293920;
  sub_22048D7F8(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22089EF70;
  v12 = sub_22088681C();
  v14 = v13;
  v15 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v16 = sub_22048D860();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_22089187C();
  v17 = MEMORY[0x277D83A80];
  *(v11 + 96) = MEMORY[0x277D839F8];
  *(v11 + 104) = v17;
  *(v11 + 72) = v18;
  *(v11 + 136) = v15;
  *(v11 + 144) = v16;
  *(v11 + 112) = v25;
  *(v11 + 120) = a5;
  v27 = 0;
  v28 = 0xE000000000000000;

  v19 = v26;
  sub_22089264C();
  v20 = v27;
  v21 = v28;
  *(v11 + 176) = v15;
  *(v11 + 184) = v16;
  *(v11 + 152) = v20;
  *(v11 + 160) = v21;
  v22 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) successfully fetched chart data, time=%fms, identifier=%{public}@, quoteData=%@", 101, 2, &dword_22043F000, v24, v22, v11);

  (*(v7 + 16))(v10, v19, v6);
  sub_22044D824(0, &qword_2812986A0, MEMORY[0x277D697C0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

void sub_22061EDFC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v9 = qword_281293920;
  sub_22048D7F8(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22089EF70;
  v11 = sub_22088681C();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22048D860();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_22089187C();
  v16 = MEMORY[0x277D83A80];
  *(v10 + 96) = MEMORY[0x277D839F8];
  *(v10 + 104) = v16;
  *(v10 + 72) = v17;
  *(v10 + 136) = v14;
  *(v10 + 144) = v15;
  *(v10 + 112) = a4;
  *(v10 + 120) = a5;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);

  sub_22089264C();
  *(v10 + 176) = v14;
  *(v10 + 184) = v15;
  *(v10 + 152) = 0;
  *(v10 + 160) = 0xE000000000000000;
  v18 = sub_220891AFC();
  sub_22088A7EC(a6, 100, 2, &dword_22043F000, v9, v18, v10);
}

uint64_t sub_22061EFA4()
{
  v0 = sub_22088519C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = CACurrentMediaTime();
  sub_22088518C();
  v6 = sub_22088517C();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  v9 = qword_2812948A8;
  sub_22048D7F8(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899920;
  v11 = sub_22088681C();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22048D860();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = v6;
  *(v10 + 80) = v8;

  v16 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) start fetching refreshed news data, identifier=%{public}@", 79, 2, &dword_22043F000, v9, v16, v10);

  type metadata accessor for StockFeedServiceConfig(0);
  sub_220888FBC();
  sub_2206213D8(0);
  sub_220888E5C();

  v17 = swift_allocObject();
  v17[2] = v5;
  *(v17 + 3) = v6;
  *(v17 + 4) = v8;

  v18 = sub_220888D9C();
  sub_220888E5C();

  v19 = swift_allocObject();
  v19[2] = v5;
  *(v19 + 3) = v6;
  *(v19 + 4) = v8;
  v20 = sub_220888D9C();
  v21 = sub_220888EAC();

  return v21;
}

uint64_t sub_22061F2EC(uint64_t a1)
{
  v2 = sub_22088519C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedServiceContext(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
  v13 = *(v12 + 28);
  v14 = sub_22088685C();
  (*(*(v14 - 8) + 16))(v10 + v13, a1 + v11, v14);
  sub_22088518C();
  v15 = sub_22088517C();
  v17 = v16;
  (*(v3 + 8))(v6, v2);
  *v10 = v15;
  v10[1] = v17;
  v18 = sub_22088F24C();
  sub_220621564(v10, type metadata accessor for StockFeedServiceContext);
  return v18;
}

uint64_t sub_22061F4AC(uint64_t a1, uint64_t a2)
{
  sub_220621344(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D824(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - v11;
  sub_22088515C();
  v13 = sub_22088516C();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_lastNewsRefreshDate;
  swift_beginAccess();
  sub_22062162C(v12, a2 + v14);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService + 24));
  type metadata accessor for StockFeedServiceConfig(0);
  sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  sub_22089012C();
  v15 = off_28341E1F0;
  type metadata accessor for StockFeedServiceProxy();
  v16 = v15();
  (*(v5 + 8))(v8, v4);
  return v16;
}

uint64_t sub_22061F720(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = qword_2812948A0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_2812948A8;
  sub_22048D7F8(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22089EF70;
  v10 = sub_22088681C();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22048D860();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_22089187C();
  v15 = MEMORY[0x277D83A80];
  *(v9 + 96) = MEMORY[0x277D839F8];
  *(v9 + 104) = v15;
  *(v9 + 72) = v16;
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  *(v9 + 112) = a4;
  *(v9 + 120) = a5;

  sub_22089264C();
  *(v9 + 176) = v13;
  *(v9 + 184) = v14;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0xE000000000000000;
  v17 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) successfully fetched refreshed news data, time=%fms, identifier=%{public}@, newsData=%@", 109, 2, &dword_22043F000, v8, v17, v9);

  sub_2204B81EC(0, &qword_27CF57B28, &type metadata for StockFeedNewsRefreshData);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22061F8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CACurrentMediaTime();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v7 = qword_281293920;
  sub_22048D7F8(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899920;
  v9 = sub_22088681C();
  v11 = v10;
  v12 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v13 = sub_22048D860();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 64) = v13;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;

  v14 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) start fetching expanded news data, identifier=%{public}@", 78, 2, &dword_22043F000, v7, v14, v8);

  *(swift_allocObject() + 16) = a3;
  sub_220621344(0);

  sub_220888FAC();

  sub_2206213D8(0);
  sub_220888E5C();

  v15 = swift_allocObject();
  *(v15 + 2) = a1;
  *(v15 + 3) = a2;
  v15[4] = v6;

  sub_220888E5C();

  v16 = swift_allocObject();
  v16[2] = v6;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;

  v17 = sub_220888D9C();
  v18 = sub_220888EAC();

  return v18;
}

uint64_t sub_22061FBE0(uint64_t a1, uint64_t a2)
{
  sub_220621344(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22088519C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedServiceContext(0);
  MEMORY[0x28223BE20](v15, v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *v9 = v20;
    (*(v6 + 104))(v9, *MEMORY[0x277D33090], v5);
    sub_22044D824(0, &qword_281298678, sub_220621344, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_220888ECC();
  }

  else
  {
    v22 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
    v23 = *(v17 + 20);
    v24 = sub_22088685C();
    (*(*(v24 - 8) + 16))(v19 + v23, a1 + v22, v24);
    sub_22088518C();
    v25 = sub_22088517C();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    *v19 = v25;
    v19[1] = v27;
    sub_22088F24C();
    sub_220621564(v19, type metadata accessor for StockFeedServiceContext);
    v28 = sub_220888D9C();
    v29 = sub_220888E4C();

    return v29;
  }
}

uint64_t sub_22061FEFC(uint64_t a1)
{
  type metadata accessor for StockFeedServiceConfig(0);
  sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  return sub_22089012C();
}

uint64_t sub_22061FF84(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService + 24));
  v2 = off_28341E1F0;
  type metadata accessor for StockFeedServiceProxy();
  return v2();
}

uint64_t sub_220620008(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = qword_2812948A0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_2812948A8;
  sub_22048D7F8(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22089EF70;
  v10 = sub_22088681C();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22048D860();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_22089187C();
  v15 = MEMORY[0x277D83A80];
  *(v9 + 96) = MEMORY[0x277D839F8];
  *(v9 + 104) = v15;
  *(v9 + 72) = v16;
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  *(v9 + 112) = a4;
  *(v9 + 120) = a5;

  sub_22089264C();
  *(v9 + 176) = v13;
  *(v9 + 184) = v14;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0xE000000000000000;
  v17 = sub_220891AFC();
  sub_22088A7EC("StockFeed(%{public}@) successfully fetched expanded news data, time=%fms, identifier=%{public}@, newsData=%@", 108, 2, &dword_22043F000, v8, v17, v9);

  sub_2204B81EC(0, &qword_281298628, &type metadata for StockFeedNewsExpandData);
  swift_allocObject();
  return sub_220888ECC();
}

void sub_2206201EC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  v10 = qword_2812948A8;
  sub_22048D7F8(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22089EF70;
  v12 = sub_22088681C();
  v14 = v13;
  v15 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v16 = sub_22048D860();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_22089187C();
  v17 = MEMORY[0x277D83A80];
  *(v11 + 96) = MEMORY[0x277D839F8];
  *(v11 + 104) = v17;
  *(v11 + 72) = v18;
  *(v11 + 136) = v15;
  *(v11 + 144) = v16;
  *(v11 + 112) = a4;
  *(v11 + 120) = a5;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);

  sub_22089264C();
  *(v11 + 176) = v15;
  *(v11 + 184) = v16;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0xE000000000000000;
  v19 = sub_220891AFC();
  sub_22088A7EC(a6, a7, 2, &dword_22043F000, v10, v19, v11);
}

uint64_t sub_220620398()
{
  v0 = sub_220885ACC();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D824(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = sub_22088516C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  v17 = sub_22088FB1C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298D98 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D325C0])
  {
    v23 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_lastNewsRefreshDate;
    v24 = v33;
    swift_beginAccess();
    sub_2206216C0(v24 + v23, v7, &qword_281299480, MEMORY[0x277CC9578]);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22047EAD4(v7, &qword_281299480, MEMORY[0x277CC9578]);
      return 0;
    }

    (*(v9 + 32))(v16, v7, v8);
    sub_22088515C();
    sub_22088507C();
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v12, v8);
    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_appConfigurationManager), *(v24 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_appConfigurationManager + 24));
    sub_22088641C();
    sub_220885A8C();
    v30 = v29;
    (*(v31 + 8))(v3, v32);
    v28(v16, v8);
    return v30 < v27;
  }

  else
  {
    if (v22 == *MEMORY[0x277D325C8])
    {
      return 0;
    }

    if (v22 == *MEMORY[0x277D325B8])
    {
      return 1;
    }

    else
    {
      result = sub_2208928AC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_220620800(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager), *(a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager + 24));
  sub_22044D824(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220899360;
  (*(v3 + 16))(v5 + v4, a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock, v2);
  v6 = sub_22088632C();

  return v6;
}

uint64_t sub_220620964@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22088581C();
  v4 = sub_22088681C();
  if (*(v3 + 16))
  {
    v6 = sub_2204AF97C(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(v3 + 56);
      v10 = sub_22088676C();
      v11 = *(v10 - 8);
      (*(v11 + 16))(a2, v9 + *(v11 + 72) * v6, v10);

      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  else
  {
  }

  v13 = sub_22088676C();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t sub_220620AF8()
{
  sub_22088582C();
  sub_220888FBC();

  v0 = sub_220888D9C();
  sub_22044D824(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  v1 = sub_220888E4C();

  return v1;
}

double sub_220620BD4()
{
  v1 = v0;
  v2 = sub_22088676C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_22088581C();
  v12 = sub_22088681C();
  if (*(v11 + 16))
  {
    v14 = sub_2204AF97C(v12, v13);
    v16 = v15;

    if (v16)
    {
      (*(v3 + 16))(v6, *(v11 + 56) + *(v3 + 72) * v14, v2);

      (*(v3 + 32))(v10, v6, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(v1, &off_283417078, v10, ObjectType, v17);
        swift_unknownObjectRelease();
      }

      (*(v3 + 8))(v10, v2);
      return result;
    }
  }

  else
  {
  }

  return result;
}

void sub_220620DF4()
{
  v0 = sub_22088685C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v39 = &v33 - v6;
  sub_220621778(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088579C();
  v43 = *(v13 + 16);
  if (v43)
  {
    v14 = 0;
    v38 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
    v41 = v9 + 88;
    v42 = v9 + 16;
    v40 = *MEMORY[0x277D6CC10];
    v37 = *MEMORY[0x277D6CC18];
    v35 = *MEMORY[0x277D6CC08];
    v15 = (v9 + 96);
    v16 = (v1 + 8);
    v17 = (v1 + 32);
    v33 = v17;
    v34 = v0;
    while (v14 < *(v13 + 16))
    {
      (*(v9 + 16))(v12, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);
      v18 = (*(v9 + 88))(v12, v8);
      if (v18 == v40)
      {
        (*v15)(v12, v8);
        v19 = v39;
        (*v17)(v39, v12, v0);
        if (MEMORY[0x223D7E940](v19, v44 + v38))
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v20 = v44;
            v21 = *(v44 + 24);
            ObjectType = swift_getObjectType();
            v23 = *(v21 + 16);
            v24 = v20;
            v25 = v21;
            v17 = v33;
            v0 = v34;
            v23(v24, &off_283417078, 1, ObjectType, v25);
            swift_unknownObjectRelease();
          }
        }
      }

      else if (v18 == v37)
      {
        (*v15)(v12, v8);
        v26 = v36;
        (*v17)(v36, v12, v0);
        if ((MEMORY[0x223D7E940](v26, v44 + v38) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          v27 = v44;
          v28 = *(v44 + 24);
          v29 = swift_getObjectType();
          v30 = *(v28 + 16);
          v31 = v27;
          v32 = v28;
          v17 = v33;
          v0 = v34;
          v30(v31, &off_283417078, 2, v29, v32);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v18 != v35)
        {
          goto LABEL_17;
        }

        (*v15)(v12, v8);
      }

      ++v14;
      (*v16)();
      if (v43 == v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    sub_22089267C();
    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_220621344(uint64_t a1)
{
  if (!qword_281296920)
  {
    type metadata accessor for StockFeedServiceConfig(255);
    sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v1 = sub_22089013C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296920);
    }
  }
}

void sub_2206213D8(uint64_t a1)
{
  if (!qword_281296AB0)
  {
    type metadata accessor for StockFeedServiceConfig(255);
    sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v1 = sub_22088FAFC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296AB0);
    }
  }
}

uint64_t sub_220621500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedQuoteData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220621564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22062162C(uint64_t a1, uint64_t a2)
{
  sub_22044D824(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206216C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22044D824(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_220621778(uint64_t a1)
{
  if (!qword_281299670)
  {
    sub_22088685C();
    sub_2204534D8(&qword_281299080, MEMORY[0x277D69810], MEMORY[0x277D69808]);
    v1 = sub_22088881C();
    if (!v2)
    {
      atomic_store(v1, &qword_281299670);
    }
  }
}

id sub_22062181C(char a1)
{
  v2 = sub_2206219B0(a1);
  if (a1)
  {
    if (qword_27CF55850 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CF6CE88;
  }

  else
  {
    if (qword_28127F078 != -1)
    {
      swift_once();
    }

    v3 = &qword_2812B6920;
  }

  v4 = *v3;
  sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v5 = v4;
  v6 = sub_220891F2C();
  v7 = [objc_opt_self() configurationWithFont:v6 scale:1];

  v8 = [v5 imageWithConfiguration_];
  v9 = [v8 imageWithTintColor_];

  return v9;
}

uint64_t sub_2206219B0(char a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 72))(v10, v3, v4);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  if (a1)
  {
    v7 = (*(v6 + 144))(v5, v6);
  }

  else
  {
    v7 = (*(v6 + 152))(v5, v6);
  }

  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_220621AAC(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v65 = a1;
  sub_220565BE4(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v64 = &v52 - v11;
  v12 = sub_22089217C();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22089220C();
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v57 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22089210C();
  v55 = *(v56 - 1);
  MEMORY[0x28223BE20](v56, v18);
  v54 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22089226C();
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v53 = [objc_opt_self() clearColor];
  }

  else
  {
    v24 = v6[3];
    v25 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v24);
    (*(v25 + 72))(v66, v24, v25);
    v26 = v67;
    v27 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v53 = (*(v27 + 144))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v52 = sub_2206219B0(a2 & 1);
  v28 = sub_2206219B0(a2 & 1);
  if (a2)
  {
    if (qword_27CF55850 != -1)
    {
      swift_once();
    }

    v29 = &qword_27CF6CE88;
  }

  else
  {
    if (qword_28127F078 != -1)
    {
      swift_once();
    }

    v29 = &qword_2812B6920;
  }

  v30 = *v29;
  sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v31 = v30;
  v32 = sub_220891F2C();
  v33 = objc_opt_self();
  v34 = [v33 configurationWithFont:v32 scale:1];

  v35 = [v31 imageWithConfiguration_];
  v36 = [v35 imageWithTintColor_];

  v37 = v7[3];
  v38 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v37);
  (*(v38 + 72))(v66, v37, v38);
  v39 = v67;
  v40 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v41 = (*(v40 + 144))(v39, v40);
  __swift_destroy_boxed_opaque_existential_1(v66);
  [v65 setPreferredBehavioralStyle_];
  sub_22089225C();
  sub_22089216C();
  (*(v55 + 13))(v54, *MEMORY[0x277D74FE0], v56);
  sub_22089211C();
  v56 = v53;
  sub_2208921CC();
  v55 = v52;
  sub_2208921DC();
  (*(v58 + 104))(v57, *MEMORY[0x277D75028], v59);
  sub_2208920FC();
  (*(v61 + 104))(v60, *MEMORY[0x277D74FF0], v62);
  sub_22089219C();
  v42 = v36;
  sub_22089223C();
  sub_22089218C();
  v43 = sub_220891F2C();
  v44 = [v33 configurationWithFont:v43 scale:1];

  sub_2208920DC();
  v45 = v41;
  v46 = sub_2208920EC();
  sub_22088E9FC();
  v46(v66, 0);
  v47 = sub_2208920EC();
  sub_22088EA0C();
  v47(v66, 0);
  v48 = sub_2208920EC();
  sub_22088EA1C();
  v48(v66, 0);
  v50 = v63;
  v49 = v64;
  (*(v20 + 16))(v64, v23, v63);
  (*(v20 + 56))(v49, 0, 1, v50);
  sub_22089228C();

  return (*(v20 + 8))(v23, v50);
}

id sub_2206222D8(uint64_t a1, uint64_t a2, char a3)
{
  sub_220565BE4(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v7 = v5;
  *(inited + 40) = sub_220891F2C();
  v8 = *MEMORY[0x277D740C0];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v8;
  v10 = sub_2206219B0(a3);
  v11 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x277D740D0];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFD51EB851EB851FLL;
  v13 = v12;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v15 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v16 = sub_22089125C();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_22062252C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v29[1] = a2;
  v30 = sub_22088988C();
  v29[0] = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206228CC(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220886E8C();
  v19 = MEMORY[0x28223BE20](v17, v18);
  (*(v21 + 16))(v29 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_220886E6C();
    v23 = sub_2208871CC();
    v25 = v24;

    if (!v5)
    {
      sub_220622960(&qword_281298440, MEMORY[0x277D68840], MEMORY[0x277D68848]);
      v26 = v30;
      sub_22088827C();
      sub_220457EE8(v23, v25);
      (*(v29[0] + 32))(a5, v10, v26);
      v27 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(a5, 0, 1, v27);
    }
  }

  else
  {
    v28 = type metadata accessor for EngagementEvent(0);
    (*(*(v28 - 8) + 56))(a5, 1, 1, v28);
  }
}

void sub_2206228CC(uint64_t a1)
{
  if (!qword_281298C30)
  {
    sub_22088989C();
    sub_220622960(&qword_281298438, MEMORY[0x277D68850], MEMORY[0x277D68838]);
    v1 = sub_220886E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298C30);
    }
  }
}

uint64_t sub_220622960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206229A8(__n128 a1)
{
  v1 = sub_22088BA1C();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22089022C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22089041C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208906CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D23FC();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v26 = sub_22088E33C();
  (*(v15 + 104))(v18, *MEMORY[0x277D33A68], v14);
  (*(v10 + 104))(v13, *MEMORY[0x277D33570], v9);
  v30 = 0u;
  v31 = 0u;
  (*(v5 + 104))(v8, *MEMORY[0x277D33290], v4);
  sub_2208905CC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  if (qword_27CF558A0 != -1)
  {
    swift_once();
  }

  v23 = qword_27CF6CED0;
  (*(v27 + 104))(v29, *MEMORY[0x277D6D9A8], v28);
  sub_22088B17C();
  swift_allocObject();
  v24 = v23;
  return sub_22088B10C();
}

uint64_t sub_220622DE8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_22088BA1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = sub_22088E3DC();
  (*(v14 + 16))(v17, a1, v13);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  if (qword_27CF55898 != -1)
  {
    swift_once();
  }

  v20 = qword_27CF6CEC8;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v8 + 104))(v11, *MEMORY[0x277D6D9A8], v7);
  sub_22088B17C();
  swift_allocObject();
  v22 = v20;
  sub_2204A80F4(a2, a3);
  return sub_22088B10C();
}

void sub_2206230B4(uint64_t a1)
{
  if (!qword_281296820)
  {
    sub_22044826C();
    v1 = sub_22089062C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296820);
    }
  }
}

uint64_t sub_22062310C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
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

uint64_t sub_220623154(uint64_t a1, int a2)
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

uint64_t sub_22062319C(uint64_t result, int a2, int a3)
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

uint64_t sub_2206231FC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  sub_220627718(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = v34 - v6;
  sub_220587530(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_220627718(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v34 - v14;
  v16 = sub_22088E6FC();
  v34[0] = v17;
  v34[1] = v16;
  v40 = v3;
  sub_2205727A4(sub_22062780C, v39);
  v19 = v18;
  sub_22055CE80(0);
  v21 = v20;
  v22 = sub_2204443BC(&qword_281297DF8, sub_22055CE80, MEMORY[0x277D6D720]);
  v23 = sub_2204443BC(&qword_281297E00, sub_22055CE80, MEMORY[0x277D6D718]);
  MEMORY[0x223D80A20](v19, v21, v22, v23);
  type metadata accessor for StockFeedSectionDescriptor(0);
  type metadata accessor for StockFeedModel(0);
  sub_2204443BC(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  sub_2204443BC(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  sub_22088E6EC();
  v24 = sub_220577460();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for StockFeedServiceConfig(0);
  sub_2204443BC(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  v25 = sub_22088F9EC();

  v26 = 0;
  if (v25)
  {
    v26 = sub_22088F45C();
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v41 = v25;
  v44 = v26;
  sub_22088E7BC();
  sub_22062782C(v24);
  sub_2205C44B4(0);
  v28 = *(v27 + 48);
  (*(v12 + 16))(v7, v15, v11);
  v29 = *MEMORY[0x277D6D868];
  v30 = sub_22088B64C();
  (*(*(v30 - 8) + 104))(&v7[v28], v29, v30);
  v32 = v35;
  v31 = v36;
  (*(v35 + 104))(v7, *MEMORY[0x277D6DF70], v36);
  v38(v7);
  (*(v32 + 8))(v7, v31);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_220623694@<X0>(void (*a1)(char *, _BYTE *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  sub_22055D524(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22[-v13];
  sub_220623930(a1, a2, &v22[-v13]);
  sub_220627998(v14, v10, type metadata accessor for StockFeedSectionDescriptor);
  v23 = a2;
  sub_220572464(sub_220627844, v22);
  v16 = v15;
  sub_22055D328(0);
  v18 = v17;
  v19 = sub_2204443BC(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
  v20 = sub_2204443BC(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A20](v16, v18, v19, v20);
  type metadata accessor for StockFeedModel(0);
  sub_2204443BC(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  sub_2204443BC(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  sub_22088B29C();
  return sub_220627864(v14, type metadata accessor for StockFeedSectionDescriptor);
}

uint64_t sub_220623930@<X0>(void (*a1)(char *, _BYTE *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v251 = a2;
  v284 = a3;
  v267 = sub_2208852DC();
  v262 = *(v267 - 8);
  MEMORY[0x28223BE20](v267, v4);
  v275 = &v224[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v259 = sub_2208857EC();
  v258 = *(v259 - 8);
  MEMORY[0x28223BE20](v259, v6);
  v257 = &v224[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v241 = &v224[-v10];
  sub_2205124A4(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v240 = &v224[-v13];
  v268 = sub_22088699C();
  v266 = *(v268 - 8);
  MEMORY[0x28223BE20](v268, v14);
  v276 = &v224[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v254 = &v224[-v18];
  v263 = type metadata accessor for PriceViewModel(0);
  v239 = *(v263 - 8);
  MEMORY[0x28223BE20](v263, v19);
  v248 = &v224[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v280 = type metadata accessor for QuoteViewModel(0);
  v256 = *(v280 - 8);
  MEMORY[0x28223BE20](v280, v21);
  v249 = &v224[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v247 = &v224[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v255 = &v224[-v28];
  v265 = sub_22088676C();
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265, v29);
  v253 = &v224[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v260 = type metadata accessor for QuoteSummaryViewModel(0);
  MEMORY[0x28223BE20](v260, v31);
  v261 = &v224[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v274 = sub_2208854FC();
  v278 = *(v274 - 8);
  MEMORY[0x28223BE20](v274, v33);
  v245 = &v224[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v272 = &v224[-v37];
  v281 = sub_220885D4C();
  v279 = *(v281 - 8);
  MEMORY[0x28223BE20](v281, v38);
  v238 = &v224[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40, v41);
  v277 = &v224[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v283 = &v224[-v45];
  sub_2205124A4(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v271 = &v224[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v49, v50);
  v273 = &v224[-v51];
  sub_2205124A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v246 = &v224[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55, v56);
  v244 = &v224[-v57];
  MEMORY[0x28223BE20](v58, v59);
  v243 = &v224[-v60];
  MEMORY[0x28223BE20](v61, v62);
  v242 = &v224[-v63];
  MEMORY[0x28223BE20](v64, v65);
  v252 = &v224[-v66];
  MEMORY[0x28223BE20](v67, v68);
  v250 = &v224[-v69];
  MEMORY[0x28223BE20](v70, v71);
  v269 = &v224[-v72];
  MEMORY[0x28223BE20](v73, v74);
  v282 = &v224[-v75];
  v76 = sub_22088685C();
  v270 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v77);
  v79 = &v224[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v80, v81);
  v83 = &v224[-v82];
  v84 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v224[-((v86 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v88, v89);
  v91 = &v224[-v90];
  v92 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v92, v93);
  v95 = &v224[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22055CE80(0);
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return sub_22088B2AC();
  }

  v231 = a1;
  v236 = v79;
  v232 = v91;
  v237 = v83;
  v233 = v76;
  v230 = v92;
  v234 = v87;
  v235 = v84;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_220459628(0);
      sub_22051F2BC(&v95[*(v97 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    }

    else
    {
      sub_220627864(v95, type metadata accessor for StockFeedSectionDescriptor);
    }

    return sub_22088B2AC();
  }

  v98 = v232;
  sub_220627930(v95, v232, type metadata accessor for StockFeedMastheadModel);
  v226 = *(v270 + 16);
  v99 = v233;
  v226(v237, v98, v233);
  v100 = v235;
  v101 = v235[5];
  v228 = MEMORY[0x277D697F8];
  v102 = v282;
  sub_2206278C4(v98 + v101, v282, &qword_2812990C0, MEMORY[0x277D697F8]);
  v103 = v100[6];
  v227 = MEMORY[0x277D697C0];
  v104 = v273;
  sub_2206278C4(v98 + v103, v273, &unk_2812990E0, MEMORY[0x277D697C0]);
  v105 = v100[7] + *(v280 + 20);
  v106 = v279 + 16;
  v231 = *(v279 + 16);
  v107 = v281;
  (v231)(v283, v98 + v105, v281);
  v229 = *(v251 + 16);
  __swift_project_boxed_opaque_existential_1((v251 + 24), *(v251 + 48));
  v225 = sub_2208861AC();
  v108 = v234;
  v109 = v237;
  v110 = v226;
  v226(v234, v237, v99);
  v111 = v102;
  v112 = v228;
  sub_2206278C4(v111, &v108[v100[5]], &qword_2812990C0, v228);
  v113 = &v108[v100[6]];
  v114 = v227;
  sub_2206278C4(v104, v113, &unk_2812990E0, v227);
  v110(v236, v109, v99);
  v115 = v269;
  sub_2206278C4(v282, v269, &qword_2812990C0, v112);
  v116 = v271;
  sub_2206278C4(v104, v271, &unk_2812990E0, v114);
  v251 = v106;
  (v231)(v277, v283, v107);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v117 = v272;
  sub_220886B9C();

  v118 = v250;
  sub_2206278C4(v115, v250, &qword_2812990C0, MEMORY[0x277D697F8]);
  v119 = v264;
  v120 = *(v264 + 48);
  v121 = v265;
  v122 = v120(v118, 1, v265);
  v123 = v274;
  v124 = v278;
  if (v122 != 1)
  {
    v130 = v253;
    v131.n128_f64[0] = (*(v119 + 32))(v253, v118, v121);
    v132 = sub_220656950(v117, v131, v130, v116);
    v252 = v133;
    LODWORD(v250) = v134;
    v135 = v245;
    (*(v124 + 104))(v245, *MEMORY[0x277D69120], v123, v132);
    sub_2204443BC(&qword_281299398, MEMORY[0x277D69160], MEMORY[0x277D69170]);
    sub_22089167C();
    sub_22089167C();
    v136 = v279;
    if (v287 == v285 && v288 == v286)
    {
      v137 = 1;
    }

    else
    {
      v137 = sub_2208928BC();
    }

    v138 = v266;
    v254 = *(v124 + 8);
    (v254)(v135, v123);

    v278 = v124 + 8;
    if (v137)
    {
      v139 = v276;
      sub_2208867CC();
      v140 = v225;
      v141 = v240;
      sub_22069DDE0(v139, v225 & 1, v240);
      (*(v138 + 8))(v139, v268);
      v142 = v238;
      v143 = v281;
      (v231)(v238, v277, v281);
      v144 = v140 & 1;
      v145 = v241;
      sub_22069E5AC(v144, v241);
      v146 = (*(v239 + 48))(v141, 1, v263);
      v147 = v280;
      if (v146 != 1)
      {
        v187 = v141;
        v156 = v247;
        sub_220627930(v187, v247, type metadata accessor for PriceViewModel);
        (*(v136 + 32))(&v156[*(v147 + 20)], v142, v143);
        sub_220627A00(v145, &v156[*(v147 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
        v148 = 0;
        v154 = v256;
        v155 = v255;
        goto LABEL_35;
      }

      sub_22051F2BC(v145, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      (*(v136 + 8))(v142, v143);
      sub_22051F2BC(v141, qword_281294018, type metadata accessor for PriceViewModel);
      v148 = 1;
    }

    else
    {
      v148 = 1;
      v147 = v280;
    }

    v154 = v256;
    v155 = v255;
    v156 = v247;
LABEL_35:
    (*(v154 + 56))(v156, v148, 1, v147);
    sub_220627A00(v156, v155, qword_281293F78, type metadata accessor for QuoteViewModel);
    v188 = sub_22088675C();
    v190 = v189;
    v256 = sub_22088671C();
    v192 = v191;
    v193 = sub_22088668C();
    v195 = v194;
    v196 = v276;
    sub_2208867CC();
    v197 = v258;
    v198 = v257;
    v199 = v259;
    (*(v258 + 104))(v257, *MEMORY[0x277D69288], v259);
    v200 = v275;
    sub_22088524C();
    v201 = v261;
    *v261 = v188;
    *(v201 + 8) = v190 & 1;
    v201[2] = v252;
    *(v201 + 24) = v250 & 1;
    v201[4] = v256;
    v202 = v192 & 1;
    v186 = v201;
    *(v201 + 40) = v202;
    v201[6] = v193;
    v201[7] = v195;
    v203 = v263;
    v204 = v266;
    v205 = v196;
    v206 = v268;
    (*(v266 + 16))(v201 + *(v263 + 40), v205, v268);
    *(v186 + 64) = 9666786;
    *(v186 + 72) = 0xA300000000000000;
    (*(v197 + 16))(v186 + *(v203 + 36), v198, v199);
    v207 = v262;
    v208 = v267;
    (*(v262 + 16))(v186 + *(v203 + 44), v200, v267);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v209 = qword_2812B6B48;
    (*(v197 + 8))(v198, v199);
    (*(v204 + 8))(v276, v206);
    v210 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v207 + 40))(v209 + v210, v275, v208);
    swift_endAccess();
    v211 = v280;
    v212 = v281;
    v213 = v277;
    (v231)(v186 + *(v280 + 20), v277, v281);
    v214 = v186 + *(v211 + 24);
    v215 = v272;
    v216 = v253;
    sub_22069E834(v272, v214);
    (*(v264 + 8))(v216, v265);
    (v254)(v215, v274);
    v217 = *(v279 + 8);
    v217(v213, v212);
    v218 = MEMORY[0x277D697C0];
    sub_22051F2BC(v271, &unk_2812990E0, MEMORY[0x277D697C0]);
    v219 = MEMORY[0x277D697F8];
    sub_22051F2BC(v269, &qword_2812990C0, MEMORY[0x277D697F8]);
    v220 = *(v270 + 8);
    v221 = v233;
    v220(v236, v233);
    v217(v283, v212);
    sub_22051F2BC(v273, &unk_2812990E0, v218);
    sub_22051F2BC(v282, &qword_2812990C0, v219);
    v220(v237, v221);
    sub_220627864(v232, type metadata accessor for StockFeedMastheadModel);
    sub_220627A00(v255, v186 + *(v260 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
    goto LABEL_38;
  }

  v125 = MEMORY[0x277D697F8];
  sub_22051F2BC(v118, &qword_2812990C0, MEMORY[0x277D697F8]);
  v126 = v252;
  (*(v119 + 56))(v252, 1, 1, v121);
  v127 = v254;
  sub_2208867CC();
  v128 = v242;
  sub_2206278C4(v126, v242, &qword_2812990C0, v125);
  if (v120(v128, 1, v121) == 1)
  {
    sub_22051F2BC(v128, &qword_2812990C0, MEMORY[0x277D697F8]);
    v255 = 0;
    LODWORD(v253) = 1;
  }

  else
  {
    v255 = sub_22088675C();
    LODWORD(v253) = v149;
    (*(v119 + 8))(v128, v121);
  }

  v150 = v268;
  v151 = v246;
  v152 = v244;
  v153 = v243;
  sub_2206278C4(v126, v243, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v120(v153, 1, v121) == 1)
  {
    sub_22051F2BC(v153, &qword_2812990C0, MEMORY[0x277D697F8]);
    v251 = 0;
    LODWORD(v250) = 1;
  }

  else
  {
    v251 = sub_22088666C();
    LODWORD(v250) = v157;
    (*(v119 + 8))(v153, v121);
  }

  sub_2206278C4(v126, v152, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v120(v152, 1, v121) == 1)
  {
    sub_22051F2BC(v152, &qword_2812990C0, MEMORY[0x277D697F8]);
    v247 = 0;
    LODWORD(v246) = 1;
  }

  else
  {
    v247 = sub_22088671C();
    LODWORD(v246) = v158;
    (*(v119 + 8))(v152, v121);
  }

  sub_2206278C4(v126, v151, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v120(v151, 1, v121) == 1)
  {
    sub_22051F2BC(v151, &qword_2812990C0, MEMORY[0x277D697F8]);
    v245 = 0;
    v159 = 0;
  }

  else
  {
    v245 = sub_22088668C();
    v159 = v160;
    (*(v119 + 8))(v151, v121);
  }

  v161 = v266;
  v162 = *(v266 + 16);
  v163 = v276;
  v162(v276, v127, v150);
  v164 = v258;
  v165 = v257;
  v166 = v259;
  (*(v258 + 104))(v257, *MEMORY[0x277D69288], v259);
  v167 = v275;
  sub_22088524C();
  v168 = v248;
  *v248 = v255;
  *(v168 + 8) = v253 & 1;
  *(v168 + 16) = v251;
  *(v168 + 24) = v250 & 1;
  *(v168 + 32) = v247;
  *(v168 + 40) = v246 & 1;
  *(v168 + 48) = v245;
  *(v168 + 56) = v159;
  v169 = v263;
  v170 = v163;
  v171 = v268;
  v162((v168 + *(v263 + 40)), v170, v268);
  *(v168 + 64) = 9666786;
  *(v168 + 72) = 0xA300000000000000;
  (*(v164 + 16))(v168 + *(v169 + 36), v165, v166);
  v172 = *(v169 + 44);
  v173 = v262;
  (*(v262 + 16))(v168 + v172, v167, v267);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v265 = qword_2812B6B48;
  (*(v164 + 8))(v165, v166);
  v174 = *(v161 + 8);
  v174(v276, v171);
  v174(v254, v171);
  v175 = MEMORY[0x277D697F8];
  sub_22051F2BC(v252, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v278 + 8))(v272, v274);
  v176 = MEMORY[0x277D697C0];
  sub_22051F2BC(v271, &unk_2812990E0, MEMORY[0x277D697C0]);
  sub_22051F2BC(v269, &qword_2812990C0, v175);
  v177 = *(v270 + 8);
  v178 = v233;
  v177(v236, v233);
  v179 = v279;
  (*(v279 + 8))(v283, v281);
  sub_22051F2BC(v273, &unk_2812990E0, v176);
  sub_22051F2BC(v282, &qword_2812990C0, v175);
  v177(v237, v178);
  sub_220627864(v232, type metadata accessor for StockFeedMastheadModel);
  v180 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  v181 = v265;
  swift_beginAccess();
  (*(v173 + 40))(v181 + v180, v275, v267);
  swift_endAccess();
  v182 = v280;
  v183 = *(v280 + 24);
  v184 = type metadata accessor for QuoteSummaryTimeRange(0);
  v185 = v249;
  (*(*(v184 - 8) + 56))(&v249[v183], 1, 1, v184);
  sub_220627930(v168, v185, type metadata accessor for PriceViewModel);
  (*(v179 + 32))(v185 + *(v182 + 20), v277, v281);
  v186 = v261;
  (*(v256 + 56))(v261 + *(v260 + 20), 1, 1, v182);
  sub_220627930(v185, v186, type metadata accessor for QuoteViewModel);
LABEL_38:
  v222 = v235;
  v223 = v234;
  sub_220627930(v186, &v234[v235[7]], type metadata accessor for QuoteSummaryViewModel);
  *(v223 + v222[8]) = v229;
  sub_220627930(v223, v284, type metadata accessor for StockFeedMastheadModel);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206256D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v270 = a2;
  v299 = a3;
  v274 = sub_2208852DC();
  v268 = *(v274 - 8);
  MEMORY[0x28223BE20](v274, v4);
  v279 = &v234[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v265 = sub_2208857EC();
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265, v6);
  v263 = &v234[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v249 = &v234[-v10];
  sub_2205124A4(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v248 = &v234[-v13];
  v286 = sub_22088699C();
  v277 = *(v286 - 8);
  MEMORY[0x28223BE20](v286, v14);
  v285 = &v234[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v260 = &v234[-v18];
  v272 = type metadata accessor for PriceViewModel(0);
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272, v19);
  v256 = &v234[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v288 = type metadata accessor for QuoteViewModel(0);
  v262 = *(v288 - 8);
  MEMORY[0x28223BE20](v288, v21);
  v257 = &v234[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v255 = &v234[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v261 = &v234[-v28];
  v276 = sub_22088676C();
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276, v29);
  v259 = &v234[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v266 = type metadata accessor for QuoteSummaryViewModel(0);
  MEMORY[0x28223BE20](v266, v31);
  v267 = &v234[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v273 = sub_2208854FC();
  v278 = *(v273 - 8);
  MEMORY[0x28223BE20](v273, v33);
  v253 = &v234[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v283 = &v234[-v37];
  v291 = sub_220885D4C();
  v287 = *(v291 - 8);
  MEMORY[0x28223BE20](v291, v38);
  v247 = &v234[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40, v41);
  v284 = &v234[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v290 = &v234[-v45];
  sub_2205124A4(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v282 = &v234[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v49, v50);
  v289 = &v234[-v51];
  sub_2205124A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v254 = &v234[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55, v56);
  v252 = &v234[-v57];
  MEMORY[0x28223BE20](v58, v59);
  v251 = &v234[-v60];
  MEMORY[0x28223BE20](v61, v62);
  v250 = &v234[-v63];
  MEMORY[0x28223BE20](v64, v65);
  v258 = &v234[-v66];
  MEMORY[0x28223BE20](v67, v68);
  v269 = &v234[-v69];
  MEMORY[0x28223BE20](v70, v71);
  v280 = &v234[-v72];
  MEMORY[0x28223BE20](v73, v74);
  v281 = &v234[-v75];
  v76 = sub_22088685C();
  v292 = *(v76 - 8);
  v293 = v76;
  MEMORY[0x28223BE20](v76, v77);
  v79 = &v234[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v80, v81);
  v83 = &v234[-v82];
  v84 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v234[-((v86 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v88, v89);
  v91 = &v234[-v90];
  v92 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v92, v93);
  v95 = &v234[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v96, v97);
  v99 = &v234[-v98];
  sub_22055D328(0);
  v294 = v100;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      v102 = v294;
      v103 = v299;
      if (EnumCaseMultiPayload == 8)
      {
        sub_220459914(0);

        v111 = sub_22089030C();
        (*(*(v111 - 8) + 8))(v99, v111);
        return (*(*(v102 - 1) + 16))(v103, a1, v102);
      }

      if (EnumCaseMultiPayload != 9)
      {
        return (*(*(v102 - 1) + 16))(v103, a1, v102);
      }
    }

    else
    {
      v102 = v294;
      v103 = v299;
    }

    sub_220627864(v99, type metadata accessor for StockFeedModel);
    return (*(*(v102 - 1) + 16))(v103, a1, v102);
  }

  v246 = v79;
  v245 = v83;
  v240 = v95;
  v242 = v84;
  v241 = v92;
  v243 = v91;
  v244 = v87;
  if (EnumCaseMultiPayload > 1)
  {
    v105 = v292;
    v104 = v293;
    v103 = v299;
    if (EnumCaseMultiPayload == 2)
    {
LABEL_8:
      (*(v105 + 8))(v99, v104);
LABEL_17:
      v102 = v294;
      return (*(*(v102 - 1) + 16))(v103, a1, v102);
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2204597F0(0);
      v107 = *(v106 + 48);
      sub_22051F2BC(&v99[*(v106 + 64)], &qword_281299370, MEMORY[0x277D69178]);
      sub_22051F2BC(&v99[v107], &qword_2812990C0, MEMORY[0x277D697F8]);
      goto LABEL_8;
    }

    v110 = type metadata accessor for StockEarningsModel;
LABEL_16:
    sub_220627864(v99, v110);
    goto LABEL_17;
  }

  v108 = v292;
  v109 = v293;
  v103 = v299;
  if (!EnumCaseMultiPayload)
  {
    v110 = type metadata accessor for StockFeedMastheadModel;
    goto LABEL_16;
  }

  v113 = v243;
  sub_220627930(v99, v243, type metadata accessor for StockFeedMastheadModel);
  v238 = *(v108 + 16);
  v114 = v245;
  v238(v245, v113, v109);
  v115 = v242;
  v116 = v242[5];
  v237 = MEMORY[0x277D697F8];
  v117 = v281;
  sub_2206278C4(v113 + v116, v281, &qword_2812990C0, MEMORY[0x277D697F8]);
  v118 = v115[6];
  v236 = MEMORY[0x277D697C0];
  sub_2206278C4(v113 + v118, v289, &unk_2812990E0, MEMORY[0x277D697C0]);
  v119 = v115[7] + *(v288 + 20);
  v120 = v287 + 16;
  v294 = *(v287 + 16);
  (v294)(v290, v113 + v119, v291);
  v239 = *(v270 + 16);
  __swift_project_boxed_opaque_existential_1((v270 + 24), *(v270 + 48));
  v235 = sub_2208861AC();
  v121 = v244;
  v122 = v238;
  v238(v244, v114, v109);
  v123 = v237;
  sub_2206278C4(v117, &v121[v115[5]], &qword_2812990C0, v237);
  v124 = v289;
  v125 = &v121[v115[6]];
  v126 = v236;
  sub_2206278C4(v289, v125, &unk_2812990E0, v236);
  v122(v246, v114, v293);
  v127 = v280;
  sub_2206278C4(v117, v280, &qword_2812990C0, v123);
  v128 = v282;
  sub_2206278C4(v124, v282, &unk_2812990E0, v126);
  v129 = v284;
  v270 = v120;
  (v294)(v284, v290, v291);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v130 = v283;
  sub_220886B9C();

  v131 = v269;
  sub_2206278C4(v127, v269, &qword_2812990C0, MEMORY[0x277D697F8]);
  v132 = v275;
  v133 = *(v275 + 48);
  v134 = v276;
  v135 = v133(v131, 1, v276);
  v136 = v271;
  if (v135 == 1)
  {
    v137 = MEMORY[0x277D697F8];
    sub_22051F2BC(v131, &qword_2812990C0, MEMORY[0x277D697F8]);
    v138 = v258;
    (*(v132 + 56))(v258, 1, 1, v134);
    v139 = v260;
    sub_2208867CC();
    v140 = v250;
    sub_2206278C4(v138, v250, &qword_2812990C0, v137);
    if (v133(v140, 1, v134) == 1)
    {
      sub_22051F2BC(v140, &qword_2812990C0, MEMORY[0x277D697F8]);
      v294 = 0;
      LODWORD(v271) = 1;
    }

    else
    {
      v294 = sub_22088675C();
      LODWORD(v271) = v164;
      (*(v132 + 8))(v140, v134);
    }

    v165 = v286;
    v166 = v252;
    v167 = v251;
    sub_2206278C4(v138, v251, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v167, 1, v134) == 1)
    {
      sub_22051F2BC(v167, &qword_2812990C0, MEMORY[0x277D697F8]);
      v270 = 0;
      LODWORD(v269) = 1;
    }

    else
    {
      v270 = sub_22088666C();
      LODWORD(v269) = v168;
      (*(v132 + 8))(v167, v134);
    }

    sub_2206278C4(v138, v166, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v166, 1, v134) == 1)
    {
      sub_22051F2BC(v166, &qword_2812990C0, MEMORY[0x277D697F8]);
      v261 = 0;
      LODWORD(v259) = 1;
    }

    else
    {
      v261 = sub_22088671C();
      LODWORD(v259) = v169;
      (*(v132 + 8))(v166, v134);
    }

    v170 = v254;
    sub_2206278C4(v138, v254, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v170, 1, v134) == 1)
    {
      sub_22051F2BC(v170, &qword_2812990C0, MEMORY[0x277D697F8]);
      v255 = 0;
      v253 = 0;
    }

    else
    {
      v255 = sub_22088668C();
      v253 = v171;
      (*(v132 + 8))(v170, v134);
    }

    v172 = *(v277 + 16);
    v173 = v285;
    v172(v285, v139, v165);
    v174 = v264;
    v175 = v263;
    v176 = v265;
    (*(v264 + 104))(v263, *MEMORY[0x277D69288], v265);
    v177 = v279;
    sub_22088524C();
    v178 = v256;
    *v256 = v294;
    *(v178 + 8) = v271 & 1;
    *(v178 + 16) = v270;
    *(v178 + 24) = v269 & 1;
    *(v178 + 32) = v261;
    *(v178 + 40) = v259 & 1;
    v179 = v253;
    *(v178 + 48) = v255;
    *(v178 + 56) = v179;
    v180 = v177;
    v181 = v272;
    v182 = v173;
    v183 = v286;
    v172((v178 + *(v272 + 40)), v182, v286);
    *(v178 + 64) = 9666786;
    *(v178 + 72) = 0xA300000000000000;
    (*(v174 + 16))(v178 + *(v181 + 36), v175, v176);
    v184 = *(v181 + 44);
    v185 = v268;
    (*(v268 + 16))(v178 + v184, v180, v274);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v294 = qword_2812B6B48;
    (*(v174 + 8))(v175, v176);
    v186 = *(v277 + 8);
    v186(v285, v183);
    v186(v260, v183);
    v187 = MEMORY[0x277D697F8];
    sub_22051F2BC(v258, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v278 + 8))(v283, v273);
    v188 = MEMORY[0x277D697C0];
    sub_22051F2BC(v282, &unk_2812990E0, MEMORY[0x277D697C0]);
    sub_22051F2BC(v280, &qword_2812990C0, v187);
    v189 = v293;
    v190 = *(v292 + 8);
    v190(v246, v293);
    v191 = v287;
    (*(v287 + 8))(v290, v291);
    sub_22051F2BC(v289, &unk_2812990E0, v188);
    sub_22051F2BC(v281, &qword_2812990C0, v187);
    v190(v245, v189);
    v192 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    v193 = v294;
    swift_beginAccess();
    (*(v185 + 40))(v193 + v192, v279, v274);
    swift_endAccess();
    v194 = v288;
    v195 = *(v288 + 24);
    v196 = type metadata accessor for QuoteSummaryTimeRange(0);
    v197 = v257;
    (*(*(v196 - 8) + 56))(&v257[v195], 1, 1, v196);
    sub_220627930(v178, v197, type metadata accessor for PriceViewModel);
    (*(v191 + 32))(v197 + *(v194 + 20), v284, v291);
    v198 = v267;
    (*(v262 + 56))(v267 + *(v266 + 20), 1, 1, v194);
    sub_220627930(v197, v198, type metadata accessor for QuoteViewModel);
  }

  else
  {
    v141 = *(v132 + 32);
    v142 = v259;
    v143.n128_f64[0] = v141(v259, v131, v134);
    v144 = sub_220656950(v130, v143, v142, v128);
    v260 = v145;
    LODWORD(v258) = v146;
    v147 = v278;
    v148 = v253;
    v149 = v273;
    (*(v278 + 104))(v253, *MEMORY[0x277D69120], v273, v144);
    sub_2204443BC(&qword_281299398, MEMORY[0x277D69160], MEMORY[0x277D69170]);
    v150 = v148;
    sub_22089167C();
    sub_22089167C();
    if (v297 == v295 && v298 == v296)
    {
      v151 = 1;
    }

    else
    {
      v151 = sub_2208928BC();
    }

    v269 = *(v147 + 8);
    (v269)(v150, v149);

    v278 = v147 + 8;
    if (v151)
    {
      v152 = v285;
      sub_2208867CC();
      v153 = v235;
      v154 = v248;
      sub_22069DDE0(v152, v235 & 1, v248);
      (*(v277 + 8))(v152, v286);
      v155 = v247;
      v156 = v129;
      v157 = v291;
      (v294)(v247, v156, v291);
      v158 = v249;
      sub_22069E5AC(v153 & 1, v249);
      if ((*(v136 + 48))(v154, 1, v272) == 1)
      {
        sub_22051F2BC(v158, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
        (*(v287 + 8))(v155, v157);
        sub_22051F2BC(v154, qword_281294018, type metadata accessor for PriceViewModel);
        v159 = 1;
        v160 = v262;
        v161 = v261;
        v162 = v255;
        v163 = v288;
      }

      else
      {
        v162 = v255;
        sub_220627930(v154, v255, type metadata accessor for PriceViewModel);
        v199 = v288;
        (*(v287 + 32))(&v162[*(v288 + 20)], v155, v157);
        sub_220627A00(v158, &v162[*(v199 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
        v163 = v199;
        v159 = 0;
        v160 = v262;
        v161 = v261;
      }
    }

    else
    {
      v159 = 1;
      v160 = v262;
      v161 = v261;
      v162 = v255;
      v163 = v288;
    }

    (*(v160 + 56))(v162, v159, 1, v163);
    sub_220627A00(v162, v161, qword_281293F78, type metadata accessor for QuoteViewModel);
    v200 = sub_22088675C();
    LODWORD(v271) = v201;
    v262 = sub_22088671C();
    v203 = v202;
    v204 = sub_22088668C();
    v206 = v205;
    v207 = v285;
    sub_2208867CC();
    v208 = v264;
    v209 = v263;
    v210 = v265;
    (*(v264 + 104))(v263, *MEMORY[0x277D69288], v265);
    v211 = v279;
    sub_22088524C();
    v212 = v267;
    *v267 = v200;
    *(v212 + 8) = v271 & 1;
    v212[2] = v260;
    *(v212 + 24) = v258 & 1;
    v212[4] = v262;
    v213 = v203 & 1;
    v198 = v212;
    *(v212 + 40) = v213;
    v212[6] = v204;
    v212[7] = v206;
    v214 = v210;
    v215 = v272;
    v216 = v277;
    (*(v277 + 16))(v212 + *(v272 + 40), v207, v286);
    *(v198 + 64) = 9666786;
    *(v198 + 72) = 0xA300000000000000;
    (*(v208 + 16))(v198 + *(v215 + 36), v209, v210);
    v217 = v268;
    v218 = v274;
    (*(v268 + 16))(v198 + *(v215 + 44), v211, v274);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v219 = qword_2812B6B48;
    (*(v208 + 8))(v209, v214);
    (*(v216 + 8))(v285, v286);
    v220 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v217 + 40))(v219 + v220, v279, v218);
    swift_endAccess();
    v221 = v288;
    v222 = v284;
    v223 = v291;
    (v294)(v198 + *(v288 + 20), v284, v291);
    v224 = v198 + *(v221 + 24);
    v225 = v283;
    v226 = v259;
    sub_22069E834(v283, v224);
    (*(v275 + 8))(v226, v276);
    (v269)(v225, v273);
    v227 = *(v287 + 8);
    v227(v222, v223);
    v228 = MEMORY[0x277D697C0];
    sub_22051F2BC(v282, &unk_2812990E0, MEMORY[0x277D697C0]);
    v229 = MEMORY[0x277D697F8];
    sub_22051F2BC(v280, &qword_2812990C0, MEMORY[0x277D697F8]);
    v230 = v293;
    v231 = *(v292 + 8);
    v231(v246, v293);
    v227(v290, v223);
    sub_22051F2BC(v289, &unk_2812990E0, v228);
    sub_22051F2BC(v281, &qword_2812990C0, v229);
    v231(v245, v230);
    sub_220627A00(v261, v198 + *(v266 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
  }

  v232 = v242;
  v233 = v244;
  sub_220627930(v198, &v244[v242[7]], type metadata accessor for QuoteSummaryViewModel);
  *(v233 + v232[8]) = v239;
  sub_220627998(v233, v240, type metadata accessor for StockFeedMastheadModel);
  swift_storeEnumTagMultiPayload();
  sub_2204443BC(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  sub_22088AD7C();
  sub_220627864(v233, type metadata accessor for StockFeedMastheadModel);
  return sub_220627864(v243, type metadata accessor for StockFeedMastheadModel);
}