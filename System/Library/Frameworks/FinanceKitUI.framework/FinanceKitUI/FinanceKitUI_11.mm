void sub_23853AC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23853ACCC(uint64_t a1)
{
  if (!qword_27DF0DA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D9D8, &qword_23876DCF8);
    v1 = sub_23875E1E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0DA18);
    }
  }
}

unint64_t sub_23853AD30()
{
  result = qword_27DF0DA20;
  if (!qword_27DF0DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D9E0, &qword_23876DD30);
    sub_23853BC48(&qword_27DF0DA28, type metadata accessor for ExtractedOrderSuggestionsPreviewContent, &unk_23876DD80);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DA20);
  }

  return result;
}

uint64_t sub_23853AE34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23853AE98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2385360EC(a1, v6, a2);
}

unint64_t sub_23853AF38()
{
  result = qword_27DF0DA68;
  if (!qword_27DF0DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA60, &qword_23876DDF8);
    sub_23853AFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DA68);
  }

  return result;
}

unint64_t sub_23853AFC4()
{
  result = qword_27DF0DA70;
  if (!qword_27DF0DA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA78, &qword_23876DE00);
    sub_23843A3E8(&qword_27DF0DA80, &qword_27DF0DA88, &qword_23876DE08, &unk_2387698E0);
    sub_23843A3E8(&qword_27DF0DA90, &qword_27DF0DA58, &qword_23876DDF0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DA70);
  }

  return result;
}

unint64_t sub_23853B0A8()
{
  result = qword_27DF0DAA0;
  if (!qword_27DF0DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA98, &qword_23876DE10);
    sub_23853AF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DAA0);
  }

  return result;
}

unint64_t sub_23853B134()
{
  result = qword_27DF0DAA8;
  if (!qword_27DF0DAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA30, &qword_23876DDD0);
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70, MEMORY[0x277CDD7F8]);
    sub_23853BC48(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DAA8);
  }

  return result;
}

uint64_t sub_23853B21C()
{
  v2 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_23853910C(v0 + v3);
}

double sub_23853B2F4(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2385393C4(a1, v4);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23853B37C(uint64_t a1)
{
  v4 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_238539590(a1, v6, v7, v1 + v5);
}

unint64_t sub_23853B46C(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875EB30();
  v4 = sub_23875F760();

  return sub_23853B4E4(a1, a2, v4);
}

unint64_t sub_23853B4E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23875F630())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23853B5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23853B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DAC0;
  if (!qword_27DF0DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DAC0);
  }

  return result;
}

uint64_t sub_23853B690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23853B700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23853B768()
{
  result = qword_27DF0DB20;
  if (!qword_27DF0DB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB18, &qword_23876DEC8);
    sub_23853B824();
    sub_23853BC48(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB20);
  }

  return result;
}

unint64_t sub_23853B824()
{
  result = qword_27DF0DB28;
  if (!qword_27DF0DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB30, &unk_23876DED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    sub_23875D620();
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23853BC48(&qword_27DF0DB38, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0DB40, &qword_27DF0DB48, &qword_23876DEE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB28);
  }

  return result;
}

unint64_t sub_23853B9A4()
{
  result = qword_27DF0DB58;
  if (!qword_27DF0DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB50, &qword_23876DEE8);
    sub_23843A3E8(&qword_27DF0DB60, &qword_27DF0DB68, &qword_23876DEF0, MEMORY[0x277CDF028]);
    sub_23853BC48(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB58);
  }

  return result;
}

uint64_t sub_23853BAA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23853BB18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
    v3 = sub_23875F570();
    v4 = a1 + 32;

    while (1)
    {
      sub_23843981C(v4, &v13, &qword_27DF0A4D8, &qword_238766B00);
      v5 = v13;
      v6 = v14;
      result = sub_23853B46C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23846F7C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23853BC48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E8, &qword_23876DD38);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C600();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C6D0();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C8A0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_23853C004()
{
  result = qword_27DF0DB80;
  if (!qword_27DF0DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB88, &qword_23876DF60);
    sub_23853B0A8();
    sub_23853B134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB80);
  }

  return result;
}

void sub_23853C0F8(uint64_t a1)
{
  type metadata accessor for OrderShareLink.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23853C1AC(319);
    if (v2 <= 0x3F)
    {
      sub_23853C214(319);
      if (v3 <= 0x3F)
      {
        sub_23853C26C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23853C1AC(uint64_t a1)
{
  if (!qword_27DF0B5A0)
  {
    sub_238449184(255, &qword_2814F0888, 0x277CBE440);
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0B5A0);
    }
  }
}

void sub_23853C214(uint64_t a1)
{
  if (!qword_27DF0B940)
  {
    sub_23875C8A0();
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0B940);
    }
  }
}

void sub_23853C26C(uint64_t a1)
{
  if (!qword_27DF0A0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09540, &unk_238763800);
    v1 = sub_23875E1E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0A0C8);
    }
  }
}

void sub_23853C2F8(uint64_t a1)
{
  sub_23875A710();
  if (v1 <= 0x3F)
  {
    sub_2384561E8();
    if (v2 <= 0x3F)
    {
      sub_2387590B0();
      if (v3 <= 0x3F)
      {
        sub_23875BC40();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_23853C3D4()
{
  v1 = v0;
  v2 = sub_23875BA10();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_23875BA40();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE40();
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE20();
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BD20();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2387595E0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2387590C0();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v62 = *(v0 + *(type metadata accessor for OrderShareLink(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1B0();
  v15 = v61;
  if (v61)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];
  }

  else
  {
    v16 = 0;
  }

  [v14 setIcon_];

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_238763B60;
  v18 = type metadata accessor for OrderShareLink.ViewModel(0);
  v54 = v14;
  v19 = v18;
  v20 = (v1 + *(v18 + 20));
  v22 = *v20;
  v21 = v20[1];
  v23 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v26 = sub_238448C58(v18, v24, v25);
  *(v17 + 64) = v26;
  *(v17 + 32) = v22;
  *(v17 + 40) = v21;

  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  v52 = v19;
  v53 = v26;
  *(v17 + 96) = v23;
  *(v17 + 104) = v26;
  sub_23853F1CC(&qword_27DF0ADF8, MEMORY[0x277CC7708], MEMORY[0x277CC7700]);
  v27 = v50;
  sub_238759950();
  (*(v49 + 8))(v13, v27);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v28 = qword_2814F1B90;
  v29 = sub_23875EA50();
  v30 = sub_23875EA50();
  v31 = sub_23875EA50();
  v32 = [v28 localizedStringForKey:v29 value:v30 table:v31];

  sub_23875EA80();
  sub_23875EAA0();

  v33 = sub_23875EA50();

  v34 = v54;
  [v54 setTitle_];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2387632F0;
  v36 = v55;
  sub_23875BA20();
  v37 = v57;
  sub_23875BA00();
  v38 = sub_23875BC00();
  v40 = v39;
  (*(v59 + 8))(v37, v60);
  (*(v56 + 8))(v36, v58);
  v41 = v53;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = v41;
  *(v35 + 32) = v38;
  *(v35 + 40) = v40;
  v42 = sub_23875EA50();
  v43 = sub_23875EA50();
  v44 = sub_23875EA50();
  v45 = [v28 localizedStringForKey:v42 value:v43 table:v44];

  sub_23875EA80();
  sub_23875EAA0();

  v46 = sub_23875EA50();

  [v34 setSummary_];

  return v34;
}

uint64_t sub_23853CB24@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBC0, &qword_23876E0C0);
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v77 = &v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBC8, &qword_23876E0C8);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v70 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E30, &qword_23876E0D0);
  v6 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v8 = &v70 - v7;
  v9 = type metadata accessor for OrderShareLink.ViewModel(0);
  MEMORY[0x28223BE20](v9);
  sub_23853EF30(v1, &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderShareLink.ViewModel);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBD0, &qword_23876E0D8);
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_23853C3D4();
  v87 = sub_238449184(0, &qword_27DF0DBD8, 0x277CD46C8);
  v84 = v12;
  sub_23875C570();
  sub_23853F1CC(&qword_27DF0DBE0, type metadata accessor for OrderShareLink.ViewModel, &unk_23876E074);
  v74 = v8;
  sub_23875E530();
  v13 = type metadata accessor for OrderShareLink(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_23853EF30(v1, &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderShareLink);
  sub_23875ED50();
  v16 = sub_23875ED40();
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_23853EF98(&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v20 = sub_23875ED80();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v70 - v23;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v72 = sub_23875C830();
    v73 = &v70;
    v71 = *(v72 - 8);
    MEMORY[0x28223BE20](v72);
    v70 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_23875F470();

    v84 = 0xD00000000000002ELL;
    v85 = 0x8000000238789FD0;
    v83 = 55;
    v26 = sub_23875F600();
    MEMORY[0x23EE63650](v26);

    v28 = MEMORY[0x28223BE20](v27);
    (*(v21 + 16))(&v70 - v23, &v70 - v23, v20, v28);
    v29 = v20;
    v30 = v70;
    sub_23875C820();
    (*(v21 + 8))(v24, v29);
    v31 = v82;
    (*(v6 + 32))(v82, v74, v81);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E38, &qword_238761CC0);
    (*(v71 + 32))(&v31[*(v32 + 36)], v30, v72);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E40, &qword_238761CC8);
    v34 = v82;
    v35 = &v82[*(v33 + 36)];
    v36 = sub_23875C6E0();
    (*(v21 + 32))(&v35[*(v36 + 20)], v24, v20);
    *v35 = &unk_23876E0F0;
    *(v35 + 1) = v18;
    (*(v6 + 32))(v34, v74, v81);
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1C0, &unk_23876E100);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v70 - v39;
  v41 = sub_23875C430();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C420();
  sub_23875E390();
  (*(v42 + 8))(v44, v41);
  sub_23875C480();
  v45 = sub_23843A3E8(&qword_27DF0DBE8, &qword_27DF08E30, &qword_23876E0D0, MEMORY[0x277CDF188]);
  v84 = v81;
  v85 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_23843A3E8(&qword_27DF0C220, &qword_27DF0C1C0, &unk_23876E100, MEMORY[0x277CDF728]);
  v48 = v76;
  v49 = v77;
  v50 = v82;
  sub_23875DD50();
  v51 = v40;
  v52 = v48;
  (*(v38 + 8))(v51, v37);
  (*(v75 + 8))(v50, v48);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v53 = qword_2814F1B90;
  v54 = sub_23875EA50();
  v55 = sub_23875EA50();
  v56 = sub_23875EA50();
  v57 = [v53 localizedStringForKey:v54 value:v55 table:v56];

  v58 = sub_23875EA80();
  v60 = v59;

  v84 = v58;
  v85 = v60;
  sub_2384397A8(v61, v62, v63);
  v64 = sub_23875DAA0();
  v66 = v65;
  LOBYTE(v56) = v67;
  v84 = v52;
  v85 = v37;
  v86 = OpaqueTypeConformance2;
  v87 = v47;
  swift_getOpaqueTypeConformance2();
  v68 = v80;
  sub_23875DBE0();
  sub_2384397FC(v64, v66, v56 & 1);

  return (*(v79 + 8))(v49, v68);
}

uint64_t sub_23853D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = sub_23875ED50();
  v3[7] = sub_23875ED40();
  v4 = swift_task_alloc();
  v3[8] = v4;
  *v4 = v3;
  v4[1] = sub_23853D6C0;

  return sub_23853D8B4();
}

uint64_t sub_23853D6C0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23853D804, v3, v2);
}

uint64_t sub_23853D804()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + *(type metadata accessor for OrderShareLink(0) + 28));
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1C0();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23853D8B4()
{
  v1[6] = v0;
  v2 = sub_23875C8A0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_23875CDB0();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = sub_23875ED50();
  v1[14] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23853DA08, v5, v4);
}

uint64_t sub_23853DA08()
{
  v1 = v0[6];

  v2 = (v1 + *(type metadata accessor for OrderShareLink.ViewModel(0) + 24));
  if (v2[1] && ((v27 = *v2, v28 = v2[1], v3 = v0[6], v4 = v3 + *(type metadata accessor for OrderShareLink(0) + 20), v5 = *v4, *(v4 + 8) != 1) ? (v9 = v0[11], v8 = v0[12], v10 = v0[10], , sub_23875EFF0(), v11 = sub_23875D730(), sub_23875C110(), v11, sub_23875CDA0(), swift_getAtKeyPath(), v12 = sub_2384B4E98(v5, 0), v13 = *(v9 + 8), v13(v8, v10, v12), v7 = v0[4], , sub_23875EFF0(), v14 = sub_23875D730(), sub_23875C110(), v14, sub_23875CDA0(), swift_getAtKeyPath(), v15 = sub_2384B4E98(v5, 0), v13(v8, v10, v15), v6 = v0[5], v3 = v0[6]) : (v6 = v5, v7 = v6), v17 = v0[8], v16 = v0[9], v18 = v0[7], sub_2384D5200(v16), v19 = swift_task_alloc(), v19[2] = v3, v19[3] = v6, v19[4] = v27, v19[5] = v28, v19[6] = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBF0, &unk_23876E120), sub_23875F120(), v7, v6, , (*(v17 + 8))(v16, v18), v20 = v0[3], v20 >> 60 != 15))
  {
    v22 = v0[2];
    sub_23844C8EC(v22, v0[3]);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v24 = sub_23875B980();
    v21 = [v23 initWithData_];

    sub_23844C940(v22, v20);

    sub_23844C940(v22, v20);
  }

  else
  {
    v21 = 0;
  }

  v25 = v0[1];

  return v25(v21);
}

void sub_23853DD84()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_2384FBFBC(inited + 32);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  *(v2 + 40) = sub_23875EA80();
  *(v2 + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(v2 + 56) = *MEMORY[0x277D38390];
  *(v2 + 64) = 0x6572616873;
  v6 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0xE500000000000000;
  *(v2 + 80) = v6;
  strcpy((v2 + 88), "orderDetails");
  *(v2 + 101) = 0;
  *(v2 + 102) = -5120;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v15);

  v12 = *MEMORY[0x277D38548];
  v13 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853F1CC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v14 = sub_23875E910();

  [v13 subject:v12 sendEvent:v14];
}

