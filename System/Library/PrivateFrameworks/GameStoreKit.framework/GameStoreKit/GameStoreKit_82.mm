uint64_t sub_24EE58F64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE58FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE59030()
{
  result = qword_27F231C58;
  if (!qword_27F231C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C58);
  }

  return result;
}

unint64_t sub_24EE59088()
{
  result = qword_27F231C60;
  if (!qword_27F231C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C60);
  }

  return result;
}

unint64_t sub_24EE590E0()
{
  result = qword_27F231C68;
  if (!qword_27F231C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C68);
  }

  return result;
}

uint64_t sub_24EE59134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA5FBE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EE59294(uint64_t a1, __n128 a2)
{
  v38 = a1;
  v2 = sub_24F91F8A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F7C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91ED78();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91F648();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  sub_24F91F758();
  sub_24F91F7B8();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080, &qword_24F9F2000);
  v16 = sub_24F91F898();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v37 = xmmword_24F93DE60;
  *(v19 + 16) = xmmword_24F93DE60;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x277CC9968], v16);
  sub_24E8026A0(v19);
  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v16);
  swift_deallocClassInstance();
  sub_24F91F808();

  (*(v3 + 8))(v5, v2);
  v20 = sub_24F91ECA8();
  countAndFlagsBits = 0;
  if ((v22 & 1) == 0)
  {
    if ((v20 - 2) < 2)
    {
      v25._object = 0x800000024FA5FC00;
      v26 = v20;
      v25._countAndFlagsBits = 0xD000000000000010;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      localizedString(_:comment:)(v25, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
      v28 = swift_allocObject();
      *(v28 + 16) = v37;
      v43 = v26;
      v29 = sub_24F92CD88();
      v31 = v30;
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_24E90A06C();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      countAndFlagsBits = sub_24F92B118();
    }

    else
    {
      if (v20 == 1)
      {
        v23 = 0xD000000000000011;
        v24 = 0x800000024FA5FC20;
      }

      else
      {
        if (v20)
        {
          v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          [v33 setDateStyle_];
          [v33 setTimeStyle_];
          v34 = sub_24F91F578();
          v35 = [v33 stringFromDate_];

          countAndFlagsBits = sub_24F92B0D8();
          goto LABEL_10;
        }

        v23 = 0x5F5350554B434F4CLL;
        v24 = 0xED00005941444F54;
      }

      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      countAndFlagsBits = localizedString(_:comment:)(*&v23, v32)._countAndFlagsBits;
    }
  }

LABEL_10:
  (*(v41 + 8))(v12, v42);
  (*(v39 + 8))(v15, v40);
  return countAndFlagsBits;
}

GameStoreKit::SheetActionStyle_optional __swiftcall SheetActionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SheetActionStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x5474756F68746977;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24EE598D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5474756F68746977;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC000000656C7469;
  }

  if (*a2)
  {
    v5 = 0x5474756F68746977;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xEC000000656C7469;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EE59984()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE59A10(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EE59A88()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE59B10@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EE59B70(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x5474756F68746977;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC000000656C7469;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *SheetAction.__allocating_init(actions:title:actionMetrics:message:isCancelable:cancelTitle:checkedIndex:destructiveActionIndex:isCustom:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, _BYTE *a15)
{
  v50 = a2;
  v51 = a3;
  v48 = a13;
  v49 = a14;
  v46 = a4;
  v47 = a15;
  v20 = sub_24F91F6B8();
  v44 = *(v20 - 8);
  v45 = v20;
  MEMORY[0x28223BE20](v20);
  v43 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = a1;
  v23 = (v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);
  *v23 = a5;
  v23[1] = a6;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = a7;
  v24 = (v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);
  *v24 = a8;
  v24[1] = a9;
  v25 = v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_checkedIndex;
  *v25 = a10;
  v25[8] = a11 & 1;
  v26 = v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_destructiveActionIndex;
  *v26 = a12;
  v26[8] = v48 & 1;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCustom) = v49;
  v27 = v46;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_style) = *v47;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v28 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v29 = sub_24F928AD8();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v22 + v28, v27, v29);
  v31 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v32 = sub_24F929608();
  (*(*(v32 - 8) + 56))(v22 + v31, 1, 1, v32);
  v33 = (v22 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = v22 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v57, &v54);
  if (*(&v55 + 1))
  {
    v35 = v55;
    *v34 = v54;
    *(v34 + 1) = v35;
    *(v34 + 4) = v56;
  }

  else
  {
    v36 = v43;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v44 + 8))(v36, v45);
    v52 = v37;
    v53 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v54, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v30 + 8))(v27, v29);
  sub_24E601704(v57, &qword_27F235830, &qword_24F93B8C0);
  v40 = v51;
  v22[2] = v50;
  v22[3] = v40;
  v22[4] = 0;
  v22[5] = 0;
  return v22;
}

void *SheetAction.init(actions:title:actionMetrics:message:isCancelable:cancelTitle:checkedIndex:destructiveActionIndex:isCustom:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, _BYTE *a15)
{
  v16 = v15;
  v49 = a8;
  v48 = a7;
  v45 = a6;
  v54 = a2;
  v55 = a3;
  v52 = a13;
  v53 = a14;
  v50 = a12;
  v47 = a11;
  v46 = a10;
  v51 = a15;
  v44 = sub_24F91F6B8();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v43 - v23;
  v25 = sub_24F928AD8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = a1;
  v29 = (v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);
  v30 = v45;
  *v29 = a5;
  v29[1] = v30;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = v48;
  v31 = (v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);
  *v31 = v49;
  v31[1] = a9;
  v32 = v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_checkedIndex;
  *v32 = v46;
  v32[8] = v47 & 1;
  v33 = v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_destructiveActionIndex;
  *v33 = v50;
  v33[8] = v52 & 1;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCustom) = v53;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_style) = *v51;
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  (*(v26 + 16))(v28, a4, v25);
  v34 = sub_24F929608();
  (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  v35 = (v16 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v35 = 0u;
  v35[1] = 0u;
  sub_24E65E064(v64, &v58);
  if (*(&v59 + 1))
  {
    v61 = v58;
    v62 = v59;
    v63 = v60;
  }

  else
  {
    sub_24F91F6A8();
    v36 = sub_24F91F668();
    v38 = v37;
    (*(v43 + 8))(v21, v44);
    v56 = v36;
    v57 = v38;
    sub_24F92C7F8();
    sub_24E601704(&v58, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v26 + 8))(a4, v25);
  sub_24E601704(v64, &qword_27F235830, &qword_24F93B8C0);
  v39 = v16 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v39 + 4) = v63;
  v40 = v62;
  *v39 = v61;
  *(v39 + 1) = v40;
  sub_24E65E0D4(v24, v16 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v41 = v55;
  v16[2] = v54;
  v16[3] = v41;
  v16[4] = 0;
  v16[5] = 0;
  (*(v26 + 32))(v16 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v28, v25);
  return v16;
}

char *SheetAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_24F9285B8();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v58 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v16);
  v60 = &v58 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  v21 = sub_24F92AC28();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v61 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v64 = v9;
  v24 = *(v9 + 8);
  v24(v20, v8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    sub_24E601704(v7, &qword_27F2213B0, &qword_24F965EC0);
    v25 = v71;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = MEMORY[0x277D84F90];
    *(v25 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = 1;
    v26 = v62;
  }

  else
  {
    v27 = *(v22 + 32);
    v59 = v21;
    v27();
    v28 = type metadata accessor for Action(0);
    MEMORY[0x28223BE20](v28);
    v30 = v69;
    v29 = v70;
    *(&v58 - 2) = v31;
    *(&v58 - 1) = v29;
    v32 = sub_24F92ABB8();
    v69 = v30;
    *(v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_actions) = v32;
    v33 = v60;
    v26 = v62;
    sub_24F928398();
    v34 = sub_24F928278();
    v24(v33, v8);
    (*(v22 + 8))(v61, v59);
    *(v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCancelable) = (v34 == 2) | v34 & 1;
  }

  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v24(v15, v8);
  v38 = v71;
  v39 = (v71 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);
  *v39 = v35;
  v39[1] = v37;
  sub_24F928398();
  v40 = sub_24F928258();
  LOBYTE(v37) = v41;
  v24(v15, v8);
  v42 = v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_checkedIndex;
  *v42 = v40;
  *(v42 + 8) = v37 & 1;
  sub_24F928398();
  v43 = sub_24F928258();
  LOBYTE(v37) = v44;
  v24(v15, v8);
  v45 = v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_destructiveActionIndex;
  *v45 = v43;
  *(v45 + 8) = v37 & 1;
  v46 = v63;
  sub_24F928398();
  LOBYTE(v43) = sub_24F928278();
  v24(v46, v8);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_isCustom) = v43 & 1;
  sub_24F928398();
  sub_24EE5ADF0();
  sub_24F928208();
  v24(v15, v8);
  *(v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_style) = v72;
  sub_24F928398();
  v47 = sub_24F928348();
  v49 = v48;
  v24(v15, v8);
  v50 = (v38 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);
  *v50 = v47;
  v50[1] = v49;
  v51 = v65;
  (*(v64 + 16))(v65, v26, v8);
  v52 = v26;
  v53 = v66;
  v54 = v67;
  v55 = v68;
  (*(v67 + 16))(v66, v70, v68);
  v56 = Action.init(deserializing:using:)(v51, v53);
  v24(v52, v8);
  (*(v54 + 8))(v70, v55);
  return v56;
}

uint64_t SheetAction.cancelTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_cancelTitle);

  return v1;
}

uint64_t SheetAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11SheetAction_message);

  return v1;
}

uint64_t sub_24EE5AC38()
{
}

uint64_t SheetAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t SheetAction.__deallocating_deinit()
{
  SheetAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EE5ADF0()
{
  result = qword_27F231C70;
  if (!qword_27F231C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C70);
  }

  return result;
}

unint64_t sub_24EE5AE48()
{
  result = qword_27F231C78;
  if (!qword_27F231C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C78);
  }

  return result;
}

uint64_t type metadata accessor for SheetAction(uint64_t a1)
{
  result = qword_27F231C80;
  if (!qword_27F231C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Unimpressable<>.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F929608();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24EE5B05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F928328())
  {
    v39 = v6;
    v40 = a1;
    v10 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 3;
LABEL_3:
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v41, v17);
    result = (*(v10 + 8))(v40, v39);
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
    return result;
  }

  v37 = v3;
  sub_24F928398();
  sub_24EE5C1C0();
  sub_24F928208();
  v19 = *(v7 + 8);
  v19(v9, v6);
  v20 = v43;
  sub_24F928398();
  sub_24EE5C214();
  sub_24F928248();
  v19(v9, v6);
  if (v42 == 2)
  {
    v36 = 0;
    v38 = 0;
  }

  else
  {
    v36 = sub_24F92B0D8();
    v38 = v21;
  }

  sub_24F928398();
  v22 = JSONObject.appStoreColor.getter();
  v19(v9, v6);
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      v39 = v6;
      v40 = a1;
      v10 = v7;

      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 3;
      goto LABEL_3;
    }

    v35 = v22;
    v25 = v37;
    sub_24EE5C268(0xD000000000000012, 0x800000024FA5FCA0, 0xD000000000000012, 0x800000024FA5FCC0);
    if (!v25)
    {
      v27 = a1;
      v11 = v26;
      v40 = v27;
      sub_24EE5C268(0xD000000000000010, 0x800000024FA5FCE0, 0xD000000000000010, 0x800000024FA5FD00);
      v12 = v28;
      v39 = v6;
      v10 = v7;
      v16 = 2;
      v15 = v38;
      v13 = v35;
      v14 = v36;
      goto LABEL_3;
    }
  }

  else
  {
    v35 = v22;
    v13 = v36;
    if (v20)
    {
      v29 = v37;
      sub_24EE5C268(0xD000000000000012, 0x800000024FA5FCA0, 0xD000000000000012, 0x800000024FA5FCC0);
      if (!v29)
      {
        v31 = a1;
        v11 = v30;
        v40 = v31;
        sub_24EE5C268(0xD000000000000010, 0x800000024FA5FCE0, 0xD000000000000010, 0x800000024FA5FD00);
        v12 = v33;
        v39 = v6;
        v10 = v7;
        v16 = 1;
        v15 = v38;
        v14 = v13;
        v13 = v35;
        goto LABEL_3;
      }
    }

    else
    {
      v23 = v37;
      sub_24EE5C268(0x726F6C6F63, 0xE500000000000000, 0x6168706C61, 0xE500000000000000);
      if (!v23)
      {
        v39 = v6;
        v40 = a1;
        v10 = v7;
        v16 = 0;
        v14 = v38;
        v12 = v35;
        v15 = 0;
        v11 = v24;
        goto LABEL_3;
      }
    }
  }

  v32 = sub_24F9285B8();
  (*(*(v32 - 8) + 8))(v41, v32);
  return (v19)(a1, v6);
}

uint64_t sub_24EE5B58C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE5B650(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EE5B700()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EE5B7C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24EE5C570(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24EE5B7F0(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726F6C6F63;
  v4 = 0x800000024FA41D90;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA41D70;
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

uint64_t TitleEffectFilterType.compositingFilter.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F92B0D8();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::TitleEffectFilterType_optional __swiftcall TitleEffectFilterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TitleEffectFilterType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B72614473756C70;
  }

  else
  {
    return 0x6867694C73756C70;
  }
}

uint64_t sub_24EE5B968(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B72614473756C70;
  }

  else
  {
    v3 = 0x6867694C73756C70;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B72614473756C70;
  }

  else
  {
    v5 = 0x6867694C73756C70;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EE5BA14()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE5BA9C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EE5BB10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE5BB94@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EE5BBF4(uint64_t *a1@<X8>)
{
  v2 = 0x6867694C73756C70;
  if (*v1)
  {
    v2 = 0x6B72614473756C70;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s12GameStoreKit11TitleEffectO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v37[0] = *a1;
  v37[1] = v4;
  v37[2] = v6;
  v37[3] = v5;
  v37[4] = v7;
  v38 = v8;
  v39 = v10;
  v40 = v9;
  v41 = v12;
  v42 = v11;
  v43 = v13;
  v44 = v14;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v14 == 3 && !(v9 | v10 | v12 | v11 | v13))
      {
        goto LABEL_44;
      }

      goto LABEL_26;
    }

    if (v14 != 2)
    {
LABEL_26:
      sub_24ED21BB0(v10, v9, v12, v11, v13, v14);
      sub_24ED21BB0(v3, v4, v6, v5, v7, v8);
      goto LABEL_27;
    }

    v35 = v7;
    v19 = v11;
    sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
    v34 = v19;
    v20 = v19;
    v21 = v35;
    sub_24ED21BB0(v10, v9, v12, v20, v13, 2);
    v32 = v5;
    sub_24ED21BB0(v3, v4, v6, v5, v35, 2);
    if ((sub_24F92C408() & 1) == 0 || (sub_24F92C408() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v6)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

      sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
      v22 = v12;
      v23 = v6;
      v24 = sub_24F92C408();

      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v12)
    {
      goto LABEL_27;
    }

    if (v35)
    {
LABEL_41:
      if (v13)
      {
        if (v32 != v34 || v21 != v13)
        {
          goto LABEL_47;
        }

LABEL_44:
        sub_24EE5C4A0(v37);
        return 1;
      }

      goto LABEL_27;
    }

LABEL_37:

    sub_24EE5C4A0(v37);
    if (!v13)
    {
      return 1;
    }

LABEL_38:

    return 0;
  }

  if (v8)
  {
    if (v14 != 1)
    {
      goto LABEL_26;
    }

    v36 = v7;
    v25 = v11;
    sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
    v34 = v25;
    v26 = v25;
    v21 = v36;
    sub_24ED21BB0(v10, v9, v12, v26, v13, 1);
    v32 = v5;
    sub_24ED21BB0(v3, v4, v6, v5, v36, 1);
    if ((sub_24F92C408() & 1) == 0 || (sub_24F92C408() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v6)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

      sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
      v27 = v12;
      v28 = v6;
      v29 = sub_24F92C408();

      if ((v29 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v12)
    {
      goto LABEL_27;
    }

    if (v36)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (v14)
  {
    goto LABEL_26;
  }

  v33 = v11;
  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  sub_24ED21BB0(v10, v9, v12, v33, v13, 0);
  v15 = v5;
  sub_24ED21BB0(v3, v4, v6, v5, v7, 0);
  if ((sub_24F92C408() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

LABEL_27:
    sub_24EE5C4A0(v37);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
  v16 = v9;
  v17 = v4;
  v18 = sub_24F92C408();

  if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (!v15)
  {

    sub_24EE5C4A0(v37);
    if (!v33)
    {
      return 1;
    }

    goto LABEL_38;
  }

  if (!v33)
  {
    goto LABEL_27;
  }

  if (v6 == v12 && v15 == v33)
  {
    goto LABEL_44;
  }

LABEL_47:
  v31 = sub_24F92CE08();
  sub_24EE5C4A0(v37);
  return v31 & 1;
}

unint64_t sub_24EE5C090()
{
  result = qword_27F231C90;
  if (!qword_27F231C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C90);
  }

  return result;
}

uint64_t sub_24EE5C0E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_24EE5C12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24EE5C17C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_24EE5C1C0()
{
  result = qword_27F231C98;
  if (!qword_27F231C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231C98);
  }

  return result;
}

unint64_t sub_24EE5C214()
{
  result = qword_27F231CA0;
  if (!qword_27F231CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CA0);
  }

  return result;
}

double sub_24EE5C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_24F928398();
  v12 = sub_24F9282C8();
  v13 = *(v6 + 8);
  v14 = v11;
  v15 = v23;
  v13(v14, v5);
  sub_24F928398();
  v16 = JSONObject.appStoreColor.getter();
  v13(v8, v5);
  if (v16)
  {
    v17 = *&v12;
    if ((v12 & 0x100000000) != 0)
    {
      v17 = 1.0;
    }

    [v16 colorWithAlphaComponent_];
  }

  else
  {
    v19 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v20 = MEMORY[0x277D84F90];
    *v21 = a1;
    v21[1] = v15;
    v21[2] = &type metadata for TitleEffect;
    v21[3] = v20;
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D22540], v19);
    swift_willThrow();
  }

  return result;
}

uint64_t sub_24EE5C4A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231CA8, &qword_24F9A7C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EE5C51C()
{
  result = qword_27F231CB0;
  if (!qword_27F231CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CB0);
  }

  return result;
}