void sub_23853E070(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v78 = a2;
  v69 = a5;
  v66 = a3;
  v67 = a4;
  v80 = a6;
  v6 = sub_23875C8A0();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2387589C0();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v55 - v10;
  v65 = sub_238758970();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v74 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238758960();
  v63 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2387589A0();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2387589D0();
  v68 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23875A530();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238757DF0();
  v25 = v79;
  v26 = sub_238757D50();
  if (v25)
  {

LABEL_3:
    *v80 = xmmword_23876DFB0;
    return;
  }

  v62 = v17;
  v78 = v14;
  v79 = v24;
  v60 = v20;
  v27 = v76;
  v61 = v18;
  v28 = v75;
  v29 = v77;
  if (!v26)
  {
    goto LABEL_3;
  }

  v59 = 0;
  v30 = v26;
  v31 = [v26 ecommerceOrderContent];
  if (!v31)
  {

    goto LABEL_3;
  }

  v57 = v31;
  v58 = v30;
  v55 = sub_238759630();
  v56 = MEMORY[0x23EE5E100]();
  v32 = v79;
  v33 = v67;
  *v79 = v66;
  v32[1] = v33;
  v34 = *(v22 + 104);
  v66 = v21;
  v34();

  v67 = sub_2387588A0();
  sub_238758990();
  (*(v63 + 104))(v78, *MEMORY[0x277CC7128], v12);
  (*(v64 + 104))(v74, *MEMORY[0x277CC7138], v65);
  v35 = v73;
  (*(v27 + 16))(v73, v69, v29);
  v36 = (*(v27 + 88))(v35, v29);
  if (v36 == *MEMORY[0x277CDFA88])
  {
    v37 = v72;
    v38 = v70;
    (*(v72 + 104))(v70, *MEMORY[0x277CC7148], v28);
    v39 = v71;
  }

  else
  {
    v40 = v36;
    v41 = *MEMORY[0x277CDFA90];
    v42 = v72;
    v38 = v70;
    (*(v72 + 104))(v70, *MEMORY[0x277CC7150], v28);
    v43 = v40 == v41;
    v37 = v42;
    v39 = v71;
    if (!v43)
    {
      (*(v27 + 8))(v73, v29);
    }
  }

  (*(v37 + 32))(v39, v38, v28);
  v44 = v60;
  sub_2387589B0();
  v81[3] = v55;
  v81[4] = MEMORY[0x277CC79A8];
  v81[0] = v56;

  v45 = v79;
  v46 = v57;
  v47 = v59;
  v48 = sub_23875A520();
  v50 = (v68 + 8);
  v51 = (v22 + 8);
  if (v47)
  {

    (*v50)(v44, v61);
    (*v51)(v45, v66);
    __swift_destroy_boxed_opaque_existential_1(v81);
    goto LABEL_3;
  }

  v52 = v48;
  v53 = v49;

  (*v50)(v44, v61);
  (*v51)(v45, v66);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v54 = v80;
  *v80 = v52;
  *(v54 + 1) = v53;
}

void sub_23853E82C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_238757D40();
  v6 = [a2 merchant];
  v7 = [v6 displayName];

  v8 = sub_2387586A0();
  v10 = v9;

  v11 = type metadata accessor for OrderShareLink.ViewModel(0);
  v12 = (a3 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = [a2 merchant];
  v14 = [v13 logoName];

  if (v14)
  {
    v15 = sub_23875EA80();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = (a3 + *(v11 + 24));
  *v18 = v15;
  v18[1] = v17;
  v19 = a2;
  sub_238759060();
  v20 = [v19 createdDate];
  sub_23875BBE0();
}

uint64_t sub_23853E9A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBB8, &qword_23876E0B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_23875C0D0();
  __swift_allocate_value_buffer(v3, qword_27DF2F770);
  __swift_project_value_buffer(v3, qword_27DF2F770);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_23875C0B0();
}

uint64_t sub_23853EABC()
{
  v1 = v0[4];
  sub_238758890();
  v0[2] = sub_238758880();
  v2 = sub_238758A30();

  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_23875F120();

  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[1];

  return v6(v4, v5);
}

void sub_23853EBF4(uint64_t *a3@<X8>)
{
  v5 = sub_238758FA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757DF0();
  v9 = sub_238757D50();
  if (!v3)
  {
    if (v9)
    {
      v12 = v9;
      sub_238757D90();
      v13 = sub_238758F90();
      (*(v6 + 8))(v8, v5);
      v14 = [v13 data];

      v15 = sub_23875B990();
      v17 = v16;

      *a3 = v15;
      a3[1] = v17;
    }

    else
    {
      sub_23853EEDC(0, v10, v11);
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t sub_23853ED84(uint64_t a1, uint64_t a2)
{
  v2 = sub_23875C0D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08D08 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27DF2F770);
  (*(v3 + 16))(v5, v6, v2);
  return sub_23875C070();
}

unint64_t sub_23853EEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DBB0;
  if (!qword_27DF0DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DBB0);
  }

  return result;
}

uint64_t sub_23853EF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23853EF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderShareLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23853EFFC()
{
  v2 = *(type metadata accessor for OrderShareLink(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_23853D610(v4, v5, v0 + v3);
}

uint64_t sub_23853F0D8(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderShareLink.ViewModel(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5DB60](a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  return sub_23875BBD0();
}

uint64_t sub_23853F1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23853F248()
{
  result = qword_27DF0DC08;
  if (!qword_27DF0DC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC10, qword_23876E150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DBC8, &qword_23876E0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C1C0, &unk_23876E100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E30, &qword_23876E0D0);
    sub_23843A3E8(&qword_27DF0DBE8, &qword_27DF08E30, &qword_23876E0D0, MEMORY[0x277CDF188]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C220, &qword_27DF0C1C0, &unk_23876E100, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    sub_23853F1CC(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DC08);
  }

  return result;
}

unint64_t sub_23853F414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DC18;
  if (!qword_27DF0DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DC18);
  }

  return result;
}

uint64_t sub_23853F4FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReturnDetailsHeader(0);
  sub_23843981C(v1 + *(v10 + 20), v9, &qword_27DF0C2E0, &unk_23876EE10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875BE20();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_23853F708@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC60, &qword_23876E2C0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v22 - v5;
  *v6 = sub_23875D020();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC68, &qword_23876E2C8);
  sub_23853F950(v1, &v6[*(v7 + 44)]);
  v8 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC70, &unk_23876E2D0) + 36)];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v10 = sub_23875DA40();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *v8 = swift_getKeyPath(byte_23876E2E0);
  KeyPath = swift_getKeyPath(byte_23876E310);
  v12 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC78, &qword_23876E340) + 36)];
  *v12 = KeyPath;
  v12[8] = 1;
  LOBYTE(KeyPath) = sub_23875D7A0();
  sub_23875C3D0();
  v13 = &v6[*(v4 + 44)];
  *v13 = KeyPath;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v6, a1, &qword_27DF0DC60, &qword_23876E2C0);
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC80, &unk_23876E348) + 36);
  v19 = v22[5];
  *(v18 + 64) = v22[4];
  *(v18 + 80) = v19;
  *(v18 + 96) = v22[6];
  v20 = v22[1];
  *v18 = v22[0];
  *(v18 + 16) = v20;
  result = v22[3];
  *(v18 + 32) = v22[2];
  *(v18 + 48) = result;
  return result;
}

double sub_23853F950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v105 = type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle(0);
  MEMORY[0x28223BE20](v105);
  v104 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v110 = &v103 - v5;
  v117 = sub_23875BC40();
  v114 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v103 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v112 = &v103 - v8;
  v9 = sub_2387591F0();
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v107 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875DFD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  MEMORY[0x28223BE20](v15);
  v17 = &v103 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC88, &qword_23876E358);
  MEMORY[0x28223BE20](v106);
  v115 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v103 - v20;
  MEMORY[0x28223BE20](v22);
  v118 = &v103 - v23;
  sub_23875ED50();
  v113 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v111 = a1;
  sub_2385418C8(a1, v17);
  v24 = type metadata accessor for MerchantImage(0);
  v17[*(v24 + 20)] = 1;
  v25 = *(v24 + 24);
  *&v17[v25] = swift_getKeyPath(byte_23876E360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0EE0], v11);
  v26 = sub_23875E090();
  KeyPath = swift_getKeyPath("p\b{E");
  v28 = &v17[*(v15 + 36)];
  v29 = type metadata accessor for OrderImageStyleModifier(0);
  *&v28[*(v29 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v28[*(v29 + 40)] = swift_getKeyPath(byte_23876E360);
  swift_storeEnumTagMultiPayload();
  *v28 = xmmword_2387643A0;
  *(v28 + 2) = 0;
  v28[24] = 1;
  *(v28 + 4) = v26;
  v28[40] = 0;
  v30 = sub_23875E490();
  v32 = v31;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = &v21[*(v106 + 36)];
  *v33 = 0;
  v34 = *(type metadata accessor for ReturnIcon(0) + 20);
  *&v33[v34] = swift_getKeyPath(byte_23876E360);
  swift_storeEnumTagMultiPayload();

  v35 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC90, &unk_23876E3D0) + 36)];
  *v35 = v30;
  v35[1] = v32;
  sub_2384396E4(v17, v21, &qword_27DF0C7D0, &unk_23876B3E0);
  sub_2384396E4(v21, v118, &qword_27DF0DC88, &qword_23876E358);
  v37 = v107;
  v36 = v108;
  v38 = v109;
  (*(v108 + 104))(v107, *MEMORY[0x277CC77C8], v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2387632F0;
  v40 = type metadata accessor for MerchantImage.ViewModel(0);
  v41 = v111;
  v42 = (v111 + *(v40 + 24));
  v44 = *v42;
  v43 = v42[1];
  *(v39 + 56) = MEMORY[0x277D837D0];
  *(v39 + 64) = sub_238448C58(v40, v45, v46);
  *(v39 + 32) = v44;
  *(v39 + 40) = v43;

  v47 = sub_238758A50();
  v49 = v48;

  v50 = (*(v36 + 8))(v37, v38);
  v119 = v47;
  v120 = v49;
  sub_2384397A8(v50, v51, v52);
  v53 = sub_23875DAA0();
  v55 = v54;
  LOBYTE(v33) = v56;
  sub_23875D830();
  v57 = sub_23875DA60();
  v59 = v58;
  LOBYTE(v37) = v60;

  sub_2384397FC(v53, v55, v33 & 1);

  sub_23875D890();
  v61 = sub_23875D9E0();
  v63 = v62;
  LOBYTE(v49) = v64;
  sub_2384397FC(v57, v59, v37 & 1);

  sub_23875E070();
  v65 = sub_23875DA10();
  v107 = v66;
  v108 = v65;
  LODWORD(v106) = v67;
  v109 = v68;

  sub_2384397FC(v61, v63, v49 & 1);

  v69 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v70 = v110;
  sub_23843981C(v41 + *(v69 + 20), v110, &qword_27DF12E00, &unk_238763FC0);
  v71 = v114;
  v72 = v117;
  if ((*(v114 + 48))(v70, 1, v117) == 1)
  {
    sub_238439884(v70, &qword_27DF12E00, &unk_238763FC0);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v77 = v112;
    (*(v71 + 32))(v112, v70, v72);
    (*(v71 + 16))(v103, v77, v72);
    sub_23853F4FC(v104);
    sub_23854192C(&qword_27DF0DCA0, type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle, &unk_23876E4D0);
    sub_23854192C(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v78 = sub_23875DA80();
    v80 = v79;
    v82 = v81;
    sub_23875D7F0();
    v83 = sub_23875DA60();
    v85 = v84;
    v87 = v86;

    sub_2384397FC(v78, v80, v82 & 1);

    sub_23875E080();
    v88 = sub_23875DA10();
    v90 = v89;
    LOBYTE(v80) = v91;
    v76 = v92;

    sub_2384397FC(v83, v85, v87 & 1);

    (*(v71 + 8))(v112, v117);
    v75 = v80 & 1;
    v73 = v88;
    v74 = v90;
    sub_23843980C(v88, v90, v75);
  }

  v93 = v115;
  sub_23843981C(v118, v115, &qword_27DF0DC88, &qword_23876E358);
  v94 = v116;
  sub_23843981C(v93, v116, &qword_27DF0DC88, &qword_23876E358);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC98, &unk_23876E3E0);
  v96 = v94 + *(v95 + 48);
  v97 = v107;
  v98 = v108;
  *v96 = v108;
  *(v96 + 8) = v97;
  v99 = v106;
  v100 = v106 & 1;
  *(v96 + 16) = v106 & 1;
  *(v96 + 24) = v109;
  v101 = (v94 + *(v95 + 64));
  sub_23843980C(v98, v97, v99 & 1);

  sub_238476F5C(v73, v74, v75, v76);
  sub_238476FA0(v73, v74, v75, v76);
  sub_238439884(v118, &qword_27DF0DC88, &qword_23876E358);
  *v101 = v73;
  v101[1] = v74;
  v101[2] = v75;
  v101[3] = v76;
  sub_238476FA0(v73, v74, v75, v76);
  sub_2384397FC(v98, v97, v100);

  sub_238439884(v93, &qword_27DF0DC88, &qword_23876E358);

  return result;
}

uint64_t sub_2385404C4(uint64_t a1)
{
  v2 = sub_23875B7F0();
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BE40();
  MEMORY[0x28223BE20](v4 - 8);
  v33[3] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE20();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23875BD20();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v33 - v12;
  v14 = sub_23875BAD0();
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2387591F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  if (sub_23875BD70())
  {
    (*(v18 + 104))(v20, *MEMORY[0x277CC77C8], v17);
  }

  else
  {
    v21 = sub_23875BDA0();
    (*(v18 + 104))(v20, *MEMORY[0x277CC77C8], v17);
    if ((v21 & 1) == 0)
    {
      v33[2] = "ERCHANT_RETURN_TITLE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2387632F0;
      v33[1] = v13;
      sub_23875BA30();
      v24 = sub_23875BA40();
      (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
      v25 = sub_23875BA10();
      (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
      sub_23875BCC0();
      sub_23875BDB0();
      sub_23875BE30();
      sub_23875B7E0();
      sub_23875BA50();
      v26 = sub_23875BAC0();
      v28 = v27;
      v29 = (*(v34 + 8))(v16, v35);
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_238448C58(v29, v30, v31);
      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      v22 = sub_238758A50();

      goto LABEL_6;
    }
  }

  v22 = sub_238758A40();
LABEL_6:
  (*(v18 + 8))(v20, v17);
  return v22;
}

uint64_t sub_238540A1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_23875BE20();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD08, &qword_23876E528);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238541DDC(v12, v13, v14);
  sub_23875F780();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_23854192C(&qword_27DF0DD18, MEMORY[0x277CC99E8], MEMORY[0x277CC9A00]);
    sub_23875F5B0();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_238541E30(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238540CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23875F630();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238540D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238541DDC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238540D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238541DDC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238540DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2385404C4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_238540DFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD20, &qword_23876E530);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238541DDC(v6, v7, v8);
  sub_23875F790();
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD28, MEMORY[0x277CC99E8], MEMORY[0x277CC99F0]);
  sub_23875F5C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_238540F74()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD30, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238540FFC(uint64_t a1)
{
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD30, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);

  return sub_23875E960();
}

uint64_t sub_238541080()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD30, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_23875E960();
  return sub_23875F760();
}

BOOL sub_238541108(void *a1, void *a2)
{
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + *(v16 + 20), a2 + *(v16 + 20)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(v16 + 24);
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v22 = v5;
  v23 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v24 = *(v11 + 48);
  sub_23843981C(a1 + v23, v13, &qword_27DF12E00, &unk_238763FC0);
  sub_23843981C(a2 + v23, &v13[v24], &qword_27DF12E00, &unk_238763FC0);
  v25 = *(v22 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v24], 1, v4) == 1)
    {
      sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_23843981C(v13, v10, &qword_27DF12E00, &unk_238763FC0);
  if (v25(&v13[v24], 1, v4) == 1)
  {
    (*(v22 + 8))(v10, v4);
LABEL_19:
    sub_238439884(v13, &qword_27DF0DC30, &unk_23876E260);
    return 0;
  }

  (*(v22 + 32))(v7, &v13[v24], v4);
  sub_23854192C(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v27 = sub_23875E9E0();
  v28 = *(v22 + 8);
  v28(v7, v4);
  v28(v10, v4);
  sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
  return (v27 & 1) != 0;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = *(v12 + 48);

    return v13(a1, a2, v11);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 20);

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = *(v14 + 56);

    return v15(a1, a2, a2, v13);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 20);

    return v18(v19, a2, a2, v17);
  }
}

void sub_238541780(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v10 <= 0x3F)
  {
    sub_238541828(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238541828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2385418C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantImage.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23854192C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23854199C(uint64_t a1)
{
  result = sub_23875BE20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238541A08()
{
  result = qword_27DF0DCB8;
  if (!qword_27DF0DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC80, &unk_23876E348);
    sub_238541A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCB8);
  }

  return result;
}

unint64_t sub_238541A94()
{
  result = qword_27DF0DCC0;
  if (!qword_27DF0DCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC60, &qword_23876E2C0);
    sub_238541B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCC0);
  }

  return result;
}

unint64_t sub_238541B20()
{
  result = qword_27DF0DCC8;
  if (!qword_27DF0DCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC78, &qword_23876E340);
    sub_238541BD8();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCC8);
  }

  return result;
}

unint64_t sub_238541BD8()
{
  result = qword_27DF0DCD0;
  if (!qword_27DF0DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC70, &unk_23876E2D0);
    sub_23843A3E8(&qword_27DF0DCD8, &qword_27DF0DCE0, &unk_23876E408, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCD0);
  }

  return result;
}

unint64_t sub_238541DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DD10;
  if (!qword_27DF0DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD10);
  }

  return result;
}

uint64_t sub_238541E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238541EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DD38;
  if (!qword_27DF0DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD38);
  }

  return result;
}

unint64_t sub_238541F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DD40;
  if (!qword_27DF0DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD40);
  }

  return result;
}

unint64_t sub_238541F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DD48;
  if (!qword_27DF0DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD48);
  }

  return result;
}

uint64_t MapsTransactionClassifier.__allocating_init(lookupRequestExecutor:updateTime:coreDataStore:piiProcessor:iconGenerator:networkEventRecorder:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_238758850();
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  MEMORY[0x28223BE20](v12);
  v33 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v36 = a1;
  sub_23845C998(a1, v15 + 16);
  v16 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v17 = sub_23875BC40();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15 + v16, a2, v17);
  v19 = a3;
  *(v15 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore) = a3;
  v20 = a4;
  sub_23845C998(a4, v15 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor);
  *(v15 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder) = a6;
  sub_23843981C(a5, &v37, &qword_27DF0DD70, &qword_23876E660);
  if (v38)
  {
    sub_238439884(a5, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(a4);
    (*(v18 + 8))(a2, v17);
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_2384347C0(&v37, v39);
    sub_2384347C0(v39, v15 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator);
  }

  else
  {
    v32 = a6;

    v31 = v19;

    sub_238439884(&v37, &qword_27DF0DD70, &qword_23876E660);
    v21 = [objc_opt_self() ephemeralSessionConfiguration];
    v30 = a2;
    v22 = v21;
    v23 = v33;
    sub_2387587F0();
    v29 = a5;
    sub_238758840();
    v24 = sub_23875EA50();

    [v22 set:v24 sourceApplicationBundleIdentifier:?];

    v25 = type metadata accessor for MapsTransactionIconGenerator();
    v26 = swift_allocObject();
    *(v26 + 16) = [objc_opt_self() sessionWithConfiguration_];
    v27 = (v15 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator);
    v27[3] = v25;
    v27[4] = &protocol witness table for MapsTransactionIconGenerator;

    *v27 = v26;
    sub_238439884(v29, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(v20);
    (*(v18 + 8))(v30, v17);
    __swift_destroy_boxed_opaque_existential_1(v36);
    (*(v35 + 8))(v23, v34);
  }

  return v15;
}

uint64_t MapsTransactionClassifier.init(lookupRequestExecutor:updateTime:coreDataStore:piiProcessor:iconGenerator:networkEventRecorder:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_238758850();
  v31 = *(v14 - 8);
  v32 = v14;
  MEMORY[0x28223BE20](v14);
  v30 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23845C998(a1, v7 + 16);
  v16 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v17 = sub_23875BC40();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7 + v16, a2, v17);
  *(v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore) = a3;
  sub_23845C998(a4, v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor);
  *(v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder) = a6;
  sub_23843981C(a5, &v33, &qword_27DF0DD70, &qword_23876E660);
  if (v34)
  {
    sub_238439884(a5, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(a4);
    (*(v18 + 8))(a2, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2384347C0(&v33, &v35);
  }

  else
  {

    sub_238439884(&v33, &qword_27DF0DD70, &qword_23876E660);
    v19 = [objc_opt_self() ephemeralSessionConfiguration];
    v29 = a2;
    v20 = v19;
    v21 = v30;
    sub_2387587F0();
    sub_238758840();
    v27 = a4;
    v22 = sub_23875EA50();
    v28 = a1;
    v23 = v22;

    [v20 set:v23 sourceApplicationBundleIdentifier:?];

    v24 = type metadata accessor for MapsTransactionIconGenerator();
    v25 = swift_allocObject();
    *(v25 + 16) = [objc_opt_self() sessionWithConfiguration_];
    v36 = v24;
    v37 = &protocol witness table for MapsTransactionIconGenerator;

    *&v35 = v25;
    sub_238439884(a5, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(v27);
    (*(v18 + 8))(v29, v17);
    __swift_destroy_boxed_opaque_existential_1(v28);
    (*(v31 + 8))(v21, v32);
  }

  sub_2384347C0(&v35, v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator);
  return v7;
}

uint64_t MapsTransactionClassifier.classifyTransactions(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_23875A610();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_23875BCB0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_238758F50();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238542804, 0, 0);
}

uint64_t sub_238542804()
{
  v1 = *(v0 + 24);
  v2 = sub_23854B5A8(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 24);
    *(v0 + 128) = *(*(v0 + 32) + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore);
    v6 = *(sub_23875A350() - 8);
    v7 = *(v6 + 80);
    *(v0 + 168) = v7;
    v8 = (v7 + 32) & ~v7;
    v9 = *(v6 + 72);
    *(v0 + 144) = v2;
    *(v0 + 152) = 0;
    *(v0 + 136) = v9;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    sub_23875A300();
    sub_238758F10();
    (*(v4 + 8))(v10, v11);
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_2385429F8;
    v13 = *(v0 + 128);
    v14 = *(v0 + 64);

    return sub_238542EB4(v14, v5 + v8, v13);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16(v2);
  }
}

uint64_t sub_2385429F8()
{

  return MEMORY[0x2822009F8](sub_238542AF4, 0, 0);
}

unint64_t sub_238542AF4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v3 = *(*(v0 + 48) + 32);
  v3(*(v0 + 56), *(v0 + 64), *(v0 + 40));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v1;
  result = sub_238547890(v2);
  v7 = *(v1 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v6;
  if (*(*(v0 + 144) + 24) >= v10)
  {
    v34 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = result;
      sub_23854A568(MEMORY[0x277CC7EB0], &qword_27DF0DE88, &qword_23876E878);
      result = v14;
    }
  }

  else
  {
    v12 = *(v0 + 88);
    sub_238548C9C(v10, isUniquelyReferenced_nonNull_native, MEMORY[0x277CC7EB0], &qword_27DF0DE88, &qword_23876E878);
    result = sub_238547890(v12);
    if ((v11 & 1) != (v13 & 1))
    {

      return sub_23875F680();
    }

    v34 = v3;
  }

  v15 = *(v0 + 16);
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  if (v11)
  {
    (*(v20 + 40))(v15[7] + *(v20 + 72) * result, *(v0 + 56), *(v0 + 40));
    (*(v17 + 8))(v16, v18);
    goto LABEL_14;
  }

  v15[(result >> 6) + 8] |= 1 << result;
  v22 = result;
  (*(v17 + 16))(v15[6] + *(v17 + 72) * result, v16, v18);
  v34(v15[7] + *(v20 + 72) * v22, v19, v21);
  result = (*(v17 + 8))(v16, v18);
  v23 = v15[2];
  v9 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v9)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v15[2] = v24;
LABEL_14:
  v25 = *(v0 + 152) + 1;
  if (v25 == *(v0 + 120))
  {

    v26 = *(v0 + 8);

    return v26(v15);
  }

  else
  {
    *(v0 + 144) = v15;
    *(v0 + 152) = v25;
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v29 = *(v0 + 96);
    v30 = *(v0 + 24) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 136) * v25;
    sub_23875A300();
    sub_238758F10();
    (*(v28 + 8))(v27, v29);
    v31 = swift_task_alloc();
    *(v0 + 160) = v31;
    *v31 = v0;
    v31[1] = sub_2385429F8;
    v32 = *(v0 + 128);
    v33 = *(v0 + 64);

    return sub_238542EB4(v33, v30, v32);
  }
}

uint64_t sub_238542EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a2;
  v4[26] = v3;
  v4[24] = a1;
  v7 = sub_23875BCB0();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v8 = sub_238758F50();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v9 = sub_23875A350();
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[36] = v10;
  *v10 = v4;
  v10[1] = sub_238543074;

  return sub_238543840(a2, a3);
}

uint64_t sub_238543074(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_238543174, 0, 0);
}

uint64_t sub_238543174()
{
  v1 = v0;
  receiver = v0[17].receiver;
  super_class = v0[17].super_class;
  v20 = v0[16].super_class;
  v21 = v0[18].super_class;
  v23 = v0[15].super_class;
  v25 = v0[15].receiver;
  v22 = v0[16].receiver;
  v4 = v0[13].receiver;
  v5 = receiver[2];
  v5(super_class);
  sub_23845C998(v4 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor, &v1[1]);
  v6 = sub_238759570();
  swift_allocObject();
  v7 = sub_238759560();
  v8 = *(v4 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder);
  v9 = MEMORY[0x277CC7960];
  v1[5].receiver = v6;
  v1[5].super_class = v9;
  v1[3].super_class = v7;
  v10 = type metadata accessor for BankConnectMerchantLookupRequestSource(0);
  v11 = objc_allocWithZone(v10);
  (v5)(&v11[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_input], super_class, v20);
  *&v11[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_otherBankTransactionLocations] = v21;
  sub_23845C998(&v1[1], &v11[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor]);
  sub_23845C998(&v1[3].super_class, &v11[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider]);
  *&v11[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_networkEventRecorder] = v8;
  v1[11].receiver = v11;
  v1[11].super_class = v10;

  v12 = objc_msgSendSuper2(v1 + 11, sel_init);
  v1[19].receiver = v12;
  __swift_destroy_boxed_opaque_existential_1(&v1[1].receiver);
  (receiver[1])(super_class, v20);
  __swift_destroy_boxed_opaque_existential_1(&v1[3].super_class);
  v13 = v4[5];
  v14 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v13);
  sub_23875A300();
  sub_238758F10();
  (*(v23 + 1))(v22, v25);
  v15 = *(v14 + 8);
  v16 = v12;
  v24 = (v15 + *v15);
  v17 = swift_task_alloc();
  v1[19].super_class = v17;
  *v17 = v1;
  *(v17 + 1) = sub_23854346C;
  v18 = v1[14].super_class;

  return v24(v1 + 6, v18, v16, v13, v14);
}

uint64_t sub_23854346C()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2385435DC, 0, 0);
}

uint64_t sub_2385435DC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  v3 = *(v0 + 128);
  *(v0 + 136) = *(v0 + 96);
  *(v0 + 336) = v3;
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;
  *(v0 + 168) = v3;
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_23854369C;
  v5 = *(v0 + 200);
  v6 = *(v0 + 192);

  return sub_238543B1C(v6, v0 + 136, v5);
}

uint64_t sub_23854369C()
{

  return MEMORY[0x2822009F8](sub_238543798, 0, 0);
}

uint64_t sub_238543798()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238543840(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875C1E0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238543904, 0, 0);
}

uint64_t sub_238543904()
{
  if (sub_23875A2E0())
  {
    v1 = v0[5];
    v2 = v0[3];
    v3 = sub_238758010();
    v4 = swift_task_alloc();
    v4[2] = v3;
    v4[3] = v2;
    v4[4] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEA8, &qword_23876E8C0);
    sub_23875F120();

    v7 = v0[2];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v5 = v0[1];

  return v5(v7);
}

uint64_t sub_238543B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = sub_238758F50();
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  v7 = sub_23875BCB0();
  *(v4 + 64) = v7;
  *(v4 + 72) = *(v7 - 8);
  *(v4 + 80) = swift_task_alloc();
  v8 = sub_23875A350();
  *(v4 + 88) = v8;
  *(v4 + 96) = *(v8 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v9 = sub_23875C1E0();
  *(v4 + 128) = v9;
  *(v4 + 136) = *(v9 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v10 = sub_2387597E0();
  *(v4 + 168) = v10;
  *(v4 + 176) = *(v10 - 8);
  *(v4 + 184) = swift_task_alloc();
  v11 = *(a2 + 16);
  *(v4 + 192) = *a2;
  *(v4 + 208) = v11;
  *(v4 + 224) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_238543D94, 0, 0);
}