unint64_t sub_24EE5C570(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void *ArcadeDiffablePageContentPresenter.__allocating_init(objectGraph:subscriptionManager:subscriptionState:stateTimeOut:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  swift_allocObject();
  v16 = sub_24EE5DFD4(a1, a2, a3, a4, a5, a6, a7, a8);

  return v16;
}

void *ArcadeDiffablePageContentPresenter.init(objectGraph:subscriptionManager:subscriptionState:stateTimeOut:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = sub_24EE5DFD4(a1, a2, a3, a4, a5, a6, a7, a8);

  return v9;
}

uint64_t sub_24EE5C6EC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v76 = a9;
  v89 = a7;
  v90 = a8;
  v85 = a6;
  LODWORD(v91) = a5;
  v88 = a4;
  v86 = type metadata accessor for ArcadePageIntent(0);
  MEMORY[0x28223BE20](v86);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927D88();
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_24F927DC8();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24F927DE8();
  v78 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v77 = &v69 - v18;
  v75 = sub_24F92AAE8();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v69 - v22;
  v24 = sub_24F91F4A8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v73 = &v69 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v33 = v32;
  v35 = v34;
  sub_24E60169C(a3, v23, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v33 + 48))(v23, 1, v35) == 1)
  {
    sub_24E601704(v23, &qword_27F228530, &unk_24F93C6E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660, &qword_24F985230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231CD0, &qword_24F9A7D08);
    sub_24E602068(&qword_27F231CD8, &qword_27F231CD0, &qword_24F9A7D08, &protocol conformance descriptor for DiffablePageContentPresenter<A>.FetchError);
    swift_allocError();
    *v36 = 0;
    return sub_24F92A978();
  }

  else
  {
    v38 = v91;
    v39 = *(v33 + 32);
    v91 = (v33 + 32);
    v72 = v39;
    v40 = (v39)(v31, v23, v35);
    v41 = v35;
    v42 = v38 >> 6;
    if (v38 >> 6 == 3)
    {
      v70 = v31;
      v71 = v33;
      v86 = v41;
      v43 = v88;
      if (v88)
      {
        sub_24F234048(v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F9479A0;
        sub_24F9283A8();
        v95 = &type metadata for ArcadeState;
        aBlock = v43;
        LOBYTE(v93) = v38;
        sub_24F928438();
        sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283A8();
        v44 = v75;
        sub_24F92A5A8();

        (*(v74 + 8))(v20, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660, &qword_24F985230);
        v45 = sub_24F92A9E8();
        LOBYTE(aBlock) = -63;
        swift_retain_n();
        v88 = ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
        v46 = v71;
        v47 = v73;
        v48 = v70;
        v49 = v86;
        (*(v71 + 16))(v73, v70, v86);
        v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
        v51 = (v25 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        v72(v53 + v50, v47, v49);
        *(v53 + v51) = v89;
        *(v53 + v52) = v90;
        *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
        v54 = sub_24E74EC40();

        v55 = sub_24F92BEF8();
        v95 = v54;
        v96 = MEMORY[0x277D225C0];
        aBlock = v55;
        sub_24F92A958();

        (*(v46 + 8))(v48, v49);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return v45;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660, &qword_24F985230);
        v59 = sub_24F92A9E8();
        sub_24E74EC40();

        v90 = sub_24F92BEF8();
        sub_24F927DD8();
        v60 = v77;
        sub_24F927E58();
        v91 = *(v78 + 8);
        v91(v16, v87);
        v96 = sub_24EE5F2E4;
        v97 = v59;
        aBlock = MEMORY[0x277D85DD0];
        v93 = 1107296256;
        v94 = sub_24EAF8248;
        v95 = &block_descriptor_82;
        v61 = _Block_copy(&aBlock);

        v62 = v79;
        sub_24F927DA8();
        aBlock = MEMORY[0x277D84F90];
        sub_24E858250();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
        sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
        v63 = v81;
        v64 = v84;
        sub_24F92C6A8();
        v65 = v90;
        MEMORY[0x253051820](v60, v62, v63, v61);
        _Block_release(v61);

        (*(v83 + 8))(v63, v64);
        (*(v80 + 8))(v62, v82);
        v91(v60, v87);
        (*(v71 + 8))(v70, v86);
        return v59;
      }
    }

    else
    {
      v56 = v41;
      (*(v33 + 16))(v26, v31);
      if (v38 > 0x3F)
      {
        if (v42 == 2)
        {
          v58 = 0;
          v57 = (v38 & 0x3F) == 1;
        }

        else
        {
          v57 = 0;
          v58 = 0;
        }
      }

      else
      {
        v57 = 0;
        v58 = v88 == 1;
      }

      v72(v11, v26, v56);
      v66 = v86;
      v11[*(v86 + 20)] = v42 == 2;
      v11[*(v66 + 24)] = v58;
      v11[*(v66 + 28)] = v57;
      type metadata accessor for JSIntentDispatcher();
      sub_24F928FD8();
      sub_24F92A758();
      sub_24F929C28();

      sub_24F928FE8();
      sub_24F929BF8();

      v67 = sub_24F929C08();

      v68 = sub_24EB4700C(v11, v67, "GameStoreKit/ArcadeDiffablePageContentPresenter.swift", 53, 2);

      sub_24EE5F288(v11);
      (*(v33 + 8))(v31, v56);
      return v68;
    }
  }
}

uint64_t sub_24EE5D2B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a4;
  v25[2] = a5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArcadePageIntent(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[8];
  (*(v8 + 16))(v10, a2, v7, v12);
  v17 = v16 >> 6;
  if (v16 > 0x3F)
  {
    if (v17 == 2)
    {
      v19 = 0;
      v18 = (v16 & 0x3F) == 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = v15 == 1;
  }

  v20 = v17 == 2;
  (*(v8 + 32))(v14, v10, v7);
  v14[v11[5]] = v20;
  v14[v11[6]] = v19;
  v14[v11[7]] = v18;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v21 = sub_24F929C08();

  sub_24EB4700C(v14, v21, "GameStoreKit/ArcadeDiffablePageContentPresenter.swift", 53, 2);
  v22 = sub_24E74EC40();
  swift_retain_n();
  v23 = sub_24F92BEF8();
  v26[3] = v22;
  v26[4] = MEMORY[0x277D225C0];
  v26[0] = v23;
  sub_24F92A958();

  sub_24EE5F288(v14);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_24EE5D5A8()
{
  sub_24EE5F4A8();
  v0 = swift_allocError();
  sub_24F92A9A8();
}

uint64_t sub_24EE5D600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  sub_24F929BF8();

  v4 = sub_24F929C18();

  v5 = sub_24EB46264(a1, v4, "GameStoreKit/ArcadeDiffablePageContentPresenter.swift", 53, 2);

  return v5;
}

uint64_t sub_24EE5D6F0(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v6);
  sub_24E615E00(a2, &v7);
  sub_24E60169C(v6, v4, &qword_27F222A30, &qword_24F9A7D00);
  sub_24EE5D790(v4, v5);
  sub_24E601704(v6, &qword_27F222A30, &qword_24F9A7D00);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_24EE5D790(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v5);
  sub_24E615E00(a2, &v6);
  v4 = MEMORY[0x277D84F90];
  sub_24E962AA4();

  sub_24F92AD88();
  sub_24E96513C(v4, 17);

  return sub_24E601704(v5, &qword_27F222A30, &qword_24F9A7D00);
}

uint64_t (*sub_24EE5D874(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EE5F274;
  *(v2 + 24) = a1;

  return sub_24E965698;
}

void *sub_24EE5D8EC(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F928D68();
  v9 = MEMORY[0x253052150](a1 + v8, v17);
  v10 = sub_24E6585F8(v17);
  if (v9)
  {
    v11 = a1[3];
    MEMORY[0x28223BE20](v10);
    v16[2] = a2;

    v12 = sub_24ED75C20(sub_24E965334, v16, v11);
    if (*(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
    {
      v13 = 1;
    }

    else if (*(v11 + 16))
    {
      v13 = *(v12 + 2) == 0;
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
    v17[0] = 104;
    a1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v12, v17, 1, v13);

    MEMORY[0x253050F00](v14);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
  }

  else
  {
  }

  return a1;
}

uint64_t ArcadeDiffablePageContentPresenter.deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return v0;
}

uint64_t ArcadeDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_24EE5DB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_24EE5DC04(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0, &unk_24F963D50);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = v39 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8, &unk_24F963C30);
  v7 = sub_24F92CB28();
  v8 = v7;
  v9 = 0;
  v47 = a1;
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
  v44 = qword_27F231CB8;
  v16 = (v13 + 63) >> 6;
  v39[3] = v3 + 16;
  v39[2] = v3 + 32;
  v41 = v3;
  v39[1] = v3 + 8;
  v46 = v7 + 64;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = v47;
      sub_24E65864C(*(v47 + 48) + 40 * v20, v51);
      v22 = *(*(v21 + 56) + 8 * v20);
      v48 = v51[0];
      v49 = v51[1];
      v50 = v52;
      if (*(v22 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {
        break;
      }

LABEL_18:
      *(v46 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v34 = v8[6] + 40 * v20;
      v35 = v49;
      *v34 = v48;
      *(v34 + 16) = v35;
      *(v34 + 32) = v50;
      *(v8[7] + 8 * v20) = v22;
      v36 = v8[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_23;
      }

      v8[2] = v38;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v53 = v15;
    v24 = v44;
    v23 = v45;
    swift_beginAccess();
    v25 = *(v23 + v24);
    if (*(v25 + 16))
    {
      v26 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

      v27 = sub_24E76D934(v22 + v26);
      if (v28)
      {
        v29 = *(v25 + 56);
        v39[0] = v8;
        v30 = v41;
        v31 = v40;
        v32 = v42;
        (*(v41 + 16))(v40, v29 + *(v41 + 72) * v27, v42);
        (*(v30 + 32))(v43, v31, v32);
        swift_endAccess();
        sub_24F9280B8();

        v33 = *(v30 + 8);
        v8 = v39[0];
        v33(v43, v32);
LABEL_17:
        v15 = v53;
        goto LABEL_18;
      }
    }

    else
    {
    }

    swift_endAccess();

    goto LABEL_17;
  }

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

      return;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void *sub_24EE5DFD4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v96 = a5;
  v105 = a2;
  v106 = a1;
  v104 = *v9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v99 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v103 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v95 - v18;
  v97 = &v95 - v18;
  v101 = *a3;
  v100 = *(a3 + 8);
  v20 = qword_27F231CB8;
  v21 = MEMORY[0x277D84F90];
  *(v9 + v20) = sub_24E60A498(MEMORY[0x277D84F90]);
  v108 = a4;
  sub_24E60169C(a4, v19, &qword_27F228530, &unk_24F93C6E0);
  *(v9 + qword_27F22F198) = 0;
  *(v9 + qword_27F22F1A0) = v21;
  v22 = qword_27F39C780;
  v107 = a7;

  v102 = a6;

  *(v9 + v22) = sub_24E60986C(v21);
  v23 = (v9 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v9 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v9 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v9 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v9 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v9 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v9 + qword_27F39C790) = 0;
  *(v9 + qword_27F22F1D0) = 0;
  *(v9 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v9 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD28, &qword_24F989D30);
  swift_allocObject();
  *(v9 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v9 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD40, &qword_24F989D40);
  swift_allocObject();
  *(v9 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v9 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v9 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v9 + v34) = sub_24F92ADA8();
  v35 = qword_27F22F1E0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v37 = *(*(v36 - 8) + 56);
  v37(v9 + v35, 1, 1, v36);
  v38 = v36;
  v39 = v96;
  v37(v9 + qword_27F22F1E8, 1, 1, v38);
  v9[2] = v106;
  sub_24E911D90(v97, v9 + qword_27F39C7D0);
  v40 = *v23;
  v41 = v23[1];
  *v23 = 0;
  v23[1] = 0;
  sub_24E824448(v40, v41);
  v42 = *v25;
  v43 = v25[1];
  *v25 = 0;
  v25[1] = 0;
  sub_24E824448(v42, v43);
  if (v39)
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v39;
    v45 = sub_24E965688;
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  v47 = *v24;
  v46 = v24[1];
  *v24 = v45;
  v24[1] = v44;
  sub_24E824448(v47, v46);
  v48 = *v26;
  v49 = v26[1];
  *v26 = 0;
  v26[1] = 0;
  sub_24E824448(v48, v49);
  v50 = *v27;
  v51 = v27[1];
  *v27 = 0;
  v27[1] = 0;
  sub_24E824448(v50, v51);
  v52 = v103;
  *(v9 + qword_27F22F1F0) = v102;
  v53 = v108;
  *(v9 + qword_27F39C7D8) = v107;
  sub_24E60169C(v53, v52, &qword_27F228530, &unk_24F93C6E0);
  v54 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v55 = (v54 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v54 + v98 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  sub_24E911D90(v52, v60 + v54);
  v61 = v60 + v55;
  *v61 = v101;
  *(v61 + 8) = v100;
  v62 = v104;
  v63 = v105;
  *(v60 + v56) = v105;
  v64 = v106;
  *(v60 + v57) = v106;
  v65 = v107;
  *(v60 + v58) = v107;
  *(v60 + v59) = a8;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = v65;
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_24EE5EA9C;
  *(v68 + 24) = v60;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_24E94DEE8;
  *(v69 + 24) = v68;
  v70 = (v9 + qword_27F22F1A8);
  v71 = *(v9 + qword_27F22F1A8);
  v72 = *(v9 + qword_27F22F1A8 + 8);
  *v70 = sub_24E965630;
  v70[1] = v69;
  swift_retain_n();
  swift_retain_n();

  v73 = v63;

  sub_24E824448(v71, v72);
  v74 = (v9 + qword_27F22F1B0);
  v75 = *(v9 + qword_27F22F1B0);
  v76 = *(v9 + qword_27F22F1B0 + 8);
  if (v75)
  {
    v77 = swift_allocObject();
    *(v77 + 16) = v75;
    *(v77 + 24) = v76;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_24E94DF50;
    *(v78 + 24) = v77;
    v79 = sub_24E965648;
  }

  else
  {
    v79 = 0;
    v78 = *(v9 + qword_27F22F1B0 + 8);
  }

  *v74 = v79;
  v74[1] = v78;
  sub_24E5FCA4C(v75, v76);
  sub_24E824448(v75, v76);
  v80 = swift_allocObject();
  *(v80 + 16) = sub_24EE5EC08;
  *(v80 + 24) = v67;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_24E94DFB8;
  *(v81 + 24) = v80;
  v82 = (v9 + qword_27F22F1B8);
  v83 = *(v9 + qword_27F22F1B8);
  v84 = *(v9 + qword_27F22F1B8 + 8);
  *v82 = sub_24E965640;
  v82[1] = v81;

  sub_24E824448(v83, v84);
  v85 = (v9 + qword_27F22F1C0);
  v86 = *(v9 + qword_27F22F1C0);
  v87 = *(v9 + qword_27F22F1C0 + 8);
  *v85 = sub_24EE5EBC8;
  v85[1] = v66;

  sub_24E824448(v86, v87);
  v88 = (v9 + qword_27F22F1C8);
  v89 = *(v9 + qword_27F22F1C8);
  v90 = *(v9 + qword_27F22F1C8 + 8);
  if (v89)
  {
    v91 = swift_allocObject();
    *(v91 + 16) = v89;
    *(v91 + 24) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_24E94DEE8;
    *(v92 + 24) = v91;
    v93 = sub_24E965630;
  }

  else
  {
    v93 = 0;
    v92 = *(v9 + qword_27F22F1C8 + 8);
  }

  *v88 = v93;
  v88[1] = v92;
  sub_24E5FCA4C(v89, v90);
  sub_24E824448(v89, v90);

  sub_24E601704(v108, &qword_27F228530, &unk_24F93C6E0);
  return v9;
}

uint64_t type metadata accessor for ArcadeDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F231CC0;
  if (!qword_27F231CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE5E928()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  sub_24EB6CE70(*(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_24EE5EA9C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v6;
  v12 = *v11;
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = *(v1 + v9);
  v16 = *(v1 + v10);
  v17 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = *(v11 + 8);

  return sub_24EE5C6EC(v16, a1, v1 + v4, v12, v18, v13, v14, v15, v17);
}

uint64_t sub_24EE5EB88()
{

  return swift_deallocObject();
}

uint64_t sub_24EE5EBD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EE5EC08(uint64_t a1)
{
  sub_24EE5ECA4(a1, v1);
}

uint64_t sub_24EE5EC34()
{

  return swift_deallocObject();
}

uint64_t sub_24EE5EC6C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE5ECA4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0, &unk_24F963D50);
  v45 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = v40 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1;
  }

  v9 = Strong;
  v10 = qword_27F39C780;
  swift_beginAccess();

  sub_24EE5DC04(v11, v9);
  v13 = v12;

  *(v9 + v10) = v13;

  v14 = sub_24E60A498(MEMORY[0x277D84F90]);
  v15 = qword_27F231CB8;
  swift_beginAccess();
  v50 = v15;
  *(v9 + v15) = v14;

  sub_24EC40820();
  v17 = v16;
  v40[0] = a1;
  if (v16 >> 62)
  {
LABEL_30:
    v18 = sub_24F92C738();
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_31:

    return v40[0];
  }

LABEL_4:
  v19 = v5;
  v20 = 0;
  v47 = v17 & 0xC000000000000001;
  v41 = v17 & 0xFFFFFFFFFFFFFF8;
  v46 = (v45 + 32);
  v40[1] = v45 + 40;
  v43 = v17;
  v42 = v18;
  while (1)
  {
    if (v47)
    {
      v21 = MEMORY[0x253052270](v20, v17);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v20 >= *(v41 + 16))
      {
        goto LABEL_28;
      }

      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if (*(v21 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
    {
      break;
    }

LABEL_6:
    ++v20;
    if (v22 == v18)
    {
      goto LABEL_31;
    }
  }

  v49 = v22;
  v48 = v21;
  sub_24E65864C(v21 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
  sub_24E602068(&qword_27F222A58, &qword_27F222A50, &unk_24F97B600, MEMORY[0x277D21A98]);

  sub_24F9288B8();
  type metadata accessor for ArcadeDiffablePageContentPresenter(0);
  v23 = v44;
  sub_24F9288C8();
  __swift_destroy_boxed_opaque_existential_1(v52);
  v5 = v50;
  swift_beginAccess();
  v24 = v9;
  v9 = *v46;
  v25 = v23;
  v26 = isUniquelyReferenced_nonNull_native;
  (*v46)(v19, v25, isUniquelyReferenced_nonNull_native);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *&v5[v24];
  v27 = v51;
  v17 = v24;
  *&v5[v24] = 0x8000000000000000;
  v29 = sub_24E76D934(v53);
  v30 = v27[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    goto LABEL_27;
  }

  v5 = v28;
  if (v27[3] >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v35 = v51;
      if (v28)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_24E8B07F0();
      v35 = v51;
      if (v5)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v35[(v29 >> 6) + 8] |= 1 << v29;
    sub_24E65864C(v53, v35[6] + 40 * v29);
    isUniquelyReferenced_nonNull_native = v26;
    v9(v35[7] + *(v45 + 72) * v29, v19, v26);
    sub_24E6585F8(v53);
    v36 = v35[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_29;
    }

    v35[2] = v38;
    goto LABEL_25;
  }

  sub_24E89DAE8(v32, isUniquelyReferenced_nonNull_native);
  v33 = sub_24E76D934(v53);
  if ((v5 & 1) == (v34 & 1))
  {
    v29 = v33;
    v35 = v51;
    if ((v5 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = v26;
    (*(v45 + 40))(v35[7] + *(v45 + 72) * v29, v19, v26);
    sub_24E6585F8(v53);
LABEL_25:
    v9 = v17;
    *&v50[v17] = v35;

    swift_endAccess();

    v17 = v43;
    v18 = v42;
    v22 = v49;
    goto LABEL_6;
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24EE5F288(uint64_t a1)
{
  v2 = type metadata accessor for ArcadePageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE5F304()
{
  v1 = sub_24F91F4A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EE5F3C8(unsigned __int8 *a1)
{
  v3 = *(sub_24F91F4A8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EE5D2B0(a1, v1 + v4, v7, v8, v9);
}

unint64_t sub_24EE5F4A8()
{
  result = qword_27F231CE0;
  if (!qword_27F231CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CE0);
  }

  return result;
}

uint64_t UpdatesLockup.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);

  return v1;
}

uint64_t UpdatesLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:whatsNew:version:size:buttonAction:offerDisplayProperties:clickAction:tertiaryTitle:contextMenuData:impressionMetrics:externalVersionId:releaseDate:installDate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 a27, uint64_t a28, uint64_t a29)
{
  v75 = a8;
  v73 = a7;
  v72 = a6;
  v71 = a5;
  v70 = a4;
  v69 = a3;
  v68 = a2;
  v58 = a29;
  v59 = a28;
  v80 = a22;
  v81 = a23;
  v79 = a21;
  v78 = a20;
  v76 = a24;
  v77 = a19;
  v74 = a13;
  v65 = a12;
  v64 = a11;
  v67 = a10;
  v66 = a9;
  LODWORD(v63) = a27;
  v57 = a26;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v55 - v33;
  v35 = swift_allocObject();
  v36 = a1[1];
  v61 = *a1;
  v60 = v36;
  v62 = a14;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = a14;
  v37 = (v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  *v37 = a15;
  v37[1] = a16;
  v38 = v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v38 = a17;
  v39 = v58;
  *(v38 + 8) = a18 & 1;
  v40 = v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v40 = v57;
  v41 = v59;
  *(v40 + 8) = v63 & 1;
  sub_24E60169C(v41, v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v39, v35 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30, &qword_24F939880);
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v63 = a25;
  sub_24E60169C(a25, v34, &qword_27F213E68, &unk_24F93BC80);
  *(v35 + 424) = 4;
  sub_24E60169C(v87, &v84, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v85 + 1))
  {
    v42 = v85;
    *(v35 + 448) = v84;
    *(v35 + 464) = v42;
    *(v35 + 480) = v86;
  }

  else
  {

    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v55 + 8))(v31, v56);
    v82 = v43;
    v83 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v84, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(v34, v35 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  v46 = v60;
  *(v35 + 16) = v61;
  *(v35 + 24) = v46;
  v47 = v69;
  *(v35 + 32) = v68;
  *(v35 + 40) = v47;
  *(v35 + 48) = v70;
  *(v35 + 56) = 0;
  v48 = v65;
  *(v35 + 64) = v64;
  *(v35 + 72) = v48;
  v49 = v72;
  *(v35 + 80) = v71;
  *(v35 + 88) = v49;
  v50 = v75;
  *(v35 + 96) = v73;
  *(v35 + 104) = v50;
  v51 = v67;
  *(v35 + 112) = v66;
  *(v35 + 120) = v51;
  *(v35 + 128) = 0;
  *(v35 + 136) = 2;
  *(v35 + 144) = 0;
  *(v35 + 152) = 0;
  *(v35 + 184) = 0u;
  *(v35 + 200) = 0u;
  *(v35 + 216) = 0u;
  *(v35 + 376) = 0u;
  *(v35 + 392) = 0u;
  *(v35 + 408) = 0x8000;
  *(v35 + 360) = v76;
  *(v35 + 416) = 0;
  *(v35 + 432) = MEMORY[0x277D84FA0];
  *(v35 + 160) = v74;
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;
  *(v35 + 248) = 0;
  *(v35 + 256) = 0;
  v52 = v78;
  *(v35 + 232) = v77;
  *(v35 + 240) = v52;
  v53 = v80;
  *(v35 + 264) = v79;
  *(v35 + 272) = 0u;
  *(v35 + 288) = 0u;
  *(v35 + 304) = 0;
  *(v35 + 312) = v53;
  *(v35 + 328) = 0;
  *(v35 + 336) = 0;
  *(v35 + 320) = v81;
  sub_24E601704(v39, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v41, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v63, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v34, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v87, &qword_27F235830, &qword_24F93B8C0);
  *(v35 + 344) = MEMORY[0x277D84F90];
  *(v35 + 352) = 0;
  *(v35 + 440) = 0;
  *(v35 + 368) = 0;
  return v35;
}

uint64_t UpdatesLockup.init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:whatsNew:version:size:buttonAction:offerDisplayProperties:clickAction:tertiaryTitle:contextMenuData:impressionMetrics:externalVersionId:releaseDate:installDate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v77 = a8;
  v75 = a7;
  v74 = a6;
  v73 = a5;
  v72 = a4;
  v71 = a3;
  v70 = a2;
  v61 = a29;
  v62 = a28;
  v78 = a24;
  v84 = a23;
  v82 = a22;
  v81 = a21;
  v80 = a20;
  v79 = a19;
  v76 = a13;
  v67 = a12;
  v66 = a11;
  v69 = a10;
  v68 = a9;
  v63 = a25;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v58 - v35;
  v37 = a1[1];
  v65 = *a1;
  v64 = v37;
  v83 = a14;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = a14;
  v38 = v36;
  v39 = (v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  *v39 = a15;
  v39[1] = a16;
  v40 = v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v40 = a17;
  v41 = v61;
  *(v40 + 8) = a18 & 1;
  v42 = v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v42 = a26;
  v43 = v62;
  *(v42 + 8) = a27 & 1;
  sub_24E60169C(v43, v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30, &qword_24F939880);
  v44 = v63;
  sub_24E60169C(v41, v30 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30, &qword_24F939880);
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  sub_24E60169C(v44, v38, &qword_27F213E68, &unk_24F93BC80);
  *(v30 + 424) = 4;
  sub_24E60169C(v93, &v87, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {

    sub_24F91F6A8();
    v45 = sub_24F91F668();
    v47 = v46;
    (*(v59 + 8))(v33, v60);
    v85 = v45;
    v86 = v47;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830, &qword_24F93B8C0);
  }

  v48 = v91;
  *(v30 + 448) = v90;
  *(v30 + 464) = v48;
  *(v30 + 480) = v92;
  sub_24E60169C(v38, v30 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v49 = v64;
  *(v30 + 16) = v65;
  *(v30 + 24) = v49;
  v50 = v71;
  *(v30 + 32) = v70;
  *(v30 + 40) = v50;
  *(v30 + 48) = v72;
  *(v30 + 56) = 0;
  v51 = v67;
  *(v30 + 64) = v66;
  *(v30 + 72) = v51;
  v52 = v74;
  *(v30 + 80) = v73;
  *(v30 + 88) = v52;
  v53 = v77;
  *(v30 + 96) = v75;
  *(v30 + 104) = v53;
  v54 = v69;
  *(v30 + 112) = v68;
  *(v30 + 120) = v54;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  *(v30 + 144) = 0;
  *(v30 + 152) = 0;
  *(v30 + 216) = 0u;
  *(v30 + 200) = 0u;
  *(v30 + 184) = 0u;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v78;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x277D84FA0];
  *(v30 + 160) = v76;
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 248) = 0;
  *(v30 + 256) = 0;
  v55 = v80;
  *(v30 + 232) = v79;
  *(v30 + 240) = v55;
  *(v30 + 264) = v81;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  v56 = v82;
  *(v30 + 304) = 0;
  *(v30 + 312) = v56;
  *(v30 + 328) = 0;
  *(v30 + 336) = 0;
  *(v30 + 320) = v84;

  sub_24E601704(v41, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v43, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v44, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v38, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v93, &qword_27F235830, &qword_24F93B8C0);
  *(v30 + 344) = MEMORY[0x277D84F90];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t UpdatesLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v38 - v4;
  v5 = sub_24F9285B8();
  v41 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_24F928388();
  v39 = *(v11 - 8);
  v12 = v39;
  MEMORY[0x28223BE20](v11);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  type metadata accessor for Paragraph(0);
  sub_24F928398();
  v47 = v6;
  v17 = *(v6 + 16);
  v42 = v6 + 16;
  v43 = v17;
  (v17)(v10, v48, v5);
  sub_24EE60684();
  sub_24F929548();
  v18 = v40;
  *(v40 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = v49;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v16, v11);
  v23 = (v18 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  v24 = v18;
  *v23 = v19;
  v23[1] = v21;
  sub_24F928398();
  v25 = sub_24F9282D8();
  LOBYTE(v21) = v26;
  v22(v16, v11);
  v27 = v18 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v27 = v25;
  *(v27 + 8) = v21 & 1;
  sub_24F928398();
  v28 = sub_24F9282D8();
  LOBYTE(v21) = v29;
  v22(v16, v11);
  v30 = v18 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v30 = v28;
  *(v30 + 8) = v21 & 1;
  sub_24F928398();
  v31 = v45;
  sub_24F928288();
  v22(v16, v11);
  sub_24E6C4F90(v31, v24 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate);
  v32 = v48;
  sub_24F928398();
  sub_24F928288();
  v22(v16, v11);
  sub_24E6C4F90(v31, v24 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate);
  v33 = v44;
  (*(v39 + 16))(v44, a1, v11);
  v34 = v46;
  v35 = v41;
  v43(v46, v32);
  v36 = Lockup.init(deserializing:using:)(v33, v34);
  (*(v47 + 8))(v32, v35);
  v22(a1, v11);
  return v36;
}

unint64_t sub_24EE60684()
{
  result = qword_27F214718;
  if (!qword_27F214718)
  {
    type metadata accessor for Paragraph(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214718);
  }

  return result;
}

uint64_t sub_24EE60710()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30, &qword_24F939880);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30, &qword_24F939880);
}

uint64_t UpdatesLockup.deinit()
{
  v0 = Lockup.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30, &qword_24F939880);
  return v0;
}

uint64_t UpdatesLockup.__deallocating_deinit()
{
  v0 = Lockup.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30, &qword_24F939880);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdatesLockup(uint64_t a1)
{
  result = qword_27F231CE8;
  if (!qword_27F231CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE60960(uint64_t a1)
{
  sub_24E728940(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_24EE60B4C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
    v6 = [v3 valueWithObject:sub_24F92CF68() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EE60C68()
{
  result = qword_27F231CF8;
  if (!qword_27F231CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231CF8);
  }

  return result;
}

unint64_t sub_24EE60CC4()
{
  result = qword_27F231D00;
  if (!qword_27F231D00)
  {
    type metadata accessor for UpsellGridContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231D00);
  }

  return result;
}

uint64_t PerformanceTestRunner.failed(_:with:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  v8 = sub_24F92B188();
  (*(a4 + 16))(a1, v8, v9, a3, a4);
}

uint64_t SearchResultsUnavailableReason.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultsUnavailableReason.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchResultsUnavailableReason.init(title:message:action:contextCard:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t SearchResultsUnavailableReason.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v47 = a2;
  v46 = sub_24F9285B8();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v18 = *(v7 + 8);
  v17 = v7 + 8;
  v19 = v6;
  v20 = v6;
  v21 = v18;
  v18(v12, v20);
  v43 = v16;
  if (v16)
  {
    v42 = v14;
    v36 = v13;
    sub_24F928398();
    v22 = sub_24F928348();
    v40 = v23;
    v41 = v22;
    v24 = v19;
    v21(v9, v19);
    type metadata accessor for Action(0);
    sub_24F928398();
    v25 = v45;
    v37 = v24;
    v38 = v17;
    v26 = v47;
    v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v47);
    v21(v9, v24);
    type metadata accessor for SearchResultsContextCard();
    v27 = v36;
    sub_24F928398();
    v28 = v46;
    (*(v4 + 16))(v44, v26, v46);
    sub_24EE612B4(&qword_27F2230F0, type metadata accessor for SearchResultsContextCard, &protocol conformance descriptor for SearchResultsContextCard);
    sub_24F929548();
    (*(v4 + 8))(v26, v28);
    result = (v21)(v27, v37);
    v30 = v48;
    v31 = v43;
    *v25 = v42;
    v25[1] = v31;
    v32 = v40;
    v25[2] = v41;
    v25[3] = v32;
    v25[4] = v39;
    v25[5] = v30;
  }

  else
  {
    v33 = sub_24F92AC38();
    sub_24EE612B4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v34 = 0x656C746974;
    v34[1] = 0xE500000000000000;
    v34[2] = &type metadata for SearchResultsUnavailableReason;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    (*(v4 + 8))(v47, v46);
    return (v21)(v13, v19);
  }

  return result;
}

uint64_t sub_24EE612B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EE61324(id a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a4 & 1) == 0)
  {
    [a1 setLargeTitleDisplayMode_];
    [a1 _setSupportsTwoLineLargeTitles_];
  }

  v22 = [a1 scrollEdgeAppearance];
  if (!v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  }

  v7 = [a1 standardAppearance];
  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  }

  [v22 _setTitleControlHidden_];
  [v7 _setTitleControlHidden_];
  [a1 setScrollEdgeAppearance_];
  [a1 setStandardAppearance_];
  v8 = [a1 rightBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_24E69A5C4(0, &qword_27F231D28, 0x277D751E0);
    v10 = sub_24F92B5A8();

    if (!(v10 >> 62))
    {
LABEL_9:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_9;
    }
  }

  v11 = sub_24F92C738();
LABEL_10:
  v12 = (a4 >> 8) & 1;
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
      goto LABEL_32;
    }

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x253052270](i, v10);
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      v15 = v14;
      [v14 setHidden_];
    }
  }

  v16 = [a1 trailingItemGroups];
  sub_24E69A5C4(0, &qword_27F231D20, 0x277D751F0);
  v17 = sub_24F92B5A8();

  if (v17 >> 62)
  {
    v18 = sub_24F92C738();
    if (v18)
    {
LABEL_19:
      if (v18 >= 1)
      {
        for (j = 0; j != v18; ++j)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x253052270](j, v17);
          }

          else
          {
            v20 = *(v17 + 8 * j + 32);
          }

          v21 = v20;
          [v20 setHidden_];
        }

        goto LABEL_28;
      }