uint64_t sub_238543D94(uint64_t a1)
{
  v103 = v1;
  v2 = *(v1 + 192);
  if (v2)
  {
    if (v2 == 1)
    {
      v14 = *(v1 + 120);
      v15 = *(v1 + 88);
      v16 = *(v1 + 96);
      v17 = *(v1 + 24);
      sub_23875C120();
      (*(v16 + 16))(v14, v17, v15);
      v18 = sub_23875C1B0();
      v19 = sub_23875EFE0();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v1 + 160);
      v22 = *(v1 + 128);
      v23 = *(v1 + 136);
      v24 = *(v1 + 120);
      v25 = *(v1 + 88);
      v26 = *(v1 + 96);
      if (v20)
      {
        v98 = *(v1 + 128);
        v28 = *(v1 + 72);
        v27 = *(v1 + 80);
        v93 = v19;
        v87 = *(v1 + 88);
        v30 = *(v1 + 48);
        v29 = *(v1 + 56);
        v78 = *(v1 + 40);
        v81 = *(v1 + 64);
        buf = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v100 = v91;
        *buf = 136315138;
        v95 = v21;
        sub_23875A300();
        sub_238758F10();
        (*(v30 + 8))(v29, v78);
        sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v31 = sub_23875F600();
        v33 = v32;
        (*(v28 + 8))(v27, v81);
        (*(v26 + 8))(v24, v87);
        v34 = sub_2384615AC(v31, v33, &v100);

        *(buf + 4) = v34;
        _os_log_impl(&dword_2383F8000, v18, v93, "Classification request for %s was throttled.", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x23EE64DF0](v91, -1, -1);
        MEMORY[0x23EE64DF0](buf, -1, -1);

        (*(v23 + 8))(v95, v98);
      }

      else
      {

        (*(v26 + 8))(v24, v25);
        (*(v23 + 8))(v21, v22);
      }

      v73 = MEMORY[0x277CC7EA8];
      goto LABEL_18;
    }

    if (v2 == 2)
    {
      v4 = *(v1 + 176);
      v3 = *(v1 + 184);
      v5 = *(v1 + 168);
      v6 = *(v1 + 32);
      v7 = *(v1 + 16);
      v100 = 2;
      v101 = *(v1 + 200);
      v102 = *(v1 + 216);
      sub_238545098(&v100, v3);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE98, &unk_23876E890) + 48);
      (*(v4 + 16))(v7, v3, v5);
      v9 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator + 24);
      v10 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator + 32);
      __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator), v9);
      v97 = (*(v10 + 8) + **(v10 + 8));
      v11 = swift_task_alloc();
      *(v1 + 232) = v11;
      *v11 = v1;
      v11[1] = sub_238544668;
      v12 = *(v1 + 184);

      return v97(v7 + v8, v12, v9, v10);
    }

    v59 = *(v1 + 96);
    v58 = *(v1 + 104);
    v60 = *(v1 + 88);
    v61 = *(v1 + 24);
    sub_23875C120();
    (*(v59 + 16))(v58, v61, v60);
    v39 = sub_23875C1B0();
    v62 = sub_23875EFE0();
    v63 = os_log_type_enabled(v39, v62);
    v44 = *(v1 + 136);
    v42 = *(v1 + 144);
    v43 = *(v1 + 128);
    v47 = *(v1 + 96);
    v45 = *(v1 + 104);
    v46 = *(v1 + 88);
    if (v63)
    {
      v99 = *(v1 + 128);
      v65 = *(v1 + 72);
      v64 = *(v1 + 80);
      v94 = v62;
      v89 = *(v1 + 88);
      v67 = *(v1 + 48);
      v66 = *(v1 + 56);
      v80 = *(v1 + 40);
      v83 = *(v1 + 64);
      log = v39;
      bufb = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v100 = v92;
      *bufb = 136315138;
      v96 = v42;
      sub_23875A300();
      sub_238758F10();
      (*(v67 + 8))(v66, v80);
      sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v68 = sub_23875F600();
      v70 = v69;
      (*(v65 + 8))(v64, v83);
      (*(v47 + 8))(v45, v89);
      v71 = sub_2384615AC(v68, v70, &v100);

      v56 = bufb;
      *(bufb + 4) = v71;
      v57 = "Classification request for %s failed because of unknown result.";
      goto LABEL_13;
    }

LABEL_14:

    (*(v47 + 8))(v45, v46);
    (*(v44 + 8))(v42, v43);
    goto LABEL_15;
  }

  v35 = *(v1 + 112);
  v36 = *(v1 + 88);
  v37 = *(v1 + 96);
  v38 = *(v1 + 24);
  sub_23875C120();
  (*(v37 + 16))(v35, v38, v36);
  v39 = sub_23875C1B0();
  v40 = sub_23875EFE0();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v1 + 152);
  v43 = *(v1 + 128);
  v44 = *(v1 + 136);
  v45 = *(v1 + 112);
  v46 = *(v1 + 88);
  v47 = *(v1 + 96);
  if (!v41)
  {
    goto LABEL_14;
  }

  v99 = *(v1 + 128);
  v49 = *(v1 + 72);
  v48 = *(v1 + 80);
  v94 = v40;
  v88 = *(v1 + 88);
  v51 = *(v1 + 48);
  v50 = *(v1 + 56);
  v79 = *(v1 + 40);
  v82 = *(v1 + 64);
  log = v39;
  bufa = swift_slowAlloc();
  v92 = swift_slowAlloc();
  v100 = v92;
  *bufa = 136315138;
  v96 = v42;
  sub_23875A300();
  sub_238758F10();
  (*(v51 + 8))(v50, v79);
  sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v52 = sub_23875F600();
  v54 = v53;
  (*(v49 + 8))(v48, v82);
  (*(v47 + 8))(v45, v88);
  v55 = sub_2384615AC(v52, v54, &v100);

  v56 = bufa;
  *(bufa + 4) = v55;
  v57 = "Classification request for %s failed.";
LABEL_13:
  v72 = v56;
  _os_log_impl(&dword_2383F8000, log, v94, v57, v56, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v92);
  MEMORY[0x23EE64DF0](v92, -1, -1);
  MEMORY[0x23EE64DF0](v72, -1, -1);

  (*(v44 + 8))(v96, v99);
LABEL_15:
  v73 = MEMORY[0x277CC7E98];
LABEL_18:
  v74 = *(v1 + 16);
  v75 = *v73;
  v76 = sub_23875A610();
  (*(*(v76 - 8) + 104))(v74, v75, v76);

  v77 = *(v1 + 8);

  return v77();
}

uint64_t sub_238544668()
{

  return MEMORY[0x2822009F8](sub_238544764, 0, 0);
}

uint64_t sub_238544764()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[2];
  v2 = *MEMORY[0x277CC7EA0];
  v3 = sub_23875A610();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2385448A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v62 = a2;
  v73[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23875A350();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C1E0();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875BE20();
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v67 = sub_23875BCB0();
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875BC40();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_238758F50();
  v18 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  v24 = [objc_opt_self() currentQueryGenerationToken];
  v73[0] = 0;
  v61 = a1;
  LODWORD(a1) = [a1 setQueryGenerationFromToken:v24 error:v73];

  if (a1)
  {
    v25 = v73[0];
    v26 = v62;
    sub_23875A300();
    sub_238758E80();
    v27 = *(v18 + 8);
    v53 = v23;
    v56 = v8;
    v28 = v66;
    v27();
    sub_23875A300();
    sub_238758F40();
    v55 = v18 + 8;
    v54 = v27;
    (v27)(v20, v28);
    v29 = v69;
    v30 = v67;
    (*(v69 + 56))(v12, 1, 1, v67);
    v31 = v59;
    sub_23875BDF0();
    v32 = sub_23875AB30();
    (*(v60 + 8))(v31, v56);
    sub_238439884(v12, &unk_27DF0B520, &qword_2387681F0);
    v35 = *(v29 + 8);
    v34 = v29 + 8;
    v33 = v35;
    v35(v14, v30);
    (*(v57 + 8))(v17, v58);
    v36 = v68;
    sub_23875C120();
    (*(v71 + 16))(v70, v26, v72);
    swift_bridgeObjectRetain_n();
    v37 = sub_23875C1B0();
    v38 = sub_23875F000();
    if (os_log_type_enabled(v37, v38))
    {
      LODWORD(v62) = v38;
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v73[0] = v61;
      *v39 = 136315394;
      v40 = v53;
      v69 = v34;
      v41 = v70;
      sub_23875A300();
      sub_238758F10();
      (v54)(v40, v66);
      sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = v67;
      v43 = v32;
      v44 = sub_23875F600();
      v46 = v45;
      v33(v14, v42);
      (*(v71 + 8))(v41, v72);
      v47 = sub_2384615AC(v44, v46, v73);

      *(v39 + 4) = v47;
      *(v39 + 12) = 2048;
      if (v43 >> 62)
      {
        v48 = sub_23875F3A0();
      }

      else
      {
        v48 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v62;

      *(v39 + 14) = v48;

      _os_log_impl(&dword_2383F8000, v37, v49, "Classification has failed for %s, we are retrying with attaching\n%ld locations of the closest matched transactions", v39, 0x16u);
      v50 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x23EE64DF0](v50, -1, -1);
      MEMORY[0x23EE64DF0](v39, -1, -1);

      result = (*(v63 + 8))(v68, v64);
      *v65 = v43;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v71 + 8))(v70, v72);
      result = (*(v63 + 8))(v36, v64);
      *v65 = v32;
    }
  }

  else
  {
    v52 = v73[0];
    sub_23875B730();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_238545098@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_238759D50();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBA0, &unk_23876BCE0);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v45 - v6;
  v7 = sub_23875BC40();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEA0, &unk_23876E8A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_238759170();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  MEMORY[0x28223BE20](v18 - 8);
  v47 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  MEMORY[0x28223BE20](v23 - 8);
  v45 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v45 - v26;
  v29 = a1[1];
  v28 = a1[2];
  v30 = a1[3];
  if (v28)
  {
    sub_238545834(v28, v27);
    v31 = sub_238757F40();
    (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
  }

  else
  {
    v32 = sub_238757F40();
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  }

  if (v30)
  {
    sub_238545DEC(v30, v22);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_23875B3A0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v57 = v22;
  v36(v22, v33, 1, v34);
  v37 = sub_238757F40();
  if (!(*(*(v37 - 8) + 48))(v27, 1, v37))
  {
    (*(v35 + 48))(v57, 1, v34);
    sub_238757F30();
  }

  if (v29 < -32768)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v29 >= 0x8000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_238759160();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v11, v12);
    (*(v49 + 16))(v48, v51 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime, v50);
    (*(v13 + 16))(v46, v17, v12);
    v38 = *MEMORY[0x277CC7CB0];
    v39 = *(v53 + 104);
    v53 = v12;
    v39(v52, v38, v54);
    v40 = v55;
    sub_23875A640();
    v41 = sub_23875A660();
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    sub_23843981C(v27, v45, &qword_27DF0A970, &unk_23876E8B0);
    v42 = v57;
    sub_23843981C(v57, v47, &qword_27DF0A968, &unk_2387662B0);
    sub_2387597D0();
    (*(v13 + 8))(v17, v53);
    sub_238439884(v42, &qword_27DF0A968, &unk_2387662B0);
    return sub_238439884(v27, &qword_27DF0A970, &unk_23876E8B0);
  }

LABEL_15:
  sub_238439884(v11, &qword_27DF0DEA0, &unk_23876E8A0);
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_23875F470();

  v59 = 0xD000000000000020;
  v60 = 0x800000023878A2C0;
  v58 = v29;
  v44 = sub_23875F600();
  MEMORY[0x23EE63650](v44);

  MEMORY[0x23EE63650](46, 0xE100000000000000);
  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_238545834(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v57 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v57 - v18;
  v66 = [a1 identifier];
  v63 = [a1 resultProviderIdentifier];
  v20 = [a1 name];
  if (v20)
  {
    v21 = v20;
    v22 = sub_23875EA80();
    v64 = v23;
    v65 = v22;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v24 = [a1 phoneNumber];
  if (v24)
  {
    v25 = v24;
    v26 = sub_23875EA80();
    v61 = v27;
    v62 = v26;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v28 = [a1 url];
  if (v28)
  {
    v29 = v28;
    sub_23875B8B0();

    v30 = sub_23875B940();
    (*(*(v30 - 8) + 56))(v19, 0, 1, v30);
  }

  else
  {
    v31 = sub_23875B940();
    (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
  }

  v32 = [a1 heroImageURL];
  v67 = v19;
  v68 = v6;
  if (v32)
  {
    v33 = v32;
    sub_23875B8B0();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = sub_23875B940();
  v36 = *(*(v35 - 8) + 56);
  v36(v15, v34, 1, v35);
  v37 = [a1 heroImageAttributionName];
  if (v37)
  {
    v38 = v37;
    sub_23875EA80();
    v60 = v39;
  }

  else
  {
    v60 = 0;
  }

  v40 = [a1 category];
  if (v40 < -32768)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v40 >= 0x8000)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v57[2] = v15;
  sub_238757E00();
  v41 = [a1 detailedCategory];
  v57[3] = v9;
  if (v41)
  {
    v42 = v41;
    v43 = sub_23875EA80();
    v58 = v44;
    v59 = v43;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v57[1] = a2;
  v45 = [a1 stylingInfoData];
  if (v45)
  {
    v46 = v45;
    sub_23875B990();
  }

  v47 = [a1 businessChatURL];
  if (v47)
  {
    v48 = v12;
    v49 = v47;
    sub_23875B8B0();

    v50 = 0;
  }

  else
  {
    v50 = 1;
    v48 = v12;
  }

  v51 = 1;
  v36(v48, v50, 1, v35);
  v52 = [a1 lastProcessedDate];
  v53 = v68;
  if (v52)
  {
    v54 = v52;
    sub_23875BBE0();

    v51 = 0;
  }

  v55 = sub_23875BC40();
  (*(*(v55 - 8) + 56))(v53, v51, 1, v55);
  [a1 locationLatitude];
  [a1 locationLongitude];
  v56 = [a1 postalAddress];
  v69 = 0;
  sub_238757F00();
}

void sub_238545DEC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = v61 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v61 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v61 - v19;
  v72 = [a1 identifier];
  v71 = [a1 resultProviderIdentifier];
  v21 = [a1 name];
  if (v21)
  {
    v22 = v21;
    v23 = sub_23875EA80();
    v69 = v24;
    v70 = v23;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v25 = [a1 phoneNumber];
  if (v25)
  {
    v26 = v25;
    v27 = sub_23875EA80();
    v67 = v28;
    v68 = v27;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v29 = [a1 url];
  if (v29)
  {
    v30 = v29;
    sub_23875B8B0();

    v31 = sub_23875B940();
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);
  }

  else
  {
    v32 = sub_23875B940();
    (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
  }

  v33 = [a1 heroImageURL];
  if (v33)
  {
    v34 = v33;
    sub_23875B8B0();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = sub_23875B940();
  v37 = *(*(v36 - 8) + 56);
  v37(v16, v35, 1, v36);
  v38 = [a1 heroImageAttributionName];
  if (v38)
  {
    v39 = v38;
    v40 = sub_23875EA80();
    v65 = v41;
    v66 = v40;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v42 = [a1 category];
  if (v42 < -32768)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v42 >= 0x8000)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v61[3] = a2;
  sub_238757E00();
  v43 = [a1 detailedCategory];
  if (v43)
  {
    v44 = v43;
    v45 = sub_23875EA80();
    v63 = v46;
    v64 = v45;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v61[1] = v16;
  v61[2] = v9;
  v47 = [a1 stylingInfoData];
  if (v47)
  {
    v48 = v47;
    v62 = sub_23875B990();
  }

  else
  {
    v62 = 0;
  }

  v49 = v74;
  v50 = [a1 businessChatURL];
  if (v50)
  {
    v51 = v50;
    sub_23875B8B0();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = 1;
  v37(v49, v52, 1, v36);
  v54 = [a1 lastProcessedDate];
  if (v54)
  {
    v55 = v54;
    sub_23875BBE0();

    v53 = 0;
  }

  v56 = sub_23875BC40();
  v57 = 1;
  (*(*(v56 - 8) + 56))(v6, v53, 1, v56);
  v58 = [a1 logoURL];
  v59 = v73;
  if (v58)
  {
    v60 = v58;
    sub_23875B8B0();

    v57 = 0;
  }

  v37(v59, v57, 1, v36);
  v75 = 0;
  sub_23875B360();
}

uint64_t MapsTransactionClassifier.fetchHeroImageDetails(muid:resultProviderID:entity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_23875C1E0();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = sub_238759000();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = sub_23875B940();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385465A0, 0, 0);
}

uint64_t sub_2385465A0()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = [objc_allocWithZone(MEMORY[0x277CD4E38]) init];
  v0[40] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632F0;
  *(v4 + 56) = MEMORY[0x277D84D38];
  *(v4 + 32) = v1;
  v5 = sub_23875EC60();

  [v3 _setMuids_];

  if ((v2 & 0x100000000) == 0 && v2 >= 1)
  {
    [v3 _setResultProviderID_];
  }

  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[37];
  v9 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  v0[41] = v9;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_238546844;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_238449184(0, &qword_27DF0DD80, 0x277CD4E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  sub_23875ECF0();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238546EC8;
  v0[13] = &block_descriptor_9;
  [v9 startWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238546844()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_238546C44;
  }

  else
  {
    v2 = sub_238546954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238546954()
{
  v1 = *(v0 + 168);
  v2 = [v1 mapItems];
  sub_238449184(0, &qword_27DF12260, 0x277CD4E80);
  v3 = sub_23875EC80();

  if (v3 >> 62)
  {
    result = sub_23875F3A0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE63F70](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 _bestWalletHeroImageForSize_allowSmaller_];
  if (v7)
  {
    v8 = v7;
    sub_23875B8B0();

    v9 = [v6 _walletHeroImageProviderName];
    v25 = v6;
    if (v9)
    {
      v10 = v9;
      sub_23875EA80();
    }

    v23 = *(v0 + 328);
    v24 = *(v0 + 320);
    v11 = *(v0 + 288);
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(v0 + 240);
    v17 = *(v0 + 208);
    (*(v12 + 16))(*(v0 + 280), v11, v13);
    (*(v14 + 16))(v15, v17, v16);
    sub_238758FF0();

    (*(v12 + 8))(v11, v13);
    v18 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v19 = *(v0 + 328);

  v18 = 1;
LABEL_14:
  v20 = *(v0 + 184);
  v21 = sub_238759010();
  (*(*(v21 - 8) + 56))(v20, v18, 1, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_238546C44()
{
  v27 = v0;
  v1 = *(v0 + 336);
  swift_willThrow();
  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    v7 = *(v0 + 224);
    v25 = *(v0 + 232);
    v23 = *(v0 + 320);
    v24 = *(v0 + 216);
    v8 = *(v0 + 192);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_23875F690();
    v13 = sub_2384615AC(v11, v12, &v26);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_2383F8000, v3, v4, "Error fetching HeroImage for MUID %llu: %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);

    (*(v7 + 8))(v25, v24);
  }

  else
  {
    v15 = *(v0 + 328);
    v14 = *(v0 + 336);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 216);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 184);
  v20 = sub_238759010();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);

  v21 = *(v0 + 8);

  return v21();
}

void sub_238546EC8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
    sub_23875ED00();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
    sub_23875ED10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MapsTransactionClassifier.encodedStylingInfo(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238547020;

  return sub_23854C50C(a1);
}

uint64_t sub_238547020(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_238547124(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
    v2 = sub_23875F570();
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
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_23846F7C4(&v22, v24);
        sub_23846F7C4(v24, v25);
        sub_23846F7C4(v25, &v23);
        v16 = sub_23853B46C(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_23846F7C4(&v23, v10);
          v7 = v11;
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

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_23846F7C4(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t MapsTransactionClassifier.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v2 = sub_23875BC40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator));
  return v0;
}

uint64_t MapsTransactionClassifier.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v2 = sub_23875BC40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator));

  return swift_deallocClassInstance();
}

uint64_t sub_2385474F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238547590;

  return MapsTransactionClassifier.classifyTransactions(_:)(a1);
}

uint64_t sub_238547590(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23854768C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2384494A4;

  return MapsTransactionClassifier.fetchHeroImageDetails(muid:resultProviderID:entity:)(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4);
}

uint64_t sub_238547754(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23854CF7C;

  return sub_23854C50C(a1);
}

unint64_t sub_238547800(uint64_t a1)
{
  sub_23875EA80();
  sub_23875F700();
  sub_23875EB30();
  v2 = sub_23875F760();

  return sub_238547FD4(a1, v2);
}

unint64_t sub_238547890(uint64_t a1)
{
  sub_23875BCB0();
  v2 = MEMORY[0x277CC95F0];
  sub_23854CF14(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_23875E950();
  return sub_2385480D8(a1, v3, MEMORY[0x277CC95F0], &qword_27DF0A788, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_238547964(uint64_t a1, uint64_t a2, char a3)
{
  sub_23875F700();
  if (a3)
  {
    v6 = 1;
    v7 = a1;
  }

  else
  {
    MEMORY[0x23EE641F0](0);
    v6 = a1;
    v7 = a2;
  }

  MEMORY[0x23EE641F0](v6);
  MEMORY[0x23EE641F0](v7);
  v8 = sub_23875F760();

  return sub_238547D64(a1, a2, a3 & 1, v8);
}

unint64_t sub_238547A14(uint64_t a1)
{
  v2 = sub_23875F3F0();

  return sub_238547E00(a1, v2);
}

unint64_t sub_238547A58(uint64_t a1)
{
  sub_23875F700();
  type metadata accessor for CFString(0);
  sub_23854CF14(&qword_27DF0DDA0, type metadata accessor for CFString, &unk_23876202C);
  sub_23875C040();
  v2 = sub_23875F760();

  return sub_238547EC8(a1, v2);
}

unint64_t sub_238547B0C(uint64_t a1)
{
  sub_238758A00();
  v2 = MEMORY[0x277CC7180];
  sub_23854CF14(&qword_27DF0DDF8, MEMORY[0x277CC7180], MEMORY[0x277CC7188]);
  v3 = sub_23875E950();
  return sub_2385480D8(a1, v3, MEMORY[0x277CC7180], &qword_27DF0DE00, v2, MEMORY[0x277CC7190]);
}

unint64_t sub_238547BE0(uint64_t a1)
{
  v2 = sub_23875F1A0();

  return sub_238548278(a1, v2);
}

unint64_t sub_238547C24(uint64_t a1)
{
  v1 = a1;
  sub_23875F700();
  sub_23875F720();
  v2 = sub_23875F760();

  return sub_23854834C(v1, v2);
}

unint64_t sub_238547C90(uint64_t a1)
{
  sub_238759300();
  v2 = MEMORY[0x277CC7840];
  sub_23854CF14(&qword_27DF0DE20, MEMORY[0x277CC7840], MEMORY[0x277CC7848]);
  v3 = sub_23875E950();
  return sub_2385480D8(a1, v3, MEMORY[0x277CC7840], &qword_27DF0DE28, v2, MEMORY[0x277CC7858]);
}

unint64_t sub_238547D64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *v9;
      if (*(v9 + 16))
      {
        if ((a3 & 1) != 0 && v10 == a1)
        {
          return result;
        }
      }

      else if ((a3 & 1) == 0)
      {
        v11 = *(v9 + 8);
        if (v10 == a1 && v11 == a2)
        {
          return result;
        }
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_238547E00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23854CDF4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EE63EE0](v9, a1);
      sub_23854CE50(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_238547EC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23854CF14(&qword_27DF0DDA0, type metadata accessor for CFString, &unk_23876202C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23875C030();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_238547FD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23875EA80();
      v8 = v7;
      if (v6 == sub_23875EA80() && v8 == v9)
      {
        break;
      }

      v11 = sub_23875F630();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2385480D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_23854CF14(v24, v25, v26);
      v20 = sub_23875E9E0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_238548278(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23875F1B0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23854834C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_2385483BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD98, &qword_23876E798);
  v37 = v4;
  v6 = sub_23875F560();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      v39 = *v23;
      if ((v37 & 1) == 0)
      {
        v25 = v22;
      }

      sub_23875EA80();
      sub_23875F700();
      sub_23875EB30();
      v26 = sub_23875F760();

      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      v12 = v38;
      *v16 = v39;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v36;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_238548690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
  v34 = v4;
  v6 = sub_23875F560();
  v7 = v6;
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_23846F7C4(v24, v35);
      }

      else
      {
        sub_238453DB4(v24, v35);
      }

      sub_23875F700();
      sub_23875EB30();
      v25 = sub_23875F760();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_23846F7C4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_238548998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDD8, &qword_23876E7E0);
  v6 = sub_23875F560();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v4;
    v38 = v2;
    v39 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *(v22 + 16);
      v24 = *v22;
      v25 = *(v22 + 8);
      v40 = *(v21 + 8 * v20);
      sub_23875F700();
      if (v23)
      {
        v26 = v25;
        v27 = 1;
        v25 = v24;
      }

      else
      {
        MEMORY[0x23EE641F0](0);
        v27 = v24;
        v26 = v25;
      }

      MEMORY[0x23EE641F0](v27);
      MEMORY[0x23EE641F0](v25);
      v28 = sub_23875F760();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v26;
      *(v16 + 16) = v23;
      *(*(v7 + 56) + 8 * v15) = v40;
      ++*(v7 + 16);
      v5 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_238548C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v57 = a3(0);
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v11;
  v12 = sub_23875BCB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = v9;
  v16 = sub_23875F560();
  v17 = v16;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v48 = (v22 + 16);
    v49 = v22;
    v46 = v5;
    v47 = v10 + 16;
    v50 = v15;
    v51 = v10;
    v53 = (v10 + 32);
    v54 = (v22 + 32);
    v25 = v16 + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v55 = *(v22 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      sub_23854CF14(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v36 = sub_23875E950();
      v37 = -1 << *(v17 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v17 + 48) + v55 * v26), v58, v12);
      (*v53)(*(v17 + 56) + v34 * v26, v56, v57);
      ++*(v17 + 16);
      v22 = v49;
      v15 = v50;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v15 + 32);
    v8 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
}

void sub_238549140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_238758A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDF0, &qword_23876E7F8);
  v41 = v4;
  v10 = sub_23875F560();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_23854CF14(&qword_27DF0DDF8, MEMORY[0x277CC7180], MEMORY[0x277CC7188]);
      v28 = sub_23875E950();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
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
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
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
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_238549514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_23875F560();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_23875F700();
      sub_23875EB30();
      v27 = sub_23875F760();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_2385497B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE38, &qword_23876E828);
  v39 = v4;
  v9 = sub_23875F560();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v38 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v39)
      {
        sub_23854CEA4(v25, v7);
      }

      else
      {
        sub_23843981C(v25, v7, &qword_27DF0B328, &qword_238768050);
        v26 = v23;
      }

      v27 = sub_23875F1A0();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_23854CEA4(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_238549AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE58, &qword_23876E848);
  v31 = v4;
  v6 = sub_23875F560();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_23875F700();
      sub_23875F720();
      v22 = sub_23875F760();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_238549D68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_238758680();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE18, &qword_23876E810);
  v39 = v4;
  v8 = sub_23875F560();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
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
    v37 = (v5 + 16);
    v38 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v39)
      {
        (*v16)(v40, v25, v41);
      }

      else
      {
        (*v37)(v40, v25, v41);
        v26 = v23;
      }

      v27 = sub_23875F1A0();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      (*v16)((*(v9 + 56) + v24 * v18), v40, v41);
      ++*(v9 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_23854A0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD98, &qword_23876E798);
  v2 = *v0;
  v3 = sub_23875F550();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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
}

void sub_23854A224()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
  v2 = *v0;
  v3 = sub_23875F550();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_238453DB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23846F7C4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_23854A404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDD8, &qword_23876E7E0);
  v2 = *v0;
  v3 = sub_23875F550();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 24 * v14;
      *v20 = *v17;
      *(v20 + 16) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_23854A568(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - v7;
  v44 = sub_23875BCB0();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_23875F550();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || v12 >= &v13[8 * v14])
    {
      memmove(v12, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }
}

void sub_23854A8C0()
{
  v1 = v0;
  v31 = sub_238758A00();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDF0, &qword_23876E7F8);
  v3 = *v0;
  v4 = sub_23875F550();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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
}

void sub_23854AB44(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23875F550();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_23854ACA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE38, &qword_23876E828);
  v5 = *v0;
  v6 = sub_23875F550();
  v7 = v6;
  if (*(v5 + 16))
  {
    v24 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v25 + 72) * v20;
        sub_23843981C(*(v5 + 56) + v22, v4, &qword_27DF0B328, &qword_238768050);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_23854CEA4(v4, *(v7 + 56) + v22);
        v23 = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_23854AECC()
{
  v1 = v0;
  v30 = sub_238758680();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE18, &qword_23876E810);
  v3 = *v0;
  v4 = sub_23875F550();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v32;
      v22 = *(v32 + 72) * v18;
      v24 = v29;
      v23 = v30;
      (*(v32 + 16))(v29, v19 + v22, v30);
      v25 = v31;
      *(*(v31 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      v26 = v20;
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

        v1 = v27[0];
        v5 = v31;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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
}

unint64_t sub_23854B138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD98, &qword_23876E798);
    v3 = sub_23875F570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_238547800(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854B25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDE0, &qword_23876E7E8);
    v3 = sub_23875F570();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23853B46C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854B370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDD8, &qword_23876E7E0);
    v3 = sub_23875F570();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      result = sub_238547964(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854B470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEE8, &qword_23876E908);
    v3 = sub_23875F570();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_238547800(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854B5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEB0, &qword_23876E8C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE88, &qword_23876E878);
    v7 = sub_23875F570();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v9, v5, &qword_27DF0DEB0, &qword_23876E8C8);
      result = sub_238547890(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23875BCB0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_23875A610();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_23854B7F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE80, &qword_23876E870);
    v3 = sub_23875F570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23853B46C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854B8F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE60, &qword_23876E850);
    v3 = sub_23875F570();
    v4 = a1 + 32;

    while (1)
    {
      sub_23843981C(v4, &v11, &qword_27DF0DE68, &qword_23876E858);
      v5 = v11;
      result = sub_238547A58(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23846F7C4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854BA3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_23875F570();
    v10 = a1 + 32;

    while (1)
    {
      sub_23843981C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_238547800(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_23846F7C4(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
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

unint64_t sub_23854BB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDB8, &qword_23876E7C0);
    v3 = sub_23875F570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = sub_238547800(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854BC50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE08, &qword_23876E800);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDF0, &qword_23876E7F8);
    v7 = sub_23875F570();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v9, v5, &qword_27DF0DE08, &qword_23876E800);
      result = sub_238547B0C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_238758A00();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_23854BE38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE48, &qword_23876E838);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE50, &qword_23876E840);
    v7 = sub_23875F570();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v9, v5, &qword_27DF0DE48, &qword_23876E838);
      result = sub_238547890(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23875BCB0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_238758680();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_23854C058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE40, &qword_23876E830);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE38, &qword_23876E828);
    v7 = sub_23875F570();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v9, v5, &qword_27DF0DE40, &qword_23876E830);
      v11 = *v5;
      result = sub_238547BE0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
      result = sub_23854CEA4(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_23854C234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE30, &unk_23876E818);
    v3 = sub_23875F570();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_238547A58(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23854C324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE10, &qword_23876E808);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE18, &qword_23876E810);
    v7 = sub_23875F570();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v9, v5, &qword_27DF0DE10, &qword_23876E808);
      v11 = *v5;
      result = sub_238547BE0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_238758680();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_23854C50C(uint64_t a1)
{
  *(v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_23854C59C, 0, 0);
}