LABEL_32:
      __break(1u);
      return;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_19;
    }
  }

LABEL_28:
}

void sub_24EE61658(void *a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_24EE61324(a1, a2, *v2, v3 | *(v2 + 8));
}

uint64_t sub_24EE61688(uint64_t a1)
{
  v2 = sub_24F925338();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v87 = &v78[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D08, &qword_24F9A7FA0);
  MEMORY[0x28223BE20](v5);
  v88 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v86 = &v78[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v78[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v78[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10, &qword_24F9A7FA8);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = &v78[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v85 = &v78[-v18];
  MEMORY[0x28223BE20](v19);
  v81 = &v78[-v20];
  MEMORY[0x28223BE20](v21);
  v84 = &v78[-v22];
  MEMORY[0x28223BE20](v23);
  v83 = &v78[-v24];
  MEMORY[0x28223BE20](v25);
  v27 = &v78[-v26];
  MEMORY[0x28223BE20](v28);
  v30 = &v78[-v29];
  MEMORY[0x28223BE20](v31);
  v33 = &v78[-v32];
  MEMORY[0x28223BE20](v34);
  v36 = &v78[-v35];
  v90 = a1;
  sub_24EE6223C(a1, &v78[-v35]);
  sub_24F925328();
  v93 = *(v3 + 56);
  v94 = v3 + 56;
  v93(v33, 0, 1, v2);
  v89 = v5;
  v37 = *(v5 + 48);
  sub_24EE6223C(v33, v14);
  v92 = v36;
  sub_24EE6223C(v36, &v14[v37]);
  v91 = v3;
  v38 = *(v3 + 48);
  if (v38(v14, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F231D10, &qword_24F9A7FA8);
    if (v38(&v14[v37], 1, v2) == 1)
    {
      sub_24E601704(v14, &qword_27F231D10, &qword_24F9A7FA8);
LABEL_17:
      sub_24E601704(v90, &qword_27F231D10, &qword_24F9A7FA8);
      v53 = v92;
      v54 = &qword_27F231D10;
      v55 = &qword_24F9A7FA8;
LABEL_29:
      sub_24E601704(v53, v54, v55);
      return 0;
    }

    goto LABEL_6;
  }

  sub_24EE6223C(v14, v30);
  if (v38(&v14[v37], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F231D10, &qword_24F9A7FA8);
    (*(v91 + 8))(v30, v2);
LABEL_6:
    sub_24E601704(v14, &qword_27F231D08, &qword_24F9A7FA0);
    goto LABEL_7;
  }

  v48 = v91;
  v49 = *(v91 + 32);
  v80 = v38;
  v50 = v87;
  v49(v87, &v14[v37], v2);
  sub_24EE6231C();
  v79 = sub_24F92AFF8();
  v51 = *(v48 + 8);
  v52 = v50;
  v38 = v80;
  v51(v52, v2);
  sub_24E601704(v33, &qword_27F231D10, &qword_24F9A7FA8);
  v51(v30, v2);
  sub_24E601704(v14, &qword_27F231D10, &qword_24F9A7FA8);
  if (v79)
  {
    goto LABEL_17;
  }

LABEL_7:
  sub_24F925318();
  v93(v27, 0, 1, v2);
  v39 = v89;
  v40 = *(v89 + 48);
  sub_24EE6223C(v27, v11);
  v41 = v92;
  sub_24EE6223C(v92, &v11[v40]);
  if (v38(v11, 1, v2) == 1)
  {
    sub_24E601704(v27, &qword_27F231D10, &qword_24F9A7FA8);
    if (v38(&v11[v40], 1, v2) == 1)
    {
      sub_24E601704(v11, &qword_27F231D10, &qword_24F9A7FA8);
LABEL_25:
      sub_24E601704(v90, &qword_27F231D10, &qword_24F9A7FA8);
      sub_24E601704(v41, &qword_27F231D10, &qword_24F9A7FA8);
      return 2;
    }

    goto LABEL_12;
  }

  v42 = v83;
  sub_24EE6223C(v11, v83);
  if (v38(&v11[v40], 1, v2) == 1)
  {
    sub_24E601704(v27, &qword_27F231D10, &qword_24F9A7FA8);
    (*(v91 + 8))(v42, v2);
LABEL_12:
    sub_24E601704(v11, &qword_27F231D08, &qword_24F9A7FA0);
    goto LABEL_13;
  }

  v59 = v91;
  v60 = &v11[v40];
  v61 = v87;
  (*(v91 + 32))(v87, v60, v2);
  sub_24EE6231C();
  LODWORD(v80) = sub_24F92AFF8();
  v62 = *(v59 + 8);
  v62(v61, v2);
  sub_24E601704(v27, &qword_27F231D10, &qword_24F9A7FA8);
  v62(v42, v2);
  v41 = v92;
  v39 = v89;
  sub_24E601704(v11, &qword_27F231D10, &qword_24F9A7FA8);
  if (v80)
  {
    goto LABEL_25;
  }

LABEL_13:
  v43 = v84;
  sub_24F9252F8();
  v93(v43, 0, 1, v2);
  v44 = *(v39 + 48);
  v45 = v86;
  sub_24EE6223C(v43, v86);
  sub_24EE6223C(v41, &v45[v44]);
  if (v38(v45, 1, v2) == 1)
  {
    sub_24E601704(v43, &qword_27F231D10, &qword_24F9A7FA8);
    v46 = v38(&v45[v44], 1, v2);
    v47 = v85;
    if (v46 == 1)
    {
      sub_24E601704(v45, &qword_27F231D10, &qword_24F9A7FA8);
LABEL_32:
      sub_24E601704(v90, &qword_27F231D10, &qword_24F9A7FA8);
      sub_24E601704(v41, &qword_27F231D10, &qword_24F9A7FA8);
      return 3;
    }

    goto LABEL_20;
  }

  v56 = v81;
  sub_24EE6223C(v45, v81);
  if (v38(&v45[v44], 1, v2) == 1)
  {
    sub_24E601704(v43, &qword_27F231D10, &qword_24F9A7FA8);
    (*(v91 + 8))(v56, v2);
    v47 = v85;
LABEL_20:
    sub_24E601704(v45, &qword_27F231D08, &qword_24F9A7FA0);
    goto LABEL_21;
  }

  v65 = v91;
  v66 = &v45[v44];
  v67 = v87;
  (*(v91 + 32))(v87, v66, v2);
  sub_24EE6231C();
  v68 = sub_24F92AFF8();
  v69 = v43;
  v70 = *(v65 + 8);
  v70(v67, v2);
  sub_24E601704(v69, &qword_27F231D10, &qword_24F9A7FA8);
  v70(v56, v2);
  v41 = v92;
  sub_24E601704(v86, &qword_27F231D10, &qword_24F9A7FA8);
  v47 = v85;
  if (v68)
  {
    goto LABEL_32;
  }

LABEL_21:
  sub_24F925308();
  v93(v47, 0, 1, v2);
  v57 = *(v39 + 48);
  v58 = v88;
  sub_24EE6223C(v47, v88);
  sub_24EE622AC(v41, &v58[v57]);
  if (v38(v58, 1, v2) != 1)
  {
    v64 = v88;
    sub_24EE6223C(v88, v82);
    if (v38(&v64[v57], 1, v2) != 1)
    {
      v71 = v91;
      v72 = v82;
      v73 = v88;
      v74 = &v88[v57];
      v75 = v87;
      (*(v91 + 32))(v87, v74, v2);
      sub_24EE6231C();
      v76 = sub_24F92AFF8();
      sub_24E601704(v90, &qword_27F231D10, &qword_24F9A7FA8);
      v77 = *(v71 + 8);
      v77(v75, v2);
      sub_24E601704(v47, &qword_27F231D10, &qword_24F9A7FA8);
      v77(v72, v2);
      sub_24E601704(v73, &qword_27F231D10, &qword_24F9A7FA8);
      return (v76 & 1) != 0;
    }

    sub_24E601704(v90, &qword_27F231D10, &qword_24F9A7FA8);
    sub_24E601704(v47, &qword_27F231D10, &qword_24F9A7FA8);
    (*(v91 + 8))(v82, v2);
LABEL_28:
    v54 = &qword_27F231D08;
    v55 = &qword_24F9A7FA0;
    v53 = v88;
    goto LABEL_29;
  }

  sub_24E601704(v90, &qword_27F231D10, &qword_24F9A7FA8);
  sub_24E601704(v47, &qword_27F231D10, &qword_24F9A7FA8);
  if (v38(&v88[v57], 1, v2) != 1)
  {
    goto LABEL_28;
  }

  sub_24E601704(v88, &qword_27F231D10, &qword_24F9A7FA8);
  return 1;
}

uint64_t sub_24EE6223C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10, &qword_24F9A7FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE622AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231D10, &qword_24F9A7FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE6231C()
{
  result = qword_27F231D18;
  if (!qword_27F231D18)
  {
    sub_24F925338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231D18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PageViewNavigationItemAdaptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PageViewNavigationItemAdaptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t AnyGenericPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OpenIntentModel<>.init(id:url:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClosedGenericPageIntent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v6);
  v7 = *(v4 + 20);
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a2, v8);
  sub_24EE63394(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
  sub_24F929188();
  (*(v9 + 8))(a2, v8);
  return sub_24E6585F8(a1);
}

uint64_t type metadata accessor for ClosedGenericPageIntent(uint64_t a1)
{
  result = qword_27F231D38;
  if (!qword_27F231D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClosedGenericPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - v6;
  v43 = sub_24F91F4A8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F928388();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v46 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v49 = a3;
  if (v19)
  {
    v47 = v18;
    v48 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v47 = v20;
    v48 = v22;
  }

  sub_24F92C7F8();
  v23 = *(v12 + 8);
  v24 = v44;
  v23(v17, v44);
  v25 = v46;
  sub_24F928398();
  v26 = v42;
  sub_24F928268();
  v23(v14, v24);
  v27 = v41;
  v28 = v43;
  if ((*(v41 + 48))(v26, 1, v43) == 1)
  {
    sub_24E70E058(v26);
    v29 = v24;
    v30 = sub_24F92AC38();
    sub_24EE63394(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for ClosedGenericPageIntent(0);
    *v32 = 7107189;
    v32[1] = 0xE300000000000000;
    v32[2] = v33;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v45, v34);
    v23(v25, v29);
    return sub_24E6585F8(v49);
  }

  else
  {
    v36 = sub_24F9285B8();
    (*(*(v36 - 8) + 8))(v45, v36);
    v23(v25, v24);
    v37 = *(v27 + 32);
    v38 = v40;
    v37(v40, v26, v28);
    v39 = type metadata accessor for ClosedGenericPageIntent(0);
    return (v37)(v49 + *(v39 + 20), v38, v28);
  }
}

uint64_t ClosedGenericPageIntent.init(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  v6 = *(type metadata accessor for ClosedGenericPageIntent(0) + 20);
  v7 = sub_24F91F4A8();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t ClosedGenericPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClosedGenericPageIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall ClosedGenericPageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_24E65864C(v1, v9);
  v6 = [v3 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  type metadata accessor for ClosedGenericPageIntent(0);
  v9[0] = sub_24F91F398();
  v9[1] = v7;
  v8 = [v3 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v8)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AnyGenericPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_24F928398();
  sub_24F928268();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_24E70E058(v7);
    v17 = sub_24F92AC38();
    sub_24EE63394(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v19 = v18;
    v22 = type metadata accessor for AnyGenericPageIntent(0, v28, v20, v21);
    *v19 = 7107189;
    v19[1] = 0xE300000000000000;
    v19[2] = v22;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22530], v17);
    swift_willThrow();
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v29, v23);
    return (v16)(v30, v8);
  }

  else
  {
    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v29, v25);
    v16(v30, v8);
    v26 = *(v13 + 32);
    v26(v15, v7, v12);
    return (v26)(v27, v15, v12);
  }
}

uint64_t AnyGenericPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

JSValue __swiftcall AnyGenericPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = sub_24F91F398();
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EE63394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE63480(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EE63540(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EE635E4(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE63664(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE636E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewWillBeginDecelerating(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      v11(_, willDecelerate, ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 40);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

void CompoundScrollObserver.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      v13 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v15(a1, a2, ObjectType, v13, a3, a4);
      swift_unknownObjectRelease();
      v12 += 2;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_24EE63F28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EE63F4C, 0, 0);
}

uint64_t sub_24EE63F4C()
{
  v1 = (*(v0[3] + 136))(v0[2]);
  if (v1)
  {
    v3 = v2;
    v4 = v1;
    v1();
    v5.n128_f64[0] = sub_24E824448(v4, v3);
    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v11 = (*(v0[3] + 224) + **(v0[3] + 224));
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_24E7B25A8;
    v9 = v0[3];
    v10 = v0[2];

    return v11(v10, v9);
  }
}

uint64_t sub_24EE640D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_24F9294C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F928818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = (*(a2 + 120))(a1, a2, v12);
  if (v15)
  {
    v20[1] = v15;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_24F92AD48();
    swift_unknownObjectRelease();
    v16 = *(v8 + 32);
    v16(v14, v10, v7);
    v16(a3, v14, v7);
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v18 = MEMORY[0x277D84F90];
    sub_24E608448(MEMORY[0x277D84F90]);
    sub_24F9294B8();
    sub_24EA200BC(v18);
    sub_24F928748();
  }

  return (*(v8 + 56))(a3, 0, 1, v7);
}

unint64_t sub_24EE64434(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 120))() || (swift_getAssociatedTypeWitness(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231E38, &qword_24F9A82B0), (swift_dynamicCast() & 1) == 0))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  v2 = *(&v7 + 1);
  if (!*(&v7 + 1))
  {
LABEL_6:
    sub_24E601704(&v6, &qword_27F231E30, &qword_24F9A82A8);
    return 0;
  }

  v3 = v8;
  __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
  v4 = ((*(v3 + 8))(v2, v3) >> 3) & 1;
  __swift_destroy_boxed_opaque_existential_1(&v6);
  return v4;
}

void *sub_24EE6454C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  (*(a2 + 96))(a1, a2, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    v10 = &v7[*(v8 + 36)];
    v11 = *v10;
    v12 = *(*v10 + 16);
    if (v12)
    {
      v13 = v10[1];
      v9 = sub_24EAE6938(*(*v10 + 16), 0);
      v14 = sub_24EAE8D14(&v17, (v9 + 4), v12, v11, v13);

      if (v14 == v12)
      {
LABEL_7:
        sub_24E601704(v7, &qword_27F22ACF0, &qword_24F990A30);
        return v9;
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  sub_24E601704(v7, &qword_27F22C688, &qword_24F9CADD0);
  return MEMORY[0x277D84F90];
}

char *sub_24EE6470C(uint64_t a1, uint64_t a2)
{
  v5 = sub_24EE6454C(a1, a2);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  swift_unknownObjectRetain();
  v7 = sub_24EB0B16C(sub_24EE64F9C, v6, v5);

  return v7;
}

uint64_t sub_24EE647B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  (*(a3 + 96))(a2, a3, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F22C688, &qword_24F9CADD0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }

  else
  {
    v15 = *&v11[*(v12 + 40)];
    if (*(v15 + 16) && (v16 = sub_24E76DD40(a1), (v17 & 1) != 0))
    {
      v20[1] = *(*(v15 + 56) + 8 * v16);
      type metadata accessor for Shelf(0);

      sub_24F928A78();
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    (*(*(v19 - 8) + 56))(a4, v18, 1, v19);
    return sub_24E601704(v11, &qword_27F22ACF0, &qword_24F990A30);
  }
}

void *sub_24EE649DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = sub_24EE6470C(a1, a2);
  swift_getKeyPath();
  v9 = *(v8 + 2);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v25 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v11 = v5 + 16;
    v12 = *(v5 + 16);
    v13 = *(v5 + 80);
    v22[1] = v8;
    v14 = &v8[(v13 + 32) & ~v13];
    v23 = *(v11 + 56);
    v24 = v12;
    v15 = (v11 - 8);
    do
    {
      v24(v7, v14, v4);
      swift_getAtKeyPath();
      (*v15)(v7, v4);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v14 += v23;
      --v9;
    }

    while (v9);

    v16 = v25;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v25 = v10;
  if (v16 >> 62)
  {
LABEL_23:
    v17 = sub_24F92C738();
    if (v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_8:
      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x253052270](v18, v16);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v10 = v25;
            break;
          }
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v19 = *(v16 + 8 * v18 + 32);

          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_19;
          }
        }

        switch(*(v19 + 16))
        {
          case 1:
          case 3:
          case 4:
          case 0xD:
          case 0xF:
          case 0x11:
          case 0x15:
          case 0x17:
          case 0x18:
          case 0x1F:
          case 0x21:
          case 0x22:
          case 0x23:
          case 0x2F:
          case 0x36:
          case 0x37:
          case 0x38:
          case 0x3A:
          case 0x3F:
          case 0x4A:
          case 0x57:
          case 0x5D:
          case 0x63:
          case 0x64:
          case 0x66:
            v10 = &v25;
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            break;
          default:

            break;
        }

        ++v18;
        if (v20 == v17)
        {
          goto LABEL_20;
        }
      }
    }
  }

  return v10;
}

uint64_t sub_24EE64E70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EE63F28(a1, a2);
}

void *sub_24EE64F14@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  result = sub_24F928A58();
  *a1 = v3;
  return result;
}

uint64_t sub_24EE64F64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t AppEventDetailPagePresenter.__allocating_init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24EE65588(a1, a2);

  return v4;
}

uint64_t AppEventDetailPagePresenter.init(objectGraph:appEventDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24EE65588(a1, a2);

  return v2;
}

uint64_t sub_24EE650C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EE6512C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24EE651CC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_27F210788;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_27F230F98;
    v5 = v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EE653A4()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_appEventDetailPage), ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_24EE6546C()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view);

  return result;
}

uint64_t AppEventDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view);

  return v0;
}

uint64_t AppEventDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;

  sub_24E883630(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE65588(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_appEventDetailPage) = a2;

  v5 = sub_24EC8415C(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppEventDetailPage(0);
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_24EE658F0();
  v7[0] = a2;
  swift_beginAccess();

  sub_24EA095A4(v7, v5 + 40);
  swift_endAccess();
  sub_24EC832DC();

  sub_24ECB9448(v7);
  return v5;
}

uint64_t sub_24EE65670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EE656CC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit27AppEventDetailPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for AppEventDetailPagePresenter(uint64_t a1)
{
  result = qword_27F231E48;
  if (!qword_27F231E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EE658F0()
{
  result = qword_27F231E58;
  if (!qword_27F231E58)
  {
    type metadata accessor for AppEventDetailPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231E58);
  }

  return result;
}

void *SearchLandingPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_24F9285B8();
  v39 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v32 = v30 - v7;
  v8 = sub_24F928388();
  v31 = *(v8 - 8);
  v9 = v31;
  MEMORY[0x28223BE20](v8);
  v33 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  sub_24F928398();
  v17 = sub_24F928258();
  v19 = v18;
  v20 = *(v9 + 8);
  v38 = v8;
  v20(v16, v8);
  v21 = v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount;
  *v21 = v17;
  *(v21 + 8) = v19 & 1;
  sub_24F928398();
  LOBYTE(v17) = sub_24F928278();
  v34 = v20;
  v30[1] = v9 + 8;
  v20(v13, v8);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles) = v17 & 1;
  v22 = v3;
  type metadata accessor for SearchFocusPage(0);
  sub_24F928398();
  v23 = *(v39 + 16);
  v25 = v35;
  v24 = v36;
  v23(v32, v36, v35);
  sub_24EE65D60();
  sub_24F929548();
  *(v22 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage) = v40;
  v26 = v33;
  (*(v31 + 16))(v33, a1, v38);
  v27 = v37;
  v23(v37, v24, v25);
  v28 = GenericPage.init(deserializing:using:)(v26, v27);
  (*(v39 + 8))(v24, v25);
  v34(a1, v38);
  return v28;
}

unint64_t sub_24EE65D60()
{
  result = qword_27F231E60;
  if (!qword_27F231E60)
  {
    type metadata accessor for SearchFocusPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231E60);
  }

  return result;
}

uint64_t SearchLandingPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), char *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v82 = a8;
  LODWORD(v76) = a7;
  v74 = a5;
  v80 = a4;
  v69 = a3;
  v68 = a2;
  v67 = a1;
  v77 = a12;
  v81 = a10;
  v71 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v64 - v17;
  MEMORY[0x28223BE20](v18);
  v78 = &v64 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v23 = sub_24F928818();
  v66 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v64 - v28;
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles) = 0;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage) = 0;
  v75 = a6;
  sub_24E60169C(a6, v84, &qword_27F2129B0, &unk_24F945320);
  v70 = v24;
  v32 = *(v24 + 16);
  v73 = a11;
  v32(v29, a11, v23);
  v72 = a13;
  sub_24E60169C(a13, v22, &qword_27F2218B0, &unk_24F975980);
  v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v34 = sub_24EEF0A68(v67);
  v36 = v35;

  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v34;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v38 = v69;
  *v37 = v68;
  v37[1] = v38;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v80;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v74;
  v39 = v66;
  sub_24E60169C(v84, v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v76;
  swift_beginAccess();
  *(v30 + v33) = v82;
  v40 = v77;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v76 = v29;
  v32(v26, v29, v39);
  v41 = v78;
  sub_24E60169C(v22, v78, &qword_27F2218B0, &unk_24F975980);
  *(v30 + 16) = v81;
  v74 = v26;
  v32((v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v26, v39);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v40;
  v42 = v79;
  sub_24E60169C(v41, v79, &qword_27F2218B0, &unk_24F975980);
  v43 = sub_24F9285B8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v42, 1, v43) == 1)
  {

    sub_24E601704(v72, &qword_27F2218B0, &unk_24F975980);
    v46 = *(v70 + 8);
    v46(v73, v39);
    sub_24E601704(v75, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v41, &qword_27F2218B0, &unk_24F975980);
    v46(v74, v39);
    sub_24E601704(v22, &qword_27F2218B0, &unk_24F975980);
    v46(v76, v39);
    sub_24E601704(v84, &qword_27F2129B0, &unk_24F945320);
    v47 = v42;
    v48 = &qword_27F2218B0;
    v49 = &unk_24F975980;
  }

  else
  {
    v68 = v45;
    v69 = v22;
    v50 = v70;
    v51 = qword_27F2105F0;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v52, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v53 = v83;
    v54 = v50;
    if (v83)
    {
    }

    v55 = *(v44 + 8);
    v56 = v79;
    v79 = v44 + 8;
    v55(v56, v43);
    v57 = v78;
    v58 = v72;
    if (v53)
    {
      v59 = v65;
      sub_24E60169C(v78, v65, &qword_27F2218B0, &unk_24F975980);
      if (v68(v59, 1, v43) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v58, &qword_27F2218B0, &unk_24F975980);
        v63 = *(v54 + 8);
        v63(v73, v39);
        sub_24E601704(v75, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v57, &qword_27F2218B0, &unk_24F975980);
        v63(v74, v39);
        sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
        v63(v76, v39);
        sub_24E601704(v84, &qword_27F2129B0, &unk_24F945320);
        v55(v65, v43);
        return v30;
      }

      sub_24E601704(v58, &qword_27F2218B0, &unk_24F975980);
      v60 = *(v54 + 8);
      v60(v73, v39);
      sub_24E601704(v75, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v57, &qword_27F2218B0, &unk_24F975980);
      v60(v74, v39);
      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v60(v76, v39);
      sub_24E601704(v84, &qword_27F2129B0, &unk_24F945320);
      v47 = v59;
      v48 = &qword_27F2218B0;
      v49 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v58, &qword_27F2218B0, &unk_24F975980);
      v61 = *(v54 + 8);
      v61(v73, v39);
      sub_24E601704(v75, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v57, &qword_27F2218B0, &unk_24F975980);
      v61(v74, v39);
      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v61(v76, v39);
      v47 = v84;
      v48 = &qword_27F2129B0;
      v49 = &unk_24F945320;
    }
  }

  sub_24E601704(v47, v48, v49);
  return v30;
}

uint64_t SearchLandingPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v80 = a4;
  v81 = a8;
  LODWORD(v79) = a7;
  v78 = a5;
  v76 = a3;
  v71 = a2;
  v70 = a1;
  v82 = a12;
  v85 = a10;
  v73 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v15 - 8);
  v68 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v67 - v18;
  MEMORY[0x28223BE20](v19);
  v83 = &v67 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  v24 = sub_24F928818();
  v69 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v67 - v29;
  v31 = v13 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_prefersSmallShelfTitles) = 0;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit17SearchLandingPage_searchFocusPage) = 0;
  v77 = a6;
  sub_24E60169C(a6, v87, &qword_27F2129B0, &unk_24F945320);
  v72 = v25;
  v32 = *(v25 + 16);
  v75 = a11;
  v32(v30, a11, v24);
  v74 = a13;
  sub_24E60169C(a13, v23, &qword_27F2218B0, &unk_24F975980);
  v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v34 = sub_24EEF0A68(v70);
  v36 = v35;

  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v34;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v38 = v76;
  *v37 = v71;
  v37[1] = v38;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v80;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v78;
  sub_24E60169C(v87, v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v79;
  swift_beginAccess();
  *(v13 + v33) = v81;

  *(v13 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v78 = v30;
  v39 = v69;
  v32(v27, v30, v69);
  v79 = v23;
  v40 = v23;
  v41 = v83;
  sub_24E60169C(v40, v83, &qword_27F2218B0, &unk_24F975980);
  *(v13 + 16) = v85;
  v42 = (v13 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics);
  v76 = v27;
  v43 = v27;
  v44 = v13;
  v45 = v39;
  v32(v42, v43, v39);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v82;
  v46 = v84;
  sub_24E60169C(v41, v84, &qword_27F2218B0, &unk_24F975980);
  v47 = sub_24F9285B8();
  v71 = *(v47 - 8);
  v48 = *(v71 + 48);
  v49 = v47;
  if ((v48)(v46, 1) == 1)
  {

    sub_24E601704(v74, &qword_27F2218B0, &unk_24F975980);
    v50 = *(v72 + 8);
    v50(v75, v45);
    sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v41, &qword_27F2218B0, &unk_24F975980);
    v50(v76, v45);
    sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
    v50(v78, v45);
    sub_24E601704(v87, &qword_27F2129B0, &unk_24F945320);
    v51 = v46;
    v52 = &qword_27F2218B0;
    v53 = &unk_24F975980;
  }

  else
  {
    v54 = v72;
    v55 = v45;
    v56 = qword_27F2105F0;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v57, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v58 = v86;
    v59 = v54;
    if (v86)
    {
    }

    v60 = *(v71 + 8);
    v60(v84, v49);
    v61 = v83;
    if (v58)
    {
      v62 = v68;
      sub_24E60169C(v83, v68, &qword_27F2218B0, &unk_24F975980);
      if (v48(v62, 1, v49) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v74, &qword_27F2218B0, &unk_24F975980);
        v66 = *(v59 + 8);
        v66(v75, v55);
        sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v61, &qword_27F2218B0, &unk_24F975980);
        v66(v76, v55);
        sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
        v66(v78, v55);
        sub_24E601704(v87, &qword_27F2129B0, &unk_24F945320);
        v60(v68, v49);
        return v44;
      }

      sub_24E601704(v74, &qword_27F2218B0, &unk_24F975980);
      v63 = *(v59 + 8);
      v63(v75, v55);
      sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v61, &qword_27F2218B0, &unk_24F975980);
      v63(v76, v55);
      sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
      v63(v78, v55);
      sub_24E601704(v87, &qword_27F2129B0, &unk_24F945320);
      v51 = v62;
      v52 = &qword_27F2218B0;
      v53 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v74, &qword_27F2218B0, &unk_24F975980);
      v64 = *(v59 + 8);
      v64(v75, v55);
      sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v61, &qword_27F2218B0, &unk_24F975980);
      v64(v76, v55);
      sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
      v64(v78, v55);
      v51 = v87;
      v52 = &qword_27F2129B0;
      v53 = &unk_24F945320;
    }
  }

  sub_24E601704(v51, v52, v53);
  return v44;
}

uint64_t SearchLandingPage.deinit()
{
  v0 = GenericPage.deinit();

  return v0;
}

uint64_t SearchLandingPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchLandingPage(uint64_t a1)
{
  result = qword_27F231E68;
  if (!qword_27F231E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FramedArtworkViewModel(uint64_t a1)
{
  result = qword_27F231E78;
  if (!qword_27F231E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 DeepLinkWithReferrerIntent.init(url:isIncomingURL:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = sub_24F91F4A8();
  v14 = *(a3 + 16);
  v15 = *a3;
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for DeepLinkWithReferrerIntent(0);
  *(a4 + *(v11 + 20)) = a2;
  v12 = a4 + *(v11 + 24);
  result = v15;
  *v12 = v15;
  *(v12 + 16) = v14;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  return result;
}

uint64_t type metadata accessor for DeepLinkWithReferrerIntent(uint64_t a1)
{
  result = qword_27F231E90;
  if (!qword_27F231E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeepLinkWithReferrerIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double DeepLinkWithReferrerIntent.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeepLinkWithReferrerIntent(0) + 24);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v3 + 40);
  *(a1 + 40) = v6;

  return sub_24E90BCC4(v5, v6);
}

JSValue __swiftcall DeepLinkWithReferrerIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_7;
  }

  isa = result.super.isa;
  v14 = sub_24F91F398();
  v7 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v14, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_24F92C328();
  v8 = type metadata accessor for DeepLinkWithReferrerIntent(0);
  LOBYTE(v15) = *(v1 + *(v8 + 20));
  v9 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v15}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_24F92C328();
  v10 = (v1 + *(v8 + 24));
  v11 = v10[4];
  v12 = *(v10 + 40);
  v16 = *v10;
  v17 = *(v10 + 1);
  v18 = v10[3];
  LOBYTE(v19) = v12;

  sub_24E90BCC4(v11, v12);
  v13 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v16, v17, v18, v11, v19}];
  result.super.isa = swift_unknownObjectRelease();
  if (v13)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_24EE676E0()
{
  result = qword_27F231E88;
  if (!qword_27F231E88)
  {
    type metadata accessor for DeepLinkWithReferrerIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231E88);
  }

  return result;
}