uint64_t sub_23854C59C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D0ED90]) init];
  if (!v1)
  {
    goto LABEL_21;
  }

  v35 = v1;
  v2 = sub_238759A20();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  while (v8)
  {
LABEL_10:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (v4 << 9) | (8 * v11);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE70, &qword_23876E860);
    inited = swift_initStackObject();
    *(inited + 32) = 7955819;
    *(inited + 16) = xmmword_238763B60;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v13;
    *(inited + 56) = 0x65756C6176;
    *(inited + 64) = 0xE500000000000000;
    *(inited + 72) = v14;
    v16 = sub_23854B7F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE78, &qword_23876E868);
    swift_arrayDestroy();
    sub_238547124(v16);

    v17 = objc_allocWithZone(MEMORY[0x277D0ED88]);
    v18 = sub_23875E910();

    v19 = [v17 initWithDictionary_];

    if (v19)
    {
      [v35 addAttribute_];
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  v20 = sub_238759A30();
  if (v21)
  {
    goto LABEL_15;
  }

  if (v20 < 0)
  {
LABEL_26:
    __break(1u);
  }

  [v35 setCustomIconId_];
LABEL_15:
  v22 = [objc_opt_self() walletMerchantStylingInfoFrom_];
  if (v22)
  {
    v23 = v22;
    v24 = objc_opt_self();
    *(v0 + 96) = 0;
    v25 = [v24 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:v0 + 96];
    v26 = *(v0 + 96);
    if (v25)
    {
      v27 = sub_23875B990();
      v29 = v28;

      v30 = v29;
      v1 = v27;
      goto LABEL_22;
    }

    v31 = v26;
    v32 = sub_23875B730();

    swift_willThrow();
  }

  else
  {
  }

  v1 = 0;
LABEL_21:
  v30 = 0xF000000000000000;
LABEL_22:
  v33 = *(v0 + 8);

  return v33(v1, v30);
}

uint64_t dispatch thunk of MapsTransactionClassifying.classifyTransactions(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238547590;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MapsTransactionClassifying.fetchHeroImageDetails(muid:resultProviderID:entity:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2384494A4;

  return v15(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, a6);
}

uint64_t dispatch thunk of MapsTransactionClassifying.encodedStylingInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238547020;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for MapsTransactionClassifier(uint64_t a1)
{
  result = qword_27DF0DD88;
  if (!qword_27DF0DD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23854CD10(uint64_t a1)
{
  result = sub_23875BC40();
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

uint64_t sub_23854CEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23854CF14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23854CF80(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v27 = a3;
  v37 = sub_238758680();
  MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v27 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v32 = v8 + 32;
  v33 = v8;
  v28 = (v8 + 8);
  v29 = v8 + 16;
  v34 = a2;

  v15 = 0;
  v16 = v30;
  if (v13)
  {
    while (1)
    {
      v35 = v4;
      v17 = v15;
LABEL_9:
      v18 = v33;
      v19 = v37;
      (*(v33 + 16))(v16, *(v34 + 48) + *(v33 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v37);
      v20 = *(v18 + 32);
      v21 = v36;
      v20(v36, v16, v19);
      v22 = v35;
      v23 = v31(v21);
      v4 = v22;
      if (v22)
      {
        (*v28)(v36, v37);

        return;
      }

      if (v23)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v28)(v36, v37);
      v15 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v26 = v27;
    v20(v27, v36, v37);
    v25 = v26;
    v24 = 0;
LABEL_14:
    (*(v33 + 56))(v25, v24, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v24 = 1;
        v25 = v27;
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v35 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23854D240@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

double sub_23854D414()
{
  swift_getKeyPath(byte_23876EA28);
  swift_getKeyPath("x\a{E");
  sub_23875C2D0();

  return result;
}

uint64_t sub_23854D48C()
{
  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23854D500()
{
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23854D574()
{
  v60 = sub_23875A9F0();
  v1 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v41 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A790, &qword_238765D10);
  MEMORY[0x28223BE20](v54);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v39 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v59 = sub_238758680();
  v13 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v61 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts);
  v53 = *(v17 + 16);
  if (!v53)
  {
    return 0;
  }

  v39 = &v39 - v16;
  v44 = v7;
  result = sub_23875ED50();
  v19 = 0;
  v48 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v49 = result;
  v46 = (v1 + 56);
  v47 = v13 + 16;
  v58 = (v1 + 48);
  v40 = (v1 + 32);
  v43 = (v1 + 8);
  v50 = (v13 + 8);
  v51 = v17;
  v20 = &qword_27DF0D390;
  v21 = v45;
  v56 = v12;
  v52 = v13;
  while (v19 < *(v17 + 16))
  {
    (*(v13 + 16))(v61, v48 + *(v13 + 72) * v19, v59);
    v57 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_238758530();
    v23 = v60;
    (*v46)(v12, 0, 1, v60);
    swift_getKeyPath(byte_23876EA28);
    swift_getKeyPath("x\a{E");
    sub_23875C2D0();

    v24 = *(v54 + 48);
    v25 = v20;
    sub_23843981C(v12, v4, v20, &unk_238763350);
    sub_23843981C(v21, &v4[v24], v20, &unk_238763350);
    v26 = *v58;
    if ((*v58)(v4, 1, v23) == 1)
    {
      sub_238439884(v21, v20, &unk_238763350);
      sub_238439884(v12, v20, &unk_238763350);
      v22 = v26(&v4[v24], 1, v60);
      v17 = v51;
      if (v22 == 1)
      {
        sub_238439884(v4, &qword_27DF0D390, &unk_238763350);

LABEL_16:
        v35 = v52 + 32;
        v36 = v39;
        v37 = v59;
        (*(v52 + 32))(v39, v61, v59);
        v38 = sub_2387585B0();
        (*(v35 - 24))(v36, v37);
        return v38;
      }

      goto LABEL_4;
    }

    v27 = v44;
    sub_23843981C(v4, v44, v20, &unk_238763350);
    if (v26(&v4[v24], 1, v60) == 1)
    {
      v28 = v45;
      sub_238439884(v45, v20, &unk_238763350);
      sub_238439884(v56, v20, &unk_238763350);
      v29 = v27;
      v21 = v28;
      (*v43)(v29, v60);
      v17 = v51;
LABEL_4:
      sub_238439884(v4, &qword_27DF0A790, &qword_238765D10);

      goto LABEL_5;
    }

    v30 = v41;
    v31 = v60;
    (*v40)(v41, &v4[v24], v60);
    sub_238553318(&qword_27DF0A798, MEMORY[0x277CC8058], MEMORY[0x277CC8070]);
    v42 = sub_23875E9E0();
    v32 = *v43;
    (*v43)(v30, v31);
    v33 = v45;
    sub_238439884(v45, v25, &unk_238763350);
    sub_238439884(v56, v25, &unk_238763350);
    v34 = v27;
    v21 = v33;
    v32(v34, v31);
    sub_238439884(v4, v25, &unk_238763350);

    v17 = v51;
    v20 = v25;
    if (v42)
    {
      goto LABEL_16;
    }

LABEL_5:
    ++v19;
    result = (*v50)(v61, v59);
    v13 = v52;
    v12 = v56;
    if (v53 == v19)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23854DC58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v60 - v2;
  v4 = sub_238758680();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v12 = sub_23875A9F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v71 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v70 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v72 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v69 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  swift_getKeyPath(byte_23876EA28, v24);
  swift_getKeyPath("x\a{E");
  sub_23875C2D0();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_238439884(v11, &qword_27DF0D390, &unk_238763350);
  }

  v62 = v21;
  v63 = v3;
  v67 = v12;
  v68 = v13;
  v28 = *(v13 + 32);
  v66 = v26;
  v64 = v13 + 32;
  v61 = v28;
  v28(v26, v11, v12);
  v65 = v0;
  v78 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts);
  v77 = *(v78 + 16);
  if (!v77)
  {
    return (*(v68 + 8))(v66, v67);
  }

  result = sub_23875ED50();
  v29 = 0;
  v30 = *(v65 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);
  v75 = v78 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  v76 = v30;
  v74 = v79 + 16;
  v31 = (v79 + 8);
  while (1)
  {
    if (v29 >= *(v78 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v79 + 16))(v6, v75 + *(v79 + 72) * v29, v80);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v32 = sub_238758570();
    v34 = v33;
    v35 = [v76 primaryAccountIdentifier];
    v36 = sub_23875EA80();
    v38 = v37;

    if (!v34)
    {

      goto LABEL_6;
    }

    if (v32 == v36 && v34 == v38)
    {
      break;
    }

    v39 = sub_23875F630();

    if (v39)
    {
      goto LABEL_17;
    }

LABEL_6:
    ++v29;
    result = (*v31)(v6, v80);
    if (v77 == v29)
    {
      return (*(v68 + 8))(v66, v67);
    }
  }

LABEL_17:
  v40 = v80;
  v41 = v79 + 32;
  v42 = v73;
  (*(v79 + 32))(v73, v6, v80);
  v43 = v72;
  sub_238758530();
  (*(v41 - 24))(v42, v40);
  v44 = v62;
  v45 = v43;
  v46 = v67;
  v47 = v61;
  v61(v62, v45, v67);
  sub_238553318(&qword_27DF0A798, MEMORY[0x277CC8058], MEMORY[0x277CC8070]);
  v48 = v66;
  if (sub_23875E9E0())
  {
    (*(v65 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion))(1);
    v49 = *(v68 + 8);
    v49(v44, v46);
    return (v49)(v48, v46);
  }

  else
  {
    v50 = sub_23875ED80();
    (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
    v51 = v68;
    v52 = *(v68 + 16);
    v52(v70, v44, v46);
    v52(v71, v48, v46);
    v53 = v65;

    v54 = sub_23875ED40();
    v55 = *(v51 + 80);
    v56 = (v55 + 40) & ~v55;
    v57 = (v69 + v55 + v56) & ~v55;
    v58 = swift_allocObject();
    *(v58 + 2) = v54;
    *(v58 + 3) = MEMORY[0x277D85700];
    *(v58 + 4) = v53;
    v47(&v58[v56], v70, v46);
    v47(&v58[v57], v71, v46);
    sub_2386C3BA4(0, 0, v63, &unk_23876EA78, v58);

    v59 = *(v51 + 8);
    v59(v44, v46);
    return (v59)(v48, v46);
  }
}

uint64_t sub_23854E3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_23875ED50();
  v6[3] = sub_23875ED40();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_2384E80A8;

  return sub_23854E4C0(a5, a6);
}

uint64_t sub_23854E4C0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875C1E0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_23875A9F0();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_238758680();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v3[16] = swift_task_alloc();
  v7 = sub_23875AAB0();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_23875ED50();
  v3[21] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v3[22] = v9;
  v3[23] = v8;

  return MEMORY[0x2822009F8](sub_23854E71C, v9, v8);
}

uint64_t sub_23854E71C()
{
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  sub_23875C2D0();

  if (*(v0 + 256))
  {

    sub_23875C120();
    v1 = sub_23875C1B0();
    v2 = sub_23875EFE0();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2383F8000, v1, v2, "Inconsistent state! The pass is being relinked already!", v7, 2u);
      MEMORY[0x23EE64DF0](v7, -1, -1);
    }

    (*(v6 + 8))(v4, v5);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 40);
    swift_getKeyPath("\b\b{E");
    swift_getKeyPath(byte_23876E9C0);
    *(v0 + 257) = 1;

    sub_23875C2E0();
    *(v0 + 192) = *(v10 + 16);
    v11 = swift_task_alloc();
    *(v0 + 200) = v11;
    *v11 = v0;
    v11[1] = sub_23854E980;
    v12 = *(v0 + 24);

    return MEMORY[0x282117DB8](v12);
  }
}

uint64_t sub_23854E980()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];

    return MEMORY[0x2822009F8](sub_23854F3B0, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[27] = v5;
    *v5 = v2;
    v5[1] = sub_23854EAF4;
    v6 = v2[4];

    return MEMORY[0x282117DB8](v6);
  }
}

uint64_t sub_23854EAF4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_23854F694;
  }

  else
  {
    v5 = sub_23854EC30;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23854EC30()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[4];
  v5 = v0[5];
  v6 = [*(v5 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass) primaryAccountIdentifier];
  v7 = sub_23875EA80();
  v9 = v8;

  v0[29] = v9;
  (*(v2 + 16))(v1, v4, v3);
  (*(v2 + 56))(v1, 0, 1, v3);
  v10 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_23854ED88;
  v12 = v0[20];
  v13 = v0[16];

  return MEMORY[0x282117DA8](v12, v7, v9, v13, v5 + v10, 0, 0);
}

uint64_t sub_23854ED88()
{
  v2 = *v1;
  (*v1)[31] = v0;

  sub_238439884(v2[16], &qword_27DF0D390, &unk_238763350);

  v3 = v2[23];
  v4 = v2[22];
  if (v0)
  {
    v5 = sub_23854F978;
  }

  else
  {
    v5 = sub_23854EF08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23854EF08()
{
  v47 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);

  (*(v3 + 16))(v2, v1, v4);
  v5 = (*(v3 + 88))(v2, v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  if (v5 != *MEMORY[0x277CC81A0])
  {
    v20 = (*(v6 + 8))(*(v0 + 152), v8);
    goto LABEL_8;
  }

  (*(v6 + 96))(*(v0 + 152), v8);
  if (*(*v7 + 16) != 1)
  {

LABEL_8:
    v23 = *(v0 + 160);
    v24 = *(v0 + 136);
    v25 = *(v0 + 144);
    sub_238553038(v20, v21, v22);
    v26 = swift_allocError();
    swift_willThrow();
    (*(v25 + 8))(v23, v24);
    sub_23875C120();

    v27 = v26;
    v28 = sub_23875C1B0();
    v29 = sub_23875EFE0();

    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 56);
    v31 = *(v0 + 64);
    v33 = *(v0 + 48);
    if (v30)
    {
      v45 = *(v0 + 64);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = v36;
      *v34 = 136315394;
      v37 = sub_238757B40();
      v44 = v33;
      v39 = sub_2384615AC(v37, v38, &v46);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      v40 = v26;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v41;
      *v35 = v41;
      _os_log_impl(&dword_2383F8000, v28, v29, "Failed to disconnect an account for %s: %@", v34, 0x16u);
      sub_238439884(v35, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x23EE64DF0](v36, -1, -1);
      MEMORY[0x23EE64DF0](v34, -1, -1);

      (*(v32 + 8))(v45, v44);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    swift_getKeyPath(byte_23876E9E0);
    swift_getKeyPath(byte_23876EA08);
    *(v0 + 16) = v26;

    sub_23875C2E0();
    goto LABEL_12;
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 32);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *v7 + ((*(*(v0 + 112) + 80) + 32) & ~*(*(v0 + 112) + 80)), *(v0 + 104));

  sub_238758530();
  v13 = MEMORY[0x23EE5F4A0](v9, v12);
  (*(v11 + 8))(v9, v10);
  if ((v13 & 1) == 0)
  {
    v20 = (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    goto LABEL_8;
  }

  v14 = *(v0 + 160);
  v15 = *(v0 + 136);
  v16 = *(v0 + 144);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 104);
  (*(*(v0 + 40) + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion))(1);
  (*(v18 + 8))(v17, v19);
  (*(v16 + 8))(v14, v15);
LABEL_12:
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  *(v0 + 258) = 0;

  sub_23875C2E0();

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_23854F3B0()
{
  v22 = v0;

  v1 = *(v0 + 208);
  sub_23875C120();

  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  if (v5)
  {
    v20 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_238757B40();
    v19 = v8;
    v14 = sub_2384615AC(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to disconnect an account for %s: %@", v9, 0x16u);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);

    (*(v7 + 8))(v20, v19);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);
  *(v0 + 16) = v1;

  sub_23875C2E0();
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  *(v0 + 258) = 0;

  sub_23875C2E0();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23854F694()
{
  v22 = v0;

  v1 = *(v0 + 224);
  sub_23875C120();

  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  if (v5)
  {
    v20 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_238757B40();
    v19 = v8;
    v14 = sub_2384615AC(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to disconnect an account for %s: %@", v9, 0x16u);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);

    (*(v7 + 8))(v20, v19);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);
  *(v0 + 16) = v1;

  sub_23875C2E0();
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  *(v0 + 258) = 0;

  sub_23875C2E0();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23854F978()
{
  v22 = v0;

  v1 = *(v0 + 248);
  sub_23875C120();

  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  if (v5)
  {
    v20 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_238757B40();
    v19 = v8;
    v14 = sub_2384615AC(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to disconnect an account for %s: %@", v9, 0x16u);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);

    (*(v7 + 8))(v20, v19);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);
  *(v0 + 16) = v1;

  sub_23875C2E0();
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  *(v0 + 258) = 0;

  sub_23875C2E0();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23854FC5C()
{

  v1 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v2 = sub_238757B60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_previousConsentUUID;
  v4 = sub_23875BCB0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__selectedAccountFQAI;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__disconnectAccountError;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA18, &unk_23876EA80);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__isLoading;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_23854FE1C()
{
  sub_23854FC5C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BankConnectManageConnectionViewModel(uint64_t a1)
{
  result = qword_27DF0DF10;
  if (!qword_27DF0DF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23854FEC8(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_23875BCB0();
    if (v2 <= 0x3F)
    {
      sub_2385500AC(319, &qword_27DF09460, &qword_27DF0D390, &unk_238763350);
      if (v3 <= 0x3F)
      {
        sub_2385500AC(319, &qword_27DF0DF20, &qword_27DF0CA20, &qword_23876B820);
        if (v4 <= 0x3F)
        {
          sub_238461990();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_2385500AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875C2F0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_238550100@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

double sub_238550140@<D0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF38, &qword_23876EC50);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v30 - v3;
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF40, &qword_23876EC58);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DF48, &qword_23876EC60);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C688, &qword_23876AE20);
  v7 = sub_23843A3E8(&qword_27DF0DF50, &qword_27DF0DF48, &qword_23876EC60, MEMORY[0x277CE1198]);
  v8 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(255);
  v9 = sub_238553318(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_2387821C8);
  v43 = v8;
  v44 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v5;
  v44 = v6;
  v45 = v7;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v4;
  sub_23875C790();
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  sub_23875C490();
  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);
  sub_23875C2D0();

  v11 = v43;
  sub_23875C490();
  sub_23854D574();
  v13 = v12;

  sub_23875C490();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v14 = qword_2814F1B90;
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  v19 = sub_23875EA80();
  v21 = v20;
  v34 = v20;

  v41 = v19;
  v42 = v21;
  v40 = v11 != 0;
  v22 = sub_23875E330();
  v33 = v30;
  v31 = v45;
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v32 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v30[1] = v13;
  v24 = sub_23843A3E8(&qword_27DF0DF60, &qword_27DF0DF38, &qword_23876EC50, MEMORY[0x277CDD978]);
  sub_2384397A8(v24, v25, v26);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  v27 = v38;
  v28 = v36;
  sub_23875DEC0();

  (*(v37 + 8))(v28, v27);

  return result;
}

double sub_238550710@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v11[2] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF48, &qword_23876EC60);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - v3;
  sub_23875ED50();
  v11[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v4 = sub_23875D020();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF68, &unk_23876EC68);
  sub_238550A14(a1, &v4[*(v5 + 44)]);
  v16 = *(a1 + 24);
  v13[0] = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v14 = *a1;
  v15 = *(a1 + 16);
  v6 = swift_allocObject();
  v7 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 4);
  sub_23843981C(&v14, v13, &qword_27DF0DF70, &qword_23876EC78);
  sub_23843981C(&v16, v13, &qword_27DF0A118, &unk_2387655C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C688, &qword_23876AE20);
  sub_23843A3E8(&qword_27DF0DF50, &qword_27DF0DF48, &qword_23876EC60, MEMORY[0x277CE1198]);
  v8 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(255);
  v9 = sub_238553318(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_2387821C8);
  *&v13[0] = v8;
  *(&v13[0] + 1) = v9;
  swift_getOpaqueTypeConformance2();
  sub_23875DED0();

  sub_238439884(v4, &qword_27DF0DF48, &qword_23876EC60);

  return result;
}

double sub_238550A14@<D0>(char *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF78, &qword_23876EC80);
  MEMORY[0x28223BE20](v33);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF80, &qword_23876EC88);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875D760();
  MEMORY[0x28223BE20](v11);
  *(&v31 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF88, &qword_23876EC90);
  v12 = MEMORY[0x277CE1198];
  sub_23843A3E8(&qword_27DF0DF90, &qword_27DF0DF88, &qword_23876EC90, MEMORY[0x277CE1198]);
  v31 = v10;
  v13 = sub_23875C410();
  MEMORY[0x28223BE20](v13);
  *(&v31 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF98, &qword_23876EC98);
  sub_23843A3E8(&qword_27DF0DFA0, &qword_27DF0DF98, &qword_23876EC98, v12);
  v14 = v6;
  sub_23875D1D0();
  LOBYTE(v12) = sub_23875D770();
  sub_23875C3D0();
  v15 = v34;
  v16 = &v6[*(v33 + 36)];
  *v16 = v12;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = v31;
  v22 = v32;
  v23 = *(v32 + 16);
  v24 = v36;
  v23(v36, v31, v15);
  v25 = v38;
  sub_23843981C(v14, v38, &qword_27DF0DF78, &qword_23876EC80);
  v26 = v37;
  v23(v37, v24, v15);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFA8, &qword_23876ECA0);
  v28 = &v26[*(v27 + 48)];
  *v28 = 0;
  v28[8] = 1;
  sub_23843981C(v25, &v26[*(v27 + 64)], &qword_27DF0DF78, &qword_23876EC80);
  sub_238439884(v14, &qword_27DF0DF78, &qword_23876EC80);
  v29 = *(v22 + 8);
  v29(v21, v15);
  sub_238439884(v25, &qword_27DF0DF78, &qword_23876EC80);
  v29(v24, v15);

  return result;
}

double sub_238550E6C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFC8, &qword_23876ECF0);
  sub_238550F3C(a1, a2 + *(v4 + 44));

  return result;
}

void sub_238550F3C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFD0, &qword_23876ECF8);
  MEMORY[0x28223BE20](v54);
  v58 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC0, &unk_23876ED00);
  MEMORY[0x28223BE20](v53);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v51 - v9);
  sub_23875ED50();
  v55 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v52 = v17;

  v18 = a1;
  v19 = sub_2385534CC(*a1, a1[1], *(a1 + 16));
  v21 = v20;
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  v22 = sub_23875C490();
  v23 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v24 = *(type metadata accessor for BankConnectConnectionHeaderView(0) + 24);
  v25 = sub_238757B60();
  (*(*(v25 - 8) + 16))(v10 + v24, v22 + v23, v25);

  v26 = v52;
  *v10 = v16;
  v10[1] = v26;
  v10[2] = v19;
  v10[3] = v21;
  LOBYTE(v22) = sub_23875D7A0();
  sub_23875C3D0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC8, &qword_23876B8F0) + 36);
  *v35 = v22;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v22) = sub_23875D770();
  sub_23875C3D0();
  v36 = v10 + *(v53 + 36);
  *v36 = v22;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  *v6 = sub_23875D030();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFD8, &qword_23876ED10);
  sub_238551924(v18, &v6[*(v41 + 44)]);
  LOBYTE(v22) = sub_23875D770();
  sub_23875C3D0();
  v42 = &v6[*(v54 + 36)];
  *v42 = v22;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v56;
  sub_23843981C(v10, v56, &qword_27DF0CAC0, &unk_23876ED00);
  v48 = v58;
  sub_23843981C(v6, v58, &qword_27DF0DFD0, &qword_23876ECF8);
  v49 = v57;
  sub_23843981C(v47, v57, &qword_27DF0CAC0, &unk_23876ED00);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFE0, &qword_23876ED18);
  sub_23843981C(v48, v49 + *(v50 + 48), &qword_27DF0DFD0, &qword_23876ECF8);
  sub_238439884(v6, &qword_27DF0DFD0, &qword_23876ECF8);
  sub_238439884(v10, &qword_27DF0CAC0, &unk_23876ED00);
  sub_238439884(v48, &qword_27DF0DFD0, &qword_23876ECF8);
  sub_238439884(v47, &qword_27DF0CAC0, &unk_23876ED00);
}

double sub_23855145C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v25 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  v23 = v7;
  v24 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);

  v8 = sub_23875C490();
  v9 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v10 = v3;
  v11 = *(v3 + 20);
  v12 = sub_238757B60();
  (*(*(v12 - 8) + 16))(&v5[v11], v8 + v9, v12);

  v13 = v6;
  v14 = v23;
  v15 = sub_23875C490();
  v16 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_previousConsentUUID;
  v17 = *(v10 + 24);
  v18 = sub_23875BCB0();
  (*(*(v18 - 8) + 16))(&v5[v17], v15 + v16, v18);

  v28 = *(a1 + 24);
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *v5 = v24;
  v21 = &v5[*(v10 + 28)];
  *v21 = sub_238553388;
  v21[1] = v19;
  sub_2384D63F0(v13, v14);
  sub_23843981C(&v28, v27, &qword_27DF0A118, &unk_2387655C0);
  sub_238553318(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView, &unk_2387821C8);
  sub_23875DE20();
  sub_238553AE0(v5, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);

  return result;
}

uint64_t sub_2385517AC(char a1, uint64_t *a2)
{
  if (a1)
  {
    type metadata accessor for BankConnectManageConnectionViewModel(0);
    sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
    v2 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion);

    v2(1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2385518B4(uint64_t a1)
{
  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);

  return sub_23875C2E0();
}

void sub_238551924(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = a1;
  v54 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  MEMORY[0x28223BE20](v54);
  v55 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v48[-v5];
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v63 = v12;
  v64 = v14;
  sub_2384397A8(v15, v16, v17);
  v18 = sub_23875DAA0();
  v20 = v19;
  LOBYTE(v14) = v21;
  sub_23875D890();
  v22 = sub_23875D9E0();
  v24 = v23;
  v26 = v25;
  sub_2384397FC(v18, v20, v14 & 1);

  LODWORD(v63) = sub_23875D440();
  v51 = sub_23875DA20();
  v50 = v27;
  LOBYTE(v18) = v28;
  v52 = v29;
  sub_2384397FC(v22, v24, v26 & 1);

  v49 = sub_23875D770();
  sub_23875C3D0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LOBYTE(v10) = v18 & 1;
  LOBYTE(v63) = v18 & 1;
  LOBYTE(v59) = 0;
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  v38 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts);

  sub_23875C4A0();
  swift_getKeyPath(byte_23876EA28);
  v39 = v54;
  sub_23875C7C0();

  *v6 = swift_getKeyPath(byte_23876ED20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v39 + 20)) = v38;
  v40 = v55;
  sub_238553A7C(v6, v55);
  v41 = v51;
  *&v59 = v51;
  v42 = v50;
  *(&v59 + 1) = v50;
  LOBYTE(v60) = v10;
  *(&v60 + 1) = *v58;
  DWORD1(v60) = *&v58[3];
  v43 = v52;
  *(&v60 + 1) = v52;
  LOBYTE(v14) = v49;
  LOBYTE(v61) = v49;
  *(&v61 + 1) = *v57;
  DWORD1(v61) = *&v57[3];
  *(&v61 + 1) = v31;
  *v62 = v33;
  *&v62[8] = v35;
  *&v62[16] = v37;
  v62[24] = 0;
  v44 = v59;
  v45 = v60;
  *(a2 + 57) = *&v62[9];
  v46 = *v62;
  a2[2] = v61;
  a2[3] = v46;
  *a2 = v44;
  a2[1] = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFE8, &qword_23876ED58);
  sub_238553A7C(v40, a2 + *(v47 + 48));
  sub_23843981C(&v59, &v63, &qword_27DF0BAE8, &unk_23876A630);
  sub_238553AE0(v6, type metadata accessor for BankConnectAccountConnectionPickerView);
  sub_238553AE0(v40, type metadata accessor for BankConnectAccountConnectionPickerView);
  v63 = v41;
  v64 = v42;
  v65 = v10;
  *v66 = *v58;
  *&v66[3] = *&v58[3];
  v67 = v43;
  v68 = v14;
  *v69 = *v57;
  *&v69[3] = *&v57[3];
  v70 = v31;
  v71 = v33;
  v72 = v35;
  v73 = v37;
  v74 = 0;
  sub_238439884(&v63, &qword_27DF0BAE8, &unk_23876A630);
}

double sub_238551EF8()
{
  swift_getKeyPath(byte_23876EA28);
  swift_getKeyPath("x\a{E");
  sub_23875C2D0();

  return result;
}

uint64_t sub_238551F74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_23843981C(a1, &v10 - v7, &qword_27DF0D390, &unk_238763350);
  swift_getKeyPath(byte_23876EA28);
  swift_getKeyPath("x\a{E");
  sub_23843981C(v8, v5, &qword_27DF0D390, &unk_238763350);

  sub_23875C2E0();
  return sub_238439884(v8, &qword_27DF0D390, &unk_238763350);
}

double sub_2385520A4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB0, &qword_23876ECA8);
  sub_238552178(a1, a2 + *(v4 + 44));

  return result;
}