uint64_t sub_24EE67774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_24EE67854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F4A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_24EE67910(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE679F4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v36 = sub_24F927538();
  MEMORY[0x28223BE20](v36);
  v35 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9D8, &qword_24F9A85B0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v35 - v5);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231EB0, &qword_24F9A85B8);
  MEMORY[0x28223BE20](v37);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231EB8, &unk_24F9A85C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  type metadata accessor for LockupContentView(0);
  v40 = 0x4044000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  v40 = 0x404B000000000000;
  sub_24F9237C8();
  v40 = 0x4051800000000000;
  sub_24F9237C8();
  v40 = 0x4055800000000000;
  sub_24F9237C8();
  type metadata accessor for LockupViewModel(0);
  sub_24EE681EC(&qword_27F2282E0, type metadata accessor for LockupViewModel, &unk_24F997C58);

  *v6 = sub_24F923C28();
  v6[1] = v12;
  v13 = sub_24F925808();
  v14 = v6 + *(v4 + 44);
  *v14 = v13;
  __asm { FMOV            V0.2D, #22.0 }

  *(v14 + 8) = _Q0;
  *(v14 + 24) = _Q0;
  v14[40] = 0;
  if (v38)
  {
    sub_24F927458();
  }

  v20 = sub_24F9238D8();
  v21 = sub_24F925808();
  sub_24E6009C8(v6, v8, &qword_27F22E9D8, &qword_24F9A85B0);
  v22 = &v8[*(v37 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = &v11[*(v9 + 36)];
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  v27 = *(*(v26 - 8) + 104);
  v27(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #28.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  sub_24E6009C8(v8, v11, &qword_27F231EB0, &qword_24F9A85B8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231EC0, &qword_24F9A85D0);
  v30 = v39;
  v31 = v39 + *(v29 + 36);
  v32 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v27((v31 + v32[6]), v25, v26);
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0x403C000000000000;
  *(v31 + v32[7]) = 1;
  v33 = v31 + v32[8];
  *v33 = 0;
  *(v33 + 8) = 1;
  return sub_24E6009C8(v11, v30, &qword_27F231EB8, &unk_24F9A85C0);
}

unint64_t sub_24EE67EBC()
{
  result = qword_27F231EA0;
  if (!qword_27F231EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231EA0);
  }

  return result;
}

unint64_t sub_24EE67FC0()
{
  result = qword_27F231EC8;
  if (!qword_27F231EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231EC0, &qword_24F9A85D0);
    sub_24EE6807C();
    sub_24EE681EC(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer, &unk_24F98A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231EC8);
  }

  return result;
}

unint64_t sub_24EE6807C()
{
  result = qword_27F231ED0;
  if (!qword_27F231ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231EB8, &unk_24F9A85C0);
    sub_24EE68134();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231ED0);
  }

  return result;
}

unint64_t sub_24EE68134()
{
  result = qword_27F231ED8[0];
  if (!qword_27F231ED8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231EB0, &qword_24F9A85B8);
    sub_24ED3374C();
    sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F231ED8);
  }

  return result;
}

uint64_t sub_24EE681EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Locale.normalizedLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F718();
  if (!v9)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v8 == 29281 && v9 == 0xE200000000000000)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  sub_24F91F778();
  v11 = sub_24F91F718();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  if (!v13)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  if (v11 == 29281 && v13 == 0xE200000000000000)
  {
  }

  else
  {
    v15 = sub_24F92CE08();

    if ((v15 & 1) == 0)
    {
      return (*(v5 + 16))(a1, v2, v4);
    }
  }

  return sub_24F91F778();
}

uint64_t static Locale.digitsAreArabic.getter()
{
  if (qword_27F210608 != -1)
  {
    swift_once();
  }

  v0 = off_27F22D938;
  os_unfair_lock_lock(off_27F22D938 + 6);
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v0 + 6);
  if (v1)
  {
    v2 = *(v1 + 16);
    swift_unknownObjectRetain();

    v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v4 = [v2 decimal:v3 :0];

    if (v4)
    {
      v5 = sub_24F92B0D8();
      v7 = v6;

      if (v5 == 41433 && v7 == 0xA200000000000000)
      {

        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = sub_24F92CE08();
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_24EE68544(uint64_t a1)
{
  sub_24F91F708();
  v1 = sub_24F92B358();

  return v1 & 1;
}

uint64_t Locale.baseWritingDirection.getter(uint64_t a1)
{
  sub_24F91F708();
  v1 = sub_24F91F728();

  v2 = 1;
  if (v1 != 2)
  {
    v2 = -1;
  }

  if (v1 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

double Locale.paragraphLineHeightMultiple.getter(uint64_t a1)
{
  sub_24F91F708();
  v1 = sub_24F92B358();

  v2 = 1.3;
  if ((v1 & 1) == 0)
  {
    sub_24F91F708();
    v3 = sub_24F92B358();

    if ((v3 & 1) == 0)
    {
      sub_24F91F708();
      v4 = sub_24F92B358();

      if (v4)
      {
        return 1.3;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v2;
}

uint64_t Locale.prefersSmallerText.getter(uint64_t a1)
{
  sub_24F91F708();
  v1 = sub_24F92B358();

  if (v1)
  {
    return 1;
  }

  sub_24F91F708();
  v2 = sub_24F92B358();

  if (v2)
  {
    return 1;
  }

  sub_24F91F708();
  v4 = sub_24F92B358();

  return v4 & 1;
}

uint64_t sub_24EE68754(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

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

uint64_t sub_24EE687A8(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_24EE687D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24EE6884C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24EE688B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24EE68928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24EE68998@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24EE68754(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24EE689C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EE687A8(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t HttpActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v54 = a3;
  v6 = sub_24F91E968();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92A498();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v52 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222D10, 0x277CEE6F0);
  sub_24F928FD8();
  sub_24F92A758();
  v45 = v55[0];
  v46 = v14;
  v48 = v10;
  v49 = a2;
  sub_24F92A758();
  sub_24E69A5C4(0, &qword_27F2222A8, 0x277CEE620);
  sub_24F92A758();
  v15 = v55[0];
  v47 = v55[0];
  type metadata accessor for ASKBagContract(0);
  sub_24F92A758();
  v53 = v55[0];
  v16 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  swift_unknownObjectRelease();
  [v16 setIncludeClientVersions_];
  v17 = [objc_opt_self() ams_sharedAccountStore];
  v18 = [v17 ams_activeiTunesAccount];

  [v16 setAccount_];
  [v16 setClientInfo_];
  v19 = [objc_allocWithZone(MEMORY[0x277CEE6E0]) init];
  [v16 setResponseDecoder_];

  v20 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  v21 = a1;
  swift_beginAccess();
  if (*(a1 + v20))
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  [v16 setAnisetteType_];
  [v16 setMescalType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C318, &qword_24F990028);
  sub_24EC5C9B4();
  v23 = sub_24F91E8E8();
  (*(v7 + 8))(v9, v6);
  v24 = [v16 requestByEncodingRequest:v23 parameters:0];

  sub_24F92A9D8();
  v25 = sub_24F929638();
  v26 = MEMORY[0x277D21FB0];
  v56 = v25;
  v57 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v55);
  sub_24F929628();
  sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v55);
  v27 = swift_allocObject();
  v28 = v45;
  *(v27 + 16) = v45;
  v56 = v25;
  v57 = v26;
  __swift_allocate_boxed_opaque_existential_1(v55);
  v45 = v28;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320, &qword_24F9A85E0);
  sub_24EC5D1A0();
  v44 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(v55);
  v29 = v50;
  v30 = v51;
  v31 = v46;
  v32 = v48;
  (*(v50 + 16))(v51, v46, v48);
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = *(v54 + 16);
  *(v35 + 16) = v36;
  *(v35 + 24) = v21;
  (*(v29 + 32))(v35 + v33, v30, v32);
  v37 = v52;
  *(v35 + v34) = v52;
  v38 = v49;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  v39 = swift_allocObject();
  v39[2] = v36;
  v39[3] = v21;
  v39[4] = v37;
  v39[5] = v38;
  v40 = v37;
  v41 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v42 = sub_24F92BEF8();
  v56 = v41;
  v57 = MEMORY[0x277D225C0];
  v55[0] = v42;
  sub_24F92A958();

  (*(v29 + 8))(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v40;
}

uint64_t sub_24EE690A8()
{

  return swift_deallocObject();
}

void sub_24EE690E0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v28[0] = a5;
  v32 = a4;
  v29 = a3;
  v31 = sub_24F928AE8();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v11 = sub_24F92AAE8();
  v28[1] = __swift_project_value_buffer(v11, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F9283A8();
  v36 = type metadata accessor for HttpAction(0);
  v35[0] = a2;

  sub_24F928458();
  v33 = a2;
  sub_24E601704(v35, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v12 = sub_24F92A498();
  v36 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v29, v12);
  sub_24F928458();
  sub_24E601704(v35, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v36 = sub_24E69A5C4(0, qword_27F231F60, 0x277CEE6E8);
  v35[0] = v30;
  v14 = v30;
  sub_24F928458();
  sub_24E601704(v35, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A598();

  v15 = v31;
  (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v31);
  sub_24F92A9C8();
  (*(v8 + 8))(v10, v15);
  v16 = [objc_opt_self() defaultCenter];
  v17 = sub_24F92B098();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v35[0] = 0x746C75736572;
  v35[1] = 0xE600000000000000;
  sub_24F92C7F8();
  v19 = v34;
  *(inited + 96) = type metadata accessor for HttpActionImplementation.Result(0, v34, v20, v21);
  *(inited + 72) = 0;
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470, &qword_24F93ADD0);
  v22 = sub_24F92AE28();

  [v16 postNotificationName:v17 object:0 userInfo:v22];

  v23 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction;
  v24 = v33;
  swift_beginAccess();
  v25 = *(v24 + v23);
  if (v25)
  {
    v36 = type metadata accessor for Action(0);
    v37 = sub_24EE69E54(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    v35[0] = v25;
    type metadata accessor for HttpActionImplementation(0, v19, v26, v27);
    swift_retain_n();
    swift_getWitnessTable();
    sub_24F1489C4(v35, v28[0]);

    __swift_destroy_boxed_opaque_existential_1(v35);
  }
}

uint64_t sub_24EE696A8()
{
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EE69798(id *a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_24F92A498() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24EE690E0(a1, v7, v1 + v5, v8, v9, v3);
}

void sub_24EE69854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v7 = sub_24F92AAE8();
  __swift_project_value_buffer(v7, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v26 = type metadata accessor for HttpAction(0);
  v25[0] = a2;

  sub_24F928458();
  sub_24E601704(v25, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  swift_getErrorValue();
  v8 = v29;
  v9 = v30;
  v26 = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  sub_24F928458();
  sub_24E601704(v25, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  sub_24F92A9A8();
  v11 = [objc_opt_self() defaultCenter];
  v12 = sub_24F92B098();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v25[0] = 0x746C75736572;
  v25[1] = 0xE600000000000000;
  sub_24F92C7F8();
  *(inited + 96) = type metadata accessor for HttpActionImplementation.Result(0, a5, v14, v15);
  *(inited + 72) = 1;
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470, &qword_24F93ADD0);
  v16 = sub_24F92AE28();

  [v11 postNotificationName:v12 object:0 userInfo:v16];

  v25[0] = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0 || (v18 = v28, v25[0] = v28, sub_24EE69E54(&qword_27F212598, type metadata accessor for AMSError, &unk_24F938C94), sub_24F91F218(), v18, v28 != 6))
  {
    v19 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction;
    swift_beginAccess();
    v20 = *(a2 + v19);
    if (v20)
    {
      v26 = type metadata accessor for Action(0);
      v27 = sub_24EE69E54(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
      v25[0] = v20;
      type metadata accessor for HttpActionImplementation(0, a5, v21, v22);
      swift_retain_n();
      swift_getWitnessTable();
      sub_24F1489C4(v25, a4);

      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }
}

uint64_t sub_24EE69D6C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE69E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int8x16_t FrameAccumulator.init(mode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 17) = 0;
  v3 = vdup_n_s32(v2);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(xmmword_24F995DF0, vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)));
  *(a2 + 40) = result;
  *(a2 + 24) = result;
  *(a2 + 56) = xmmword_24F995DF0;
  return result;
}

Swift::Void __swiftcall FrameAccumulator.add(frame:with:)(__C::CGRect frame, JUMeasurements with)
{
  *(v2 + 17) = 1;
  if (*(v2 + 16))
  {

    sub_24EE6A1B8(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, with.var0, with.var1, with.var2, with.var3);
  }

  else
  {
    sub_24EE6A344(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, with.var0, with.var1, with.var2, with.var3, *v2, *(v2 + 8));
  }
}

uint64_t FrameAccumulator.layoutRect()(uint64_t a1)
{
  if (*(v1 + 17) == 1)
  {
    return sub_24F922138();
  }

  else
  {
    return sub_24F922168();
  }
}

JUMeasurements __swiftcall FrameAccumulator.measurements()()
{
  v1 = sub_24F922C28();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9221D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 17) == 1)
  {
    sub_24F922138();
  }

  else
  {
    sub_24F922168();
  }

  sub_24F922158();
  v10 = v9;
  sub_24F922158();
  v12 = v11;
  sub_24F9221C8();
  sub_24F922BE8();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v4, v1);
  sub_24F9221C8();
  sub_24F922BB8();
  v17 = v16;
  v15(v4, v1);
  (*(v6 + 8))(v8, v5);
  v18 = v10;
  v19 = v12;
  v20 = v14;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

void sub_24EE6A1B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  if (CGRectGetMinY(*&a1) < v8[3])
  {
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    v8[3] = CGRectGetMinY(v19);
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  if (v8[4] < CGRectGetMaxY(v20))
  {
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    v8[4] = CGRectGetMaxY(v21);
  }

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (CGRectGetMinX(v22) < v8[5])
  {
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    v8[5] = CGRectGetMinX(v23);
  }

  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  if (v8[6] < CGRectGetMaxX(v24))
  {
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    v8[6] = CGRectGetMaxX(v25);
  }

  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v15 = CGRectGetMinY(v26) + a7;
  v16 = v8[7];
  if (v15 < v16)
  {
    v8[7] = v15;
    v16 = v15;
  }

  v17 = v8[8];
  if (v17 < v15)
  {
    v8[8] = v15;
    v17 = v15;
  }

  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v18 = CGRectGetMaxY(v27) - a8;
  if (v18 < v16)
  {
    v8[7] = v18;
  }

  if (v17 < v18)
  {
    v8[8] = v18;
  }
}

void sub_24EE6A344(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10)
{
  if (v10[4] < CGRectGetMaxY(*&a1))
  {
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    if (CGRectGetMaxY(v21) <= a10)
    {
      v22.origin.x = a1;
      v22.origin.y = a2;
      v22.size.width = a3;
      v22.size.height = a4;
      v10[4] = CGRectGetMaxY(v22);
    }
  }

  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  if (v10[6] < CGRectGetMaxX(v23))
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    if (CGRectGetMaxX(v24) <= a9)
    {
      v25.origin.x = a1;
      v25.origin.y = a2;
      v25.size.width = a3;
      v25.size.height = a4;
      v10[6] = CGRectGetMaxX(v25);
    }
  }

  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v17 = CGRectGetMinY(v26) + a7;
  if (v17 > 0.0 && v17 <= a10)
  {
    if (v17 < v10[7])
    {
      v10[7] = v17;
    }

    if (v10[8] < v17)
    {
      v10[8] = v17;
    }
  }

  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v19 = CGRectGetMaxY(v27) - a8;
  if (v19 > 0.0 && v19 <= a10)
  {
    if (v19 < v10[7])
    {
      v10[7] = v19;
    }

    if (v10[8] < v19)
    {
      v10[8] = v19;
    }
  }
}

uint64_t sub_24EE6A4B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24EE6A50C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FrameAccumulator.AccumulationMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t Artwork.toGameCenterArtwork()()
{
  v55 = sub_24F920168();
  v1 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F231FE8, &unk_24F9A8780);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v40 - v4;
  v5 = sub_24F920118();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v40 - v9;
  v10 = sub_24F920098();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v44 = sub_24F920058();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;

  v41 = v18;
  sub_24F920038();

  v45 = v14;
  sub_24F920038();
  v48 = v0;
  v19 = *(v0 + 104);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v6 + 48);
    v51 = (v6 + 16);
    v52 = (v6 + 32);
    v53 = v1;
    v49 = v1 + 32;
    v50 = (v6 + 8);
    v22 = v19 + 49;
    v23 = MEMORY[0x277D84F90];
    v24 = v56;
    do
    {
      sub_24F9200F8();
      if ((*v21)(v24, 1, v5) == 1)
      {
        sub_24E601704(v24, qword_27F231FE8, &unk_24F9A8780);
      }

      else
      {
        v25 = v5;
        v26 = v57;
        (*v52)(v57, v24, v25);
        v27 = v26;
        v5 = v25;
        (*v51)(v54, v27, v25);
        sub_24F920138();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_24E61613C(0, v23[2] + 1, 1, v23);
        }

        v29 = v23[2];
        v28 = v23[3];
        v24 = v56;
        if (v29 >= v28 >> 1)
        {
          v23 = sub_24E61613C((v28 > 1), v29 + 1, 1, v23);
        }

        (*v50)(v57, v25);
        v23[2] = v29 + 1;
        (*(v53 + 32))(v23 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v58, v55);
      }

      v22 += 24;
      --v20;
    }

    while (v20);
  }

  v58 = sub_24F9201A8();
  v31 = v41;
  v30 = v42;
  v32 = v44;
  (*(v42 + 16))(v40, v41, v44);
  v33 = v47;
  v34 = *(v48 + 48);
  v36 = v45;
  v35 = v46;
  (*(v46 + 16))(v43, v45, v47);
  v37 = v34;
  v38 = sub_24F920178();
  (*(v35 + 8))(v36, v33);
  (*(v30 + 8))(v31, v32);
  return v38;
}

uint64_t sub_24EE6ABC8(uint64_t a1, __n128 a2)
{
  v3 = sub_24F920118();
  v4 = *(v3 - 8);
  v78 = v3;
  v79 = v4;
  MEMORY[0x28223BE20](v3);
  v77 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24F920168();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F6B8();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = v60 - v12;
  v13 = sub_24F920098();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F920058();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F920188();
  v21 = sub_24F920048();
  v65 = v22;
  v66 = v21;
  (*(v18 + 8))(v20, v17);
  sub_24F9200B8();
  v24 = v23;
  v26 = v25;
  v64 = sub_24F920068();
  sub_24F9200A8();
  v63 = sub_24F920048();
  v28 = v27;
  (*(v14 + 8))(v16, v13);
  v29 = sub_24F920198();
  v30 = *(v29 + 16);
  if (v30)
  {
    v61 = v28;
    v62 = a1;
    v31 = v6 + 16;
    v76 = *(v6 + 16);
    v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v60[1] = v29;
    v33 = v29 + v32;
    v34 = *(v6 + 72);
    v74 = (v79 + 8);
    v75 = v34;
    v35 = (v6 + 8);
    v79 = MEMORY[0x277D84F90];
    v36 = v71;
    v37 = v31;
    do
    {
      v38 = v37;
      v76(v8, v33, v36);
      v39 = v77;
      sub_24F920148();
      sub_24F920108();
      (*v74)(v39, v78);
      v40 = sub_24F92CB88();

      if (v40 >= 4)
      {
        (*v35)(v8, v36);
      }

      else
      {
        v73 = sub_24F920158();
        v72 = v41;
        v42 = sub_24F920128();
        v43 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_24E61841C(0, *(v43 + 2) + 1, 1, v43);
        }

        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        if (v45 >= v44 >> 1)
        {
          v79 = sub_24E61841C((v44 > 1), v45 + 1, 1, v43);
        }

        else
        {
          v79 = v43;
        }

        v36 = v71;
        (*v35)(v8, v71);
        v46 = v79;
        *(v79 + 2) = v45 + 1;
        v47 = &v46[24 * v45];
        v47[32] = v40;
        *(v47 + 5) = v73;
        v47[48] = v72 & 1;
        v47[49] = v42 & 1;
      }

      v33 += v75;
      --v30;
      v37 = v38;
    }

    while (v30);

    v28 = v61;
    v48 = v79;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v49 = sub_24F929608();
  v50 = v70;
  (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
  type metadata accessor for Artwork(0);
  v51 = swift_allocObject();
  *(v51 + 152) = 0u;
  *(v51 + 168) = 0u;
  *(v51 + 184) = 0;
  v52 = v67;
  sub_24F91F6A8();
  v53 = sub_24F91F668();
  v55 = v54;
  (*(v68 + 8))(v52, v69);
  v80 = v53;
  v81 = v55;
  sub_24F92C7F8();
  sub_24E643844(v50, v51 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics);
  v56 = v65;
  *(v51 + 16) = v66;
  *(v51 + 24) = v56;
  *(v51 + 32) = v24;
  *(v51 + 40) = v26;
  v57 = v63;
  *(v51 + 48) = v64;
  *(v51 + 56) = 0;
  *(v51 + 72) = v57;
  *(v51 + 80) = v28;
  *(v51 + 64) = 0;
  *(v51 + 104) = v48;
  v80 = v57;
  v81 = v28;
  v58 = Artwork.Crop.preferredContentMode.getter();

  sub_24E601704(v50, &qword_27F213E68, &unk_24F93BC80);

  *(v51 + 88) = v58;
  *(v51 + 96) = 3;
  return v51;
}

uint64_t ReusableCellRegistration.init(reuseIdentifier:configurationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ReusableCellRegistration.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReusableCellRegistration.configurationHandler.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24EE6B308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

GameStoreKit::SearchResultCondensedBehavior_optional __swiftcall SearchResultCondensedBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchResultCondensedBehavior.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x737961776C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736E496E656877;
  }
}

uint64_t sub_24EE6B418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726576656ELL;
  if (v2 != 1)
  {
    v4 = 0x737961776C61;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74736E496E656877;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064656C6C61;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726576656ELL;
  if (*a2 != 1)
  {
    v8 = 0x737961776C61;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74736E496E656877;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064656C6C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24EE6B518()
{
  result = qword_27F232070;
  if (!qword_27F232070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232070);
  }

  return result;
}

uint64_t sub_24EE6B56C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE6B614(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EE6B6A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EE6B758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064656C6C61;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74736E496E656877;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EE6B7CC()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE6B85C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24EE6B9DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[9];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24EE6BB64(uint64_t a1)
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v1 <= 0x3F)
  {
    sub_24EE77628(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24EE7768C(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24EE77628(319, &qword_27F222B10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EE6BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE6BE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

__n128 sub_24EE6BFC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if ((sub_24E747804(a1) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v2 + 16);
  if (*(v5 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions) != 1)
  {
    goto LABEL_7;
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons;
  v7 = *(v5 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (v7 >> 62)
  {
LABEL_34:
    v8 = sub_24F92C738();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24EAC4868(v8) != 5)
  {
    v6 = *(v5 + v6);
    if (v6)
    {
      v20 = MEMORY[0x277D84F90];
      if (v6 >> 62)
      {
        v14 = sub_24F92C738();
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14)
      {
        v15 = 0;
        v5 = MEMORY[0x277D84F90];
        do
        {
          v16 = v15;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x253052270](v16, v6);
              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v17 = *(v6 + 8 * v16 + 32);

              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            swift_beginAccess();
            v18 = *(v17 + 48);
            if (v18)
            {
              break;
            }

            swift_endAccess();

            ++v16;
            if (v15 == v14)
            {
              goto LABEL_30;
            }
          }

          v19 = v18;

          sub_24F926BF8();
          swift_endAccess();

          MEMORY[0x253050F00]();
          if (*(v20 + 16) >= *(v20 + 24) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v5 = v20;
        }

        while (v15 != v14);
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
      }

LABEL_30:
    }

    else
    {
      v5 = 0;
    }

    sub_24F3DFA60(v5, *(v3 + 25), v21);
  }

  else
  {
LABEL_7:
    sub_24E70D8E0(v21);
  }

  v9 = v21[9];
  *(a2 + 128) = v21[8];
  *(a2 + 144) = v9;
  *(a2 + 160) = v21[10];
  v10 = v21[5];
  *(a2 + 64) = v21[4];
  *(a2 + 80) = v10;
  v11 = v21[7];
  *(a2 + 96) = v21[6];
  *(a2 + 112) = v11;
  v12 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v12;
  result = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = result;
  return result;
}

__n128 sub_24EE6C264@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video))
  {
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork))
  {
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo))
  {
    goto LABEL_6;
  }

  if (*(v3 + 16))
  {
    goto LABEL_6;
  }

  v9 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons;
  v10 = *(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v10)
  {
    goto LABEL_6;
  }

  if (v10 >> 62)
  {
LABEL_36:
    if (sub_24F92C738() >= 1)
    {
      goto LABEL_11;
    }

LABEL_6:
    sub_24E70D8E0(v20);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_6;
  }

LABEL_11:
  v3 = *(v3 + v9);
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      v9 = sub_24F92C738();
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      do
      {
        v13 = v11;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x253052270](v13, v3);
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v14 = *(v3 + 8 * v13 + 32);

            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          swift_beginAccess();
          v15 = *(v14 + 48);
          if (v15)
          {
            break;
          }

          swift_endAccess();

          ++v13;
          if (v11 == v9)
          {
            goto LABEL_32;
          }
        }

        v16 = v1;
        v17 = v15;

        sub_24F926BF8();
        swift_endAccess();

        MEMORY[0x253050F00]();
        if (*(v19 + 16) >= *(v19 + 24) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        v12 = v19;
        v1 = v16;
      }

      while (v11 != v9);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

LABEL_32:
  }

  else
  {
    v12 = 0;
  }

  v18 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  sub_24F3DFA60(v12, *(v1 + *(v18 + 32)), v20);
LABEL_7:
  v4 = v20[9];
  *(a1 + 128) = v20[8];
  *(a1 + 144) = v4;
  *(a1 + 160) = v20[10];
  v5 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v5;
  v6 = v20[7];
  *(a1 + 96) = v20[6];
  *(a1 + 112) = v6;
  v7 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v7;
  result = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = result;
  return result;
}

__n128 sub_24EE6C54C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (!sub_24EA12978(a1))
  {
    goto LABEL_7;
  }

  v5 = *(v2 + 16);
  if (*(v5 + 88) != 1)
  {
    goto LABEL_7;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v6 >> 62)
  {
LABEL_34:
    v7 = sub_24F92C738();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24EAC4868(v7) != 5)
  {
    v13 = *(v5 + 80);
    if (v13)
    {
      v20 = MEMORY[0x277D84F90];
      if (v13 >> 62)
      {
        v14 = sub_24F92C738();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14)
      {
        v15 = 0;
        v5 = MEMORY[0x277D84F90];
        do
        {
          v16 = v15;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x253052270](v16, v13);
              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v17 = *(v13 + 8 * v16 + 32);

              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            swift_beginAccess();
            v18 = *(v17 + 48);
            if (v18)
            {
              break;
            }

            swift_endAccess();

            ++v16;
            if (v15 == v14)
            {
              goto LABEL_30;
            }
          }

          v19 = v18;

          sub_24F926BF8();
          swift_endAccess();

          MEMORY[0x253050F00]();
          if (*(v20 + 16) >= *(v20 + 24) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v5 = v20;
        }

        while (v15 != v14);
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
      }

LABEL_30:
    }

    else
    {
      v5 = 0;
    }

    sub_24F3DFA60(v5, *(v3 + qword_27F39B4B8), v21);
  }

  else
  {
LABEL_7:
    sub_24E70D8E0(v21);
  }

  v8 = v21[9];
  *(a2 + 128) = v21[8];
  *(a2 + 144) = v8;
  *(a2 + 160) = v21[10];
  v9 = v21[5];
  *(a2 + 64) = v21[4];
  *(a2 + 80) = v9;
  v10 = v21[7];
  *(a2 + 96) = v21[6];
  *(a2 + 112) = v10;
  v11 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v11;
  result = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = result;
  return result;
}