double sub_238552178@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB8, &qword_23876ECB0);
  MEMORY[0x28223BE20](v29[0]);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (v29 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (v29 - v11);
  sub_23875ED50();
  v29[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385525AC(v12);
  v13 = *a1;
  v14 = a1[1];
  v15 = sub_238553720(*a1, v14, *(a1 + 16));
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  sub_23875CFC0();
  v33 = *(a1 + 3);
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = a1[4];
  *v6 = v15;
  v6[1] = v17;
  *(v6 + *(v18 + 40)) = 0;
  v21 = (v6 + *(v18 + 44));
  *v21 = sub_2385539D8;
  v21[1] = v19;
  sub_2384D63F0(v13, v14);
  sub_23843981C(&v33, v32, &qword_27DF0A118, &unk_2387655C0);
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  sub_23875C490();
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  sub_23875C2D0();

  LOBYTE(v13) = v32[0];
  KeyPath = swift_getKeyPath(byte_23876ECB8);
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  v24 = (v6 + *(v29[0] + 36));
  *v24 = KeyPath;
  v24[1] = sub_238477BAC;
  v24[2] = v23;
  sub_23843981C(v12, v9, &qword_27DF0AAD8, &qword_23876B8C0);
  v25 = v30;
  sub_23843981C(v6, v30, &qword_27DF0DFB8, &qword_23876ECB0);
  v26 = v31;
  sub_23843981C(v9, v31, &qword_27DF0AAD8, &qword_23876B8C0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFC0, &qword_23876ECE8);
  sub_23843981C(v25, v26 + *(v27 + 48), &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v6, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v12, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v25, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v9, &qword_27DF0AAD8, &qword_23876B8C0);

  return result;
}

uint64_t sub_2385525AC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  v10 = v9;

  v11 = *v1;
  v12 = *(v1 + 8);
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  sub_23875C490();
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  sub_23875C2D0();

  v13 = v20;
  v20 = *(v1 + 24);
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v1 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_2384D63F0(v11, v12);
  sub_23843981C(&v20, &v19, &qword_27DF0A118, &unk_2387655C0);
  result = sub_23875D610();
  *a1 = v8;
  a1[1] = v10;
  *(a1 + *(v16 + 40)) = v13;
  v18 = (a1 + *(v16 + 44));
  *v18 = sub_238553A74;
  v18[1] = v14;
  return result;
}

double sub_238552824(uint64_t *a1)
{
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  sub_23875C490();
  sub_23854DC58();

  return result;
}

double sub_238552900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v20[0] = v12;
  v20[1] = v14;
  sub_23875C3B0();
  v15 = sub_23875C3C0();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_2384397A8(v16, v17, v18);

  sub_23875E220();

  return result;
}

double sub_238552B68(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);

  return result;
}

void sub_238552C18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_238448C58(v6, v7, v8);
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v9 = qword_2814F0880;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  sub_23875EA80();
  sub_23875EAA0();

  sub_2384397A8(v15, v16, v17);
  v18 = sub_23875DAA0();
  v20 = v19;
  LOBYTE(v11) = v21;
  v23 = v22;

  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v23;
}

void sub_238552E48(void *a2@<X8>)
{
  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_238552EC8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_23876E9E0);
  swift_getKeyPath(byte_23876EA08);

  v3 = v2;
  return sub_23875C2E0();
}

void sub_238552F44(_BYTE *a2@<X8>)
{
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_238552FC4(char *a1, uint64_t *a2)
{
  swift_getKeyPath("\b\b{E");
  swift_getKeyPath(byte_23876E9C0);

  return sub_23875C2E0();
}

unint64_t sub_238553038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DF28;
  if (!qword_27DF0DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DF28);
  }

  return result;
}

uint64_t sub_23855308C(uint64_t a1)
{
  v4 = *(sub_23875A9F0() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2384494A4;

  return sub_23854E3FC(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

unint64_t sub_2385531CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0DF30;
  if (!qword_27DF0DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DF30);
  }

  return result;
}

uint64_t sub_23855322C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_238553288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_238553318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2385533A0(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  v3 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);

  v4 = [v3 primaryAccountNumberSuffix];

  if (!v4)
  {
    sub_23875EA80();
    v4 = sub_23875EA50();
  }

  v5 = PKMaskedPaymentPAN();

  if (!v5)
  {
    return 0;
  }

  v6 = sub_23875EA80();

  return v6;
}

uint64_t sub_2385534CC(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238763B60;
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  v12 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);

  v13 = [v12 localizedDescription];

  v14 = sub_23875EA80();
  v16 = v15;

  v17 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v21 = sub_238448C58(v18, v19, v20);
  *(v11 + 64) = v21;
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v22 = sub_2385533A0(a1, a2, a3 & 1);
  *(v11 + 96) = v17;
  *(v11 + 104) = v21;
  *(v11 + 72) = v22;
  *(v11 + 80) = v23;
  v24 = sub_23875EAB0();

  return v24;
}

uint64_t sub_238553720(uint64_t a1, uint64_t a2, char a3)
{
  v3 = sub_238757B60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2387632F0;
  type metadata accessor for BankConnectManageConnectionViewModel(0);
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel, &unk_23876E960);
  v8 = sub_23875C490();
  (*(v4 + 16))(v6, v8 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution, v3);

  v9 = sub_238757B50();
  v11 = v10;
  v12 = (*(v4 + 8))(v6, v3);
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_238448C58(v12, v13, v14);
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F1B90;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

  sub_23875EA80();
  v20 = sub_23875EAA0();

  return v20;
}

uint64_t objectdestroy_49Tm()
{
  sub_2383FC164(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238553A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238553AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238553BA8(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238553C3C(uint64_t a1)
{
  sub_23875B940();
  if (v1 <= 0x3F)
  {
    sub_238553DB4(319, &qword_2814F08C0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_238556DD4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_238556DD4(319, &qword_2814F1158, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_238553DB4(319, &qword_27DF0E010, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_238553DB4(319, &qword_27DF0E018, MEMORY[0x277D83B88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_238553DB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_238553E1C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v5 = sub_23875BC40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v16 = v15[6];
  v17 = sub_23875B940();
  v46 = *(*(v17 - 8) + 56);
  v47 = v16;
  v46(a3 + v16, 1, 1, v17);
  v18 = v15[7];
  v53 = v6;
  v54 = v5;
  v48 = *(v6 + 56);
  v49 = v18;
  v48(a3 + v18, 1, 1, v5);
  v19 = [a1 returnPolicyURL];
  sub_23875B8B0();

  v20 = [a1 returnPolicyDescription];
  if (v20)
  {
    v21 = v20;
    v22 = sub_23875EA80();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = (a3 + v15[5]);
  *v25 = v22;
  v25[1] = v24;
  v26 = [a1 returnManagementURL];
  v27 = v54;
  if (v26)
  {
    v28 = v26;
    sub_23875B8B0();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = 1;
  v46(v14, v29, 1, v17);
  sub_2385309FC(v14, a3 + v47, &qword_27DF0D040, &qword_2387676A0);
  v31 = [a1 returnDeadline];
  v32 = v50;
  if (v31)
  {
    v33 = v31;
    sub_23875BBE0();

    v30 = 0;
  }

  v48(v32, v30, 1, v27);
  v34 = v15[8];
  v35 = v49;
  sub_2385309FC(v32, a3 + v49, &qword_27DF12E00, &unk_238763FC0);
  *(a3 + v34) = sub_238759790();
  *(a3 + v15[9]) = v52 & 1;
  v36 = v51;
  sub_23843981C(a3 + v35, v51, &qword_27DF12E00, &unk_238763FC0);
  v37 = v53;
  v38 = (*(v53 + 48))(v36, 1, v27);
  if (v38 == 1)
  {

    v39 = 0;
LABEL_15:
    v44 = a3 + v15[10];
    *v44 = v39;
    *(v44 + 8) = v38 == 1;
    return;
  }

  v40 = v45;
  (*(v37 + 32))(v45, v36, v27);
  sub_23875BB60();
  v42 = v41;

  v43 = ceil(v42 / 86400.0);
  (*(v37 + 8))(v40, v27);
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v43 < 9.22337204e18)
  {
    v39 = v43;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_2385542DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v5 = sub_23875BC40();
  v40 = *(v5 - 8);
  v6 = v40;
  MEMORY[0x28223BE20](v5);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v17 = v16[6];
  v18 = (a3 + v16[5]);
  v19 = sub_23875B940();
  (*(*(v19 - 8) + 56))(a3 + v17, 1, 1, v19);
  v20 = v16[7];
  v21 = *(v6 + 56);
  v22 = v5;
  v21(a3 + v20, 1, 1, v5);
  v23 = v16[8];
  sub_238758D70();
  *v18 = sub_238758DA0();
  v18[1] = v24;
  sub_238758D90();
  v25 = a3 + v17;
  v26 = a1;
  sub_2385309FC(v15, v25, &qword_27DF0D040, &qword_2387676A0);
  sub_238758D60();
  sub_2385309FC(v12, a3 + v20, &qword_27DF12E00, &unk_238763FC0);
  *(a3 + v23) = sub_238758D80();
  *(a3 + v16[9]) = v42;
  v27 = a3 + v20;
  v29 = v40;
  v28 = v41;
  sub_23843981C(v27, v41, &qword_27DF12E00, &unk_238763FC0);
  v30 = (*(v29 + 48))(v28, 1, v22);
  if (v30 == 1)
  {
    v31 = sub_238758DB0();
    result = (*(*(v31 - 8) + 8))(v26, v31);
    v33 = 0;
LABEL_7:
    v38 = a3 + v16[10];
    *v38 = v33;
    *(v38 + 8) = v30 == 1;
    return result;
  }

  v34 = v39;
  (*(v29 + 32))(v39, v28, v22);
  sub_23875BB60();
  v36 = ceil(v35 / 86400.0);
  v37 = sub_238758DB0();
  (*(*(v37 - 8) + 8))(v26, v37);
  result = (*(v29 + 8))(v34, v22);
  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v36 < 9.22337204e18)
  {
    v33 = v36;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

BOOL sub_2385546E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  sub_23843981C(v0 + v7[7], v6, &qword_27DF12E00, &unk_238763FC0);
  v8 = sub_23875BC40();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_238439884(v6, &qword_27DF12E00, &unk_238763FC0);
  if (v9 != 1)
  {
    v10 = *(v0 + v7[8]);
    if (v10 != 2 && (v10 & 1) != 0)
    {
      v11 = v0 + v7[10];
      if ((*(v11 + 8) & 1) == 0 && *v11 > 0)
      {
        return 1;
      }
    }
  }

  if (*(v0 + v7[9]))
  {
    return 0;
  }

  sub_23843981C(v0 + v7[6], v3, &qword_27DF0D040, &qword_2387676A0);
  v13 = sub_23875B940();
  v12 = (*(*(v13 - 8) + 48))(v3, 1, v13) != 1;
  sub_238439884(v3, &qword_27DF0D040, &qword_2387676A0);
  return v12;
}

uint64_t sub_238554904(uint64_t a1, uint64_t a2)
{
  v3 = sub_23875B7F0();
  MEMORY[0x28223BE20](v3 - 8);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE40();
  MEMORY[0x28223BE20](v5 - 8);
  v34[3] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE20();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_23875BD20();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - v13;
  v15 = sub_23875BAD0();
  v35 = *(v15 - 8);
  v36 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2387591F0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (sub_23875BD70())
  {
    (*(v19 + 104))(v21, *MEMORY[0x277CC77C8], v18);
  }

  else
  {
    v22 = sub_23875BD90();
    (*(v19 + 104))(v21, *MEMORY[0x277CC77C8], v18);
    if ((v22 & 1) == 0)
    {
      v34[2] = "EFUNDS_DAYS_REMAINING";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2387632F0;
      v34[1] = v14;
      sub_23875BA30();
      v25 = sub_23875BA40();
      (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
      v26 = sub_23875BA10();
      (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
      sub_23875BCC0();
      sub_23875BDB0();
      sub_23875BE30();
      sub_23875B7E0();
      sub_23875BA50();
      v27 = sub_23875BAC0();
      v29 = v28;
      v30 = (*(v35 + 8))(v17, v36);
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_238448C58(v30, v31, v32);
      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      v23 = sub_238758A50();

      goto LABEL_6;
    }
  }

  v23 = sub_238758A40();
LABEL_6:
  (*(v19 + 8))(v21, v18);
  return v23;
}

uint64_t sub_238554E60@<X0>(uint64_t a1@<X8>)
{
  sub_238554ED8(v1, a1);
  v3 = *(type metadata accessor for OrderDetailsReturnInfoSection_iOS(0) + 20);
  *(a1 + v3) = swift_getKeyPath(byte_23876EDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238554ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_238554F5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v7 = sub_23875CEA0();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E038, &qword_23876EE98);
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v52 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E040, &qword_23876EEA0);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E048, &qword_23876EEA8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E050, &qword_23876EEB0);
  MEMORY[0x28223BE20](v18 - 8);
  v57 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v63 = v50 - v21;
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_2385546E4();
  if (v22)
  {
    v50[2] = v50;
    MEMORY[0x28223BE20](v22);
    v50[1] = &v50[-4];
    v51 = a1;
    v50[-2] = a1;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v64 = a2;
    v65 = a3;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E088, &qword_23876EF10);
    sub_238532714(v23, v24, v25);
    v26 = a2;
    v27 = a3;
    sub_23843A3E8(&qword_27DF0E090, &qword_27DF0E088, &qword_23876EF10, MEMORY[0x277CE14C0]);
    sub_23875E3B0();
    v28 = v63;
    (*(v15 + 32))(v63, v17, v14);
    v29 = v28;
    a3 = v27;
    a2 = v26;
    (*(v15 + 56))(v29, 0, 1, v14);
    a1 = v51;
  }

  else
  {
    (*(v15 + 56))(v63, 1, 1, v14);
  }

  v30 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v31 = v62;
  if (*(a1 + *(v30 + 36)) == 1 && !*(a1 + *(v30 + 20) + 8))
  {
    v43 = 1;
    v42 = v59;
  }

  else
  {
    MEMORY[0x28223BE20](v30);
    v50[-2] = a1;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_2385546E4())
    {
      a2 = 0;
      a3 = 0;
    }

    else
    {
    }

    v64 = a2;
    v65 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E058, &qword_23876EEB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E060, &qword_23876EEC0);
    sub_238556FEC();
    sub_23843A3E8(&qword_27DF0E070, &qword_27DF0E060, &qword_23876EEC0, MEMORY[0x277CE14C0]);
    v32 = v52;
    sub_23875E3B0();
    v33 = v53;
    sub_23875CE90();
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E078, &qword_23876EEC8) + 36);
    v36 = v54;
    v35 = v55;
    (*(v54 + 16))(v32 + v34, v33, v55);
    v37 = *(v36 + 56);
    v37(v32 + v34, 0, 1, v35);
    KeyPath = swift_getKeyPath(asc_23876EED0);
    v39 = v62;
    v40 = (v32 + *(v62 + 36));
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v36 + 32))(v40 + v41, v33, v35);
    v37(v40 + v41, 0, 1, v35);
    *v40 = KeyPath;
    v42 = v59;
    sub_238557070(v32, v59);
    v31 = v39;
    v43 = 0;
  }

  (*(v58 + 56))(v42, v43, 1, v31);
  v44 = v63;
  v45 = v57;
  sub_23843981C(v63, v57, &qword_27DF0E050, &qword_23876EEB0);
  v46 = v60;
  sub_23843981C(v42, v60, &qword_27DF0E040, &qword_23876EEA0);
  v47 = v61;
  sub_23843981C(v45, v61, &qword_27DF0E050, &qword_23876EEB0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E080, &qword_23876EF08);
  sub_23843981C(v46, v47 + *(v48 + 48), &qword_27DF0E040, &qword_23876EEA0);
  sub_238439884(v42, &qword_27DF0E040, &qword_23876EEA0);
  sub_238439884(v44, &qword_27DF0E050, &qword_23876EEB0);
  sub_238439884(v46, &qword_27DF0E040, &qword_23876EEA0);
  sub_238439884(v45, &qword_27DF0E050, &qword_23876EEB0);

  return result;
}