__n128 sub_24EE6C7E0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    goto LABEL_7;
  }

  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions) != 1)
  {
    goto LABEL_7;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons;
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v5 >> 62)
  {
LABEL_34:
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24EAC4868(v6) != 5)
  {
    v3 = *(v3 + v4);
    if (v3)
    {
      v19 = MEMORY[0x277D84F90];
      if (v3 >> 62)
      {
        v4 = sub_24F92C738();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v4)
      {
        v12 = 0;
        v13 = MEMORY[0x277D84F90];
        do
        {
          v14 = v12;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x253052270](v14, v3);
              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v15 = *(v3 + 8 * v14 + 32);

              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            swift_beginAccess();
            v16 = *(v15 + 48);
            if (v16)
            {
              break;
            }

            swift_endAccess();

            ++v14;
            if (v12 == v4)
            {
              goto LABEL_30;
            }
          }

          v17 = v1;
          v18 = v16;

          sub_24F926BF8();
          swift_endAccess();

          MEMORY[0x253050F00]();
          if (*(v19 + 16) >= *(v19 + 24) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v13 = v19;
          v1 = v17;
        }

        while (v12 != v4);
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

LABEL_30:
    }

    else
    {
      v13 = 0;
    }

    sub_24F3DFA60(v13, *(v1 + qword_27F39A5E8), v20);
  }

  else
  {
LABEL_7:
    sub_24E70D8E0(v20);
  }

  v7 = v20[9];
  *(a1 + 128) = v20[8];
  *(a1 + 144) = v7;
  *(a1 + 160) = v20[10];
  v8 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v8;
  v9 = v20[7];
  *(a1 + 96) = v20[6];
  *(a1 + 112) = v9;
  v10 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v10;
  result = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EE6CA9C@<X0>(uint64_t a1@<X8>)
{
  sub_24EE75504(v1, a1, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  v3 = type metadata accessor for GamesArticlePageEditorialStoryCardView(0);
  v4 = *(v1 + v3[5]);
  v5 = *(v1 + v3[6]);
  v6 = *(v1 + v3[7]);
  v7 = (v1 + v3[8]);
  v16 = *v7;
  v17 = v7[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927198();
  v8 = *(v1 + v3[9]);
  v9 = type metadata accessor for GamesArticlePageEditorialStoryCardView.CardView(0);
  *(a1 + v9[5]) = v4;
  *(a1 + v9[6]) = v5;
  *(a1 + v9[7]) = v6;
  v10 = a1 + v9[8];
  *v10 = v13;
  *(v10 + 8) = v14;
  *(v10 + 16) = v15;
  *(a1 + v9[9]) = v8;
  v11 = (a1 + v9[10]);
  sub_24F926F28();
  *v11 = v16;
  v11[1] = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321A0, &qword_24F9A8B70);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24EE6CBFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v71 = type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0);
  MEMORY[0x28223BE20](v71);
  v4 = &v66[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321C8, &qword_24F9A8C00);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v6 = &v66[-v5];
  v7 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321D0, &unk_24F9A8C08);
  MEMORY[0x28223BE20](v73);
  v78 = &v66[-v10];
  v11 = type metadata accessor for GamesArticlePageEditorialStoryCardView.CardView(0);
  v12 = *(v2 + v11[7]) == 1;
  v74 = v6;
  LODWORD(v72) = v12 && sub_24F1CE104();
  v13 = *v2;
  sub_24EE75504(*v2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, &v9[v7[5]], type metadata accessor for EditorialStoryCard.Badge);
  sub_24E60169C(v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, &v9[v7[6]], &qword_27F215340, &qword_24F943530);
  sub_24E60169C(v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, &v9[v7[7]], &qword_27F215340, &qword_24F943530);
  v14 = *(type metadata accessor for ArticlePageEditorialStoryCardViewModel(0) + 24);
  v15 = *(v2 + v14) != 4;
  sub_24EE75504(v2 + v14, &v9[v7[9]], _s9ViewModelVMa);
  v16 = *(v2 + v11[6]);
  v17 = (v2 + v11[10]);
  v18 = *v17;
  v69 = v17[1];
  v79 = v18;
  v80 = v69;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F58();
  v19 = v84;
  v20 = v85;
  v21 = v2 + v11[8];
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v21) = v21[16];
  *&v84 = v22;
  *(&v84 + 1) = v23;
  LOBYTE(v85) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927198();
  v24 = v79;
  v25 = v80;
  v70 = v11;
  v67 = v72 & 1;
  *v9 = v72 & 1;
  v9[v7[8]] = v15;
  v9[v7[10]] = v16;
  v26 = v81;
  v27 = &v9[v7[11]];
  *v27 = v19;
  *(v27 + 2) = v20;
  v28 = &v9[v7[12]];
  *v28 = v24;
  *(v28 + 1) = v25;
  v28[16] = v26;
  v29 = v7[13];
  *&v9[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v64 = sub_24F9275C8();
  v65 = v30;
  BYTE8(v63) = 0;
  *&v63 = 0x7FF0000000000000;
  BYTE8(v62) = 1;
  *&v62 = 0;
  sub_24F9242E8();
  v31 = v9;
  v32 = v78;
  sub_24EE76AC4(v31, v78, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v33 = &v32[*(v73 + 36)];
  v34 = v89;
  v33[4] = v88;
  v33[5] = v34;
  v33[6] = v90;
  v35 = v85;
  *v33 = v84;
  v33[1] = v35;
  v36 = v87;
  v33[2] = v86;
  v33[3] = v36;
  v73 = sub_24F927618();
  v72 = v37;
  sub_24EE75504(v2, v4, type metadata accessor for ArticlePageEditorialStoryCardViewModel);
  v38 = *(v2 + v11[5]);
  v82 = v18;
  v83 = v69;

  sub_24F926F58();
  v39 = v79;
  v40 = v80;
  v41 = v81;
  v42 = v71;
  *&v4[*(v71 + 20)] = v38;
  v4[v42[6]] = v16;
  v4[v42[7]] = v67;
  v43 = &v4[v42[8]];
  *v43 = v39;
  v43[1] = v40;
  v43[2] = v41;
  v44 = v42[9];
  *&v4[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v45 = v42[10];
  *&v4[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v46 = v42[11];
  *&v4[v46] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v47 = sub_24F927618();
  v49 = v48;
  v50 = sub_24F926C38();
  MEMORY[0x28223BE20](v50);
  *&v66[-80] = 0x756F72676B636142;
  *&v66[-72] = 0xEA0000000000646ELL;
  *&v66[-64] = v47;
  *&v66[-56] = v49;
  v62 = 0u;
  v63 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321D8, &qword_24F9A8CF0);
  sub_24EE754B4(&qword_27F2321E0, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView, &unk_24F9A8D84);
  sub_24E6695B8();
  v64 = sub_24EE75A5C();
  v51 = v74;
  sub_24F926B08();

  sub_24EE77E88(v4, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  if (*(v2 + v70[9]) == 1)
  {
    v52 = sub_24F925808();
  }

  else
  {
    v52 = sub_24F925848();
  }

  v53 = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321F0, &qword_24F9A8CF8);
  v55 = v77;
  v56 = v77 + *(v54 + 36);
  v57 = sub_24F924058();
  (*(v75 + 32))(v56, v51, v76);
  v58 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2321F8, &qword_24F9A8D00) + 36);
  *v58 = v57;
  *(v58 + 8) = v53;
  v59 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232200, &qword_24F9A8D08) + 36));
  v60 = v72;
  *v59 = v73;
  v59[1] = v60;
  return sub_24E6009C8(v78, v55, &qword_27F2321D0, &unk_24F9A8C08);
}

void sub_24EE6D420(uint64_t a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93FC20;
  sub_24F926C98();
  *(v5 + 32) = sub_24F9273C8();
  *(v5 + 40) = v6;
  sub_24F926C88();
  sub_24F926D08();

  *(v5 + 48) = sub_24F9273C8();
  *(v5 + 56) = v7;
  sub_24F926C88();
  sub_24F926D08();

  *(v5 + 64) = sub_24F9273C8();
  *(v5 + 72) = v8;
  sub_24F926C88();
  sub_24F926D08();

  *(v5 + 80) = sub_24F9273C8();
  *(v5 + 88) = v9;
  v10 = (v2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 32));
  v11 = v10[1];
  v12 = v10[2];
  v17[1] = *v10;
  v17[2] = v11;
  v17[3] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
  MEMORY[0x25304CAF0](v17, v13);
  v14 = 1.0 - (v17[0] + 100.0) / a2;
  sub_24F927898();
  *a1 = xmmword_24F9A8940;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x4000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0x3FE0000000000000;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  *(a1 + 104) = 0;
}

uint64_t sub_24EE6D5E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v52) = a3;
  v54 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232248, &qword_24F9A8DE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v51 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232250, &qword_24F9A8DE8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232258, &qword_24F9A8DF0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232260, &qword_24F9A8DF8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v53 = v51 - v19;
  *v8 = sub_24F927618();
  v8[1] = v20;
  v21 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232268, &unk_24F9A8E00) + 44);
  v51[1] = a1;
  sub_24EE6DBD4(a2, a1, v21);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v8, v12, &qword_27F232248, &qword_24F9A8DE0);
  v22 = &v12[*(v10 + 44)];
  v23 = v81[7];
  *(v22 + 4) = v81[6];
  *(v22 + 5) = v23;
  *(v22 + 6) = v81[8];
  v24 = v81[3];
  *v22 = v81[2];
  *(v22 + 1) = v24;
  v25 = v81[5];
  *(v22 + 2) = v81[4];
  *(v22 + 3) = v25;
  v26 = a2;
  v27 = *(a2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 28));
  LOBYTE(a2) = v52;
  LOBYTE(v10) = v27 & ~v52;
  sub_24F923998();
  sub_24EE6D420(v63, v28);
  *&v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
  sub_24F926F28();
  *(&v65[3] + 6) = v63[3];
  *(&v65[4] + 6) = v63[4];
  *(&v65[5] + 6) = v64[0];
  *(&v65[5] + 15) = *(v64 + 9);
  *(v65 + 6) = v63[0];
  *(&v65[1] + 6) = v63[1];
  v29 = v74;
  *(&v65[2] + 6) = v63[2];
  sub_24E6009C8(v12, v16, &qword_27F232250, &qword_24F9A8DE8);
  v30 = &v16[*(v14 + 44)];
  v31 = v65[2];
  *(v30 + 50) = v65[3];
  v32 = v65[5];
  *(v30 + 66) = v65[4];
  *(v30 + 82) = v32;
  *(v30 + 97) = *(&v65[5] + 15);
  v33 = v65[1];
  *(v30 + 2) = v65[0];
  *(v30 + 18) = v33;
  *v30 = v10 & 1;
  v30[1] = 0;
  *(v30 + 34) = v31;
  *(v30 + 120) = v29;
  v34 = sub_24F927618();
  v36 = v35;
  sub_24EE6E06C(a2, v26, &v74);
  v52 = v74;
  v37 = v75;
  LOBYTE(v10) = BYTE8(v75);
  v38 = v53;
  sub_24E6009C8(v16, v53, &qword_27F232258, &qword_24F9A8DF0);
  v39 = v38 + *(v18 + 44);
  *v39 = v52;
  *(v39 + 16) = v37;
  *(v39 + 24) = v10;
  *(v39 + 32) = v34;
  *(v39 + 40) = v36;
  v40 = sub_24F927618();
  v42 = v41;
  sub_24EE6E860(v26, &v56);
  *&v66 = v40;
  *(&v66 + 1) = v42;
  v71 = v60;
  v72 = v61;
  v73[0] = v62[0];
  *(v73 + 9) = *(v62 + 9);
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v43 = v38;
  v44 = v54;
  sub_24E6009C8(v43, v54, &qword_27F232260, &qword_24F9A8DF8);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232270, &qword_24F9A8E10) + 36));
  v46 = v73[0];
  v45[6] = v72;
  v45[7] = v46;
  *(v45 + 121) = *(v73 + 9);
  v47 = v69;
  v45[2] = v68;
  v45[3] = v47;
  v48 = v71;
  v45[4] = v70;
  v45[5] = v48;
  v49 = v67;
  *v45 = v66;
  v45[1] = v49;
  *&v74 = v40;
  *(&v74 + 1) = v42;
  v79 = v60;
  v80 = v61;
  v81[0] = v62[0];
  *(v81 + 9) = *(v62 + 9);
  v75 = v56;
  v76 = v57;
  v77 = v58;
  v78 = v59;
  sub_24E60169C(&v66, &v55, &qword_27F232278, &qword_24F9A8E18);
  return sub_24E601704(&v74, &qword_27F232278, &qword_24F9A8E18);
}

uint64_t sub_24EE6DBD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_24F923F78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  MEMORY[0x28223BE20](v40);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 24);
  v43 = *(*a1 + 16);
  v39 = *(a1 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 24));
  if (v39 != 1)
  {
    v12 = *(v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo);
    if (!v12)
    {
      v13 = &OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork;
      goto LABEL_7;
    }

LABEL_5:
    v38 = 0;
    goto LABEL_8;
  }

  v12 = *(v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video);
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = &OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork;
LABEL_7:
  v38 = *(v10 + *v13);

  v12 = 0;
LABEL_8:
  sub_24E701D04(v43, v11);

  sub_24F7699B0(v7);
  v14 = sub_24EE6C264(v44);
  (*(v5 + 8))(v7, v4, v14);
  v15 = *(v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v15)
  {
    goto LABEL_19;
  }

  if (v15 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  if ((v15 & 0xC000000000000001) != 0)
  {

    v20 = MEMORY[0x253052270](0, v15);

    v21 = *(v20 + 48);
    v21;
    swift_unknownObjectRelease();
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(*(v15 + 32) + 48);
    if (v17)
    {
      v18 = v17;
LABEL_15:
      v19 = sub_24F926BF8();
LABEL_20:
      sub_24F923998();
      *v9 = v43;
      *(v9 + 1) = v11;
      *(v9 + 2) = v38;
      *(v9 + 3) = v12;
      v22 = v44[1];
      *(v9 + 2) = v44[0];
      *(v9 + 3) = v22;
      v23 = v44[5];
      *(v9 + 6) = v44[4];
      *(v9 + 7) = v23;
      v24 = v44[3];
      *(v9 + 4) = v44[2];
      *(v9 + 5) = v24;
      v25 = v44[10];
      v26 = v44[8];
      *(v9 + 11) = v44[9];
      *(v9 + 12) = v25;
      v27 = v44[7];
      *(v9 + 8) = v44[6];
      *(v9 + 9) = v27;
      *(v9 + 10) = v26;
      *(v9 + 26) = v19;
      *(v9 + 27) = v28;
      *(v9 + 28) = v29;
      v9[232] = v39;
      type metadata accessor for ArticlePageViewModel(0);
      sub_24EE754B4(&qword_27F216838, type metadata accessor for ArticlePageViewModel, &protocol conformance descriptor for DiffablePresenterBasedPageViewModel<A>);

      *(v9 + 30) = sub_24F923C28();
      *(v9 + 31) = v30;
      v31 = v40;
      v32 = *(v40 + 48);
      *&v9[v32] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v33 = *(v31 + 52);
      *&v9[v33] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      sub_24F923998();
      sub_24F923998();
      sub_24F9275F8();
      sub_24F9238C8();
      v34 = v42;
      sub_24EE76AC4(v9, v42, type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322A0, &qword_24F9A8E30);
      v35 = (v34 + *(result + 36));
      v36 = v44[12];
      *v35 = v44[11];
      v35[1] = v36;
      v35[2] = v44[13];
      return result;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_24EE6E06C(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = sub_24F91F6B8();
  v8 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v59 - v11;
  if ((a1 & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
LABEL_51:
    *a3 = v17;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v20;
    return;
  }

  v12 = *a2;
  v13 = *(*a2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v13)
  {
    v21 = sub_24EE6E7B8(MEMORY[0x277D84F90]);
    v3 = v22;
    v14 = v23;
    v25 = v24;
    if (v24)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_23:
      sub_24E6B8BA4(v21, v3, v14, v25);
      v30 = v29;
LABEL_30:
      swift_unknownObjectRelease();
LABEL_31:
      if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
      {
        v25 = sub_24F92C738();
        if (!v25)
        {
LABEL_46:

          v54 = MEMORY[0x277D84F90];
          goto LABEL_47;
        }
      }

      else
      {
        v25 = *(v30 + 16);
        if (!v25)
        {
          goto LABEL_46;
        }
      }

      v81 = MEMORY[0x277D84F90];
      v21 = &v81;
      sub_24F92C978();
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      swift_unknownObjectRelease_n();
      v8 = v4;
    }

    v60 = v12;
    v61 = a2;
    v62 = a3;
    v33 = 0;
    v34 = v30;
    v66 = v30 & 0xC000000000000001;
    v63 = (v8 + 8);
    v67 = v25;
    v68 = v30;
    do
    {
      if (v66)
      {
        v41 = MEMORY[0x253052270](v33, v34);
      }

      else
      {
        v41 = *(v34 + 8 * v33 + 32);
      }

      sub_24E65864C(v41 + 112, v79);
      v42 = swift_dynamicCast();
      v38 = *(&v76 + 1);
      v36 = v76;
      v43 = *(v41 + 24);
      v69 = *(v41 + 16);
      v44 = *(v41 + 32);
      v45 = *(v41 + 40);
      v47 = *(v41 + 48);
      v46 = *(v41 + 56);
      v48 = *(v41 + 64);
      v72 = *(v41 + 88);
      v49 = *(v41 + 96);
      v70 = v48;
      v71 = v49;
      v50 = *(v41 + 104);
      sub_24E60169C(v41 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, v73, &qword_27F213E68, &unk_24F93BC80);
      type metadata accessor for Artwork(0);
      v51 = swift_allocObject();
      *(v51 + 152) = 0u;
      *(v51 + 168) = 0u;
      *(v51 + 184) = 0;
      v52 = v46;

      v53 = v47;
      if (!v42 || !v38)
      {
        v35 = v64;
        sub_24F91F6A8();
        v36 = sub_24F91F668();
        v38 = v37;
        (*v63)(v35, v65);
      }

      ++v33;
      v74 = v36;
      v75 = v38;
      sub_24F92C7F8();

      v39 = v77;
      *(v51 + 112) = v76;
      *(v51 + 128) = v39;
      *(v51 + 144) = v78;
      v40 = v73;
      sub_24E60169C(v73, v51 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
      *(v51 + 16) = v69;
      *(v51 + 24) = v43;
      *(v51 + 32) = v44;
      *(v51 + 40) = v45;
      *(v51 + 48) = v47;
      *(v51 + 56) = v46;
      *(v51 + 72) = 24937;
      *(v51 + 80) = 0xE200000000000000;
      *(v51 + 64) = v70;
      *(v51 + 104) = v50;
      sub_24E601704(v40, &qword_27F213E68, &unk_24F93BC80);
      *(v51 + 88) = v72;
      *(v51 + 96) = v71;
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v34 = v68;
    }

    while (v67 != v33);

    v54 = v81;
    a3 = v62;
    a2 = v61;
    v12 = v60;
LABEL_47:
    v55 = *(v12 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isArticle3DIconsFallbackEnabled);
    v56 = *(a2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 24));
    if (v55)
    {
      v57 = a2[1];
      *&v76 = v54;
      *(&v76 + 1) = v56;
      *&v77 = v57;
      BYTE8(v77) = 0;
      sub_24EE76C64();
      sub_24EE76CB8();
    }

    else
    {
      *&v76 = v54;
      *(&v76 + 1) = v56;
      *&v77 = 0;
      BYTE8(v77) = 1;
      sub_24EE76C64();
      sub_24EE76CB8();
    }

    sub_24F924E28();
    v17 = v79[0];
    v18 = v79[1];
    v19 = v79[2];
    v20 = v80;
    goto LABEL_51;
  }

  v14 = v13 >> 62;
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v21 = *(*a2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
    }

    else
    {
      v21 = (v13 & 0xFFFFFFFFFFFFFF8);
    }

    v25 = sub_24F92C738();
    if (sub_24F92C738() < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v25 >= 3)
    {
      v58 = 3;
    }

    else
    {
      v58 = v25;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v16 = v58;
    }

    else
    {
      v16 = 3;
    }

    if (sub_24F92C738() >= v16)
    {
LABEL_8:
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (v16)
        {
          type metadata accessor for Artwork(0);
          swift_bridgeObjectRetain_n();
          sub_24F92C8C8();
          if (v16 != 1)
          {
            sub_24F92C8C8();
            if (v16 != 2)
            {
              sub_24F92C8C8();
            }
          }

          if (v14)
          {
LABEL_22:

            v21 = sub_24F92CB18();
            v3 = v26;
            v14 = v27;
            v25 = v28;

            if ((v25 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          if (v14)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v14 = 0;
      v21 = (v13 & 0xFFFFFFFFFFFFFF8);
      v3 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v25 = (2 * v16) | 1;
      if ((v25 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      v4 = v8;
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x277D84F90];
      }

      v32 = *(v31 + 16);

      if (!__OFSUB__(v25 >> 1, v14))
      {
        if (v32 == (v25 >> 1) - v14)
        {
          v30 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v8 = v4;
          if (v30)
          {
            goto LABEL_31;
          }

          v30 = MEMORY[0x277D84F90];
          goto LABEL_30;
        }

        goto LABEL_59;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 >= v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_24EE6E7B8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_24F92C738();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_24EAEACA0(v3, 0);
  sub_24EA10C44(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

double sub_24EE6E860@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 24)))
  {
    v3 = sub_24F926C88();
    sub_24F927618();
    sub_24F9242E8();
    v8 = v3;
    sub_24EE76C58(&v8);
  }

  else
  {
    sub_24F923998();
    sub_24EE6E9E0(v11);
    v8 = *v11;
    v9 = *&v11[8];
    v10 = *&v11[24];
    sub_24EE76BCC(&v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232280, &unk_24F9A8E20);
  sub_24E86BC28();
  sub_24EE76BD4();
  sub_24F924E28();
  v4 = v14;
  a2[4] = v13;
  a2[5] = v4;
  a2[6] = v15[0];
  *(a2 + 105) = *(v15 + 9);
  v5 = *&v11[16];
  *a2 = *v11;
  a2[1] = v5;
  result = *&v11[32];
  v7 = v12;
  a2[2] = *&v11[32];
  a2[3] = v7;
  return result;
}

double sub_24EE6E9E0@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  *(v4 + 32) = sub_24F9273C8();
  *(v4 + 40) = v5;
  sub_24F926C88();
  v6 = (v2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView(0) + 32));
  v7 = v6[1];
  v8 = v6[2];
  *&v15 = *v6;
  *(&v15 + 1) = v7;
  *&v16 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
  MEMORY[0x25304CAF0](&v14, v9);
  *(v4 + 48) = sub_24F9273C8();
  *(v4 + 56) = v10;
  sub_24F926C98();
  *(v4 + 64) = sub_24F9273C8();
  *(v4 + 72) = v11;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v17;
  return result;
}

uint64_t sub_24EE6EB48@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = sub_24F923F78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F7699B0(v10);
  v11 = sub_24F1CE098();
  (*(v8 + 8))(v10, v7);
  sub_24EE75504(v3, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  result = sub_24EE76AC4(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for GamesArticlePageEditorialStoryCardView.GamesBackgroundView);
  *(v13 + v12 + v6) = v11;
  *a2 = sub_24EE76B2C;
  a2[1] = v13;
  return result;
}

uint64_t sub_24EE6ED30@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232368, &unk_24F9A90A0);
  MEMORY[0x28223BE20](v72);
  v69 = (&v67 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v67 - v4;
  v70 = type metadata accessor for ColorGroup(0);
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232370, &qword_24F9A90B0);
  MEMORY[0x28223BE20](v71);
  v7 = &v67 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232378, &qword_24F9A90B8);
  MEMORY[0x28223BE20](v77);
  v9 = &v67 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232380, &qword_24F9A90C0);
  MEMORY[0x28223BE20](v78);
  v11 = &v67 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232388, &qword_24F9A90C8);
  MEMORY[0x28223BE20](v82);
  v85 = &v67 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232390, &qword_24F9A90D0);
  MEMORY[0x28223BE20](v84);
  v79 = &v67 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232398, &qword_24F9A90D8);
  MEMORY[0x28223BE20](v81);
  v15 = &v67 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323A0, &qword_24F9A90E0);
  MEMORY[0x28223BE20](v76);
  v17 = &v67 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323A8, &qword_24F9A90E8);
  MEMORY[0x28223BE20](v86);
  v80 = &v67 - v18;
  v19 = type metadata accessor for MixedMediaItemView(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323B0, &unk_24F9A90F0);
  MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  v26 = *v1;
  if (*v1)
  {
    v27 = v1[1];
    v75 = v23;

    v28 = sub_24EE6FB74(v1);
    *&v21[*(v19 + 32)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    *&v21[*(v19 + 36)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
    swift_storeEnumTagMultiPayload();
    *v21 = v26;
    *(v21 + 1) = v27;
    v21[16] = 4;
    v21[17] = v28;
    v21[18] = HIBYTE(v28) & 1;
    sub_24EE754B4(&qword_27F2323D0, type metadata accessor for MixedMediaItemView, &unk_24FA0D690);
    sub_24F9265E8();
    sub_24EE77E88(v21, type metadata accessor for MixedMediaItemView);
    sub_24E60169C(v25, v15, &qword_27F2323B0, &unk_24F9A90F0);
    swift_storeEnumTagMultiPayload();
    sub_24EE77A28();
    sub_24EE77B14();
    sub_24F924E28();
    sub_24E60169C(v17, v79, &qword_27F2323A0, &qword_24F9A90E0);
    swift_storeEnumTagMultiPayload();
    sub_24EE7799C();
    sub_24EE77D18();
    v29 = v80;
    sub_24F924E28();
    sub_24E601704(v17, &qword_27F2323A0, &qword_24F9A90E0);
    sub_24E60169C(v29, v85, &qword_27F2323A8, &qword_24F9A90E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24EE77910();
    sub_24E7EBBCC();
    sub_24F924E28();
    sub_24E601704(v29, &qword_27F2323A8, &qword_24F9A90E8);
    v30 = v25;
    v31 = &qword_27F2323B0;
    v32 = &unk_24F9A90F0;
    return sub_24E601704(v30, v31, v32);
  }

  v33 = v73;
  v34 = v74;
  v68 = v9;
  v35 = v75;
  if (v1[3])
  {

    sub_24EE6FF1C(v36, v11);

    sub_24E60169C(v11, v15, &qword_27F232380, &qword_24F9A90C0);
    swift_storeEnumTagMultiPayload();
    sub_24EE77A28();
    sub_24EE77B14();
    sub_24F924E28();
    sub_24E60169C(v17, v79, &qword_27F2323A0, &qword_24F9A90E0);
    swift_storeEnumTagMultiPayload();
    sub_24EE7799C();
    sub_24EE77D18();
    v37 = v80;
    sub_24F924E28();
    sub_24E601704(v17, &qword_27F2323A0, &qword_24F9A90E0);
    sub_24E60169C(v37, v85, &qword_27F2323A8, &qword_24F9A90E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24EE77910();
    sub_24E7EBBCC();
    sub_24F924E28();

    sub_24E601704(v37, &qword_27F2323A8, &qword_24F9A90E8);
    v30 = v11;
    v31 = &qword_27F232380;
LABEL_7:
    v32 = &qword_24F9A90C0;
    return sub_24E601704(v30, v31, v32);
  }

  if (v1[2])
  {

    sub_24EE6FF1C(v38, v11);
    v39 = v11;
    sub_24E60169C(v11, v7, &qword_27F232380, &qword_24F9A90C0);
    swift_storeEnumTagMultiPayload();
    sub_24EE77B14();
    sub_24EE77DA4();
    v40 = v68;
    sub_24F924E28();
    sub_24E60169C(v40, v79, &qword_27F232378, &qword_24F9A90B8);
    swift_storeEnumTagMultiPayload();
    sub_24EE7799C();
    sub_24EE77D18();
    v41 = v80;
    sub_24F924E28();
    sub_24E601704(v40, &qword_27F232378, &qword_24F9A90B8);
    sub_24E60169C(v41, v85, &qword_27F2323A8, &qword_24F9A90E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24EE77910();
    sub_24E7EBBCC();
    sub_24F924E28();

    sub_24E601704(v41, &qword_27F2323A8, &qword_24F9A90E8);
    v30 = v39;
    v31 = &qword_27F232380;
    goto LABEL_7;
  }

  v43 = v85;
  if (v1[26])
  {
    v44 = v7;
    v45 = v1[26];
    v46 = qword_27F20FEE0;

    if (v46 != -1)
    {
      swift_once();
    }

    ColorGrouping.colorGroup(for:)(v47);

    v48 = (*(v33 + 48))(v34, 1, v70) == 1;
    v49 = v79;
    v50 = v45;
    v51 = v72;
    v52 = v68;
    if (!v48)
    {
      v55 = v35;
      v56 = v80;
      v81 = v50;
      sub_24EE76AC4(v34, v55, type metadata accessor for ColorGroup);
      v57 = sub_24F927618();
      v58 = v69;
      *v69 = v57;
      *(v58 + 8) = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120, &unk_24F94BDB0);
      sub_24F5955E8(v55, v58 + *(v60 + 44));
      v61 = sub_24F927618();
      v63 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_24F93A400;
      *(v64 + 32) = sub_24F926C88();
      *(v64 + 40) = sub_24F926C98();
      MEMORY[0x25304CD70](v64);
      sub_24F923BD8();
      v65 = v87;
      v66 = v58 + *(v51 + 36);
      *v66 = v61;
      *(v66 + 8) = v63;
      *(v66 + 16) = v65;
      *(v66 + 24) = v88;
      *(v66 + 40) = v89;
      sub_24E60169C(v58, v44, &qword_27F232368, &unk_24F9A90A0);
      swift_storeEnumTagMultiPayload();
      sub_24EE77B14();
      sub_24EE77DA4();
      sub_24F924E28();
      sub_24E60169C(v52, v49, &qword_27F232378, &qword_24F9A90B8);
      swift_storeEnumTagMultiPayload();
      sub_24EE7799C();
      sub_24EE77D18();
      sub_24F924E28();
      sub_24E601704(v52, &qword_27F232378, &qword_24F9A90B8);
      sub_24E60169C(v56, v85, &qword_27F2323A8, &qword_24F9A90E8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
      sub_24EE77910();
      sub_24E7EBBCC();
      sub_24F924E28();

      sub_24E601704(v56, &qword_27F2323A8, &qword_24F9A90E8);
      sub_24E601704(v58, &qword_27F232368, &unk_24F9A90A0);
      return sub_24EE77E88(v75, type metadata accessor for ColorGroup);
    }

    sub_24E601704(v34, &qword_27F2190D8, &unk_24F94BD70);
    v43 = v85;
  }

  v53 = sub_24F926C98();
  v54 = sub_24F925808();
  *v43 = v53;
  *(v43 + 8) = v54;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
  sub_24EE77910();
  sub_24E7EBBCC();
  return sub_24F924E28();
}

uint64_t sub_24EE6FB74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v26 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v26 - v15);
  type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  sub_24F769764(v16);
  v27 = a1;
  sub_24F769764(v13);
  v17 = *(v3 + 56);
  sub_24E6009C8(v16, v5, &qword_27F215598, &qword_24F945EF0);
  sub_24E6009C8(v13, &v5[v17], &qword_27F215598, &qword_24F945EF0);
  v18 = sub_24F925218();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(&v5[v17], 1, v18) != 1)
  {
    sub_24E60169C(&v5[v17], v10, &qword_27F215598, &qword_24F945EF0);
    if ((*(v19 + 88))(v10, v18) == *MEMORY[0x277CE0558])
    {
      sub_24E601704(&v5[v17], &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v5, &qword_27F215598, &qword_24F945EF0);
      v21 = 0;
      v22 = 256;
      return v22 | v21;
    }

    (*(v19 + 8))(v10, v18);
  }

  if (v20(v5, 1, v18) != 1)
  {
    v23 = v26;
    sub_24E60169C(v5, v26, &qword_27F215598, &qword_24F945EF0);
    if ((*(v19 + 88))(v23, v18) == *MEMORY[0x277CE0558])
    {
      sub_24E601704(&v5[v17], &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v5, &qword_27F215598, &qword_24F945EF0);
      v22 = 0;
      v21 = 0;
      return v22 | v21;
    }

    (*(v19 + 8))(v23, v18);
  }

  v24 = *(v27 + 232);
  sub_24E601704(v5, &unk_27F254F20, &qword_24F940790);
  if (v24)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v21 = 1;
  return v22 | v21;
}

uint64_t sub_24EE6FF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v69 = a2;
  v6 = type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView(0);
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = v7;
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkWithFallbackView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323F8, &qword_24F9A9108);
  MEMORY[0x28223BE20](v64);
  v63 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2323E8, &qword_24F9A9100);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v62 - v13;
  v14 = sub_24F922348();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  if (a1)
  {

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v22 = *(v3 + 216);
    v21 = *(v3 + 224);
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v24 = v23;
    sub_24F9222E8();
    if (v24 >= v25)
    {
      sub_24F922308();
      v28 = v29;
      v27 = v22;
    }

    else
    {
      sub_24F9222F8();
      v27 = v26;
      v28 = v21;
    }

    v30 = *(v15 + 8);
    v30(v17, v14);
    v30(v20, v14);
  }

  else
  {
    v27 = *(v3 + 216);
    v28 = *(v3 + 224);
    v21 = v28;
    v22 = v27;
  }

  v31 = *(v3 + 176);
  v79 = *(v3 + 160);
  v80 = v31;
  v81 = *(v3 + 192);
  v32 = *(v3 + 112);
  v75 = *(v3 + 96);
  v76 = v32;
  v33 = *(v3 + 144);
  v77 = *(v3 + 128);
  v78 = v33;
  v34 = *(v3 + 48);
  v71 = *(v3 + 32);
  v72 = v34;
  v35 = *(v3 + 80);
  v73 = *(v3 + 64);
  v74 = v35;
  sub_24E60169C(&v71, v70, &qword_27F22E660, &qword_24F9A9120);
  v36 = sub_24EE70534();
  v37 = v8[7];
  v38 = *MEMORY[0x277CE1010];
  v39 = sub_24F926E68();
  (*(*(v39 - 8) + 104))(&v10[v37], v38, v39);
  *v10 = a1;
  *(v10 + 1) = v27;
  *(v10 + 2) = v28;
  *(v10 + 3) = v22;
  *(v10 + 4) = v21;
  v40 = &v10[v8[8]];
  *v40 = 1;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  v40[104] = 0;
  *(v40 + 8) = 0u;
  v41 = &v10[v8[9]];
  v42 = v80;
  *(v41 + 8) = v79;
  *(v41 + 9) = v42;
  *(v41 + 10) = v81;
  v43 = v76;
  *(v41 + 4) = v75;
  *(v41 + 5) = v43;
  v44 = v78;
  *(v41 + 6) = v77;
  *(v41 + 7) = v44;
  v45 = v72;
  *v41 = v71;
  *(v41 + 1) = v45;
  v46 = v74;
  *(v41 + 2) = v73;
  *(v41 + 3) = v46;
  *&v10[v8[10]] = 0;
  v10[v8[11]] = v36 & 1;

  sub_24F927618();
  sub_24F9242E8();
  v47 = v10;
  v48 = v63;
  sub_24EE76AC4(v47, v63, type metadata accessor for ArtworkWithFallbackView);
  v49 = (v48 + *(v64 + 36));
  v50 = v70[5];
  v49[4] = v70[4];
  v49[5] = v50;
  v49[6] = v70[6];
  v51 = v70[1];
  *v49 = v70[0];
  v49[1] = v51;
  v52 = v70[3];
  v49[2] = v70[2];
  v49[3] = v52;
  sub_24EE77C5C();
  v53 = v65;
  sub_24F9265E8();
  sub_24E601704(v48, &qword_27F2323F8, &qword_24F9A9108);
  v54 = v68;
  sub_24EE75504(v4, v68, type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView);
  v55 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v56 = (v66 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_24EE76AC4(v54, v57 + v55, type metadata accessor for GamesArticlePageEditorialStoryCardView.BackgroundMediaView);
  *(v57 + v56) = a1;
  v58 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v58 = v27;
  v58[1] = v28;
  v59 = v69;
  sub_24E6009C8(v53, v69, &qword_27F2323E8, &qword_24F9A9100);
  v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232380, &qword_24F9A90C0) + 36));
  *v60 = sub_24EE7818C;
  v60[1] = v57;
  v60[2] = 0;
  v60[3] = 0;
}

uint64_t sub_24EE70534()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v2 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 sub_24EE70614@<Q0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v3 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322A8, &qword_24F9A8E38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322B0, &qword_24F9A8E40);
  v34[1] = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322B8, &qword_24F9A8E48);
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x28223BE20](v14);
  v36 = v34 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322C0, &qword_24F9A8E50) - 8;
  MEMORY[0x28223BE20](v38);
  v37 = v34 - v16;
  *v10 = sub_24F924C98();
  *(v10 + 1) = 0x4038000000000000;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322C8, &qword_24F9A8E58);
  sub_24EE70AFC(v2, &v10[*(v17 + 44)]);
  v18 = v2[*(v4 + 48)];
  v35 = v2;
  if (v18)
  {
    v19 = 0x4040000000000000;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = 0x4040000000000000;
  }

  else
  {
    v20 = 0x403E000000000000;
  }

  v21 = sub_24F925808();
  sub_24E6009C8(v10, v13, &qword_27F2322A8, &qword_24F9A8E38);
  v22 = &v13[*(v11 + 36)];
  *v22 = v21;
  *(v22 + 1) = 0;
  *(v22 + 2) = v19;
  *(v22 + 3) = v20;
  *(v22 + 4) = v19;
  v22[40] = 0;
  sub_24EE75504(v2, v7, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  sub_24EE76AC4(v7, v24 + v23, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  sub_24EE76DA0();
  v25 = v36;
  sub_24F9267B8();

  sub_24E601704(v13, &qword_27F2322B0, &qword_24F9A8E40);
  sub_24EE75504(v35, v7, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v26 = swift_allocObject();
  sub_24EE76AC4(v7, v26 + v23, type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView);
  v27 = v37;
  (*(v39 + 32))(v37, v25, v40);
  v28 = (v27 + *(v38 + 44));
  *v28 = sub_24E7BC238;
  v28[1] = 0;
  v28[2] = sub_24EE77214;
  v28[3] = v26;
  sub_24F9275C8();
  sub_24F9242E8();
  v29 = v41;
  sub_24E6009C8(v27, v41, &qword_27F2322C0, &qword_24F9A8E50);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322E0, &unk_24F9A8E60) + 36);
  v31 = v47;
  *(v30 + 64) = v46;
  *(v30 + 80) = v31;
  *(v30 + 96) = v48;
  v32 = v43;
  *v30 = v42;
  *(v30 + 16) = v32;
  result = v45;
  *(v30 + 32) = v44;
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_24EE70AFC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v82 - v7;
  v90 = type metadata accessor for EditorialComponentOverlayView(0);
  MEMORY[0x28223BE20](v90);
  v94 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322E8, &qword_24F9A8E70);
  v95 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322F0, &qword_24F9A8E78);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v96 = &v82 - v17;
  v89 = sub_24F923E98();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = (&v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - v23;
  v25 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  v29 = *(v28 - 1);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v86 = &v82 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2322F8, &qword_24F9A8E80);
  MEMORY[0x28223BE20](v34 - 8);
  v93 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v38 = *a1;
  v99 = a1;
  v100 = &v82 - v39;
  v97 = v9;
  v98 = a2;
  if (v38 == 1)
  {
    v83 = v15;
    v40 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
    sub_24EE75504(&a1[v40[5]], v27, type metadata accessor for EditorialStoryCard.Badge);
    sub_24E60169C(&a1[v40[6]], v24, &qword_27F215340, &qword_24F943530);
    sub_24E60169C(&a1[v40[7]], v21, &qword_27F215340, &qword_24F943530);
    v41 = 0;
    v42 = a1[v40[10]];
    if ((v42 & 1) == 0)
    {
      v43 = v87;
      sub_24F769788(v87);
      v44 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v88 + 8))(v43, v89);
      if (v44)
      {
        v41 = 0x4089000000000000;
      }

      else
      {
        v41 = 0x407E000000000000;
      }
    }

    *&v31[v28[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
    swift_storeEnumTagMultiPayload();
    sub_24EE76AC4(v27, v31, type metadata accessor for EditorialStoryCard.Badge);
    sub_24E6009C8(v24, &v31[v28[5]], &qword_27F215340, &qword_24F943530);
    sub_24E6009C8(v21, &v31[v28[6]], &qword_27F215340, &qword_24F943530);
    v31[v28[7]] = v42 ^ 1;
    v45 = &v31[v28[8]];
    *v45 = v41;
    v45[8] = v42;
    v46 = v28[10];
    sub_24F925898();
    v47 = sub_24F9258E8();

    *&v31[v46] = v47;
    v48 = v28[11];
    sub_24F925888();
    v49 = sub_24F9258E8();

    *&v31[v48] = v49;
    v50 = v28[12];
    sub_24F9259D8();
    v51 = sub_24F9258E8();

    *&v31[v50] = v51;
    v52 = v86;
    sub_24EE76AC4(v31, v86, type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack);
    v53 = v52;
    v54 = v100;
    sub_24EE76AC4(v53, v100, type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack);
    (*(v29 + 56))(v54, 0, 1, v28);
    v15 = v83;
    v9 = v97;
  }

  else
  {
    (*(v29 + 56))(v37);
  }

  v55 = type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  v56 = v99;
  v57 = 1;
  v58 = v96;
  if (v99[*(v55 + 32)] == 1)
  {
    v59 = v55;
    v60 = v94;
    sub_24EE75504(&v99[*(v55 + 36)], v94, _s9ViewModelVMa);
    v61 = v56[*(v59 + 40)];
    v62 = v90;
    v63 = *(v90 + 32);
    *(v60 + v63) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
    swift_storeEnumTagMultiPayload();
    *(v60 + v62[5]) = 1;
    *(v60 + v62[6]) = v61 ^ 1;
    *(v60 + v62[7]) = 1;
    if ((v61 & 1) == 0)
    {
      v64 = v87;
      sub_24F769788(v87);
      v65 = v88;
      v66 = *(v88 + 56);
      v67 = v84;
      v68 = v89;
      v66(v84, 1, 1, v89);
      v69 = v85;
      v66(v85, 1, 1, v68);
      sub_24EF13DC0(v67, v69, 436.0);
      sub_24E601704(v69, &qword_27F2140C0, &qword_24F93C240);
      sub_24E601704(v67, &qword_27F2140C0, &qword_24F93C240);
      (*(v65 + 8))(v64, v68);
    }

    sub_24F927618();
    v9 = v97;
    sub_24F9242E8();
    v70 = v92;
    sub_24EE76AC4(v94, v92, type metadata accessor for EditorialComponentOverlayView);
    v71 = (v70 + *(v9 + 36));
    v72 = v106;
    v71[4] = v105;
    v71[5] = v72;
    v71[6] = v107;
    v73 = v102;
    *v71 = v101;
    v71[1] = v73;
    v74 = v104;
    v71[2] = v103;
    v71[3] = v74;
    v75 = v70;
    v76 = v91;
    sub_24E6009C8(v75, v91, &qword_27F2322E8, &qword_24F9A8E70);
    sub_24E6009C8(v76, v58, &qword_27F2322E8, &qword_24F9A8E70);
    v57 = 0;
  }

  (*(v95 + 56))(v58, v57, 1, v9);
  v77 = v100;
  v78 = v93;
  sub_24E60169C(v100, v93, &qword_27F2322F8, &qword_24F9A8E80);
  sub_24E60169C(v58, v15, &qword_27F2322F0, &qword_24F9A8E78);
  v79 = v98;
  sub_24E60169C(v78, v98, &qword_27F2322F8, &qword_24F9A8E80);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232300, &qword_24F9A8E88);
  sub_24E60169C(v15, v79 + *(v80 + 48), &qword_27F2322F0, &qword_24F9A8E78);
  sub_24E601704(v58, &qword_27F2322F0, &qword_24F9A8E78);
  sub_24E601704(v77, &qword_27F2322F8, &qword_24F9A8E80);
  sub_24E601704(v15, &qword_27F2322F0, &qword_24F9A8E78);
  return sub_24E601704(v78, &qword_27F2322F8, &qword_24F9A8E80);
}

uint64_t sub_24EE7163C(char a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  return sub_24F927178();
}

void *sub_24EE716B0(double *a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  v4 = (a2 + *(type metadata accessor for GamesArticlePageEditorialStoryCardView.OverlayView(0) + 44));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
  result = MEMORY[0x25304CAF0](&v9);
  if (v3 != v9)
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v9 = v3;
    return sub_24F927178();
  }

  return result;
}

uint64_t sub_24EE71758@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  sub_24E60169C(v1 + *(v10 + 36), v9, &qword_27F216950, &unk_24F943F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F9234D8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24EE71964@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v102 = sub_24F925508();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232098, &qword_24F9A8A28);
  MEMORY[0x28223BE20](v90);
  v98 = v83 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320A0, &qword_24F9A8A30);
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = v83 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320A8, &qword_24F9A8A38);
  MEMORY[0x28223BE20](v88);
  v87 = v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320B0, &qword_24F9A8A40);
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = v83 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320B8, &qword_24F9A8A48);
  MEMORY[0x28223BE20](v91);
  v95 = v83 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320C0, &unk_24F9A8A50);
  MEMORY[0x28223BE20](v96);
  v97 = v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v10);
  v12 = v83 - v11;
  v13 = sub_24F9234D8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v83 - v18;
  sub_24EE71758((v83 - v18));
  (*(v14 + 104))(v16, *MEMORY[0x277CDF3C0], v13);
  v20 = sub_24F9234C8();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  v22 = sub_24F9251C8();
  v23 = *(v10 + 36);
  v24 = sub_24F927748();
  v25 = MEMORY[0x277CE13B8];
  if ((v20 & 1) == 0)
  {
    v25 = MEMORY[0x277CE13B0];
  }

  (*(*(v24 - 8) + 104))(&v12[v23], *v25, v24);
  *v12 = v22;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v26 = sub_24F9238D8();
  v27 = sub_24F924C98();
  v107 = 0;
  v89 = v26;
  sub_24EE72724(v103, v26, v105);
  v121 = *&v105[192];
  v122[0] = *&v105[208];
  *(v122 + 9) = *&v105[217];
  v117 = *&v105[128];
  v118 = *&v105[144];
  v120 = *&v105[176];
  v119 = *&v105[160];
  v113 = *&v105[64];
  v114 = *&v105[80];
  v116 = *&v105[112];
  v115 = *&v105[96];
  v109 = *v105;
  v110 = *&v105[16];
  v112 = *&v105[48];
  v111 = *&v105[32];
  v123[12] = *&v105[192];
  v124[0] = *&v105[208];
  *(v124 + 9) = *&v105[217];
  v123[8] = *&v105[128];
  v123[9] = *&v105[144];
  v123[11] = *&v105[176];
  v123[10] = *&v105[160];
  v123[4] = *&v105[64];
  v123[5] = *&v105[80];
  v123[7] = *&v105[112];
  v123[6] = *&v105[96];
  v123[0] = *v105;
  v123[1] = *&v105[16];
  v123[3] = *&v105[48];
  v123[2] = *&v105[32];
  sub_24E60169C(&v109, v104, &qword_27F2320C8, &qword_24F9A8A60);
  sub_24E601704(v123, &qword_27F2320C8, &qword_24F9A8A60);
  *(&v106[11] + 7) = v120;
  *(&v106[12] + 7) = v121;
  *(&v106[13] + 7) = v122[0];
  v106[14] = *(v122 + 9);
  *(&v106[7] + 7) = v116;
  *(&v106[8] + 7) = v117;
  *(&v106[9] + 7) = v118;
  *(&v106[10] + 7) = v119;
  *(&v106[3] + 7) = v112;
  *(&v106[4] + 7) = v113;
  *(&v106[5] + 7) = v114;
  *(&v106[6] + 7) = v115;
  *(v106 + 7) = v109;
  *(&v106[1] + 7) = v110;
  *(&v106[2] + 7) = v111;
  v28 = v107;
  v83[1] = type metadata accessor for GamesArticlePageEditorialStoryCardView.TextStack(0);
  sub_24F927628();
  v82 = v29;
  sub_24F9242E8();
  *&v108[55] = v124[5];
  *&v108[71] = v124[6];
  *&v108[87] = v124[7];
  *&v108[103] = v125;
  *&v108[7] = v124[2];
  *&v108[23] = v124[3];
  *&v108[39] = v124[4];
  *&v105[193] = v106[11];
  *&v105[209] = v106[12];
  *&v105[225] = v106[13];
  *&v105[241] = v106[14];
  *&v105[129] = v106[7];
  *&v105[145] = v106[8];
  *&v105[161] = v106[9];
  *&v105[177] = v106[10];
  *&v105[65] = v106[3];
  *&v105[81] = v106[4];
  *&v105[97] = v106[5];
  *&v105[113] = v106[6];
  *&v105[17] = v106[0];
  *v105 = v27;
  *&v105[8] = 0;
  v105[16] = v28;
  *&v105[33] = v106[1];
  *&v105[49] = v106[2];
  *&v105[321] = *&v108[64];
  *&v105[337] = *&v108[80];
  *&v105[353] = *&v108[96];
  *&v105[257] = *v108;
  *&v105[273] = *&v108[16];
  *&v105[289] = *&v108[32];
  *&v105[305] = *&v108[48];
  *&v105[368] = *(&v125 + 1);
  v30 = sub_24F9275B8();
  v32 = v31;
  sub_24F926CA8();
  v33 = memcpy(v104, v105, sizeof(v104));
  v83[0] = v83;
  MEMORY[0x28223BE20](v33);
  v83[-10] = 0x6361745374786554;
  v83[-9] = 0xE90000000000006BLL;
  v83[-8] = v30;
  v83[-7] = v32;
  v79 = 0u;
  v80 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320D0, &qword_24F9A8A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2320D8, &qword_24F9A8A70);
  sub_24EE74CD4();
  sub_24E6695B8();
  v81 = sub_24EE74D8C();
  v34 = v84;
  sub_24F926B08();
  sub_24E601704(v105, &qword_27F2320D0, &qword_24F9A8A68);

  v81 = sub_24F927628();
  v82 = v35;
  BYTE8(v80) = 1;
  *&v80 = 0;
  BYTE8(v79) = 1;
  *&v79 = 0;
  sub_24F9242E8();
  v36 = v87;
  (*(v85 + 32))(v87, v34, v86);
  v37 = (v36 + *(v88 + 36));
  v38 = *&v104[16];
  *v37 = *v104;
  v37[1] = v38;
  v39 = *&v104[96];
  v37[5] = *&v104[80];
  v37[6] = v39;
  v40 = *&v104[64];
  v37[3] = *&v104[48];
  v37[4] = v40;
  v37[2] = *&v104[32];
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v41 = sub_24F9248C8();
  __swift_project_value_buffer(v41, qword_27F39F078);
  sub_24EE74E44();
  v42 = v92;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v36, &qword_27F2320A8, &qword_24F9A8A38);
  v43 = *(sub_24F924258() + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_24F924B38();
  v46 = v98;
  (*(*(v45 - 8) + 104))(&v98[v43], v44, v45);
  __asm { FMOV            V0.2D, #12.0 }

  *v46 = _Q0;
  *(v46 + *(sub_24F924248() + 20)) = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v52 = sub_24F926D08();

  *(v46 + *(v90 + 52)) = v52;
  v53 = v95;
  sub_24EE74F54(v46, v95);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232108, &qword_24F9A8A88);
  v56 = v93;
  v55 = v94;
  (*(v93 + 16))(v53 + v54[9], v42, v94);
  v57 = v53 + v54[10];
  *v57 = sub_24F923398() & 1;
  *(v57 + 8) = v58;
  *(v57 + 16) = v59 & 1;
  v60 = v53 + v54[11];
  *v60 = swift_getKeyPath();
  *(v60 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v61 = qword_27F24E488;
  v62 = sub_24F923398();
  v64 = v63;
  v66 = v65;
  v67 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232110, &qword_24F9A8AB8) + 36);
  *v67 = v61;
  *(v67 + 8) = v62 & 1;
  *(v67 + 16) = v64;
  *(v67 + 24) = v66 & 1;
  LOBYTE(v61) = sub_24F923398();
  v69 = v68;
  LOBYTE(v64) = v70;
  sub_24E601704(v46, &qword_27F232098, &qword_24F9A8A28);
  (*(v56 + 8))(v42, v55);
  v71 = v53 + *(v91 + 36);
  *v71 = v61 & 1;
  *(v71 + 8) = v69;
  *(v71 + 16) = v64 & 1;
  v72 = v97;
  v73 = &v97[*(v96 + 36)];
  *v73 = 0u;
  *(v73 + 1) = 0u;
  v73[32] = sub_24F923398() & 1;
  *(v73 + 5) = v74;
  v73[48] = v75 & 1;
  v76 = *(type metadata accessor for FocusableItemScrollViewOffsetModifier(0) + 24);
  *&v73[v76] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A8, &qword_24F962848);
  swift_storeEnumTagMultiPayload();
  sub_24E6009C8(v53, v72, &qword_27F2320B8, &qword_24F9A8A48);
  v77 = v99;
  sub_24F9254E8();
  sub_24EE74FD4();
  sub_24F926678();

  (*(v100 + 8))(v77, v102);
  return sub_24E601704(v72, &qword_27F2320C0, &unk_24F9A8A50);
}