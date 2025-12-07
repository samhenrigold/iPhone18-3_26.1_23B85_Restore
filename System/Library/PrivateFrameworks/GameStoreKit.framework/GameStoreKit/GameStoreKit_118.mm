double sub_24F20A680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v23[0] = a6;
  v23[1] = a2;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a5, v11, v14);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v12 + 32))(v18 + v16, v15, v11);
  *(v18 + v17) = a1;
  v19 = v23[0];
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23[0];

  v20 = a1;
  v21 = v19;
  sub_24F9298E8();

  return result;
}

void sub_24F20A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v8 = sub_24F922068();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v27[0] = a5;
    v27[1] = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v17 = sub_24F922058();
    __swift_project_value_buffer(v17, qword_27F23DAC0);
    v18 = sub_24F922038();
    sub_24F922078();
    v19 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v8);
        v20 = "success=false";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v18, v19, v22, "EngagementRequest", v20, v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F93DE60;
    v24 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    v25 = MEMORY[0x253051C90](v28, v27[0]);
    *(v23 + 56) = v24;
    *(v23 + 32) = v25;
    v26 = sub_24F9281A8();
  }
}

id sub_24F20AEB4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSAMSEngagement();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24F20AF4C()
{

  return swift_deallocObject();
}

uint64_t sub_24F20AFC8(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

double sub_24F20B0A4(void **a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_24F209B24(a1, v6, v7, v8, v9, v10, v5);
}

uint64_t sub_24F20B11C(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

double sub_24F20B204(void *a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v6 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F20A680(a1, v7, v8, v9, v2 + v6, v10, v5);
}

uint64_t sub_24F20B2A8(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24F20B374(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  sub_24F209500(v3, v4, v5);
}

uint64_t sub_24F20B3D8(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24F20B4D0(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  sub_24F20A818(v7, v8, v1 + v3, v5, v6);
}

uint64_t sub_24F20B56C(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24F20B648(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  sub_24F209CA4(v3, v4, v5, v6, v7);
}

uint64_t sub_24F20B6D0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SearchHistoryItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  sub_24F928398();
  v12 = sub_24F928348();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14)
  {
    v26 = v12;
    v27 = v14;
    sub_24E600AEC();
    v16 = sub_24F92C518();
    v25 = v17;

    sub_24F928398();
    sub_24EC556D4();
    sub_24F928248();
    v18 = sub_24F9285B8();
    (*(*(v18 - 8) + 8))(v28, v18);
    v15(a1, v5);
    result = (v15)(v8, v5);
    v20 = v26;
    v21 = v25;
    *a3 = v16;
    *(a3 + 8) = v21;
    *(a3 + 16) = v20;
  }

  else
  {
    v22 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v23 = 1836213620;
    v23[1] = 0xE400000000000000;
    v23[2] = &type metadata for SearchHistoryItem;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    v24 = sub_24F9285B8();
    (*(*(v24 - 8) + 8))(v28, v24);
    return (v15)(a1, v5);
  }

  return result;
}

uint64_t sub_24F20BA30(char a1)
{
  v2 = 0x656461637261;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = MEMORY[0x277D84F98];
  if (a1)
  {
    sub_24F92D068();
    sub_24F92B218();
    sub_24F92D088();
    if (v5 != 4)
    {
      sub_24F92B218();
    }

    sub_24F92D0B8();
    v7 = sub_24F92CD88();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D324(v7, v9, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v3, v4, 1836213620, 0xE400000000000000, v11);
  if (v5 <= 1)
  {
    if (v5)
    {
      v2 = 0x79726F7473;
    }

    else
    {
      v2 = 0x65706F6C65766564;
    }

    if (v5)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE900000000000072;
    }

    goto LABEL_16;
  }

  if (v5 == 2)
  {
    v12 = 0xE600000000000000;
    goto LABEL_16;
  }

  if (v5 == 3)
  {
    v12 = 0xE500000000000000;
    v2 = 0x6863746177;
LABEL_16:
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D324(v2, v12, 0x797469746E65, 0xE600000000000000, v13);
  }

  return v6;
}

void *SearchHistoryItem.id.getter()
{
  v2 = *(v1 + 16);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92D088();
  if (v2 != 4)
  {
    sub_24F92B218();
  }

  sub_24F92D0B8();
  return sub_24F92C7F8();
}

uint64_t SearchHistoryItem.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92D088();
  if (v1 != 4)
  {
    sub_24F92B218();
  }

  return sub_24F92D0B8();
}

uint64_t SearchHistoryItem.term.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F20BEC0()
{
  if (*v0)
  {
    return 0x797469746E65;
  }

  else
  {
    return 1836213620;
  }
}

uint64_t sub_24F20BEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F20BFC8(uint64_t a1)
{
  v2 = sub_24F20C878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F20C004(uint64_t a1)
{
  v2 = sub_24F20C878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchHistoryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C5E0, &qword_24F9D65B0);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F20C878();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_24F20C8CC();
    sub_24F92CCF8();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t SearchHistoryItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24F92B218();
  if (v2 == 4)
  {
    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
}

uint64_t SearchHistoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C5F8, &unk_24F9D65B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F20C878();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_24F20C920();
  sub_24F92CC18();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F20C4BC()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92D088();
  if (v1 != 4)
  {
    sub_24F92B218();
  }

  return sub_24F92D0B8();
}

uint64_t SearchHistoryItem.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) == 4)
  {
    v4 = 0x203A6D726574;
    MEMORY[0x253050C20](v1, v2);
  }

  else
  {
    v4 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](0x203A6D726574, 0xE600000000000000);
    MEMORY[0x253050C20](v1, v2);
    MEMORY[0x253050C20](0x797469746E65202CLL, 0xEA0000000000203ALL);
    sub_24F92CA38();
  }

  return v4;
}

unint64_t SearchHistoryItem.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F20BA30(1);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  result = sub_24E776F6C();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_24F20C76C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F20BA30(1);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  result = sub_24E776F6C();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t _s12GameStoreKit17SearchHistoryItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_24F92CE08(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 4)
    {
      if (v3 != 4)
      {
        return 0;
      }
    }

    else if (v3 == 4 || (sub_24F0CEE64(v2, v3) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_24F20C878()
{
  result = qword_27F23C5E8;
  if (!qword_27F23C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5E8);
  }

  return result;
}

unint64_t sub_24F20C8CC()
{
  result = qword_27F23C5F0;
  if (!qword_27F23C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C5F0);
  }

  return result;
}

unint64_t sub_24F20C920()
{
  result = qword_27F23C600;
  if (!qword_27F23C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C600);
  }

  return result;
}

unint64_t sub_24F20C978()
{
  result = qword_27F23C608;
  if (!qword_27F23C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C608);
  }

  return result;
}

unint64_t sub_24F20C9F0()
{
  result = qword_27F23C610;
  if (!qword_27F23C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C610);
  }

  return result;
}

unint64_t sub_24F20CA48()
{
  result = qword_27F23C618;
  if (!qword_27F23C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C618);
  }

  return result;
}

unint64_t sub_24F20CAA0()
{
  result = qword_27F23C620;
  if (!qword_27F23C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C620);
  }

  return result;
}

uint64_t sub_24F20CAF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211750 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t PrivacySettingsSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C628, &qword_24F9D6870);
  MEMORY[0x28223BE20](v31);
  v32 = &v28 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C630, &qword_24F9D6878);
  MEMORY[0x28223BE20](v39);
  v36 = &v28 - v3;
  v30 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView(0);
  MEMORY[0x28223BE20](v30);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C638, &qword_24F9D6880);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C640, &qword_24F9D6888);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C648, &qword_24F9D6890);
  MEMORY[0x28223BE20](v37);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C650, &qword_24F9D6898);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C658, &qword_24F9D68A0);
  MEMORY[0x28223BE20](v38);
  v17 = &v28 - v16;
  v18 = *v1;
  swift_getKeyPath();
  v41 = v18;
  sub_24F20DE60(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  if (*(v18 + 18) > 2u)
  {
    MEMORY[0x28223BE20](v19);
    if (qword_27F211748 == -1)
    {
LABEL_7:
      v20 = unk_27F39EF60;
      *v5 = qword_27F39EF58;
      v5[1] = v20;
      v21 = *(v30 + 20);
      *(v5 + v21) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CD8, &qword_24F9D6900);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C660, &qword_24F9D6908);
      sub_24F20DB04();
      sub_24F20DB58();
      sub_24F20DE60(&qword_27F23C678, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView, &unk_24F96BCF4);
      v22 = v33;
      sub_24F9272A8();
      v24 = v34;
      v23 = v35;
      (*(v34 + 16))(v32, v22, v35);
      swift_storeEnumTagMultiPayload();
      sub_24F20DC3C();
      v25 = v36;
      sub_24F924E28();
      sub_24E60169C(v25, v12, &qword_27F23C630, &qword_24F9D6878);
      swift_storeEnumTagMultiPayload();
      sub_24F20DD0C();
      sub_24F20DEA8();
      sub_24F924E28();
      sub_24E601704(v25, &qword_27F23C630, &qword_24F9D6878);
      return (*(v24 + 8))(v22, v23);
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (*(v18 + 18))
  {
    if (*(v18 + 18) == 1)
    {
      MEMORY[0x28223BE20](v19);
      if (qword_27F211748 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView(0);
    sub_24F20DB04();
    sub_24F20DE60(&qword_27F23C698, type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView, &unk_24F96BCA4);
    sub_24F927298();
    v27 = v29;
    (*(v29 + 16))(v15, v10, v8);
    swift_storeEnumTagMultiPayload();
    sub_24F20DD98();
    sub_24F924E28();
    sub_24E60169C(v17, v12, &qword_27F23C658, &qword_24F9D68A0);
    swift_storeEnumTagMultiPayload();
    sub_24F20DD0C();
    sub_24F20DEA8();
    sub_24F924E28();
    sub_24E601704(v17, &qword_27F23C658, &qword_24F9D68A0);
    return (*(v27 + 8))(v10, v8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24F20DD98();
    sub_24F924E28();
    sub_24E60169C(v17, v12, &qword_27F23C658, &qword_24F9D68A0);
    swift_storeEnumTagMultiPayload();
    sub_24F20DD0C();
    sub_24F20DEA8();
    sub_24F924E28();
    return sub_24E601704(v17, &qword_27F23C658, &qword_24F9D68A0);
  }
}

uint64_t sub_24F20D51C()
{
  v0 = objc_opt_self();
  v1 = sub_24F92B098();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2 && (v3 = [v2 flow], v2, v4 = objc_msgSend(v3, sel_localizedButtonTitle), v3, v4))
  {
    v5 = sub_24F92B0D8();
  }

  else
  {
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E940);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Failed to get the link title from OnBoardingKit with the provided bundle identifier. Defaulting to the hardcoded string.", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    if (qword_27F211768 != -1)
    {
      swift_once();
    }

    v5 = qword_27F39EF98;
  }

  return v5;
}

uint64_t sub_24F20D6F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F20D51C();
  v4 = v3;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CD8, &qword_24F9D6900);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView(0);
  v6 = (a1 + *(result + 20));
  *v6 = v2;
  v6[1] = v4;
  return result;
}

uint64_t sub_24F20D780@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{

  sub_24F926F88();
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C660, &qword_24F9D6908);
  v8 = (a3 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_24E600A48;
  v8[2] = v6;
  return result;
}

double sub_24F20D868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24F92B7F8();

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_24EA998B8(0, 0, v4, &unk_24F9D6A50, v7);

  return result;
}

uint64_t sub_24F20D98C()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24ECC7320();
}

uint64_t sub_24F20DA38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211760 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_24F20DB04()
{
  result = qword_27F23C668;
  if (!qword_27F23C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C668);
  }

  return result;
}

unint64_t sub_24F20DB58()
{
  result = qword_27F23C670;
  if (!qword_27F23C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C660, &qword_24F9D6908);
    sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C670);
  }

  return result;
}

unint64_t sub_24F20DC3C()
{
  result = qword_27F23C680;
  if (!qword_27F23C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C638, &qword_24F9D6880);
    sub_24F20DB04();
    sub_24F20DB58();
    sub_24F20DE60(&qword_27F23C678, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView, &unk_24F96BCF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C680);
  }

  return result;
}

unint64_t sub_24F20DD0C()
{
  result = qword_27F23C688;
  if (!qword_27F23C688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C658, &qword_24F9D68A0);
    sub_24F20DD98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C688);
  }

  return result;
}

unint64_t sub_24F20DD98()
{
  result = qword_27F23C690;
  if (!qword_27F23C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C640, &qword_24F9D6888);
    sub_24F20DB04();
    sub_24F20DE60(&qword_27F23C698, type metadata accessor for SettingsPrivacyLinkViews.ButtonLinkView, &unk_24F96BCA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C690);
  }

  return result;
}

uint64_t sub_24F20DE60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F20DEA8()
{
  result = qword_27F23C6A0;
  if (!qword_27F23C6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C630, &qword_24F9D6878);
    sub_24F20DC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C6A0);
  }

  return result;
}

unint64_t sub_24F20DF64()
{
  result = qword_27F23C6A8;
  if (!qword_27F23C6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23C6B0, &qword_24F9D69A8);
    sub_24F20DD0C();
    sub_24F20DEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C6A8);
  }

  return result;
}

uint64_t sub_24F20E03C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F20E07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F20D98C();
}

uint64_t sub_24F20E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, &qword_27F23C840, 0x277CEC4A0);
    v8 = sub_24F92B5A8();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t sub_24F20E228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, a5, a6);
    v8 = sub_24F92B5A8();
  }

  v10 = a4;
  v9(v8, a3, a4);
}

id ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  [v7 lock];
  sub_24F213714(a1, a2, a3, v3);

  return [v7 unlock];
}

uint64_t ArcadeState.stringValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8) >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else if (v2)
  {
    return ArcadeState.stringValue.getter(a1);
  }

  else if (*v1)
  {
    if (*v1 == 1)
    {
      return 0x7263736275736E75;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    return 0xD000000000000012;
  }
}

id ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v20 = *a1;
  LOBYTE(v21) = v7;
  v8 = v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 8);
  v23 = v9;
  v24 = v10;
  sub_24EB6CE50(v9, v10);
  v11 = static ArcadeState.== infix(_:_:)(&v20, &v23);
  sub_24EB6CE70(v9, v10);
  v12 = *v8;
  v13 = *(v8 + 8);
  if (v11)
  {
    *a3 = v12;
    *(a3 + 8) = v13;
    return sub_24EB6CE50(v12, v13);
  }

  else
  {
    *v8 = v6;
    *(v8 + 8) = v7;
    sub_24EB6CE50(v12, v13);
    sub_24EB6CE50(v6, v7);
    sub_24EB6CE70(v12, v13);
    if (a2)
    {
      v20 = v12;
      LOBYTE(v21) = v13;
      sub_24F2117D8(&v20);
    }

    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger), *(v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v15 = *v8;
    v16 = *(v8 + 8);
    v23 = v15;
    v24 = v16;
    sub_24EB6CE50(v15, v16);
    v17 = ArcadeState.summary.getter();
    v19 = v18;
    v22 = MEMORY[0x277D837D0];
    sub_24EB6CE70(v15, v16);
    v20 = v17;
    v21 = v19;
    sub_24F928438();
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    *a3 = v12;
    *(a3 + 8) = v13;
  }

  return result;
}

id ArcadeSubscriptionManager.__allocating_init(arcadeSubscriptionFamilyId:subscriptionEntitlements:activeStoreAccountProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = a4[3];
  v13 = a4[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = sub_24F215138(a1, a2, v11, v14, v4, v9, v12, v10, v13);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v15;
}

uint64_t ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9479A0;
  *(v4 + 32) = @"debug";
  *(v4 + 40) = @"convergence";
  *(v4 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v5 = @"debug";
  v6 = @"convergence";
  v7 = @"internal";
  v8 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v3, v8);

  if (!IsAnyOf || (v10 = byte_27F23B3E0, byte_27F23B3E0 == 7))
  {
    sub_24E615E00(&v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], &v58);
    __swift_project_boxed_opaque_existential_1(&v58, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    sub_24F9283A8();
    v57 = &type metadata for EntitlementRefeshCondition;
    v51 = v2;
    LOBYTE(v54) = v2;
    sub_24F928438();
    v52 = v1;
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v13 = &v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v14 = *v13;
    v53 = v13[8];
    sub_24EB6CE50(*v13, v53);
    v15 = ArcadeState.summary.getter();
    v17 = v16;
    v57 = MEMORY[0x277D837D0];
    sub_24EB6CE70(v14, v53);
    v54 = v15;
    v55 = v17;
    sub_24F928438();
    v18 = v52;
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v19 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId + 8];
    if (v19)
    {
      v20 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
      v21 = MEMORY[0x277D837D0];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v56 = 0;
    }

    v54 = v20;
    v55 = v19;
    v57 = v21;

    sub_24F928458();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    __swift_destroy_boxed_opaque_existential_1(&v58);
    v23 = MEMORY[0x277D21FB0];
    if (v51 >> 6 <= 1 || v51 >> 6 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);
      v24 = sub_24F92A9E8();
      v25 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
      v26 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
      __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v25);
      v27 = *(v26 + 16);

      v28 = v26;
      v18 = v52;
      v27(1, sub_24F216018, v24, v25, v28);
      v29 = swift_allocObject();
      *(v29 + 16) = v52;
      *(v29 + 24) = v51 & 1;
      v60 = sub_24F929638();
      v61 = v23;
      __swift_allocate_boxed_opaque_existential_1(&v58);
      v30 = v52;
      sub_24F929628();
      sub_24E602068(&unk_27F23C718, &qword_27F23C6E8, &qword_24F9D6A58, MEMORY[0x277D224B8]);
      sub_24F92A9B8();

      __swift_destroy_boxed_opaque_existential_1(&v58);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);
      v31 = sub_24F92A9E8();
      if (v51 == 192)
      {
        v32 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
        v33 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
        __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v32);
        v34 = *(v33 + 16);
        swift_retain_n();
        v34(1, sub_24F2152DC, v31, v32, v33);
      }

      else
      {
        v37 = swift_allocObject();
        *(v37 + 16) = 1;
        *(v37 + 24) = v52;
        *(v37 + 32) = v31;
        v38 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
        v39 = *&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
        __swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v38);
        v40 = *(v39 + 8);
        swift_retain_n();
        v41 = v52;
        v40(1, 1, sub_24F21544C, v37, v38, v39);
      }
    }

    *(swift_allocObject() + 16) = v18;
    v60 = sub_24F929638();
    v61 = v23;
    __swift_allocate_boxed_opaque_existential_1(&v58);
    v42 = v18;
    sub_24F929628();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6F8, &qword_24F9D6A60);
    sub_24E602068(&qword_27F23C700, &qword_27F23C6F8, &qword_24F9D6A60, MEMORY[0x277D224B8]);
    sub_24F92A9B8();

    __swift_destroy_boxed_opaque_existential_1(&v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C708, &qword_24F9D6A68);
    v43 = sub_24F92A9E8();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_24F21535C;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v43;
    v49 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    swift_retain_n();

    v50 = sub_24F92BEF8();
    v60 = v49;
    v61 = MEMORY[0x277D225C0];
    v58 = v50;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(&v58);

    return v43;
  }

  else
  {
    if (byte_27F23B3E0 <= 2u)
    {
      if (byte_27F23B3E0 == 1)
      {
        v22 = -127;
      }

      else
      {
        v22 = -64;
      }

      v11 = 0;
      if (byte_27F23B3E0)
      {
        v12 = v22;
      }

      else
      {
        v12 = -126;
      }
    }

    else if (byte_27F23B3E0 > 4u)
    {
      if (byte_27F23B3E0 == 5)
      {
        v12 = 0;
        v11 = 2;
      }

      else
      {
        v11 = swift_allocObject();
        *(v11 + 16) = 2;
        *(v11 + 24) = 0;
        v12 = 64;
      }
    }

    else
    {
      v11 = 1;
      if (byte_27F23B3E0 == 3)
      {
        v12 = -64;
      }

      else
      {
        v12 = 0;
      }
    }

    v54 = v11;
    LOBYTE(v55) = v12;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v54, 1, &v58);
    sub_24EB6CE70(v11, v12);
    sub_24EB6CE70(v58, v59);
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v10 = 0;
          v35 = -127;
        }

        else
        {
          v10 = 0;
          v35 = -64;
        }
      }

      else
      {
        v35 = -126;
      }
    }

    else if (v10 > 4)
    {
      if (v10 == 5)
      {
        v35 = 0;
        v10 = 2;
      }

      else
      {
        v10 = swift_allocObject();
        *(v10 + 16) = 2;
        *(v10 + 24) = 0;
        v35 = 64;
      }
    }

    else
    {
      if (v10 == 3)
      {
        v35 = -64;
      }

      else
      {
        v35 = 0;
      }

      v10 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C708, &qword_24F9D6A68);
    v58 = v10;
    v59 = v35;
    return sub_24F92A988();
  }
}

uint64_t static ArcadeState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v6 == 2)
    {
      if ((v5 & 0xC0) == 0x80)
      {
        if (v2)
        {
          if (!v4)
          {
            sub_24EB6CE50(0, *(a2 + 8));
            sub_24EB6CE50(0, v5);
            sub_24EB6CE50(v2, v3);
            sub_24EB6CE70(v2, v3);
            v14 = 0;
            goto LABEL_20;
          }

          sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
          sub_24EB6CE50(v4, v5);
          sub_24EB6CE50(v4, v5);
          sub_24EB6CE50(v2, v3);
          v8 = sub_24F92C408();
          sub_24EB6CE70(v4, v5);
          if ((v8 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v4)
          {
            sub_24EB6CE50(*a2, *(a2 + 8));
            sub_24EB6CE50(0, v3);
            v13 = 0;
            goto LABEL_19;
          }

          sub_24EB6CE50(0, *(a2 + 8));
          sub_24EB6CE50(0, v5);
          sub_24EB6CE50(0, v3);
        }

        sub_24EB6CE70(v2, v3);
        sub_24EB6CE70(v4, v5);
        v7 = ((v5 ^ v3) & 0x3F) == 0;
        return v7 & 1;
      }

      v12 = v2;
    }

    else if (v5 > 0xBF)
    {
      sub_24EB6CE70(*a1, v3);
      sub_24EB6CE70(v4, v5);
      v7 = v4 ^ v2 ^ 1;
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (v6)
  {
    if ((v5 & 0xC0) == 0x40)
    {
      v9 = *(v2 + 24);
      v10 = *(v4 + 2);
      v11 = *(v4 + 24);
      v18 = *(v2 + 2);
      v19 = v9;
      v16 = v10;
      v17 = v11;
      sub_24EB6CE50(v4, v5);
      sub_24EB6CE50(v2, v3);
      v7 = static ArcadeState.== infix(_:_:)(&v18, &v16);
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v4, v5);
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (v5 >= 0x40)
  {
LABEL_17:
    sub_24EB6CE50(v4, v5);
LABEL_18:
    v13 = v2;
LABEL_19:
    sub_24EB6CE70(v13, v3);
    v14 = v4;
LABEL_20:
    sub_24EB6CE70(v14, v5);
    v7 = 0;
    return v7 & 1;
  }

  sub_24EB6CE70(*a1, v3);
  sub_24EB6CE70(v4, v5);
  v7 = v4 == v2;
  return v7 & 1;
}

id ArcadeSubscriptionManager.removeSubscriptionStateActions(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  [v3 lock];
  swift_beginAccess();
  sub_24E98A534(0, a1);
  swift_endAccess();
  return [v3 unlock];
}

uint64_t ArcadeSubscriptionManager.PaymentCallbacks.init(success:failure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void ArcadeSubscriptionManager.purchaseSubscription(product:appAdamId:decorator:paymentMetricsOverlay:callbacks:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v12 = a3[1];
  v32 = *a3;
  v14 = *a6;
  v13 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v17 = *(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler) = a7;

  sub_24F215494(a4, &v38);
  v33 = a1;
  if (v38)
  {
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v43 = v38;
    v44 = v39;
    v18 = a7;
    ArcadeSubscriptionDecorator.decorate()();
    v19 = swift_allocObject();
    v19[2] = v35;
    v19[3] = a5;
    v19[4] = v14;
    v19[5] = v13;
    v19[6] = v15;
    v19[7] = v16;
    v20 = swift_allocObject();
    v20[2] = v35;
    v20[3] = a1;
    v21 = a2;
    v20[4] = a2;
    v20[5] = v32;
    v20[6] = v12;
    v20[7] = a5;
    v20[8] = v14;
    v20[9] = v13;
    v20[10] = v15;
    v20[11] = v16;
    v22 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);

    v23 = v35;
    sub_24F215624(v14, v13, v15, v16);
    v24 = v23;

    sub_24F215624(v14, v13, v15, v16);

    v25 = sub_24F92BEF8();
    *(&v39 + 1) = v22;
    *&v40 = MEMORY[0x277D225C0];
    *&v38 = v25;
    sub_24F92A958();

    sub_24F1C5354(&v43);
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v26 = a7;
    sub_24E601704(&v38, qword_27F23BBB0, &unk_24F9D26D0);
    *&v38 = v32;
    *(&v38 + 1) = v12;
    *&v43 = v14;
    *(&v43 + 1) = v13;
    *&v44 = v15;
    *(&v44 + 1) = v16;
    v27 = a1;
    v21 = a2;
    sub_24F210878(v27, a2, &v38, 0, a5, &v43);
  }

  __swift_project_boxed_opaque_existential_1(&v35[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], *&v35[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  *(&v44 + 1) = MEMORY[0x277D837D0];
  *&v43 = v33;
  *(&v43 + 1) = v21;

  sub_24F928438();
  sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v28 = swift_allocObject();
  v29 = &v35[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v30 = *v29;
  *(v28 + 16) = *v29;
  v31 = v29[8];
  *(v28 + 24) = v31;
  v36 = v28;
  v37 = 64;
  sub_24EB6CE50(v30, v31);
  ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v36, 1, &v38);
  sub_24EB6CE70(v28, 0x40u);
  sub_24EB6CE70(v38, BYTE8(v38));
}

uint64_t ArcadeState.shortSummary.getter()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if ((v2 & 0x3F) == 1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0x6269726373627553;
    }

    if (v1)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x6E776F6E6B6E55;
    }

    if (v3 == 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000023;
    }

    else
    {
      v4 = 0xD000000000000022;
    }

    if (v3)
    {
      return 0x6973616863727550;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t ArcadeState.summary.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8) >> 6;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      sub_24F92C888();

      v6 = 0xD00000000000001ELL;
      if (v1)
      {
        v4 = 1702195828;
      }

      else
      {
        v4 = 0x65736C6166;
      }

      if (v1)
      {
        v5 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      MEMORY[0x253050C20](v4, v5);

      return v6;
    }

    v6 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA6F890);
  }

  else
  {
    if (v2)
    {
      return 0x6973616863727550;
    }

    v6 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001FLL, 0x800000024FA6F8C0);
  }

  sub_24F92CA38();
  return v6;
}

uint64_t ArcadeState.nextState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = -64;
    }

    if (v4 == 2)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    if (v4 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }
  }

  else if (v4)
  {
    result = 0;
    v7 = 0x80;
  }

  else if (v2 == 1)
  {
    v5 = a1;
    result = swift_allocObject();
    a1 = v5;
    *(result + 16) = v2;
    *(result + 24) = v3;
    v7 = 64;
  }

  else
  {
    result = 0;
    v7 = -64;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  return result;
}

double sub_24F20FEE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24F20E140;
  v10[3] = &block_descriptor_93;
  v8 = _Block_copy(v10);

  [v7 getSubscriptionEntitlementsForSegment:a1 ignoreCaches:a2 & 1 withCacheInfoResultHandler:v8];
  _Block_release(v8);

  return result;
}

double sub_24F20FFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24F20E200;
  v8[3] = &block_descriptor_90;
  v6 = _Block_copy(v8);

  [v5 getCachedSubscriptionEntitlementsForSegment:a1 withResultHandler:v6];
  _Block_release(v6);

  return result;
}

double sub_24F210068(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24F20E214;
  v6[3] = &block_descriptor_87;
  v4 = _Block_copy(v6);

  [v3 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler_];
  _Block_release(v4);

  return result;
}

id ACAccountStore.ams_DSID.getter()
{
  v1 = [v0 ams_activeiTunesAccount];
  v2 = [v1 ams_DSID];

  return v2;
}

id sub_24F210174()
{
  v1 = [*v0 ams_activeiTunesAccount];
  v2 = [v1 ams_DSID];

  return v2;
}

unint64_t EntitlementRefeshCondition.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 != 2)
    {
      if (v1 == 192)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    v8 = 0;
    sub_24F92C888();
    v3 = "always refresh cache";
    v4 = 0xD00000000000003DLL;
    goto LABEL_7;
  }

  if (v2)
  {
    v8 = 0;
    sub_24F92C888();
    v3 = "s unsubscribed, (may prompt: ";
    v4 = 0xD00000000000003BLL;
LABEL_7:
    MEMORY[0x253050C20](v4, v3 | 0x8000000000000000);
    goto LABEL_8;
  }

  sub_24F92C888();

  v8 = 0xD00000000000002ALL;
LABEL_8:
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v5, v6);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v8;
}

id ArcadeStateChange.oldState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_24EB6CE50(v2, v3);
}

id ArcadeStateChange.newState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_24EB6CE50(v2, v3);
}

void sub_24F21037C(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue);
  if (v4)
  {
    [v4 removeTransactionObserver_];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v8 = a1;

  v6 = *(v1 + v3);
  if (v6)
  {
    v7 = v6;
    [v7 addTransactionObserver_];
  }
}

id ArcadeSubscriptionManager.subscriptionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_24EB6CE50(v4, v5);
}

id ArcadeSubscriptionManager.init(arcadeSubscriptionFamilyId:subscriptionEntitlements:activeStoreAccountProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v8 = a3[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_24F214C60(a1, a2, v13, v20, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v22;
}

id ArcadeSubscriptionManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue];
  if (v2)
  {
    [v2 removeTransactionObserver_];
  }

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_24F2107EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  v12 = *(*a1 + 32);
  v11 = *(*a1 + 40);
  v16[0] = v12;
  v16[1] = v11;
  v13 = *(v8 + 48);
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;

  sub_24F210878(v9, v10, v16, v13, a3, v15);
}

void sub_24F210878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v12 = sub_24F928418();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = *a3;
  v56 = *a6;
  v57 = a3[1];
  v54 = a6[2];
  v55 = a6[1];
  v53 = a6[3];
  v14 = *(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue);
  v15 = &off_279691000;
  if (v14)
  {
    v16 = a4;
    v17 = v14;
    v18 = [v17 paymentQueueClient];
    v19 = [v18 storeItemIdentifier];

    v51 = v13;
    *&v60 = v13;
    *(&v60 + 1) = v57;
    AdamId.numberValue.getter();
    v21 = v20;
    if (v19)
    {
      if (v20)
      {
        sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
        v22 = sub_24F92C408();

        if ((v22 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_8:
        v58 = v17;
        a4 = v16;
        v15 = &off_279691000;
        goto LABEL_21;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_8;
      }

      v17 = v21;
    }

LABEL_10:

    a4 = v16;
    v15 = &off_279691000;
    v13 = v51;
  }

  v52 = a5;
  v23 = [objc_opt_self() mainBundle];
  v24 = [objc_allocWithZone(MEMORY[0x277CDD380]) v15[222]];
  v25 = [v23 bundleIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = sub_24F92B0D8();
    v29 = v28;

    if (v27 == 0x6C7070612E6D6F63 && v29 == 0xEF73656D61672E65)
    {

      v15 = &off_279691000;
    }

    else
    {
      v31 = sub_24F92CE08();

      v15 = &off_279691000;
      if ((v31 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v34 = sub_24F92B098();
    [v24 setBundleIdentifier_];

    v33 = sub_24F92B098();
    goto LABEL_20;
  }

LABEL_17:
  v32 = [v23 bundleIdentifier];
  [v24 setBundleIdentifier_];

  sub_24F211044();
  v33 = sub_24F92B098();

LABEL_20:
  [v24 setBundleVersion_];

  [v24 setDelegate_];
  [v24 setEnvironmentType_];
  *&v60 = v13;
  *(&v60 + 1) = v57;
  AdamId.numberValue.getter();
  v36 = v35;
  [v24 setStoreItemIdentifier_];

  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v37 = sub_24F92C3E8();
  [v24 setStoreExternalVersion_];

  v38 = [objc_allocWithZone(MEMORY[0x277CDD378]) initWithPaymentQueueClient_];
  v58 = v38;
  sub_24F21037C(v38);

  a5 = v52;
LABEL_21:
  v39 = [objc_allocWithZone(MEMORY[0x277CDD360]) v15[222]];
  v40 = sub_24F92B098();
  [v39 setProductIdentifier_];

  if (a4)
  {
    v41 = sub_24F92AE28();
  }

  else
  {
    v41 = 0;
  }

  [v39 setRequestParameters_];

  if (a5)
  {
    v42 = sub_24F92AE28();
    [v39 setMetricsOverlay_];
  }

  sub_24E615E00(v7 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger, &v60);
  __swift_project_boxed_opaque_existential_1(&v60, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  if (a4)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
    v44 = a4;
  }

  else
  {
    v44 = 0;
    v43 = 0;
    v59[1] = 0;
    v59[2] = 0;
  }

  v59[0] = v44;
  v59[3] = v43;

  sub_24F9283C8();
  sub_24E601704(v59, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v45 = [v39 productIdentifier];
  v46 = sub_24F92B0D8();
  v48 = v47;

  v49 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
  swift_beginAccess();
  if (v56)
  {
    sub_24F215624(v56, v55, v54, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = *(v7 + v49);
    sub_24E822640(v56, v55, v54, v53, v46, v48, isUniquelyReferenced_nonNull_native);

    *(v7 + v49) = v60;
  }

  else
  {
    sub_24E990370(v46, v48, &v60);

    sub_24F215D98(v60, *(&v60 + 1), v61, v62);
  }

  swift_endAccess();
  [v58 addPayment_];
}

__n128 sub_24F210FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v14[0] = a5;
  v14[1] = a6;
  v11 = a8;
  v12 = a9;
  v13 = a10;
  sub_24F210878(a3, a4, v14, 0, a7, &v11);
  return result;
}

void sub_24F211044()
{
  if (*MEMORY[0x277CBED58])
  {
    if ([v0 objectForInfoDictionaryKey_])
    {
      sub_24F92C648();
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0u;
      v2 = 0u;
    }

    v3[0] = v1;
    v3[1] = v2;
    if (*(&v2 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_24E601704(v3, &qword_27F2129B0, &unk_24F945320);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_24F211118()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger), *(v0 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v1 = sub_24F92B0D8();
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  LOBYTE(v4[0]) = 0;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v4);

  return result;
}

uint64_t sub_24F2112DC(unint64_t a1)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  if (!a1)
  {
    goto LABEL_31;
  }

  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_30:
    v13 = sub_24F92C738();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_31:
    v34 = 0;
    v33 = 0;
    return v33 | v34;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_4:
  v14 = 0;
  v45 = v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId;
  v43 = v13;
  v44 = a1 & 0xC000000000000001;
  v37 = (v4 + 32);
  v40 = v12;
  v41 = v11;
  v42 = (v4 + 8);
  while (1)
  {
    if (v44)
    {
      v15 = MEMORY[0x253052270](v14, a1, v9);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v4 = v15;
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v1 = *(v45 + 1);
    if (!v1)
    {
      goto LABEL_5;
    }

    v17 = v3;
    v18 = a1;
    v19 = *v45;
    v20 = [v15 familyID];
    v21 = [v20 stringValue];

    v22 = sub_24F92B0D8();
    v24 = v23;

    if (v22 == v19 && v1 == v24)
    {

      a1 = v18;
      v3 = v17;
      v12 = v40;
      v11 = v41;
    }

    else
    {
      v26 = sub_24F92CE08();

      a1 = v18;
      v3 = v17;
      v12 = v40;
      v11 = v41;
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v27 = [v4 expiryDate];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v29 = v38;
    sub_24F91F608();

    (*v37)(v11, v29, v3);
    v30 = v39;
    sub_24F91F638();
    LOBYTE(v29) = sub_24F91F588();
    v1 = *v42;
    (*v42)(v30, v3);
    if (v29)
    {
      break;
    }

    v31 = [v4 isInGracePeriod];
    v1(v11, v3);
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_5:

    ++v14;
    if (v16 == v43)
    {
      goto LABEL_31;
    }
  }

  v1(v11, v3);
LABEL_24:
  v32 = [v4 isTrialPeriod];

  if (v32)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  return v33 | v34;
}

BOOL sub_24F211664(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *v2;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v18 = sub_24F92C738();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v18 != v7;
    if (v18 == v7)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](v7, a1);
    }

    else
    {
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = [v9 stringValue];
    v12 = sub_24F92B0D8();
    v14 = v13;

    if (v12 == v5 && v3 == v14)
    {

      return 1;
    }

    v16 = sub_24F92CE08();

    ++v7;
  }

  while ((v16 & 1) == 0);
  return v8;
}

uint64_t sub_24F2117D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v12 = sub_24F92BEF8();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  aBlock[4] = sub_24F215F54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_127_0;
  v14 = _Block_copy(aBlock);
  v15 = v2;
  sub_24EB6CE50(v10, v11);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F215DE4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v14);
  _Block_release(v14);

  (*(v18 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v17);
}

void ArcadeSubscriptionManager.handle(_:resultHandler:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
  if (v6)
  {
    v13 = v6;
    CommerceDialogHandler.handle(_:resultHandler:)(a1, a2, a3);
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      sub_24F92B0D8();
    }

    v10 = sub_24F92B098();

    v11 = sub_24F92B098();
    v12 = sub_24F92B098();
    v13 = AMSCustomError();

    a2(0, v13);
  }
}

id ArcadeSubscriptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall ArcadeSubscriptionManager.paymentQueue(_:updatedTransactions:)(SKPaymentQueue _, Swift::OpaquePointer updatedTransactions)
{
  v3 = v2;
  internal = _._internal;
  isa = _.super.isa;
  v121 = sub_24F927D88();
  v5 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24F927DC8();
  v7 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (internal >> 62)
  {
    v9 = sub_24F92C738();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((internal & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 >= 1)
  {
    v143 = &v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger];
    v130 = &v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider];
    v10 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
    v142 = internal & 0xC000000000000001;
    v136 = &v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v11 = 0;
    v129 = "adeSubscriptionManager";
    v128 = "ansaction restored";
    v127 = "Transaction purchasing";
    v126 = "Transaction purchased";
    v125 = "allbacks complete";
    v122 = *MEMORY[0x277CDD438];
    v117 = "Transaction failed";
    v124 = "titlement update.";
    v116 = &v150;
    v115 = (v5 + 8);
    v114 = (v7 + 8);
    v139 = xmmword_24F93A400;
    v123 = xmmword_24F9479A0;
    v113 = xmmword_24F93DE60;
    v138 = v3;
    v144 = internal;
    v141 = v9;
    v140 = v10;
    while (1)
    {
      v15 = v142 ? MEMORY[0x253052270](v11, internal) : *(internal + 8 * v11 + 32);
      v145 = v15;
      v16 = [v15 transactionState];
      if (v16 <= 1)
      {
        if (!v16)
        {
          sub_24E615E00(v143, &aBlock);
          v135 = v152;
          __swift_project_boxed_opaque_existential_1(&aBlock, v151);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = v139;
          sub_24F9283A8();
          v45 = [v145 transactionIdentifier];
          if (v45)
          {
            v46 = v45;
            v47 = sub_24F92B0D8();
            v49 = v48;

            *(&v147 + 1) = MEMORY[0x277D837D0];
            *&v146 = v47;
            *(&v146 + 1) = v49;
            internal = v144;
            v3 = v138;
          }

          else
          {
            v146 = 0u;
            v147 = 0u;
          }

          sub_24F928438();
          sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A588();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v9 = v141;
          v10 = v140;
          goto LABEL_8;
        }

        if (v16 == 1)
        {
          sub_24E615E00(v143, &aBlock);
          v133 = v152;
          v132 = __swift_project_boxed_opaque_existential_1(&aBlock, v151);
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          v23 = *(sub_24F928468() - 8);
          v24 = *(v23 + 72);
          v25 = *(v23 + 80);
          v135 = v22;
          v134 = (((v25 + 32) & ~v25) + 2 * v24);
          *(swift_allocObject() + 16) = v139;
          sub_24F9283A8();
          v26 = [v145 transactionIdentifier];
          if (v26)
          {
            v27 = v26;
            v28 = sub_24F92B0D8();
            v131 = v25;
            v29 = v28;
            v31 = v30;

            *(&v147 + 1) = MEMORY[0x277D837D0];
            *&v146 = v29;
            *(&v146 + 1) = v31;
          }

          else
          {
            v146 = 0u;
            v147 = 0u;
          }

          sub_24F928438();
          sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A588();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v3 = v138;
          v91 = v145;
          sub_24F21328C(v138, v145, &unk_286211738, sub_24F215C68, &block_descriptor_99);
          sub_24E615E00(v143, &aBlock);
          __swift_project_boxed_opaque_existential_1(&aBlock, v151);
          *(swift_allocObject() + 16) = v139;
          sub_24F9283A8();
          v92 = [v91 transactionIdentifier];
          if (v92)
          {
            v93 = v92;
            v94 = sub_24F92B0D8();
            v96 = v95;

            *(&v147 + 1) = MEMORY[0x277D837D0];
            *&v146 = v94;
            *(&v146 + 1) = v96;
            v3 = v138;
          }

          else
          {
            v146 = 0u;
            v147 = 0u;
          }

          sub_24F928438();
          sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
          sub_24F92A588();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v97 = *(v130 + 3);
          v98 = *(v130 + 4);
          __swift_project_boxed_opaque_existential_1(v130, v97);
          v99 = (*(v98 + 8))(v97, v98);
          *&v146 = v99;
          BYTE8(v146) = 0x80;
          ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v146, 1, &aBlock);
          sub_24EB6CE70(v99, 0x80u);
          v89 = aBlock;
          v90 = v149;
LABEL_56:
          sub_24EB6CE70(v89, v90);
LABEL_57:
          v9 = v141;
          v10 = v140;
LABEL_58:
          v100 = v145;
          [(objc_class *)isa finishTransaction:v145];
          v101 = [v100 payment];
          v102 = [v101 productIdentifier];

          v103 = sub_24F92B0D8();
          v105 = v104;

          swift_beginAccess();
          v106 = sub_24E76D644(v103, v105);
          internal = v144;
          if (v107)
          {
            v108 = v106;
            v109 = v9;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v111 = *&v3[v10];
            *&v146 = v111;
            *&v3[v10] = 0x8000000000000000;
            v112 = v10;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_24E8B6488();
              v111 = v146;
            }

            v12 = *(v111 + 56) + 32 * v108;
            v13 = *(v12 + 16);
            v14 = *(v12 + 24);

            sub_24E824448(v13, v14);
            sub_24EB52998(v108, v111);
            *&v3[v112] = v111;
            v10 = v112;
            v9 = v109;
            internal = v144;
          }

          swift_endAccess();

          goto LABEL_7;
        }
      }

      else
      {
        switch(v16)
        {
          case 2:
            sub_24E615E00(v143, &aBlock);
            v135 = v152;
            v134 = __swift_project_boxed_opaque_existential_1(&aBlock, v151);
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
            v33 = *(sub_24F928468() - 8);
            v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v133 = v32;
            *(swift_allocObject() + 16) = v123;
            v132 = v34;
            sub_24F9283A8();
            v35 = [v145 transactionIdentifier];
            if (v35)
            {
              v36 = v35;
              v37 = sub_24F92B0D8();
              v39 = v38;

              *(&v147 + 1) = MEMORY[0x277D837D0];
              *&v146 = v37;
              *(&v146 + 1) = v39;
            }

            else
            {
              v146 = 0u;
              v147 = 0u;
            }

            sub_24F928438();
            sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
            v74 = [v145 error];
            if (v74)
            {
              v75 = v74;
              swift_getErrorValue();
              v76 = sub_24F92CFE8();
              v78 = v77;
              *(&v147 + 1) = MEMORY[0x277D837D0];

              *&v146 = v76;
              *(&v146 + 1) = v78;
            }

            else
            {
              v146 = 0u;
              v147 = 0u;
            }

            v9 = v141;
            sub_24F928438();
            sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
            sub_24F92A588();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v3 = v138;
            sub_24F21328C(v138, v145, &unk_286211788, sub_24F216034, &block_descriptor_106);
            v79 = v136[8];
            if ((v79 & 0xC0) == 0x40)
            {
              v80 = *v136;
              v81 = *(*v136 + 24);
              *&v146 = *(*v136 + 16);
              BYTE8(v146) = v81;

              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v146, 1, &aBlock);
              sub_24EB6CE70(aBlock, v149);
              sub_24EB6CE70(v80, v79);
            }

            else
            {
              *&v146 = 0;
              BYTE8(v146) = -64;
              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v146, 1, &aBlock);
              sub_24EB6CE70(aBlock, v149);
              LOBYTE(aBlock) = -63;
              ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
            }

            v10 = v140;
            v82 = [v145 error];
            if (v82)
            {
              v83 = v82;
              v84 = sub_24F91F268();
              IsEqual = AMSErrorIsEqual();

              if (IsEqual)
              {
                __swift_project_boxed_opaque_existential_1(v143, *(v143 + 3));
                *(swift_allocObject() + 16) = v113;
                sub_24F9283A8();
                v10 = v140;
                sub_24F92A588();
                v9 = v141;

                LOBYTE(aBlock) = -63;
                ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
              }
            }

            goto LABEL_58;
          case 3:
            sub_24E615E00(v143, &aBlock);
            __swift_project_boxed_opaque_existential_1(&aBlock, v151);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
            sub_24F928468();
            *(swift_allocObject() + 16) = v139;
            sub_24F9283A8();
            v40 = [v145 transactionIdentifier];
            if (v40)
            {
              v41 = v40;
              v42 = sub_24F92B0D8();
              v44 = v43;

              *(&v147 + 1) = MEMORY[0x277D837D0];
              *&v146 = v42;
              *(&v146 + 1) = v44;
              v3 = v138;
            }

            else
            {
              v146 = 0u;
              v147 = 0u;
            }

            sub_24F928438();
            sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
            sub_24F92A5B8();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            sub_24F21328C(v3, v145, &unk_286211738, sub_24F215C68, &block_descriptor_99);
            LOBYTE(aBlock) = -63;
LABEL_50:
            ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);

            goto LABEL_57;
          case 4:
            sub_24E615E00(v143, &aBlock);
            __swift_project_boxed_opaque_existential_1(&aBlock, v151);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
            sub_24F928468();
            *(swift_allocObject() + 16) = v139;
            sub_24F9283A8();
            v17 = [v145 transactionIdentifier];
            if (v17)
            {
              v18 = v17;
              v19 = sub_24F92B0D8();
              v21 = v20;

              *(&v147 + 1) = MEMORY[0x277D837D0];
              *&v146 = v19;
              *(&v146 + 1) = v21;
              v3 = v138;
            }

            else
            {
              v146 = 0u;
              v147 = 0u;
            }

            sub_24F928438();
            sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
            sub_24F92A588();

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            sub_24F21328C(v3, v145, &unk_286211738, sub_24F215C68, &block_descriptor_99);
            v86 = v136[8];
            if ((v86 & 0xC0) == 0x40)
            {
              v87 = *v136;
              v88 = *(*v136 + 24);
              *&v146 = *(*v136 + 16);
              BYTE8(v146) = v88;

              ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v146, 1, &aBlock);
              sub_24EB6CE70(aBlock, v149);
              v89 = v87;
              v90 = v86;
              goto LABEL_56;
            }

            *&v146 = 0;
            BYTE8(v146) = -64;
            ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v146, 1, &aBlock);
            sub_24EB6CE70(aBlock, v149);
            LOBYTE(aBlock) = -63;
            goto LABEL_50;
        }
      }

      v50 = [v145 payment];
      v51 = [v50 productIdentifier];

      v52 = sub_24F92B0D8();
      v54 = v53;

      swift_beginAccess();
      v55 = *&v3[v10];
      if (!*(v55 + 16))
      {
        break;
      }

      v56 = sub_24E76D644(v52, v54);
      v58 = v57;

      if ((v58 & 1) == 0)
      {
        goto LABEL_62;
      }

      v59 = (*(v55 + 56) + 32 * v56);
      v60 = *v59;
      v61 = v59[1];
      v63 = v59[2];
      v62 = v59[3];
      swift_endAccess();
      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);

      sub_24E5FCA4C(v63, v62);
      v135 = sub_24F92BEF8();
      v64 = swift_allocObject();
      v64[2] = v3;
      v64[3] = v60;
      v64[4] = v61;
      v64[5] = v63;
      v134 = v62;
      v64[6] = v62;
      v152 = sub_24F215670;
      v153 = v64;
      aBlock = MEMORY[0x277D85DD0];
      v149 = 1107296256;
      v150 = sub_24EAF8248;
      v151 = &block_descriptor_128;
      v65 = _Block_copy(&aBlock);

      sub_24E5FCA4C(v63, v62);
      v66 = v3;

      v67 = v118;
      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24F215DE4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
      v68 = v120;
      v69 = v121;
      sub_24F92C6A8();
      v70 = v135;
      MEMORY[0x2530518B0](0, v67, v68, v65);
      v71 = v65;
      internal = v144;
      _Block_release(v71);
      v9 = v141;

      v72 = sub_24E824448(v63, v134);
      (*v115)(v68, v69, v72);
      v73 = v67;
      v10 = v140;
      (*v114)(v73, v119);
LABEL_7:

LABEL_8:
      if (v9 == ++v11)
      {
        return;
      }
    }

LABEL_62:
    swift_endAccess();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_24F21328C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v7 = sub_24F927D88();
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v42 = *(v10 - 8);
  v43 = v10;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 payment];
  v15 = [v14 productIdentifier];

  v16 = sub_24F92B0D8();
  v18 = v17;

  v19 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks;
  swift_beginAccess();
  v20 = *&a1[v19];
  if (*(v20 + 16))
  {
    v21 = sub_24E76D644(v16, v18);
    v23 = v22;

    if (v23)
    {
      v24 = (*(v20 + 56) + 32 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      swift_endAccess();
      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);

      sub_24E5FCA4C(v27, v28);
      v38 = sub_24F92BEF8();
      v29 = swift_allocObject();
      v29[2] = a1;
      v29[3] = v25;
      v29[4] = v26;
      v29[5] = v27;
      v37 = v27;
      v29[6] = v28;
      v30 = v28;
      aBlock[4] = v40;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      aBlock[3] = v41;
      v31 = _Block_copy(aBlock);

      sub_24E5FCA4C(v27, v30);
      v32 = a1;

      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24F215DE4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
      sub_24F92C6A8();
      v33 = v38;
      MEMORY[0x2530518B0](0, v13, v9, v31);
      _Block_release(v31);

      v34 = sub_24E824448(v37, v30);
      (*(v39 + 8))(v9, v7, v34);
      return (*(v42 + 8))(v13, v43);
    }
  }

  else
  {
  }

  return swift_endAccess();
}

uint64_t sub_24F213714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v25 = a2;
  v26 = a3;
  sub_24F215F60(v24, v23);
  v8 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a4 + v8);
  *(a4 + v8) = 0x8000000000000000;
  v12 = sub_24E76D97C(a1);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(a4 + v8) = v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_24E8B5974();
      *(a4 + v8) = v10;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_24EC2665C(v12, a1, MEMORY[0x277D84F90], v10);
    goto LABEL_9;
  }

  sub_24E8A73E0(v15, isUniquelyReferenced_nonNull_native);
  v17 = sub_24E76D97C(a1);
  if ((v16 & 1) != (v18 & 1))
  {
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v12 = v17;
  *(a4 + v8) = v10;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a4 = v10[7];
  v10 = *(a4 + 8 * v12);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 8 * v12) = v10;
  if ((v19 & 1) == 0)
  {
LABEL_14:
    v10 = sub_24E61A034(0, v10[2] + 1, 1, v10);
    *(a4 + 8 * v12) = v10;
  }

  v21 = v10[2];
  v20 = v10[3];
  if (v21 >= v20 >> 1)
  {
    v10 = sub_24E61A034((v20 > 1), v21 + 1, 1, v10);
    *(a4 + 8 * v12) = v10;
  }

  v10[2] = v21 + 1;
  sub_24F215FC8(v23, &v10[3 * v21 + 4]);
  swift_endAccess();
  return sub_24F215F98(v24);
}

id sub_24F213914(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  [v6 lock];
  sub_24F2139B8(a1, a2, v3);

  return [v6 unlock];
}

uint64_t sub_24F2139B8(uint64_t a1, void *a2, int a3)
{
  v55 = a3;
  v4 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  swift_beginAccess();
  v38 = v4;
  v39 = a1;
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = v5 + 64;
  v8 = -1;
  if (v6 < 64)
  {
    v8 = ~(-1 << v6);
  }

  v9 = v8 & *(v5 + 64);
  v47 = a1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  v10 = (v6 + 63) >> 6;
  v44 = v5;

  v11 = 0;
  v40 = MEMORY[0x277D84F98];
  v41 = v7;
  v42 = v10;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v45 = v12;
    v46 = v9;
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v43 = *(*(v44 + 48) + v13);
    v14 = *(*(v44 + 56) + v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;

      swift_beginAccess();
      v17 = MEMORY[0x277D84F90];
      do
      {
        sub_24F215F60(v16, v53);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v18 = *v47;
          v19 = *(v47 + 8);
          v20 = v54;
          v49 = a2;
          v21 = v55;
          v50 = v55;
          v51 = v18;
          v52 = v19;
          sub_24EB6CE50(v18, v19);
          sub_24EB6CE50(a2, v21);
          v20(&v49);
          sub_24F215F60(v53, &v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_24E61A034(0, v17[2] + 1, 1, v17);
          }

          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            v17 = sub_24E61A034((v22 > 1), v23 + 1, 1, v17);
          }

          sub_24EB6CE70(a2, v55);
          sub_24EB6CE70(v18, v19);
          v17[2] = v23 + 1;
          sub_24F215FC8(&v49, &v17[3 * v23 + 4]);
        }

        sub_24F215F98(v53);
        v16 += 24;
        --v15;
      }

      while (v15);

      v7 = v41;
      v10 = v42;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v9 = (v46 - 1) & v46;
    if (v17[2])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v40;
      v25 = sub_24E76D97C(v43);
      v27 = v40[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_35;
      }

      v31 = v26;
      if (v40[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v25;
          sub_24E8B5974();
          v25 = v36;
          v9 = (v46 - 1) & v46;
        }
      }

      else
      {
        sub_24E8A73E0(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_24E76D97C(v43);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_37;
        }
      }

      v33 = v49;
      v40 = v49;
      if (v31)
      {
        *(v49[7] + 8 * v25) = v17;
      }

      else
      {
        v49[(v25 >> 6) + 8] |= 1 << v25;
        *(v33[6] + 8 * v25) = v43;
        *(v33[7] + 8 * v25) = v17;
        v34 = v33[2];
        v29 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v29)
        {
          goto LABEL_36;
        }

        v33[2] = v35;
      }

      v10 = v42;
      v11 = v45;
    }

    else
    {

      v11 = v45;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      *(v39 + v38) = v40;
    }

    v9 = *(v7 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24F213DA4(uint64_t a1, char a2, char a3, id a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    if (a5 & 1) != 0 && (a2 & 1) != 0 && (a3)
    {
      type metadata accessor for Code(0);
      v10 = a4;
      sub_24F215DE4(&qword_27F212540, type metadata accessor for Code, &unk_24F938AC0);
      if (sub_24F91F0F8())
      {
        __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger), *(a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        v11 = *(a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24);
        v12 = *(a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32);
        __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements), v11);
        v13 = *(v12 + 8);

        v13(1, 1, sub_24F215E2C, a7, v11, v12);

        return;
      }
    }

    else
    {
      v14 = a4;
    }

    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

void sub_24F213FFC(uint64_t a1, char a2, char a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

void sub_24F21407C(uint64_t a1, char a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

uint64_t sub_24F2140FC(uint64_t *a1, char *a2, char a3)
{
  if (*(a1 + 9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);
    v5 = sub_24F92A9E8();
    v6 = swift_allocObject();
    *(v6 + 16) = a3 & 1;
    *(v6 + 24) = a2;
    *(v6 + 32) = v5;
    v7 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
    v8 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v7);
    v9 = *(v8 + 8);
    v10 = a2;

    v9(1, 1, sub_24F216044, v6, v7, v8);

    return v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);

    return sub_24F92A988();
  }
}

uint64_t sub_24F214240(uint64_t a1, char *a2, char a3)
{
  v5 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if ((sub_24F2112DC(*a1) & 1) == 0 && (v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);

    return sub_24F92A988();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);
  v7 = sub_24F92A9E8();
  v8 = swift_allocObject();
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v7;
  v9 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
  v10 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v9);
  v11 = *(v10 + 8);
  v12 = a2;

  v11(1, 1, sub_24F216044, v8, v9, v10);

  return v7;
}

uint64_t sub_24F21439C(uint64_t a1, char *a2, char a3)
{
  v5 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if ((sub_24F2112DC(*a1) & 1) != 0 && (v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);

    return sub_24F92A988();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6E8, &qword_24F9D6A58);
  v7 = sub_24F92A9E8();
  v8 = swift_allocObject();
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v7;
  v9 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24];
  v10 = *&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 32];
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements], v9);
  v11 = *(v10 + 8);
  v12 = a2;

  v11(1, 1, sub_24F216044, v8, v9, v10);

  return v7;
}

uint64_t sub_24F2144F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C6F8, &qword_24F9D6A60);
  v6 = sub_24F92A9E8();
  v7 = (a2 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements);
  v8 = *(a2 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements + 24);
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v3;
  *(v10 + 32) = v4;
  *(v10 + 33) = v5;
  v11 = *(v9 + 24);

  v11(sub_24F215EF0, v10, v8, v9);

  return v6;
}

void sub_24F2145EC(uint64_t a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v6 = a3;
    sub_24F92A9A8();
  }

  else
  {

    sub_24F92A9C8();
  }
}

void sub_24F21468C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24E615E00(Strong + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger, v33);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    if (a1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C850, &qword_24F9D6FF8);
      v8 = a1;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v30 = 0;
      v31 = 0;
    }

    v29 = v8;
    v32 = v7;

    sub_24F928458();
    sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    if (a2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C848, &qword_24F9D6FF0);
      v10 = a2;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v30 = 0;
      v31 = 0;
    }

    v29 = v10;
    v32 = v9;

    sub_24F928458();
    sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    __swift_destroy_boxed_opaque_existential_1(v33);
    v11 = &v6[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[8];
    sub_24EB6CE50(*v11, v13);
    v14 = sub_24F2112DC(a1);
    if (v14)
    {
      v15 = v14;
      v16 = *&v6[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider + 24];
      v17 = *&v6[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider], v16);
      v18 = (*(v17 + 8))(v16, v17);
      v27 = v18;
      if ((v15 & 0x100) != 0)
      {
        v19 = -127;
      }

      else
      {
        v19 = -126;
      }

      v28 = v19;
      ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v27, 0, &v29);
      sub_24EB6CE70(v12, v13);
      v20 = v18;
      v21 = v19;
    }

    else
    {
      v22 = sub_24F211664(a2);
      v23 = 1;
      if (v22)
      {
        v23 = 2;
      }

      v27 = v23;
      v28 = 0;
      ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v27, 0, &v29);
      v20 = v12;
      v21 = v13;
    }

    sub_24EB6CE70(v20, v21);
    v24 = v29;
    v25 = v30;
    v26 = v11[8];
    v29 = *v11;
    LOBYTE(v30) = v26;
    sub_24EB6CE50(v29, v26);
    sub_24F92A9C8();
    sub_24EB6CE70(v29, v30);
    v29 = v24;
    LOBYTE(v30) = v25;
    sub_24EB6CE50(v24, v25);
    sub_24F2117D8(&v29);

    sub_24EB6CE70(v24, v25);
    sub_24EB6CE70(v29, v30);
  }
}

void sub_24F214A54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v11 = 1;
    v12 = -64;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v11, 0, &v8);
    v4 = v8;
    v5 = v9;
    sub_24F92A9A8();
    v8 = v4;
    LOBYTE(v9) = v5;
    sub_24F2117D8(&v8);
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger], *&v3[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v6 = sub_24F92CFE8();
    v10 = MEMORY[0x277D837D0];
    v8 = v6;
    v9 = v7;
    sub_24F928438();
    sub_24E601704(&v8, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    sub_24EB6CE70(v4, v5);
  }
}

id sub_24F214C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v42 = a3;
  v47 = a1;
  v48 = a2;
  v43 = a9;
  v44 = a4;
  ObjectType = swift_getObjectType();
  v46 = sub_24F929078();
  v12 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F92AAB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24F92AAE8();
  v19 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a6;
  v52[4] = v41;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, v42, a6);
  v51[3] = a7;
  v51[4] = v43;
  v23 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(a7 - 8) + 32))(v23, v44, a7);
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentQueue] = 0;
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler] = 0;
  v24 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_observers;
  *&a5[v24] = sub_24E60F260(MEMORY[0x277D84F90]);
  v25 = OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock;
  *&a5[v25] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_paymentCallbacks] = MEMORY[0x277D84F98];
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_27F39C380);
  (*(v16 + 16))(v18, v26, v15);
  sub_24F92AAD8();
  v27 = v46;
  (*(v12 + 104))(v14, *MEMORY[0x277D21DD8], v46);
  v28 = v45;
  v29 = sub_24F92A578();
  (*(v12 + 8))(v14, v27);
  (*(v19 + 8))(v21, v28);
  v30 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_logger];
  v31 = sub_24F928EB8();
  v32 = MEMORY[0x277D21D78];
  *(v30 + 3) = v31;
  *(v30 + 4) = v32;
  *v30 = v29;
  v33 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
  v34 = v48;
  *v33 = v47;
  *(v33 + 1) = v34;
  sub_24E615E00(v52, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements]);
  v35 = &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  *v35 = 0;
  v35[8] = -64;
  sub_24E615E00(v51, &a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider]);
  v50.receiver = a5;
  v50.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v50, sel_init);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 defaultCenter];
  [v39 addObserver:v38 selector:sel_entitlementsDidChange name:*MEMORY[0x277CEC318] object:0];

  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v38;
}

id sub_24F215138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a2;
  v27 = a8;
  v25 = a1;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v21);
  (*(v17 + 16))(v20, a3, a6);
  (*(v13 + 16))(v15, a4, a7);
  return sub_24F214C60(v25, v26, v20, v15, v22, a6, a7, v27, a9);
}

uint64_t sub_24F2152E4()
{

  return swift_deallocObject();
}

uint64_t sub_24F215324()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F215364()
{

  return swift_deallocObject();
}

uint64_t sub_24F2153F0()
{

  return swift_deallocObject();
}

uint64_t sub_24F215458()
{
  sub_24EB6CE70(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F215494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23BBB0, &unk_24F9D26D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F215504()
{

  if (*(v0 + 32))
  {

    if (*(v0 + 48))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F215564()
{

  if (*(v0 + 64))
  {

    if (*(v0 + 80))
    {
    }
  }

  return swift_deallocObject();
}

void sub_24F2155D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v7[0] = *(v0 + 40);
  v7[1] = v4;
  v5 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v5;
  sub_24F210878(v1, v2, v7, 0, v3, v6);
}

uint64_t sub_24F215624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_24E5FCA4C(a3, a4);
  }

  return result;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F215690()
{
  result = qword_27F23C760;
  if (!qword_27F23C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C760);
  }

  return result;
}

unint64_t sub_24F2156E8()
{
  result = qword_27F23C768;
  if (!qword_27F23C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C768);
  }

  return result;
}

uint64_t sub_24F215748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F215798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_24F2158A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F2158F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_24F2159C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24F215A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_24F215A88(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v4 = *(a2 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_dialogHandler);
  if (v4)
  {
    v14 = v4;
    sub_24F0848D0(a1, v14, a3);
  }

  else
  {
    v6 = objc_opt_self();
    _Block_copy(a3);
    v7 = [v6 mainBundle];
    v8 = [v7 bundleIdentifier];

    if (v8)
    {
      sub_24F92B0D8();
    }

    v9 = sub_24F92B098();

    v10 = sub_24F92B098();
    v11 = sub_24F92B098();
    v12 = AMSCustomError();

    v13 = sub_24F91F268();
    (a3)[2](a3, 0, v13);

    _Block_release(a3);
  }
}

id sub_24F215C68()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  (*(v0 + 24))([v1 lock]);

  return [v1 unlock];
}

uint64_t objectdestroy_42Tm_1()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_24F215D28()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);
  v3 = [v2 lock];
  if (v1)
  {
    v1(v3);
  }

  return [v2 unlock];
}

double sub_24F215D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return sub_24E824448(a3, a4);
  }

  return result;
}

uint64_t sub_24F215DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_27Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F215F10()
{
  sub_24EB6CE70(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t SearchResultsDiffablePagePresenter.__allocating_init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:source:referrerData:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, __int128 *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(char *, uint64_t, uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v143 = a7;
  v126 = a6;
  v125 = a5;
  v159 = a1;
  v154 = a24;
  v156 = a23;
  v135 = a22;
  v155 = a21;
  v128 = a20;
  v152 = a19;
  v134 = a18;
  v133 = a17;
  v132 = a16;
  v131 = a15;
  v130 = a14;
  v129 = a13;
  v148 = a11;
  v146 = a10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920, &qword_24F9D7000);
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v142 = &v119 - v30;
  v141 = sub_24F92BEE8();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24F92BE88();
  MEMORY[0x28223BE20](v137);
  v138 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F927DC8();
  MEMORY[0x28223BE20](v33 - 8);
  v136 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v35 - 8);
  v153 = &v119 - v36;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v158 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v127 = &v119 - v37;
  v150 = sub_24F9288E8();
  v157 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v25;
  v39 = swift_allocObject();
  v121 = *a8;
  v122 = *a9;
  v124 = *(a12 + 4);
  *(v39 + qword_27F39DDD0) = 0;
  v123 = *(a12 + 40);
  v40 = qword_27F39DDD8;
  *(v39 + qword_27F39DDD8) = 4;
  v41 = (v39 + qword_27F39DDE0);
  *v41 = 0;
  v41[1] = 0;
  v42 = v39 + qword_27F23C860;
  *v42 = xmmword_24F9406F0;
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = 0;
  *(v42 + 40) = 0;
  *(v39 + qword_27F39DDE8) = 1;
  *(v39 + qword_27F39DDF0) = 0;
  *(v39 + qword_27F23C868) = 0;
  v43 = qword_27F39DDF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C870, &qword_24F9D7008);
  swift_allocObject();
  *(v39 + v43) = sub_24F92ADA8();
  v44 = qword_27F39DE00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C878, &qword_24F9D7010);
  swift_allocObject();
  *(v39 + v44) = sub_24F92ADA8();
  v45 = qword_27F39DE08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C880, &qword_24F9D7018);
  swift_allocObject();
  *(v39 + v45) = sub_24F92ADA8();
  *(v39 + qword_27F39DE10) = 0;
  *(v39 + qword_27F39DE18) = 0;
  type metadata accessor for ASKBagContract(0);
  v46 = *a12;
  v120 = a12[1];
  v119 = v46;
  sub_24F928F28();
  v47 = *&v162[0];
  *(v39 + qword_27F23C888) = a2;
  *(v39 + qword_27F39DE20) = a3;
  v48 = (v39 + qword_27F23C890);
  v49 = v125;
  *v48 = a4;
  v48[1] = v49;
  v50 = (v39 + qword_27F39DE28);
  v51 = v143;
  *v50 = v126;
  v50[1] = v51;
  swift_beginAccess();
  *(v39 + v40) = v121;
  *(v39 + qword_27F39DE30) = v122;
  swift_beginAccess();
  v52 = v148;
  *v41 = v146;
  v41[1] = v52;
  v143 = a2;

  v148 = a3;

  v146 = a4;
  swift_unknownObjectRetain();

  v53 = *v42;
  v54 = *(v42 + 8);
  v55 = *(v42 + 16);
  v56 = *(v42 + 24);
  v57 = *(v42 + 32);
  v58 = v120;
  *v42 = v119;
  *(v42 + 16) = v58;
  *(v42 + 32) = v124;
  v59 = *(v42 + 40);
  *(v42 + 40) = v123;
  sub_24EA14B54(v53, v54, v55, v56, v57, v59);
  *(v39 + qword_27F39DE38) = v129;
  *(v39 + qword_27F39DE40) = v130;
  *(v39 + qword_27F39DE48) = v131;
  v60 = (v39 + qword_27F39DE50);
  v61 = v133;
  *v60 = v132;
  v60[1] = v61;
  *(v39 + qword_27F39DE58) = v134;
  v62 = (v39 + qword_27F39DE60);
  v63 = v128;
  *v62 = v152;
  v62[1] = v63;
  v64 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  if (qword_27F210900 != -1)
  {
    swift_once();
  }

  v65 = *MEMORY[0x277D21C38];
  v66 = v157;
  v67 = v149;
  v68 = v150;
  v134 = *(v157 + 104);
  v134(v149, v65, v150);
  v133 = v64;
  v69 = v127;
  sub_24F92A368();
  v152 = v47;
  v70 = *(v66 + 8);
  v157 = v66 + 8;
  v70(v67, v68);
  v71 = v151;
  sub_24F92A408();
  v72 = *(v158 + 8);
  v158 += 8;
  v72(v69, v71);
  v73 = *&v162[0];
  type metadata accessor for FastImpressionFlushGate();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74[4] = 0;
  v74[5] = 0;
  v74[2] = v73;
  *(v39 + qword_27F23C898) = v74;
  v75 = (v39 + qword_27F23C8A0);
  v76 = v135;
  *v75 = v155;
  v75[1] = v76;
  v77 = (v39 + qword_27F39DE68);
  v78 = v154;
  *v77 = v156;
  v77[1] = v78;
  v79 = qword_27F2108F0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v80 = v69;
  if (v79 != -1)
  {
    swift_once();
  }

  v81 = v149;
  v82 = v65;
  v83 = v150;
  v134(v149, v82, v150);
  sub_24F92A368();
  v70(v81, v83);
  v84 = v151;
  sub_24F92A408();
  v72(v80, v84);
  v85 = *&v162[0];
  type metadata accessor for FastImpressionsTracker();
  v86 = swift_allocObject();
  v86[3] = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  v86[5] = sub_24F929E98();
  swift_allocObject();
  v86[6] = sub_24F929E98();
  v86[4] = v85;
  v87 = sub_24F91F4A8();
  (*(*(v87 - 8) + 56))(v153, 1, 1, v87);
  v158 = sub_24F218910(&qword_27F22D210, type metadata accessor for FastImpressionsTracker, &protocol conformance descriptor for FastImpressionsTracker);
  memset(v162, 0, sizeof(v162));
  v163 = 0;
  *(v39 + qword_27F39CC00) = 0;
  v88 = MEMORY[0x277D84F90];
  *(v39 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v39 + qword_27F2326C8) = 0;
  v89 = *(*v39 + 640);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD70, &unk_24F9D7020);
  v91 = *(*(v90 - 8) + 56);
  v91(v39 + v89, 1, 1, v90);
  v92 = *(*v39 + 648);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v93 - 8) + 56))(v39 + v92, 1, 1, v93);
  v94 = *(*v39 + 656);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD68, &unk_24F989D60);
  (*(*(v95 - 8) + 56))(v39 + v94, 1, 1, v95);
  v91(v39 + *(*v39 + 664), 1, 1, v90);
  v96 = *(*v39 + 672);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v97 - 8) + 56))(v39 + v96, 1, 1, v97);
  v98 = *(*v39 + 680);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v99 - 8) + 56))(v39 + v98, 1, 1, v99);
  v100 = *(*v39 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v160 = v88;
  sub_24F218910(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (*(v140 + 104))(v139, *MEMORY[0x277D85260], v141);
  *(v39 + v100) = sub_24F92BF38();
  sub_24EBD3128(v39 + *(*v39 + 696));
  v101 = (v39 + *(*v39 + 704));
  *v101 = 0u;
  v101[1] = 0u;
  *(v101 + 25) = 0u;
  v102 = *(*v39 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v39 + v102) = sub_24F92ADA8();
  v103 = *(*v39 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v39 + v103) = sub_24F92ADA8();
  v104 = *(*v39 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v39 + v104) = sub_24F92ADA8();
  *(v39 + *(*v39 + 736)) = 0;
  v105 = (v39 + *(*v39 + 752));
  *v105 = 0;
  v105[1] = 0;
  v106 = v153;
  sub_24E60169C(v153, v39 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v162, v39 + *(*v39 + 744), &qword_27F229490, &unk_24F984C40);
  v107 = type metadata accessor for InlineUnifiedMessagePresenter();
  v161.receiver = objc_allocWithZone(v107);
  v161.super_class = v107;
  *(v39 + qword_27F39CC08) = objc_msgSendSuper2(&v161, sel_init);
  v108 = v159;

  v109 = sub_24EBBA1A8(v108, v86, v158, 0);
  v110 = *(*v109 + 1112);

  *(v109 + qword_27F39CC00) = v110(0);

  sub_24EBC957C(0);

  sub_24E601704(v162, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v106, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v86[3] = &protocol witness table for SearchResultsDiffablePagePresenter;
  swift_unknownObjectWeakAssign();
  v111 = (v109 + *(*v109 + 208));
  swift_beginAccess();
  v112 = v154;
  *v111 = v156;
  v111[1] = v112;
  swift_retain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648, &unk_24F9876C0);
  sub_24E602068(&qword_27F22A940, &qword_27F22A648, &unk_24F9876C0, MEMORY[0x277D21A98]);
  sub_24F9288B8();
  v113 = v142;
  sub_24F9288C8();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v162);
  (*(v145 + 8))(v113, v147);

  v114 = *(v109 + qword_27F23C898);

  v115 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v116 = *(v114 + 32);
  v117 = *(v114 + 40);
  *(v114 + 32) = sub_24F218A6C;
  *(v114 + 40) = v115;

  sub_24E824448(v116, v117);

  return v109;
}

uint64_t SearchResultsDiffablePagePresenter.init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:source:referrerData:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11, __int128 *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, void (*a17)(void, void, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const char *a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v141 = a7;
  v124 = a6;
  v123 = a5;
  v156 = a1;
  v151 = a24;
  v153 = a23;
  v133 = a22;
  v152 = a21;
  v126 = a20;
  v149 = a19;
  v132 = a18;
  v131 = a17;
  v130 = a16;
  v129 = a15;
  v128 = a14;
  v127 = a13;
  v145 = a11;
  v143 = a10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920, &qword_24F9D7000);
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v140 = &v117 - v30;
  v139 = sub_24F92BEE8();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_24F92BE88();
  MEMORY[0x28223BE20](v135);
  v136 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F927DC8();
  MEMORY[0x28223BE20](v33 - 8);
  v134 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v35 - 8);
  v150 = &v117 - v36;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v155 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v125 = &v117 - v37;
  v147 = sub_24F9288E8();
  v154 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *a8;
  v120 = *a9;
  v122 = *(a12 + 4);
  *(v25 + qword_27F39DDD0) = 0;
  v121 = *(a12 + 40);
  v39 = qword_27F39DDD8;
  *(v25 + qword_27F39DDD8) = 4;
  v40 = (v25 + qword_27F39DDE0);
  *v40 = 0;
  v40[1] = 0;
  v41 = v25 + qword_27F23C860;
  *v41 = xmmword_24F9406F0;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  *(v25 + qword_27F39DDE8) = 1;
  *(v25 + qword_27F39DDF0) = 0;
  *(v25 + qword_27F23C868) = 0;
  v42 = qword_27F39DDF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C870, &qword_24F9D7008);
  swift_allocObject();
  *(v25 + v42) = sub_24F92ADA8();
  v43 = qword_27F39DE00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C878, &qword_24F9D7010);
  swift_allocObject();
  *(v25 + v43) = sub_24F92ADA8();
  v44 = qword_27F39DE08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C880, &qword_24F9D7018);
  swift_allocObject();
  *(v25 + v44) = sub_24F92ADA8();
  *(v25 + qword_27F39DE10) = 0;
  *(v25 + qword_27F39DE18) = 0;
  type metadata accessor for ASKBagContract(0);
  v45 = *a12;
  v118 = a12[1];
  v117 = v45;
  sub_24F928F28();
  v46 = *&v159[0];
  *(v25 + qword_27F23C888) = a2;
  *(v25 + qword_27F39DE20) = a3;
  v47 = (v25 + qword_27F23C890);
  v48 = v123;
  *v47 = a4;
  v47[1] = v48;
  v49 = (v25 + qword_27F39DE28);
  v50 = v141;
  *v49 = v124;
  v49[1] = v50;
  swift_beginAccess();
  *(v25 + v39) = v119;
  *(v25 + qword_27F39DE30) = v120;
  swift_beginAccess();
  v51 = v145;
  *v40 = v143;
  v40[1] = v51;
  v141 = a2;

  v145 = a3;

  v143 = a4;
  swift_unknownObjectRetain();

  v52 = *v41;
  v53 = *(v41 + 8);
  v54 = *(v41 + 16);
  v55 = *(v41 + 24);
  v56 = *(v41 + 32);
  v57 = v118;
  *v41 = v117;
  *(v41 + 16) = v57;
  *(v41 + 32) = v122;
  v58 = *(v41 + 40);
  *(v41 + 40) = v121;
  sub_24EA14B54(v52, v53, v54, v55, v56, v58);
  *(v25 + qword_27F39DE38) = v127;
  *(v25 + qword_27F39DE40) = v128;
  *(v25 + qword_27F39DE48) = v129;
  v59 = (v25 + qword_27F39DE50);
  v60 = v131;
  *v59 = v130;
  v59[1] = v60;
  *(v25 + qword_27F39DE58) = v132;
  v61 = (v25 + qword_27F39DE60);
  v62 = v126;
  *v61 = v149;
  v61[1] = v62;
  if (qword_27F210900 != -1)
  {
    swift_once();
  }

  v63 = v154;
  v64 = *(v154 + 104);
  v65 = v146;
  LODWORD(v132) = *MEMORY[0x277D21C38];
  v66 = v147;
  v131 = v64;
  v64(v146);
  v67 = v125;
  sub_24F92A368();
  v149 = v46;
  v68 = v65;
  v69 = *(v63 + 8);
  v154 = v63 + 8;
  v69(v68, v66);
  v70 = v148;
  sub_24F92A408();
  v71 = *(v155 + 8);
  v155 += 8;
  v71(v67, v70);
  v72 = *&v159[0];
  type metadata accessor for FastImpressionFlushGate();
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73[4] = 0;
  v73[5] = 0;
  v73[2] = v72;
  *(v25 + qword_27F23C898) = v73;
  v74 = (v25 + qword_27F23C8A0);
  v75 = v133;
  *v74 = v152;
  v74[1] = v75;
  v76 = (v25 + qword_27F39DE68);
  v77 = v151;
  *v76 = v153;
  v76[1] = v77;
  v78 = qword_27F2108F0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v79 = v67;
  if (v78 != -1)
  {
    swift_once();
  }

  v133 = "";
  v80 = v146;
  v81 = v147;
  v131(v146, v132, v147);
  sub_24F92A368();
  v69(v80, v81);
  v82 = v148;
  sub_24F92A408();
  v71(v79, v82);
  v83 = *&v159[0];
  type metadata accessor for FastImpressionsTracker();
  v84 = swift_allocObject();
  v84[3] = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  v84[5] = sub_24F929E98();
  swift_allocObject();
  v84[6] = sub_24F929E98();
  v84[4] = v83;
  v85 = sub_24F91F4A8();
  (*(*(v85 - 8) + 56))(v150, 1, 1, v85);
  v155 = sub_24F218910(&qword_27F22D210, type metadata accessor for FastImpressionsTracker, &protocol conformance descriptor for FastImpressionsTracker);
  memset(v159, 0, sizeof(v159));
  v160 = 0;
  *(v25 + qword_27F39CC00) = 0;
  v86 = MEMORY[0x277D84F90];
  *(v25 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v25 + qword_27F2326C8) = 0;
  v87 = *(*v25 + 640);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD70, &unk_24F9D7020);
  v89 = *(*(v88 - 8) + 56);
  v89(v25 + v87, 1, 1, v88);
  v90 = *(*v25 + 648);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v91 - 8) + 56))(v25 + v90, 1, 1, v91);
  v92 = *(*v25 + 656);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD68, &unk_24F989D60);
  (*(*(v93 - 8) + 56))(v25 + v92, 1, 1, v93);
  v89(v25 + *(*v25 + 664), 1, 1, v88);
  v94 = *(*v25 + 672);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v95 - 8) + 56))(v25 + v94, 1, 1, v95);
  v96 = *(*v25 + 680);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v97 - 8) + 56))(v25 + v96, 1, 1, v97);
  v98 = *(*v25 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v157 = v86;
  sub_24F218910(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (*(v138 + 104))(v137, *MEMORY[0x277D85260], v139);
  *(v25 + v98) = sub_24F92BF38();
  sub_24EBD3128(v25 + *(*v25 + 696));
  v99 = (v25 + *(*v25 + 704));
  *v99 = 0u;
  v99[1] = 0u;
  *(v99 + 25) = 0u;
  v100 = *(*v25 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v25 + v100) = sub_24F92ADA8();
  v101 = *(*v25 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v25 + v101) = sub_24F92ADA8();
  v102 = *(*v25 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v25 + v102) = sub_24F92ADA8();
  *(v25 + *(*v25 + 736)) = 0;
  v103 = (v25 + *(*v25 + 752));
  *v103 = 0;
  v103[1] = 0;
  v104 = v150;
  sub_24E60169C(v150, v25 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v159, v25 + *(*v25 + 744), &qword_27F229490, &unk_24F984C40);
  v105 = type metadata accessor for InlineUnifiedMessagePresenter();
  v158.receiver = objc_allocWithZone(v105);
  v158.super_class = v105;
  *(v25 + qword_27F39CC08) = objc_msgSendSuper2(&v158, sel_init);
  v106 = v156;

  v107 = sub_24EBBA1A8(v106, v84, v155, 0);
  v108 = *(*v107 + 1112);

  *(v107 + qword_27F39CC00) = v108(0);

  sub_24EBC957C(0);

  sub_24E601704(v159, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v104, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v84[3] = &protocol witness table for SearchResultsDiffablePagePresenter;
  swift_unknownObjectWeakAssign();
  v109 = (v107 + *(*v107 + 208));
  swift_beginAccess();
  v110 = v151;
  *v109 = v153;
  v109[1] = v110;
  swift_retain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648, &unk_24F9876C0);
  sub_24E602068(&qword_27F22A940, &qword_27F22A648, &unk_24F9876C0, MEMORY[0x277D21A98]);
  sub_24F9288B8();
  type metadata accessor for SearchResultsDiffablePagePresenter(0);
  v111 = v140;
  sub_24F9288C8();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v159);
  (*(v142 + 8))(v111, v144);

  v112 = *(v107 + qword_27F23C898);

  v113 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v114 = *(v112 + 32);
  v115 = *(v112 + 40);
  *(v112 + 32) = sub_24F21C034;
  *(v112 + 40) = v113;

  sub_24E824448(v114, v115);

  return v107;
}

uint64_t sub_24F218910(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F218998()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_24F2189D0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9287F8();
    v3 = __swift_project_value_buffer(v2, qword_27F2230A0);
    sub_24ED48168(v3);
  }

  return result;
}

uint64_t type metadata accessor for SearchResultsDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F23C8A8;
  if (!qword_27F23C8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchResultsDiffablePagePresenter.term.getter()
{
  v1 = *(v0 + qword_27F39DE28);

  return v1;
}

uint64_t sub_24F218AFC()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_27F39DE28 + 8);
  if (v5)
  {
    v15 = *(v0 + qword_27F39DE28);
    v16 = v5;

    sub_24F91EA98();
    sub_24E600AEC();
    v6 = sub_24F92C538();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x745F686372616573;
  *(inited + 40) = 0xEB000000006D7265;
  v15 = 11043298;
  v16 = 0xA300000000000000;
  MEMORY[0x253050C20](v6, v8);

  MEMORY[0x253050C20](11108834, 0xA300000000000000);
  v10 = v16;
  *(inited + 48) = v15;
  *(inited + 56) = v10;
  v11 = sub_24E6086DC(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F219F90, &qword_24F955020);
  v12._object = 0x800000024FA6FD80;
  v12._countAndFlagsBits = 0xD000000000000013;
  countAndFlagsBits = localizedString(_:with:)(v12, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_24F218D20()
{
  v1 = qword_27F39DDD0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F218D64(uint64_t a1)
{
  v3 = qword_27F39DDD0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_24F218E14(_BYTE *a1@<X8>)
{
  v3 = qword_27F39DDD8;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_24F218E68(char *a1)
{
  v2 = *a1;
  v3 = qword_27F39DDD8;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_24F218F18(_BYTE *a1@<X8>)
{
  v3 = qword_27F39DE30;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_24F218F6C(char *a1)
{
  v2 = *a1;
  v3 = qword_27F39DE30;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_24F21901C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39DDE0);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24F219088()
{
  v1 = (v0 + qword_27F39DDE0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24F2190E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27F39DDE0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SearchResultsDiffablePagePresenter.originatingTerm.getter()
{
  v1 = *(v0 + qword_27F39DE50);

  return v1;
}

uint64_t SearchResultsDiffablePagePresenter.guidedSearchOptimizationTerm.getter()
{
  v1 = *(v0 + qword_27F39DE60);

  return v1;
}

uint64_t sub_24F219268()
{
  v1 = qword_27F39DDE8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F2192AC(char a1)
{
  v3 = qword_27F39DDE8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24F2193CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v130 = &v98 - v3;
  v131 = sub_24F91F6B8();
  v108 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v107 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_27F39DE28 + 8))
  {
    v5 = *(v0 + qword_27F39DE28);
    v128 = *(v0 + qword_27F39DE28 + 8);
    v129 = v5;
  }

  else
  {
    v128 = 0xE000000000000000;
    v129 = 0;
  }

  v6 = qword_27F39DE30;
  swift_beginAccess();
  v127 = *(v1 + v6);
  v7 = (v1 + qword_27F39DDE0);
  swift_beginAccess();
  v8 = v7[1];
  v126 = *v7;
  v125 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658, &qword_24F988B80);
  sub_24F92BF18();
  v124 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v132);

  v9 = qword_27F39DDD8;
  swift_beginAccess();
  v123 = *(v1 + v9);
  v122 = *(v1 + qword_27F39DE38);
  v121 = *(v1 + qword_27F39DE40);
  v117 = *(v1 + qword_27F39DE48);
  v10 = *(v1 + qword_27F39DE50 + 8);
  v120 = *(v1 + qword_27F39DE50);
  v116 = v10;
  v118 = *(v1 + qword_27F39DE58);
  v12 = *(v1 + qword_27F23C860 + 8);
  v115 = *(v1 + qword_27F23C860);
  v11 = v115;
  v114 = v12;
  v13 = *(v1 + qword_27F23C860 + 24);
  v113 = *(v1 + qword_27F23C860 + 16);
  v14 = v113;
  v112 = v13;
  v111 = *(v1 + qword_27F23C860 + 32);
  v15 = v111;
  v16 = *(v1 + qword_27F39DE60 + 8);
  v119 = *(v1 + qword_27F39DE60);
  v109 = v16;
  v17 = *(v1 + qword_27F23C860 + 40);
  v110 = v17;

  sub_24EA145F0(v11, v12, v14, v13, v15, v17);

  v18 = v107;
  sub_24F91F6A8();
  v106 = sub_24F91F668();
  v105 = v19;
  (*(v108 + 8))(v18, v131);
  v98 = v1[2];
  v104 = *(v1 + qword_27F23C888);
  v20 = *(v1 + qword_27F23C890 + 8);
  v103 = *(v1 + qword_27F23C890);
  v102 = v20;
  v22 = *(v1 + qword_27F23C8A0 + 8);
  v100 = *(v1 + qword_27F23C8A0);
  v21 = v100;
  v101 = v22;
  swift_beginAccess();
  v23 = v1[3];
  swift_beginAccess();
  v24 = v1[4];
  v25 = *(v1 + qword_27F39DE68 + 8);
  v107 = *(v1 + qword_27F39DE68);
  v108 = v25;
  type metadata accessor for SearchResultsDiffablePageContentPresenter(0);
  v26 = swift_allocObject();
  v27 = qword_27F238640;
  v99 = v24;

  v131 = v23;

  v28 = MEMORY[0x277D84F90];
  *(v26 + v27) = sub_24E60A69C(MEMORY[0x277D84F90]);
  v29 = (v26 + qword_27F238648);
  *v29 = v21;
  v29[1] = v22;
  v30 = sub_24F91F4A8();
  (*(*(v30 - 8) + 56))(v130, 1, 1, v30);
  *(v26 + qword_27F22F198) = 0;
  *(v26 + qword_27F22F1A0) = v28;
  v31 = qword_27F39C780;
  swift_unknownObjectRetain();

  *(v26 + v31) = sub_24E60986C(v28);
  v32 = (v26 + qword_27F22F1A8);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v26 + qword_27F22F1B0);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v26 + qword_27F22F1B8);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v26 + qword_27F22F1C0);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v26 + qword_27F22F1C8);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v26 + qword_27F39C788);
  *v37 = 0u;
  v37[1] = 0u;
  *(v37 + 25) = 0u;
  *(v26 + qword_27F39C790) = 0;
  *(v26 + qword_27F22F1D0) = 0;
  *(v26 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v26 + qword_27F39C798) = 0;
  v38 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78, &qword_24F989D70);
  swift_allocObject();
  *(v26 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v26 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90, &qword_24F989D80);
  swift_allocObject();
  *(v26 + v40) = sub_24F92ADA8();
  v41 = qword_27F39C7B8;
  swift_allocObject();
  *(v26 + v41) = sub_24F92ADA8();
  v42 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v26 + v42) = sub_24F92ADA8();
  v43 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v26 + v43) = sub_24F92ADA8();
  v44 = qword_27F22F1E0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v46 = *(*(v45 - 8) + 56);
  v47 = v26 + v44;
  v48 = v98;
  v46(v47, 1, 1, v45);
  v46(v26 + qword_27F22F1E8, 1, 1, v45);
  *(v26 + 16) = v48;
  sub_24E911D90(v130, v26 + qword_27F39C7D0);
  v49 = *v32;
  v50 = v32[1];
  *v32 = 0;
  v32[1] = 0;
  sub_24E824448(v49, v50);
  v51 = *v34;
  v52 = v34[1];
  *v34 = 0;
  v34[1] = 0;
  sub_24E824448(v51, v52);
  v53 = *v33;
  v54 = v33[1];
  *v33 = 0;
  v33[1] = 0;
  sub_24E824448(v53, v54);
  v55 = *v35;
  v56 = v35[1];
  *v35 = 0;
  v35[1] = 0;
  sub_24E824448(v55, v56);
  v57 = *v36;
  v58 = v36[1];
  *v36 = 0;
  v36[1] = 0;
  sub_24E824448(v57, v58);
  *(v26 + qword_27F22F1F0) = v131;
  v59 = v99;
  *(v26 + qword_27F39C7D8) = v99;
  v60 = swift_allocObject();
  *(v60 + 24) = v102;
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v60;
  *(v62 + 24) = v61;
  *(v62 + 32) = v48;
  *(v62 + 40) = v59;
  v63 = v105;
  *(v62 + 48) = v106;
  *(v62 + 56) = v63;
  v64 = v128;
  *(v62 + 64) = v129;
  *(v62 + 72) = v64;
  *(v62 + 80) = v127;
  v65 = v125;
  *(v62 + 88) = v126;
  *(v62 + 96) = v65;
  *(v62 + 104) = v124;
  *(v62 + 112) = v123;
  *(v62 + 113) = v122;
  *(v62 + 114) = v121;
  v66 = v120;
  *(v62 + 120) = v117;
  *(v62 + 128) = v66;
  v67 = v118;
  *(v62 + 136) = v116;
  *(v62 + 144) = v67;
  v68 = v114;
  *(v62 + 152) = v115;
  *(v62 + 160) = v68;
  v69 = v112;
  *(v62 + 168) = v113;
  *(v62 + 176) = v69;
  *(v62 + 184) = v111;
  *(v62 + 192) = v110;
  v70 = v109;
  *(v62 + 200) = v119;
  *(v62 + 208) = v70;
  v71 = v100;
  *(v62 + 216) = 0;
  *(v62 + 224) = v71;
  *(v62 + 232) = v101;
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = swift_allocObject();
  v74 = v107;
  v73[2] = v72;
  v73[3] = v74;
  v73[4] = v108;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_24F08D6D0;
  *(v75 + 24) = v48;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_24F08D7E8;
  *(v76 + 24) = v62;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_24E965628;
  *(v77 + 24) = v76;
  v78 = (v26 + qword_27F22F1A8);
  v79 = *(v26 + qword_27F22F1A8);
  v80 = *(v26 + qword_27F22F1A8 + 8);
  *v78 = sub_24E965630;
  v78[1] = v77;
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_retain_n();

  swift_unknownObjectRetain();

  sub_24E824448(v79, v80);
  v81 = (v26 + qword_27F22F1B0);
  v82 = *(v26 + qword_27F22F1B0);
  v83 = *(v26 + qword_27F22F1B0 + 8);
  if (v82)
  {
    v84 = swift_allocObject();
    *(v84 + 16) = v82;
    *(v84 + 24) = v83;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_24E8D23E0;
    *(v85 + 24) = v84;
    v86 = sub_24E965648;
  }

  else
  {
    v86 = 0;
    v85 = *(v26 + qword_27F22F1B0 + 8);
  }

  *v81 = v86;
  v81[1] = v85;
  sub_24E5FCA4C(v82, v83);
  sub_24E824448(v82, v83);
  v87 = swift_allocObject();
  *(v87 + 16) = sub_24F08D6DC;
  *(v87 + 24) = v73;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_24E965638;
  *(v88 + 24) = v87;
  v89 = (v26 + qword_27F22F1B8);
  v90 = *(v26 + qword_27F22F1B8);
  v91 = *(v26 + qword_27F22F1B8 + 8);
  *v89 = sub_24E965640;
  v89[1] = v88;

  sub_24E824448(v90, v91);
  v92 = swift_allocObject();
  *(v92 + 16) = sub_24ECB25B4;
  *(v92 + 24) = v75;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_24E965628;
  *(v93 + 24) = v92;
  v94 = (v26 + qword_27F22F1C8);
  v95 = *(v26 + qword_27F22F1C8);
  v96 = *(v26 + qword_27F22F1C8 + 8);
  *v94 = sub_24E965630;
  v94[1] = v93;

  sub_24E824448(v95, v96);

  return v26;
}

double sub_24F21A098(void **a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_24F2F4B68(*a1, a1[1], v3);
  if ((v3 & 0x80000000) == 0)
  {

    v5 = qword_27F39DDD0;
    swift_beginAccess();
    if (!*(v1 + v5))
    {
      v6 = *&v2[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason];
      v7 = *&v2[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8];
      if (!v7)
      {
        v8._countAndFlagsBits = 0xD000000000000017;
        v8._object = 0x800000024FA6FF50;
        v9._countAndFlagsBits = 0;
        v9._object = 0xE000000000000000;
        localizedString(_:comment:)(v8, v9);
        v11 = *(v1 + qword_27F39DE28);
        v10 = *(v1 + qword_27F39DE28 + 8);
        if (v10)
        {
          v12 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v12 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (v12)
          {
            v13._object = 0x800000024FA6FF70;
            v13._countAndFlagsBits = 0xD000000000000011;
            v14._countAndFlagsBits = 0;
            v14._object = 0xE000000000000000;
            localizedString(_:comment:)(v13, v14);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_24F93DE60;
            *(v15 + 56) = MEMORY[0x277D837D0];
            *(v15 + 64) = sub_24E90A06C();
            *(v15 + 32) = v11;
            *(v15 + 40) = v10;

            sub_24F92B0A8();
          }
        }
      }

      sub_24ECDE61C(v6, v7);
      sub_24F92AD88();
    }
  }

  return result;
}

void sub_24F21A2EC(uint64_t a1, int a2)
{
  sub_24F2F70DC(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled);
  v5 = qword_27F39DDE8;
  swift_beginAccess();
  v52 = v4;
  v51 = v5;
  *(v2 + v5) = v4;
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink);
  v7 = qword_27F39DDF0;
  swift_beginAccess();
  v54 = v2;
  *(v2 + v7) = v6;

  v8 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v53 = v8;
  v9 = *(a1 + v8);
  v10 = MEMORY[0x277D84F90];
  v55[0] = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  v12 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v11)
  {
    v15 = v10;
    goto LABEL_14;
  }

  v13 = 0;
  v14 = v9 + 32;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v16 = v14 + 40 * v13;
    v17 = v13;
    while (1)
    {
      if (v17 >= *(v9 + 16))
      {
        goto LABEL_59;
      }

      sub_24E65864C(v16, &_);
      if (!*(*(a1 + v12) + 16))
      {
        goto LABEL_4;
      }

      sub_24E76D934(&_);
      if (v18)
      {
        break;
      }

LABEL_4:
      ++v17;
      sub_24E6585F8(&_);
      v16 += 40;
      if (v11 == v17)
      {
        goto LABEL_14;
      }
    }

    v19 = sub_24E6585F8(&_);
    MEMORY[0x253050F00](v19);
    if (*((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v13 = v17 + 1;
    sub_24F92B638();
    v15 = v55[0];
    v14 = v9 + 32;
  }

  while (v11 - 1 != v17);
LABEL_14:

  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_61;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v21 = 0;
    v22 = 0;
    while (v20 != v21)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x253052270](v21, v15);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v21 >= *(v16 + 16))
        {
          goto LABEL_57;
        }

        if (__OFADD__(v21, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      v24 = *(*(v23 + 24) + 16);

      ++v21;
      v25 = __OFADD__(v22, v24);
      v22 += v24;
      if (v25)
      {
        goto LABEL_58;
      }
    }

    v26 = qword_27F39DDD0;
    v27 = v54;
    swift_beginAccess();
    *(v54 + v26) = v22;
    v15 = *(a1 + v53);
    v56 = v10;
    v28 = *(v15 + 16);

    swift_beginAccess();
    if (v28)
    {
      v29 = 0;
      v30 = v15 + 32;
      v10 = MEMORY[0x277D84F90];
      v53 = v15 + 32;
LABEL_29:
      v31 = v30 + 40 * v29;
      v16 = v29;
      while (v16 < *(v15 + 16))
      {
        sub_24E65864C(v31, v55);
        if (*(*(a1 + v12) + 16))
        {

          sub_24E76D934(v55);
          if (v32)
          {

            v33 = sub_24E6585F8(v55);
            MEMORY[0x253050F00](v33);
            if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            v29 = v16 + 1;
            sub_24F92B638();
            v10 = v56;
            v30 = v15 + 32;
            v27 = v54;
            if (v28 - 1 != v16)
            {
              goto LABEL_29;
            }

            goto LABEL_40;
          }
        }

        ++v16;
        sub_24E6585F8(v55);
        v31 += 40;
        if (v28 == v16)
        {
          v27 = v54;
          goto LABEL_40;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      v20 = sub_24F92C738();
      continue;
    }

    break;
  }

LABEL_40:

  if (v10 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_42;
    }

LABEL_63:

    goto LABEL_64;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_63;
  }

LABEL_42:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x253052270](0, v10);
LABEL_45:

    v35 = *(v34 + 24);

    if (!*(v35 + 16))
    {
      goto LABEL_63;
    }

    sub_24E615E00(v35 + 32, &_);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    type metadata accessor for AdvertsSearchResult(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_64;
    }

    v15 = *(v55[0] + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
    if (v15 >> 62)
    {
      goto LABEL_71;
    }

    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v10 + 32);

      goto LABEL_45;
    }

    __break(1u);
LABEL_71:
    if (!sub_24F92C738())
    {
LABEL_72:

      goto LABEL_64;
    }
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v15 + 32);

      goto LABEL_52;
    }

    __break(1u);
LABEL_81:
    MEMORY[0x253052270](0, v15);

    swift_unknownObjectRelease();
LABEL_64:
    v37 = 0;
    goto LABEL_65;
  }

  v10 = MEMORY[0x253052270](0, v15);

LABEL_52:
  v15 = *(v10 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_trailers);
  if (!(v15 >> 62))
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_75;
    }

    goto LABEL_54;
  }

  if (sub_24F92C738())
  {
LABEL_54:
    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_81;
    }

    v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v36)
    {
      goto LABEL_64;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_75:
  v50 = *(v10 + OBJC_IVAR____TtC12GameStoreKit16MixedMediaLockup_screenshots);
  if (v50 >> 62)
  {
    if (!sub_24F92C738())
    {
      goto LABEL_83;
    }

LABEL_77:
    if ((v50 & 0xC000000000000001) != 0)
    {
      MEMORY[0x253052270](0, v50);
      swift_unknownObjectRelease();
    }

    else if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    goto LABEL_64;
  }

  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_77;
  }

LABEL_83:

  v37 = 1;
LABEL_65:
  *(v27 + qword_27F23C868) = v37;
  sub_24F92AD88();
  if (*(v27 + v26))
  {
    *(v27 + v51) = v52;
    v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
    v39 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
    v40 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 24);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
    _.value.resetButtonTitle.value._countAndFlagsBits = v38;
    _.value.resetButtonTitle.value._object = v39;
    _.value.allowsResetButton = v40;
    v41._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions);
    sub_24E903680(_.value.facetGroups._rawValue, v38, v39);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&_, v41);
    sub_24E9036C4(_.value.facetGroups._rawValue);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message);

    sub_24F92AD88();
  }

  else
  {
    v42 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
    v43 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
    v44 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 24);
    _.value.facetGroups._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
    _.value.resetButtonTitle.value._countAndFlagsBits = v42;
    _.value.resetButtonTitle.value._object = v43;
    _.value.allowsResetButton = v44;
    v45._rawValue = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions);
    sub_24E903680(_.value.facetGroups._rawValue, v42, v43);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&_, v45);
    sub_24E9036C4(_.value.facetGroups._rawValue);
  }

  v46 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction);
  v47 = qword_27F39DE18;
  swift_beginAccess();
  *(v27 + v47) = v46;

  v48 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction);
  v49 = qword_27F39DE10;
  swift_beginAccess();
  *(v27 + v49) = v48;
}

uint64_t sub_24F21ABB0(double a1)
{
  v3 = qword_27F39DDF0;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    return 0;
  }

  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {

    goto LABEL_18;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    goto LABEL_17;
  }

  v11 = sub_24F92B0D8();
  v13 = v12;
  if (v11 == sub_24F92B0D8() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (a1 == 1.0)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_30:
  v24 = sub_24F92B0D8();
  v26 = v25;
  if (v24 == sub_24F92B0D8() && v26 == v27)
  {

    goto LABEL_35;
  }

  v28 = sub_24F92CE08();

  if ((v28 & 1) == 0)
  {
    v29 = sub_24F92B0D8();
    v31 = v30;
    if (v29 == sub_24F92B0D8() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_24F92CE08();

      if ((v33 & 1) == 0)
      {
LABEL_44:
        v34 = sub_24F92B0D8();
        v36 = v35;
        if (v34 == sub_24F92B0D8() && v36 == v37)
        {

          goto LABEL_48;
        }

        v38 = sub_24F92CE08();

        if (v38)
        {
LABEL_48:
          if (a1 == 3.0)
          {
            v18 = 9;
            goto LABEL_19;
          }
        }

LABEL_18:
        v18 = 5;
        goto LABEL_19;
      }
    }

    if (a1 == 2.0)
    {

      v18 = 10;
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_35:
  if (*(v1 + qword_27F23C868))
  {
    v18 = 11;
  }

  else
  {
    v18 = 10;
  }

LABEL_19:
  v19 = qword_27F39DDD0;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 < v18 && v20 >= 1)
  {
    v22 = *(*v1 + 704);
    swift_beginAccess();
    sub_24E9B7D88(v1 + v22, &v43);
    *&v40[9] = *&v44[9];
    v39 = v43;
    *v40 = *v44;
    if (v44[24])
    {
      sub_24E612B0C(&v39, &v41);
    }

    else
    {

      v41 = v39;
      v42 = *v40;
    }

    v39 = v41;
    *v40 = v42;
    v23 = *(&v42 + 1);
    sub_24E601704(&v39, &qword_27F2129B0, &unk_24F945320);
    if (!v23)
    {
      v18 = *(v1 + v19);
    }
  }

  result = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_24F21AFC4()
{
  v1 = *(v0 + qword_27F23C898);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_24ECB2170;
    v9[5] = v4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24ECAEFC8;
    v9[3] = &block_descriptor_129;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
    _Block_release(v5);

    v8 = [objc_opt_self() mainRunLoop];
    [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

    swift_unknownObjectWeakAssign();
  }
}

double sub_24F21B294()
{

  sub_24EA14B54(*(v0 + qword_27F23C860), *(v0 + qword_27F23C860 + 8), *(v0 + qword_27F23C860 + 16), *(v0 + qword_27F23C860 + 24), *(v0 + qword_27F23C860 + 32), *(v0 + qword_27F23C860 + 40));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return result;
}

uint64_t SearchResultsDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBF8F8();

  sub_24EA14B54(*(v0 + qword_27F23C860), *(v0 + qword_27F23C860 + 8), *(v0 + qword_27F23C860 + 16), *(v0 + qword_27F23C860 + 24), *(v0 + qword_27F23C860 + 32), *(v0 + qword_27F23C860 + 40));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t SearchResultsDiffablePagePresenter.__deallocating_deinit()
{
  SearchResultsDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24F21B604(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DDD0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F21B65C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39DDD0;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_24F21B6B0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DDD8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F21B714(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DE30;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_24F21B778@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39DDE0);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

void sub_24F21B7D4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DDE8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F21B82C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39DDE8;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24F21BE98()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F21BED0()
{

  if (*(v0 + 160) != 1)
  {

    sub_24E7B6564(*(v0 + 184), *(v0 + 192));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F21BF94()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F21BFD4()
{

  return swift_deallocObject();
}

void *ComponentContainerCollectionElementsObserver.__allocating_init(presenter:parent:scrollObserver:impressionsCalculator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[2] = a1;
  v12[3] = a2;
  swift_unknownObjectWeakAssign();

  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  return v12;
}

void *ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  v6[2] = a1;
  v6[3] = a2;
  swift_unknownObjectWeakAssign();

  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.__allocating_init(itemLayoutContext:doesModelContainment:presenter:scrollObserver:impressionsCalculator:parent:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24EB64874(a1, v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  *(v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = a2;
  v17 = (v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver);
  *v18 = a5;
  v18[1] = a6;
  *(v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = a7;
  swift_unknownObjectWeakAssign();

  return v16;
}

void sub_24F21C248(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v6 = a1;
    v5(ObjectType, v3);
  }
}

uint64_t ComponentContainerCollectionElementsObserver.deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 32);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ComponentContainerCollectionElementsObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.init(itemLayoutContext:doesModelContainment:presenter:scrollObserver:impressionsCalculator:parent:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_unknownObjectWeakInit();
  sub_24EB64874(a1, v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  *(v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = a2;
  v17 = (v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver);
  *v18 = a5;
  v18[1] = a6;
  *(v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = a7;
  swift_unknownObjectWeakAssign();

  return v8;
}

uint64_t sub_24F21C4F0()
{
  type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  return v1;
}

void sub_24F21C578()
{
  type metadata accessor for ItemLayoutContext(0);
  type metadata accessor for ShelfLayoutContext(0);

  JUMPOUT(0x253045380);
}

uint64_t sub_24F21C5E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458, &unk_24F9822A0);
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for ItemLayoutContext(0);
  type metadata accessor for ShelfLayoutContext(0);
  sub_24F92C7F8();
  sub_24F92AD68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  sub_24E602068(&qword_27F228460, &qword_27F23A6C0, &qword_24F9A56A0, MEMORY[0x277D22080]);
  return sub_24F929648();
}

void sub_24F21C748(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) == 1)
  {
    type metadata accessor for ItemLayoutContext(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCA8, &qword_24F99E850);
    if (swift_dynamicCast())
    {
      if (*(&v5 + 1))
      {
        sub_24E612C80(&v4, v7);
        v3 = v7[1];
        *a1 = v7[0];
        *(a1 + 16) = v3;
        *(a1 + 32) = v8;
        return;
      }
    }

    else
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
    }

    sub_24F21D594(&v4);
    sub_24F92CA88();
    __break(1u);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_24F21C8A4()
{
  sub_24F21C748(&v4);
  if (v5)
  {
    sub_24E612C80(&v4, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = (*(v1 + 32))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_24F21D594(&v4);
    type metadata accessor for ItemLayoutContext(0);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    sub_24F928A48();

    v2 = *(v6[0] + 16);
  }

  return v2;
}

void *sub_24F21C99C(uint64_t a1)
{
  sub_24F21C748(&v6);
  if (v7)
  {
    sub_24E612C80(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 16))(a1, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_24F21D594(&v6);
    type metadata accessor for ItemLayoutContext(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    return sub_24F928A58();
  }
}

uint64_t sub_24F21CAC0@<X0>(void (*a1)(char *, uint64_t *, void, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458, &unk_24F9822A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - v4;
  v6 = sub_24F91FA78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = v2 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v17 = *(v2 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  v18 = v16 + *(type metadata accessor for ItemLayoutContext(0) + 32);
  v19 = type metadata accessor for ShelfLayoutContext(0);
  MEMORY[0x253045380](v17, *(v18 + *(v19 + 20)));
  v20 = *(v7 + 16);
  v20(v12, v15, v6);
  v21.n128_f64[0] = v20(v9, v12, v6);
  sub_24EBD6F8C(v21);
  v22 = sub_24F92B418();
  v23 = sub_24E8E89B4(v22);

  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
  sub_24E602068(&qword_27F22AF78, &qword_27F2214E0, &qword_24F9664A0, MEMORY[0x277D83970]);
  sub_24F92AD58();
  v24 = *(v7 + 8);
  v24(v12, v6);
  v30 = *(v18 + *(v19 + 36));

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  v26 = sub_24E602068(&qword_27F228460, &qword_27F23A6C0, &qword_24F9A56A0, MEMORY[0x277D22080]);
  v29(v5, &v30, MEMORY[0x277D84A98], v25, v26);
  return (v24)(v15, v6);
}

uint64_t sub_24F21CDD4@<X0>(void (*a2)(uint64_t, uint64_t *, void, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458, &unk_24F9822A0);
  MEMORY[0x28223BE20](v4 - 8);
  v24[0] = v24 - v5;
  v6 = sub_24F91FA78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = v3 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v14 = v13 + *(type metadata accessor for ItemLayoutContext(0) + 32);
  v15 = type metadata accessor for ShelfLayoutContext(0);
  sub_24F91FA38();
  sub_24F91FA58();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v17.n128_f64[0] = (*(v7 + 16))(v9, v12, v6);
  sub_24EBD6F8C(v17);
  v18 = sub_24F92B418();
  v19 = sub_24E8E89B4(v18);

  v26 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
  sub_24E602068(&qword_27F22AF78, &qword_27F2214E0, &qword_24F9664A0, MEMORY[0x277D83970]);
  v20 = v24[0];
  sub_24F92AD58();
  v26 = *(v14 + *(v15 + 36));

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  v22 = sub_24E602068(&qword_27F228460, &qword_27F23A6C0, &qword_24F9A56A0, MEMORY[0x277D22080]);
  v25(v20, &v26, MEMORY[0x277D84A98], v21, v22);
  return (v16)(v12, v6);
}

uint64_t sub_24F21D0A8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment);
  v4 = *(v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter + 8);
  ObjectType = swift_getObjectType();
  v6 = v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v7 = v6 + *(type metadata accessor for ItemLayoutContext(0) + 20);
  if (v3 == 1)
  {
    v8 = a1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  return (*(v4 + 8))(v7, v8, v9, ObjectType, v4);
}

uint64_t sub_24F21D158()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter + 8);
  ObjectType = swift_getObjectType();
  v3 = v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext(0);
  return (*(v1 + 16))(v3 + *(v4 + 32), ObjectType, v1);
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.deinit()
{
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_parent);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.__deallocating_deinit()
{
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_parent);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_24F21D340(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ItemLayoutContext(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v12 = result;
      sub_24E8E7F4C(a2, v10);
      swift_getKeyPath();
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
      sub_24F928A48();

      v14 = v25 == 27;
      v15 = *(v4 + 56);
      type metadata accessor for ComponentContainerCollectionElementsObserver.ContainerDelegate(0);
      v16 = *(v4 + 40);
      v23 = *(v4 + 16);
      v24 = v16;
      Strong = swift_unknownObjectWeakLoadStrong();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24EB64874(v10, v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = v14;
      v19 = v24;
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter) = v23;
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver) = v19;
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = v15;
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v21 = *(v12 + 16);

      v21(v22, &protocol witness table for ComponentContainerCollectionElementsObserver.ContainerDelegate, a2, a3, ObjectType, v12);
    }
  }

  return result;
}

uint64_t sub_24F21D594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCA0, &qword_24F99E848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ComponentContainerCollectionElementsObserver.ContainerDelegate(uint64_t a1)
{
  result = qword_27F23C8C8;
  if (!qword_27F23C8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F21D6E8(uint64_t a1)
{
  result = type metadata accessor for ItemLayoutContext(319);
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

uint64_t ShelfBatch.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShelfBatch.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShelfBatch.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v76 = a2;
  v77 = v2;
  v71 = *v3;
  v5 = sub_24F9285B8();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_24F928E68();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v24 = *(v13 + 8);
  v22 = v13 + 8;
  v23 = v24;
  v25 = v17;
  v26 = v12;
  v24(v25, v12);
  v27 = *(v19 + 48);
  if (v27(v11, 1, v18) == 1)
  {
    sub_24E601704(v11, qword_27F221C40, &unk_24F967D80);
    v28 = sub_24F92AC38();
    sub_24F21F560(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v29 = 0x7365766C656873;
    v30 = v71;
    v29[1] = 0xE700000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v23(v73, v26);
    type metadata accessor for ShelfBatch();
    swift_deallocPartialClassInstance();
    (*(v74 + 8))(v76, v75);
    return v77;
  }

  v63 = v27;
  v64 = v19;
  v65 = v23;
  v66 = v22;
  v67 = v26;
  v31 = *(v19 + 32);
  v71 = v18;
  v31(v21, v11, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x277D84F90];
  v78 = v32;
  v33 = v21;
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v34, qword_27F22D8D8);
  v35 = v72;
  v36 = v76;
  sub_24F928528();

  v79 = MEMORY[0x277D84F98];
  MEMORY[0x28223BE20](v37);
  *(&v62 - 4) = v35;
  *(&v62 - 3) = &v79;
  *(&v62 - 2) = v36;
  type metadata accessor for Shelf(0);
  v38 = v69;
  v39 = sub_24F928E38();
  v40 = v38;
  v41 = v73;
  if (v38)
  {
    goto LABEL_17;
  }

  v42 = v39;
  v69 = v33;
  v43 = v68;
  sub_24F928398();
  v44 = v70;
  sub_24F9281F8();
  v65(v43, v67);
  v45 = v63(v44, 1, v71);
  if (v45 == 1)
  {
    sub_24E601704(v44, qword_27F221C40, &unk_24F967D80);
    sub_24ECDF110();
    v77[2] = v42;
    v47 = v74;
    v46 = v75;
    v48 = v64;
LABEL_9:
    v50 = sub_24E609400(MEMORY[0x277D84F90]);
    goto LABEL_10;
  }

  v49 = v42;
  MEMORY[0x28223BE20](v45);
  *(&v62 - 2) = v72;
  *(&v62 - 1) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  v50 = sub_24F928E38();
  v51 = v44;
  v47 = v74;
  v46 = v75;
  v48 = v64;
  (*(v64 + 8))(v51, v71);
  sub_24ECDF110();
  v77[2] = v49;
  if (!v50)
  {
    goto LABEL_9;
  }

LABEL_10:
  v77[3] = v50;
  v52 = v79;
  v53 = *(v79 + 16);
  if (!v53)
  {
    v54 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v54 = sub_24EAE67B4(*(v79 + 16), 0);
  v55 = *(sub_24F92A1F8() - 8);
  sub_24EAE79E0(&v78, &v54[(*(v55 + 80) + 32) & ~*(v55 + 80)], v53, v52, v56);
  v58 = v57;
  v59 = v78;

  sub_24E6586B4(v59);
  if (v58 == v53)
  {
    v46 = v75;
    v36 = v76;
    v41 = v73;
    v47 = v74;
    v48 = v64;
LABEL_14:
    v65(v41, v67);
    (*(v48 + 8))(v69, v71);
    v77[4] = v54;

    v60 = *(v47 + 8);
    v60(v72, v46);
    v60(v36, v46);
    return v77;
  }

  __break(1u);
LABEL_17:

  type metadata accessor for ShelfBatch();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void *sub_24F21E268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void (**a6)(unint64_t, char *, uint64_t)@<X5>, void *a7@<X8>)
{
  v92 = a6;
  v105 = a5;
  v100 = a4;
  v101 = a3;
  v84 = a2;
  v104 = a1;
  v94 = a7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v83 - v7;
  v8 = sub_24F92AC38();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = sub_24F92A1F8();
  v103 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v109 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v83 - v14;
  v88 = sub_24F92AC28();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v102 = &v83 - v17;
  v18 = sub_24F9285B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v83 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = sub_24F928388();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v83 - v29;
  type metadata accessor for Shelf(0);
  (*(v25 + 16))(v30, v101, v24);
  v33 = *(v19 + 16);
  v31 = v19 + 16;
  v32 = v33;
  (v33)(v23, v100, v18);
  v34 = v99;
  v35 = Shelf.__allocating_init(deserializing:using:)(v30, v23);
  if (v34)
  {
    v36 = type metadata accessor for ShelfBatch();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_24F93DE60;
    *(v37 + 32) = v34;
    v38 = v93;
    *v93 = 0x7365766C656873;
    v38[1] = 0xE700000000000000;
    v38[2] = v36;
    v38[3] = v37;
    v40 = v97;
    v39 = v98;
    (*(v97 + 104))(v38, *MEMORY[0x277D22540], v98);
    v41 = v34;
    v42 = v89;
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
    sub_24F9285D8();
    (*(v90 + 1))(v42, v91);
    sub_24F21F5A8(v108, v106);
    if (v107)
    {
      __swift_project_boxed_opaque_existential_1(v106, v107);
      sub_24F21F560(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      v43 = swift_allocError();
      (*(v40 + 16))(v44, v38, v39);
      sub_24F929EC8();

      sub_24E601704(v108, &qword_27F226730, &unk_24F984CC0);
      (*(v40 + 8))(v38, v39);

      result = __swift_destroy_boxed_opaque_existential_1(v106);
    }

    else
    {

      sub_24E601704(v108, &qword_27F226730, &unk_24F984CC0);
      (*(v40 + 8))(v38, v39);
      result = sub_24E601704(v106, &qword_27F226730, &unk_24F984CC0);
    }

    v52 = v94;
    *(v94 + 1) = 0u;
    v52[2] = 0u;
    *v52 = 0u;
    return result;
  }

  v97 = v31;
  v98 = v32;
  v99 = v18;
  v46 = v85;
  v90 = v35;
  v91 = 0;
  sub_24F928398();
  v47 = v86;
  sub_24F9282B8();
  (*(v25 + 8))(v27, v24);
  v48 = v87;
  v49 = v88;
  if ((*(v87 + 48))(v47, 1, v88) == 1)
  {
    sub_24E601704(v47, &qword_27F2213B0, &qword_24F965EC0);
    v50 = v84;
    v51 = v104;
LABEL_26:
    v108[0] = v51;
    v108[1] = v50;

    v82 = v94;
    result = sub_24F92C7F8();
    v82[5] = v90;
    return result;
  }

  v53 = v102;
  (*(v48 + 32))(v102, v47, v49);
  (*(v48 + 16))(v46, v53, v49);
  (v98)(v83, v100, v99);
  v54 = v96;
  v55 = sub_24F92B6A8();
  v56 = v103;
  v51 = v104;
  v100 = *(v55 + 16);
  v101 = v55;
  v57 = v95;
  if (!v100)
  {
LABEL_25:

    (*(v87 + 8))(v53, v88);
    v50 = v84;
    goto LABEL_26;
  }

  v58 = 0;
  v99 = (v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80)));
  v93 = (v103 + 32);
  v98 = (v103 + 8);
  v92 = (v103 + 40);
  v97 = v103 + 16;
  while (v58 < *(v101 + 16))
  {
    v59 = *(v56 + 72);
    v60 = *(v56 + 16);
    v60(v57, &v99[v59 * v58], v54);
    v61 = sub_24F92A1E8();
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      v60(v109, v57, v54);
      v65 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = *v65;
      v67 = v108[0];
      *v65 = 0x8000000000000000;
      v68 = sub_24E76D644(v63, v64);
      v70 = *(v67 + 16);
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_29;
      }

      v74 = v69;
      if (*(v67 + 24) >= v73)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v78 = v68;
        sub_24E8B6620();
        v68 = v78;
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v76 = v68;

        v77 = v108[0];
        v54 = v96;
        (*v92)(*(v108[0] + 56) + v76 * v59, v109, v96);
        v57 = v95;
        (*v98)(v95, v54);
      }

      else
      {
        sub_24E8A8AD4(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_24E76D644(v63, v64);
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_31;
        }

LABEL_19:
        if (v74)
        {
          goto LABEL_20;
        }

LABEL_22:
        v77 = v108[0];
        *(v108[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v79 = (v77[6] + 16 * v68);
        *v79 = v63;
        v79[1] = v64;
        v54 = v96;
        (*v93)(v77[7] + v68 * v59, v109, v96);
        v57 = v95;
        (*v98)(v95, v54);
        v80 = v77[2];
        v72 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v72)
        {
          goto LABEL_30;
        }

        v77[2] = v81;
      }

      *v105 = v77;

      goto LABEL_11;
    }

    (*v98)(v57, v54);
LABEL_11:
    v53 = v102;
    v56 = v103;
    ++v58;
    v51 = v104;
    if (v100 == v58)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24F21EE00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v41 = a5;
  v37 = a1;
  v38 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v42 = sub_24F92AC38();
  v47 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24F9285B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F928388();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a3, v19);
  (*(v15 + 16))(v17, a4, v14);
  v23 = sub_24F92A868();
  sub_24F21F560(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
  v24 = swift_allocError();
  v25 = v43;
  JSError.init(deserializing:using:)(v21, v17, v26);
  if (v25)
  {
    v43 = a6;
    MEMORY[0x253053F50](v24, v23);
    v27 = type metadata accessor for ShelfBatch();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93DE60;
    *(v28 + 32) = v25;
    *v13 = 0x726F727265;
    v13[1] = 0xE500000000000000;
    v13[2] = v27;
    v13[3] = v28;
    v29 = v42;
    (*(v47 + 104))(v13, *MEMORY[0x277D22540], v42);
    v30 = v25;
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
    sub_24F9285D8();
    (*(v39 + 8))(v11, v40);
    sub_24F21F5A8(v46, v44);
    if (v45)
    {
      __swift_project_boxed_opaque_existential_1(v44, v45);
      sub_24F21F560(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      v31 = swift_allocError();
      v32 = v47;
      (*(v47 + 16))(v33, v13, v29);
      sub_24F929EC8();

      sub_24E601704(v46, &qword_27F226730, &unk_24F984CC0);
      (*(v32 + 8))(v13, v29);

      __swift_destroy_boxed_opaque_existential_1(v44);
    }

    else
    {

      sub_24E601704(v46, &qword_27F226730, &unk_24F984CC0);
      (*(v47 + 8))(v13, v29);
      sub_24E601704(v44, &qword_27F226730, &unk_24F984CC0);
    }

    v35 = v43;
    *v43 = 0;
    v35[1] = 0;
    v35[2] = 0;
  }

  else
  {
    v34 = v38;
    *a6 = v37;
    a6[1] = v34;
    a6[2] = v24;
  }
}

void *ShelfBatch.__allocating_init(shelves:errors:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_24E954344(a1);
  v8 = v7;

  v6[2] = v8;
  v6[3] = a2;
  v6[4] = a3;
  return v6;
}

void *ShelfBatch.init(shelves:errors:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E954344(a1);
  v7 = v6;

  v3[2] = v7;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t ShelfBatch.deinit()
{

  return v0;
}

uint64_t ShelfBatch.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24F21F488@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShelfBatch();
  v7 = swift_allocObject();
  result = ShelfBatch.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F21F560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F21F5A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226730, &unk_24F984CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 BatchPurchaseParams.PurchaseItem.init(deserializing:using:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24F928388();
  v11 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  sub_24F928398();
  (*(v8 + 16))(v10, a2, v7);
  v17 = v42;
  PurchaseRepresentation.init(deserializing:using:)(v16, v10, v43);
  if (v17)
  {
    (*(v8 + 8))(a2, v7);
    (*(v11 + 8))(a1, v59);
    return result;
  }

  v36 = v8;
  v37 = v7;
  v38 = 0;
  v39 = a2;
  v55 = v43[10];
  v56 = v43[11];
  v57 = v43[12];
  v58 = v44;
  v51 = v43[6];
  v52 = v43[7];
  v53 = v43[8];
  v54 = v43[9];
  v47 = v43[2];
  v48 = v43[3];
  v49 = v43[4];
  v50 = v43[5];
  v45 = v43[0];
  v46 = v43[1];
  v42 = a1;
  sub_24F928398();
  v19 = v40;
  sub_24F9281F8();
  v20 = *(v11 + 8);
  v21 = v59;
  v20(v13, v59);
  v22 = v20;
  v23 = sub_24F928E68();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    sub_24E601704(v19, qword_27F221C40, &unk_24F967D80);
    v25 = v36;
    v26 = v37;
    v27 = v41;
LABEL_7:
    v28 = sub_24E6086DC(MEMORY[0x277D84F90]);
    (*(v25 + 8))(v39, v26);
    v22(v42, v21);

    goto LABEL_8;
  }

  v28 = sub_24F928E48();
  (*(v24 + 8))(v19, v23);
  v25 = v36;
  v26 = v37;
  v27 = v41;
  if (!v28)
  {
    goto LABEL_7;
  }

  (*(v36 + 8))(v39, v37);
  v22(v42, v21);
LABEL_8:
  v29 = v56;
  *(v27 + 160) = v55;
  *(v27 + 176) = v29;
  *(v27 + 192) = v57;
  v30 = v58;
  v31 = v52;
  *(v27 + 96) = v51;
  *(v27 + 112) = v31;
  v32 = v54;
  *(v27 + 128) = v53;
  *(v27 + 144) = v32;
  v33 = v48;
  *(v27 + 32) = v47;
  *(v27 + 48) = v33;
  v34 = v50;
  *(v27 + 64) = v49;
  *(v27 + 80) = v34;
  result = v45;
  v35 = v46;
  *v27 = v45;
  *(v27 + 16) = v35;
  *(v27 + 208) = v30;
  *(v27 + 216) = v28;
  return result;
}

uint64_t BatchPurchaseParams.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BatchPurchaseParams.init(deserializing:using:)(a1, a2);
  return v4;
}

void *BatchPurchaseParams.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v46 = v3;
  v43 = *v3;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  v17 = sub_24F92AC28();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v21 = v16;
  v22 = v10;
  v23 = *(v11 + 8);
  v23(v21, v22);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_24E601704(v9, &qword_27F2213B0, &qword_24F965EC0);
    v24 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v25 = 0x736D657469;
    v26 = v43;
    v25[1] = 0xE500000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    v23(v45, v22);
    v27 = v46;
    swift_deallocPartialClassInstance();
    v28 = sub_24F9285B8();
    (*(*(v28 - 8) + 8))(v44, v28);
    return v27;
  }

  v40 = v23;
  v42 = v22;
  v29 = (*(v18 + 32))(v20, v9, v17);
  MEMORY[0x28223BE20](v29);
  v39[-2] = v44;
  v39[0] = v20;
  v30 = v39[1];
  v31 = sub_24F92ABB8();
  if (!v30)
  {
    v46[2] = v31;
    sub_24F928398();
    v32 = v41;
    sub_24F9281F8();
    v40(v13, v42);
    v33 = sub_24F928E68();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_24E601704(v32, qword_27F221C40, &unk_24F967D80);
      v35 = v44;
    }

    else
    {
      v36 = sub_24F928E48();
      (*(v34 + 8))(v32, v33);
      v35 = v44;
      if (v36)
      {
        v40(v45, v42);
        (*(v18 + 8))(v39[0], v17);
LABEL_9:
        v27 = v46;
        v46[3] = v36;
        v37 = sub_24F9285B8();
        (*(*(v37 - 8) + 8))(v35, v37);
        return v27;
      }
    }

    v36 = sub_24E6086DC(MEMORY[0x277D84F90]);
    v40(v45, v42);
    (*(v18 + 8))(v39[0], v17);

    goto LABEL_9;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24F220124(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_24F2204E8();
  return sub_24F929548();
}

uint64_t BatchPurchaseParams.deinit()
{

  return v0;
}

uint64_t BatchPurchaseParams.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24F220330@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = BatchPurchaseParams.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F220418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_24F220460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F2204E8()
{
  result = qword_27F23C8D8;
  if (!qword_27F23C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C8D8);
  }

  return result;
}

void *SearchEntityChangeAction.__allocating_init(title:entity:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity) = *a3;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin) = *a4;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v15 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14 + v15, a5, v16);
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v19 = sub_24F929608();
  (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
  v20 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v37, &v34);
  if (*(&v35 + 1))
  {
    v22 = v35;
    *v21 = v34;
    *(v21 + 1) = v22;
    *(v21 + 4) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v10;
    v25 = a5;
    v26 = a1;
    v27 = a2;
    v28 = v23;
    v29 = v11;
    v31 = v30;
    (*(v29 + 8))(v13, v24);
    v33[1] = v28;
    v33[2] = v31;
    a2 = v27;
    a1 = v26;
    a5 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v37, &qword_27F235830, &qword_24F93B8C0);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = 0;
  v14[5] = 0;
  return v14;
}

void *SearchEntityChangeAction.init(title:entity:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v6 = v5;
  v30 = a1;
  v31 = a2;
  v10 = sub_24F91F6B8();
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity) = *a3;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin) = *a4;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  (*(v17 + 16))(v19, a5, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v40, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v29 + 8))(v12, v10);
    v32 = v22;
    v33 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v40, &qword_27F235830, &qword_24F93B8C0);
  v25 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 4) = v39;
  v26 = v38;
  *v25 = v37;
  *(v25 + 1) = v26;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v27 = v31;
  v6[2] = v30;
  v6[3] = v27;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

char *SearchEntityChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v30 = *v4;
  v31 = v3;
  v7 = sub_24F9285B8();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v35 = a1;
  sub_24F928398();
  sub_24EC55680();
  sub_24F928248();
  v34 = *(v10 + 8);
  v34(v15, v9);
  v16 = v37;
  if (v37 == 15)
  {
    v17 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v18, "searchOrigin");
    v19 = v30;
    v18[13] = 0;
    *(v18 + 7) = -5120;
    *(v18 + 2) = v19;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D22530], v17);
    swift_willThrow();
    (*(v32 + 8))(a2, v33);
    v34(v35, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = a2;
    v20 = v35;
    sub_24F928398();
    sub_24EC556D4();
    sub_24F928248();
    v34(v15, v9);
    *(v4 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity) = v36;
    *(v4 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin) = v16;
    v21 = v30;
    (*(v10 + 16))(v12, v20, v9);
    v23 = v32;
    v22 = v33;
    v24 = v29;
    (*(v32 + 16))(v29, v21, v33);
    v25 = v31;
    v26 = Action.init(deserializing:using:)(v12, v24);
    if (!v25)
    {
      v4 = v26;
    }

    (*(v23 + 8))(v21, v22);
    v34(v35, v9);
  }

  return v4;
}

uint64_t SearchEntityChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t SearchEntityChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchEntityChangeAction(uint64_t a1)
{
  result = qword_27F23C8E0;
  if (!qword_27F23C8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::IconArtworkIntent __swiftcall IconArtworkIntent.init(adamIds:)(Swift::OpaquePointer adamIds)
{
  v1->_rawValue = 0xD000000000000011;
  v1[1]._rawValue = 0x800000024F9D74B0;
  v1[2]._rawValue = adamIds._rawValue;
  result.kind._countAndFlagsBits = adamIds._rawValue;
  return result;
}

uint64_t IconArtworkIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall IconArtworkIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v4, 0);
    v5 = (v3 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v16 + 16);
      v9 = *(v16 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_24F4578E0((v9 > 1), v8 + 1, 1);
      }

      *(v16 + 16) = v8 + 1;
      v10 = v16 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v11 = objc_opt_self();
  result.super.isa = [v11 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v14 = isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v15 = [v11 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v15)
    {

      sub_24F92C328();

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F22152C()
{
  result = qword_27F23C8F0;
  if (!qword_27F23C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C8F0);
  }

  return result;
}

unint64_t sub_24F221588()
{
  result = qword_27F23C8F8;
  if (!qword_27F23C8F8)
  {
    type metadata accessor for ArtworkLookupResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C8F8);
  }

  return result;
}

void sub_24F2215F0()
{
  dword_27F23C900 = 0;
  word_27F23C904 = 256;
  byte_27F23C906 = 0;
}

GameStoreKit::TodayCard::Style_optional __swiftcall TodayCard.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodayCard.Style.rawValue.getter()
{
  v1 = 0x6974616D6F747561;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x746867696CLL;
  }

  if (*v0)
  {
    v1 = 0x6574696877;
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

uint64_t sub_24F2216E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F221794(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F221834()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2218F0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (*v1 != 2)
  {
    v5 = 0x746867696CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6574696877;
    v2 = 0xE500000000000000;
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

uint64_t TodayCard.__allocating_init(id:heading:title:shortTitle:titleArtwork:media:heroMedia:overlay:style:clickAction:backgroundColor:inlineDescription:collapsedHeading:editorialDisplayOptions:supportsMediaMirroring:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, unsigned __int8 a20, uint64_t a21)
{
  v69 = a8;
  v59 = a7;
  v58 = a6;
  v72 = a5;
  v67 = a3;
  v56 = a2;
  v73 = a21;
  v57 = a20;
  v70 = a9;
  v71 = a11;
  v23 = sub_24F91F6B8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v66 = *a12;
  v28 = *a19 | ((*(a19 + 2) | (*(a19 + 6) << 16)) << 32);
  v29 = MEMORY[0x277D84038];
  *(v27 + 184) = MEMORY[0x277D84030];
  *(v27 + 192) = v29;
  v30 = swift_allocObject();
  *(v27 + 160) = v30;
  v68 = a1;
  sub_24E60169C(a1, &v76, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v77 + 1))
  {
    v31 = v77;
    *(v30 + 16) = v76;
    *(v30 + 32) = v31;
    *(v30 + 48) = v78;
  }

  else
  {
    sub_24F91F6A8();
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v24 + 8))(v26, v23);
    v74 = v32;
    v75 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v76, &qword_27F235830, &qword_24F93B8C0);
  }

  v64 = a17;
  v65 = a18;
  v62 = a15;
  v63 = a16;
  v61 = a14;
  v55 = a13;
  v60 = a10;
  sub_24E60169C(v73, v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v35 = v67;
  *(v27 + 16) = v56;
  *(v27 + 24) = v35;
  v67 = a4;
  *(v27 + 32) = a4;
  v36 = v71;
  v37 = v72;
  v38 = v58;
  *(v27 + 40) = v72;
  *(v27 + 48) = v38;
  v39 = v70;
  *(v27 + 56) = v59;
  *(v27 + 64) = v39;
  *(v27 + 72) = v36;
  *(v27 + 80) = v57 & 1;
  if (v28 == 2)
  {
    v40 = qword_27F211018;

    if (v40 != -1)
    {
      swift_once();
    }

    LOBYTE(v28) = dword_27F23C900;
    v41 = BYTE1(dword_27F23C900);
    LOBYTE(v42) = BYTE2(dword_27F23C900);
    LOBYTE(v43) = HIBYTE(dword_27F23C900);
    LOBYTE(v44) = word_27F23C904;
    LOBYTE(v45) = HIBYTE(word_27F23C904);
    LOBYTE(v46) = byte_27F23C906;
    v37 = v72;
  }

  else
  {
    v59 = (v28 >> 8) & 1;
    v42 = (v28 >> 16) & 1;
    v43 = (v28 >> 24) & 1;
    v44 = HIDWORD(v28) & 1;
    v45 = (v28 >> 40) & 1;
    v46 = HIWORD(v28) & 1;

    v41 = v59;
  }

  v47 = (v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  *v47 = v28 & 1;
  v47[1] = v41;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction) = v55;
  v48.value._countAndFlagsBits = v67;
  v48.value._object = v37;
  StringCharacteristics.init(byAnalyzing:)(v48);

  sub_24E601704(v73, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v68, &qword_27F235830, &qword_24F93B8C0);
  v49 = v69;
  *(v27 + 88) = v76;
  *(v27 + 96) = v49;
  *(v27 + 104) = v66;
  v50 = v61;
  *(v27 + 112) = v60;
  *(v27 + 120) = v50;
  v51 = v63;
  *(v27 + 128) = v62;
  *(v27 + 136) = v51;
  v52 = v65;
  *(v27 + 144) = v64;
  *(v27 + 152) = v52;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_searchAdOpportunity) = 0;
  return v27;
}

uint64_t TodayCard.init(id:heading:title:shortTitle:titleArtwork:media:heroMedia:overlay:style:clickAction:backgroundColor:inlineDescription:collapsedHeading:editorialDisplayOptions:supportsMediaMirroring:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, unsigned __int8 a20, uint64_t a21)
{
  v22 = v21;
  v68 = a8;
  v58 = a7;
  v57 = a6;
  v71 = a5;
  v66 = a3;
  v55 = a2;
  v72 = a21;
  v56 = a20;
  v69 = a9;
  v70 = a11;
  v25 = sub_24F91F6B8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a12;
  v29 = *a19 | ((*(a19 + 2) | (*(a19 + 6) << 16)) << 32);
  v79 = MEMORY[0x277D84030];
  v80 = MEMORY[0x277D84038];
  v30 = swift_allocObject();
  *&v78 = v30;
  v67 = a1;
  sub_24E60169C(a1, &v75, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v76 + 1))
  {
    v31 = v76;
    *(v30 + 16) = v75;
    *(v30 + 32) = v31;
    *(v30 + 48) = v77;
  }

  else
  {
    sub_24F91F6A8();
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v26 + 8))(v28, v25);
    v73 = v32;
    v74 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v75, &qword_27F235830, &qword_24F93B8C0);
  }

  v64 = a18;
  v63 = a17;
  v62 = a16;
  v61 = a15;
  v60 = a14;
  v54 = a13;
  v59 = a10;
  sub_24E612C80(&v78, v22 + 160);
  sub_24E60169C(v72, v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v35 = v66;
  *(v22 + 16) = v55;
  *(v22 + 24) = v35;
  v66 = a4;
  *(v22 + 32) = a4;
  v36 = v70;
  v37 = v71;
  v38 = v57;
  *(v22 + 40) = v71;
  *(v22 + 48) = v38;
  v39 = v69;
  *(v22 + 56) = v58;
  *(v22 + 64) = v39;
  *(v22 + 72) = v36;
  *(v22 + 80) = v56 & 1;
  if (v29 == 2)
  {
    v40 = qword_27F211018;

    if (v40 != -1)
    {
      swift_once();
    }

    LOBYTE(v29) = dword_27F23C900;
    v41 = BYTE1(dword_27F23C900);
    LOBYTE(v42) = BYTE2(dword_27F23C900);
    LOBYTE(v43) = HIBYTE(dword_27F23C900);
    LOBYTE(v44) = word_27F23C904;
    LOBYTE(v45) = HIBYTE(word_27F23C904);
    LOBYTE(v46) = byte_27F23C906;
    v37 = v71;
  }

  else
  {
    v58 = (v29 >> 8) & 1;
    v42 = (v29 >> 16) & 1;
    v43 = (v29 >> 24) & 1;
    v44 = HIDWORD(v29) & 1;
    v45 = (v29 >> 40) & 1;
    v46 = HIWORD(v29) & 1;

    v41 = v58;
  }

  v47 = (v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  *v47 = v29 & 1;
  v47[1] = v41;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction) = v54;
  v48.value._countAndFlagsBits = v66;
  v48.value._object = v37;
  StringCharacteristics.init(byAnalyzing:)(v48);

  sub_24E601704(v72, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v67, &qword_27F235830, &qword_24F93B8C0);
  v49 = v68;
  *(v22 + 88) = v78;
  *(v22 + 96) = v49;
  *(v22 + 104) = v65;
  v50 = v60;
  *(v22 + 112) = v59;
  *(v22 + 120) = v50;
  v51 = v62;
  *(v22 + 128) = v61;
  *(v22 + 136) = v51;
  v52 = v64;
  *(v22 + 144) = v63;
  *(v22 + 152) = v52;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_searchAdOpportunity) = 0;
  return v22;
}

uint64_t sub_24F222210()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t TodayCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *TodayCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v193 = a2;
  v5 = *v3;
  v201 = v3;
  v191 = v5;
  v198 = sub_24F9285B8();
  v196 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v195 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v194 = &v182 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v192 = (&v182 - v10);
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v184 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v183 = &v182 - v19;
  MEMORY[0x28223BE20](v20);
  v187 = &v182 - v21;
  MEMORY[0x28223BE20](v22);
  v186 = &v182 - v23;
  MEMORY[0x28223BE20](v24);
  v185 = &v182 - v25;
  MEMORY[0x28223BE20](v26);
  v199 = &v182 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v182 - v29;
  v202 = a1;
  sub_24F928398();
  *(&v211 + 1) = MEMORY[0x277D84030];
  *&v212 = MEMORY[0x277D84038];
  *&v210 = swift_allocObject();
  v31 = sub_24F928348();
  v200 = v15;
  if (v32)
  {
    *&v207 = v31;
    *(&v207 + 1) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v33 = sub_24F91F668();
    v35 = v34;
    (*(v12 + 8))(v14, v11);
    *&v207 = v33;
    *(&v207 + 1) = v35;
  }

  sub_24F92C7F8();
  v36 = *(v16 + 8);
  v197 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v203 = v36;
  v36(v30, v15);
  v37 = v201;
  sub_24E612C80(&v210, (v201 + 20));
  sub_24F929608();
  v38 = v199;
  sub_24F928398();
  v39 = v196 + 16;
  v40 = *(v196 + 16);
  v41 = v193;
  v42 = v198;
  v40(v194, v193, v198);
  v43 = v192;
  sub_24F929548();
  v190 = OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics;
  sub_24E65E0D4(v43, v37 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics);
  v44 = v195;
  v189 = v39;
  v192 = v40;
  v40(v195, v41, v42);
  v45 = v202;
  sub_24F928398();
  v46 = sub_24F928328();
  v47 = v200;
  v203(v38, v200);
  if (v46)
  {
    v48 = sub_24F92AC38();
    sub_24F2241D8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v49 = 0x616964656DLL;
    v49[1] = 0xE500000000000000;
    v49[2] = v191;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v50 = *(v196 + 8);
    v51 = v41;
    v52 = v198;
    v50(v51, v198);
    v203(v45, v47);
    v50(v44, v52);
    v53 = v201;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v53 + 20);
    sub_24E601704(v53 + v190, &qword_27F213E68, &unk_24F93BC80);
    swift_deallocPartialClassInstance();
    return v53;
  }

  v54 = v47;
  sub_24F928398();
  v55 = sub_24F928348();
  v57 = v56;
  v58 = v203;
  v203(v38, v54);
  v59 = v201;
  v201[2] = v55;
  v59[3] = v57;
  v60 = v185;
  sub_24F928398();
  v61 = sub_24F928348();
  v63 = v62;
  v58(v60, v54);
  if (v63)
  {
    v64 = [objc_opt_self() systemFontOfSize_];
    v65 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v66 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v67 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v64;
    *(&v211 + 1) = v65;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v66;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v67;
    v68 = type metadata accessor for RemovingNQMLStringGenerator();
    v69 = objc_allocWithZone(v68);
    v70 = &v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator];
    *v70 = 0;
    v70[1] = 0xE000000000000000;
    v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v71 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v210, &v207);
    v72 = sub_24F92B098();

    v73 = [v71 initWithString_];

    *&v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] = v73;
    v74 = &v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
    *v74 = v210;
    v75 = v211;
    v76 = v212;
    v77 = v214;
    v74[3] = v213;
    v74[4] = v77;
    v74[1] = v75;
    v74[2] = v76;
    v204.receiver = v69;
    v204.super_class = v68;
    v78 = objc_msgSendSuper2(&v204, sel_init);
    [*&v78[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] setDelegate_];
    v61 = sub_24E8EB9E0();
    v80 = v79;

    sub_24E951D6C(&v210);
  }

  else
  {
    v80 = 0;
  }

  v81 = v201;
  v201[4] = v61;
  v81[5] = v80;
  v82 = v186;
  sub_24F928398();
  v83 = sub_24F928348();
  v85 = v84;
  v86 = v203;
  v203(v82, v200);
  v87 = v199;
  if (v85)
  {
    v88 = [objc_opt_self() systemFontOfSize_];
    v89 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v90 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v91 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v88;
    *(&v211 + 1) = v89;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v90;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v91;
    v92 = type metadata accessor for RemovingNQMLStringGenerator();
    v93 = objc_allocWithZone(v92);
    v94 = &v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator];
    *v94 = 0;
    v94[1] = 0xE000000000000000;
    v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v95 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v210, &v207);
    v96 = sub_24F92B098();

    v97 = [v95 initWithString_];

    *&v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] = v97;
    v98 = &v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
    *v98 = v210;
    v99 = v211;
    v100 = v212;
    v101 = v214;
    v98[3] = v213;
    v98[4] = v101;
    v98[1] = v99;
    v98[2] = v100;
    v205.receiver = v93;
    v205.super_class = v92;
    v86 = v203;
    v102 = objc_msgSendSuper2(&v205, sel_init);
    [*&v102[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] setDelegate_];
    v83 = sub_24E8EB9E0();
    v85 = v103;

    sub_24E951D6C(&v210);
  }

  v104 = v196;
  v105 = v201;
  v201[6] = v83;
  v105[7] = v85;
  v106 = type metadata accessor for TodayCardMedia(0);
  v107 = v187;
  sub_24F928398();
  v108 = v195;
  v109 = v188;
  v110 = static TodayCardMedia.makeInstance(byDeserializing:using:)(v107, v195);
  v188 = v109;
  if (v109)
  {
    v111 = *(v104 + 8);
    v112 = v108;
    v113 = v198;
    v111(v193, v198);
    v114 = v200;
    v86(v202, v200);
    v86(v107, v114);
    v111(v112, v113);

    v53 = v105;
    goto LABEL_13;
  }

  v116 = v110;
  v191 = v106;
  v117 = v200;
  v203(v107, v200);
  v105[8] = v116;
  v118 = type metadata accessor for TodayCardOverlay();
  sub_24F928398();
  v190 = v118;
  v119 = static TodayCardOverlay.tryToMakeInstance(byDeserializing:using:)(v87, v108);
  v203(v87, v117);
  v105[9] = v119;
  v120 = v87;
  v121 = v108;
  v122 = v183;
  sub_24F928398();
  LOBYTE(v119) = sub_24F928278();
  v203(v122, v117);
  *(v105 + 80) = v119 & 1;
  sub_24F928398();
  v192(v194, v121, v198);
  sub_24E951DC0();
  sub_24F929548();
  v123 = v210 | ((WORD2(v210) | (BYTE6(v210) << 16)) << 32);
  v53 = v105;
  if (v210 == 2)
  {
    if (qword_27F211018 != -1)
    {
      swift_once();
    }

    LOBYTE(v123) = dword_27F23C900;
    LOBYTE(v124) = BYTE1(dword_27F23C900);
    LOBYTE(v125) = BYTE2(dword_27F23C900);
    LOBYTE(v126) = HIBYTE(dword_27F23C900);
    LOBYTE(v127) = word_27F23C904;
    LOBYTE(v128) = HIBYTE(word_27F23C904);
    LOBYTE(v129) = byte_27F23C906;
  }

  else
  {
    v124 = (v123 >> 8) & 1;
    v125 = (v123 >> 16) & 1;
    v126 = (v123 >> 24) & 1;
    v127 = HIDWORD(v123) & 1;
    v128 = (v123 >> 40) & 1;
    v129 = HIWORD(v123) & 1;
  }

  v130 = v105 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions;
  *v130 = v123 & 1;
  v130[1] = v124;
  v130[2] = v125;
  v130[3] = v126;
  v130[4] = v127;
  v130[5] = v128;
  v130[6] = v129;
  type metadata accessor for Action(0);
  sub_24F928398();
  v131 = v195;
  v132 = static Action.tryToMakeInstance(byDeserializing:using:)(v120, v195);
  v133 = v120;
  v134 = v200;
  v203(v133, v200);
  *(v53 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction) = v132;
  v136 = v53[4];
  v135 = v53[5];

  v137.value._countAndFlagsBits = v136;
  v137.value._object = v135;
  StringCharacteristics.init(byAnalyzing:)(v137);
  v53[11] = v210;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v138 = v194;
  v139 = v198;
  v192(v194, v131, v198);
  sub_24F2241D8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v53[12] = v210;
  sub_24F928398();
  sub_24F2239E8();
  sub_24F928208();
  v140 = v134;
  v141 = v203;
  v203(v199, v140);
  *(v53 + 104) = v210;
  type metadata accessor for TodayCardMediaHero(0);
  sub_24F928398();
  v142 = v139;
  v143 = v199;
  v192(v138, v195, v142);
  sub_24F2241D8(&qword_27F23C910, type metadata accessor for TodayCardMediaHero, &protocol conformance descriptor for TodayCardMedia);
  sub_24F929548();
  v53[14] = v210;
  sub_24F928398();
  v144 = JSONObject.appStoreColor.getter();
  v145 = v200;
  v141(v143, v200);
  v53[15] = v144;
  v146 = v184;
  sub_24F928398();
  v147 = sub_24F928348();
  v149 = v148;
  v150 = v145;
  v151 = v141;
  v141(v146, v150);
  if (v149)
  {
    v152 = [objc_opt_self() systemFontOfSize_];
    v153 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v154 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v155 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v152;
    *(&v211 + 1) = v153;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v154;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v155;
    v156 = type metadata accessor for RemovingNQMLStringGenerator();
    v157 = objc_allocWithZone(v156);
    v158 = &v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator];
    *v158 = 0;
    v158[1] = 0xE000000000000000;
    v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v159 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v210, &v207);
    v160 = sub_24F92B098();

    v161 = [v159 initWithString_];

    *&v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] = v161;
    v162 = &v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
    *v162 = v210;
    v163 = v211;
    v164 = v212;
    v165 = v214;
    v162[3] = v213;
    v162[4] = v165;
    v162[1] = v163;
    v162[2] = v164;
    v206.receiver = v157;
    v206.super_class = v156;
    v166 = objc_msgSendSuper2(&v206, sel_init);
    [*&v166[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] setDelegate_];
    v147 = sub_24E8EB9E0();
    v149 = v167;

    sub_24E951D6C(&v210);
  }

  v53[16] = v147;
  v53[17] = v149;
  sub_24F928398();
  v168 = sub_24F928348();
  v170 = v169;
  v151(v143, v200);
  v53[18] = v168;
  v53[19] = v170;
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v171 = v193;
  v172 = v198;
  v192(v194, v193, v198);
  sub_24F2241D8(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
  sub_24F929548();
  v173 = v210;
  if (!v53[9] || (*&v210 = v53[9], , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38, &qword_24F9CAF10), (swift_dynamicCast() & 1) == 0))
  {
    v209 = 0;
    v207 = 0u;
    v208 = 0u;
    v174 = v196;
    goto LABEL_27;
  }

  v174 = v196;
  if (!*(&v208 + 1))
  {
LABEL_27:
    v215 = v53[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38, &qword_24F9CAF10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v212 = 0;
      v210 = 0u;
      v211 = 0u;
    }

    if (*(&v208 + 1))
    {
      sub_24E601704(&v207, qword_27F239C40, &unk_24F9CAF18);
    }

    goto LABEL_31;
  }

  sub_24E612C80(&v207, &v210);
LABEL_31:
  if (v173)
  {
    v175 = *(v174 + 8);
    v175(v171, v172);
    v151(v202, v200);
    v175(v195, v172);
  }

  else
  {
    sub_24E60169C(&v210, &v207, qword_27F239C40, &unk_24F9CAF18);
    v176 = *(&v208 + 1);
    if (*(&v208 + 1))
    {
      v177 = v209;
      __swift_project_boxed_opaque_existential_1(&v207, *(&v208 + 1));
      v173 = (*(v177 + 8))(v176, v177);
      v178 = *(v174 + 8);
      v179 = v198;
      v178(v171, v198);
      v151(v202, v200);
      v178(v195, v179);
      __swift_destroy_boxed_opaque_existential_1(&v207);
    }

    else
    {
      v180 = *(v174 + 8);
      v181 = v198;
      v180(v171, v198);
      v151(v202, v200);
      v180(v195, v181);
      sub_24E601704(&v207, qword_27F239C40, &unk_24F9CAF18);
      v173 = 0;
    }
  }

  *(v53 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_searchAdOpportunity) = v173;
  sub_24E601704(&v210, qword_27F239C40, &unk_24F9CAF18);
  return v53;
}

unint64_t sub_24F2239E8()
{
  result = qword_27F23C908;
  if (!qword_27F23C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C908);
  }

  return result;
}

uint64_t TodayCard.heading.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TodayCard.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TodayCard.shortTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *TodayCard.backgroundColor.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t TodayCard.inlineDescription.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t TodayCard.collapsedHeading.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t TodayCard.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

void TodayCard.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t TodayCard.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCard.__deallocating_deinit()
{
  TodayCard.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F223D7C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24F2241D8(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t *sub_24F223E24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24F223EB4(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

unint64_t sub_24F223F40()
{
  result = qword_27F23C918;
  if (!qword_27F23C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C918);
  }

  return result;
}

uint64_t type metadata accessor for TodayCard(uint64_t a1)
{
  result = qword_27F23C928;
  if (!qword_27F23C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F224030(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F2241D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String_optional __swiftcall ACAccount.localizedName(style:)(NSPersonNameComponentsFormatterStyle style)
{
  v2 = v1;
  v4 = sub_24F91F1A8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 ams_firstName];
  if (v9)
  {
    v10 = v9;
    sub_24F92B0D8();

    sub_24F91F198();
    sub_24F91F158();
    v11 = [v2 ams_lastName];
    if (v11)
    {
      v12 = v11;
      sub_24F92B0D8();
    }

    sub_24F91F168();
    v15 = objc_opt_self();
    v16 = sub_24F91F188();
    v17 = [v15 localizedStringFromPersonNameComponents:v16 style:style options:0];

    v13 = sub_24F92B0D8();
    v14 = v18;

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v19 = v13;
  v20 = v14;
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

id ACAccount.localizedInitials.getter()
{
  v1 = v0;
  v2 = sub_24F91F1A8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 ams_firstName];
  if (result)
  {
    v8 = result;
    sub_24F92B0D8();

    sub_24F91F198();
    sub_24F91F158();
    v9 = [v1 ams_lastName];
    if (v9)
    {
      v10 = v9;
      sub_24F92B0D8();
    }

    sub_24F91F168();
    v11 = objc_opt_self();
    v12 = sub_24F91F188();
    v13 = [v11 localizedStringFromPersonNameComponents:v12 style:4 options:0];

    v14 = sub_24F92B0D8();
    (*(v3 + 8))(v6, v2);
    v15 = sub_24F92B228();
    if (v15 > 0 && v15 < 3)
    {
      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

__n128 TitledButtonStackLayout.init(metrics:items:lineBreaks:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 112);
  *(a4 + 112) = *(a1 + 96);
  *(a4 + 128) = v5;
  v6 = *(a1 + 144);
  *(a4 + 144) = *(a1 + 128);
  *(a4 + 160) = v6;
  v7 = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = v7;
  v8 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v10;
  *a4 = a2;
  *(a4 + 8) = v4;
  return result;
}

uint64_t TitledButtonStackLayout.Metrics.init(buttonHeight:horizontalInterItemSpace:verticalInterItemSpace:maximumButtonWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 152) = 0;
  *(a5 + 136) = 0u;
  *(a5 + 120) = 0u;
  v9 = a5 + 120;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24E612C80(a3, a5 + 80);

  return sub_24EA63A70(a4, v9);
}

uint64_t TitledButtonStackLayout.Metrics.buttonHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t TitledButtonStackLayout.Metrics.horizontalInterItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t TitledButtonStackLayout.Metrics.verticalInterItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

double TitledButtonStackLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C938, &qword_24F9D78D8);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v27[-v14];
  v16 = [a1 traitCollection];
  v17 = sub_24F92BF98();

  if (v17)
  {
    sub_24F224C3C((v4 + 2), *v4, a1, v29);
    v27[0] = v29[0];
    v28 = v29[1];
    _VerticalFlowLayout.measurements(fitting:in:)(a1, a2, a3);
    a2 = v18;
  }

  else
  {
    v20 = *v4;
    v19 = v4[1];
    if (v19)
    {
      v29[0] = a1;
      (*(*v19 + 104))(v29);
      v21 = sub_24F91F968();
      (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
    }

    else
    {
      v22 = sub_24F91F968();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    }

    sub_24F22574C(v20, v15, a1);
    sub_24E601704(v15, &qword_27F23C938, &qword_24F9D78D8);
    v23 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v23);
    sub_24E8ED7D8(v23);
    sub_24F9223A8();
    v24 = *(v9 + 8);
    v24(v11, v8);
    v25 = v4[15];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v25);
    sub_24E8ED7D8(v25);
    sub_24F9223A8();
    v24(v11, v8);
  }

  return a2;
}

void sub_24F224C3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v30 = sub_24F92CDB8();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v28 = a4;
    v44 = MEMORY[0x277D84F90];
    sub_24F45822C(0, v10, 0);
    v12 = 0;
    v13 = a2 + 32;
    v11 = v44;
    v29 = (v7 + 8);
    v14 = MEMORY[0x277D226F0];
    do
    {
      sub_24E615E00(v13, v38);
      v36 = v12;
      sub_24E612C80(v38, v37);
      v15 = sub_24F922418();
      v35[3] = v15;
      v35[4] = v14;
      __swift_allocate_boxed_opaque_existential_1(v35);
      sub_24F922408();
      if (v10 == 1)
      {
        v33 = v15;
        v34 = v14;
        __swift_allocate_boxed_opaque_existential_1(v32);
        sub_24F922408();
      }

      else
      {
        v16 = *(a1 + 104);
        __swift_project_boxed_opaque_existential_1((a1 + 80), v16);
        sub_24E8ED7D8(v16);
        v17 = sub_24F9223A8();
        (*v29)(v9, v30);
        v33 = MEMORY[0x277D85048];
        v34 = MEMORY[0x277D225F8];
        *v32 = v17;
      }

      sub_24E615E00(v37, v39);
      sub_24E615E00(v35, v41);
      sub_24E60169C(v32, v42 + 8, &qword_27F22F780, &qword_24F968620);
      WORD4(v40) = 256;
      v43 = 2;
      sub_24E601704(v32, &qword_27F22F780, &qword_24F968620);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_24E601704(&v36, &qword_27F23C940, &qword_24F9D7A70);
      v44 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24F45822C((v18 > 1), v19 + 1, 1);
        v11 = v44;
      }

      ++v12;
      *(v11 + 16) = v19 + 1;
      v20 = v11 + 136 * v19;
      *(v20 + 32) = v39[0];
      v21 = v39[1];
      v22 = v40;
      v23 = v41[1];
      *(v20 + 80) = v41[0];
      *(v20 + 96) = v23;
      *(v20 + 48) = v21;
      *(v20 + 64) = v22;
      v24 = v42[0];
      v25 = v42[1];
      v26 = v42[2];
      *(v20 + 160) = v43;
      *(v20 + 128) = v25;
      *(v20 + 144) = v26;
      *(v20 + 112) = v24;
      v13 += 40;
      --v10;
      v14 = MEMORY[0x277D226F0];
    }

    while (v10);
    a4 = v28;
  }

  *a4 = 1;
  *(a4 + 8) = v11;
}

uint64_t TitledButtonStackLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v74 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C938, &qword_24F9D78D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_24F92CDB8();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = *v6;
  if (*(*v6 + 16))
  {
    v77 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = [a1 traitCollection];
    v22 = sub_24F92BF98();

    if (v22)
    {
      sub_24F224C3C((v7 + 2), v20, a1, v83);
      LOBYTE(v81) = v83[0];
      *(&v81 + 1) = v83[1];
      _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, v74, a4, a5, a6);
    }

    else
    {
      v79 = v15;
      v80 = v20;
      v24 = v7[15];
      __swift_project_boxed_opaque_existential_1(v7 + 12, v24);
      v25 = a1;
      v26 = v77;
      sub_24E8ED7D8(v24);
      v70 = sub_24F9223A8();
      v27 = *(v17 + 8);
      v27(v26, v16);
      v28 = v7[10];
      __swift_project_boxed_opaque_existential_1(v7 + 7, v28);
      sub_24E8ED7D8(v28);
      v76 = v25;
      v72 = sub_24F9223A8();
      v29 = v26;
      v30 = v27;
      v27(v29, v16);
      v31 = v7[1];
      if (v31)
      {
        v32 = v76;
        v83[0] = v76;
        v33 = v79;
        (*(*v31 + 104))(v83);
        v34 = 0;
        v35 = v32;
      }

      else
      {
        v34 = 1;
        v35 = v76;
        v33 = v79;
      }

      v36 = v80;
      v37 = sub_24F91F968();
      (*(*(v37 - 8) + 56))(v33, v34, 1, v37);
      v38 = sub_24F22574C(v36, v33, v35);
      result = sub_24E601704(v33, &qword_27F23C938, &qword_24F9D78D8);
      v69 = *(v38 + 16);
      if (v69)
      {
        v39 = 0;
        v67 = v38 + 32;
        v40 = 0.0;
        v41 = v30;
        v66 = a2;
        v65 = a4;
        v68 = v38;
        v75 = v30;
        while (v39 < *(v38 + 16))
        {
          v73 = v39;
          v43 = *(v67 + 8 * v39);
          v44 = *(v43 + 16);
          if (v44 <= 1)
          {
            v45 = 1;
          }

          else
          {
            v45 = *(v43 + 16);
          }

          v46 = v72 * (v45 - 1);

          v87.origin.x = v74;
          v87.origin.y = a4;
          v87.size.width = a5;
          v87.size.height = a6;
          v47 = v44;
          v48 = floor((CGRectGetWidth(v87) - v46) / v44);
          sub_24E60169C((v7 + 17), &v81, &qword_27F22F780, &qword_24F968620);
          if (v82)
          {
            sub_24E612C80(&v81, v83);
            v49 = v84;
            __swift_project_boxed_opaque_existential_1(v83, v84);
            v50 = v77;
            sub_24E8ED7D8(v49);
            v51 = sub_24F9223A8();
            v41(v50, v16);
            if (v51 < v48)
            {
              v48 = v51;
            }

            __swift_destroy_boxed_opaque_existential_1(v83);
          }

          else
          {
            sub_24E601704(&v81, &qword_27F22F780, &qword_24F968620);
          }

          v88.origin.x = v74;
          v88.origin.y = a4;
          v88.size.width = a5;
          v88.size.height = a6;
          MidX = CGRectGetMidX(v88);
          v53 = *(v43 + 16);
          if (v53)
          {
            v54 = a5;
            v55 = a6;
            v56 = MidX - ceil((v46 + v48 * v47) * 0.5);
            v57 = v72 + v48;
            v71 = v43;
            v58 = v43 + 32;
            v42 = 0.0;
            do
            {
              v80 = v53;
              sub_24E615E00(v58, v83);
              v78 = v85;
              v79 = __swift_project_boxed_opaque_existential_1(v83, v84);
              v59 = v7[5];
              __swift_project_boxed_opaque_existential_1(v7 + 2, v59);
              v60 = v77;
              sub_24E8ED7D8(v59);
              sub_24F9223A8();
              v75(v60, v16);
              sub_24F922298();
              v62 = v61;
              __swift_project_boxed_opaque_existential_1(v83, v84);
              sub_24F922228();
              __swift_destroy_boxed_opaque_existential_1(v83);
              v56 = v57 + v56;
              if (v42 <= v62)
              {
                v42 = v62;
              }

              v58 += 40;
              v53 = (v80 - 1);
            }

            while (v80 != 1);

            a6 = v55;
            a5 = v54;
            a4 = v65;
            v41 = v75;
          }

          else
          {

            v42 = 0.0;
          }

          v39 = v73 + 1;
          v40 = v40 + v70 + v42;
          v38 = v68;
          if (v73 + 1 == v69)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_29:

        v63 = v74;
        v89.origin.x = v74;
        v89.origin.y = a4;
        v89.size.width = a5;
        v89.size.height = a6;
        CGRectGetMinX(v89);
        v90.origin.x = v63;
        v90.origin.y = a4;
        v90.size.width = a5;
        v90.size.height = a6;
        CGRectGetMinY(v90);
        v91.origin.y = a4;
        v91.origin.x = v63;
        v91.size.width = a5;
        v91.size.height = a6;
        CGRectGetWidth(v91);
        return sub_24F922128();
      }
    }
  }

  else
  {

    return sub_24F922168();
  }

  return result;
}

uint64_t sub_24F22574C(void *a1, uint64_t a2, void *a3)
{
  v48 = a3;
  v50 = sub_24F91F8B8();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C948, &qword_24F9D7A78);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C938, &qword_24F9D78D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_24F91F968();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a2, v11, &qword_27F23C938, &qword_24F9D78D8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F23C938, &qword_24F9D78D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C950, &qword_24F9D7A80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F93DE60;
    *(v16 + 32) = a1;
  }

  else
  {
    v46 = v13;
    (*(v13 + 32))(v15, v11, v12);
    v45 = v15;
    sub_24F91F8C8();
    sub_24F225EDC(&qword_27F23C958, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v17 = 0;
    ++v47;
    v44 = a1 + 4;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = v49;
      sub_24F92BC08();
      sub_24F225EDC(&unk_27F23C960, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
      v19 = v50;
      v20 = sub_24F92AFF8();
      (*v47)(v18, v19);
      if (v20)
      {
        break;
      }

      v21 = sub_24F92BC88();
      v23 = *v22;
      v21(v51, 0);
      sub_24F92BC18();
      v24 = a1[2];
      if (v17 >= v24 || v23 >= v24)
      {
        break;
      }

      if (v23 < v17)
      {
        __break(1u);
        goto LABEL_35;
      }

      v25 = v12;
      v26 = a1;
      v27 = v23 + 1;
      v28 = v23 + 1 - v17;
      if (v24 == v28)
      {
        v29 = v26;
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        if (v27 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C970, &unk_24F93B690);
            v29 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v34 - 32) / 40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730, &unk_24F947310);
          swift_arrayInitWithCopy();
        }
      }

      v30 = [v48 traitCollection];
      v31 = sub_24F92BF88();

      if (v31)
      {
        v29 = sub_24EF1C248(v29);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_24E617B44(0, *(v16 + 16) + 1, 1, v16);
      }

      v33 = *(v16 + 16);
      v32 = *(v16 + 24);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_24E617B44((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 16) = v33 + 1;
      *(v16 + 8 * v33 + 32) = v29;
      v17 = v27;
      a1 = v26;
      v12 = v25;
    }

    sub_24E601704(v8, &qword_27F23C948, &qword_24F9D7A78);
    v24 = a1[2];
    if (v24 < v17)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (!v17)
    {

      goto LABEL_24;
    }

LABEL_36:
    sub_24E6B8918(a1, v44, v17, (2 * v24) | 1);
    a1 = v42;
LABEL_24:
    v36 = v45;
    v35 = v46;
    v37 = [v48 traitCollection];
    v38 = sub_24F92BF88();

    if (v38)
    {
      a1 = sub_24EF1C248(a1);
    }

    if (a1[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_24E617B44(0, *(v16 + 16) + 1, 1, v16);
      }

      v40 = *(v16 + 16);
      v39 = *(v16 + 24);
      if (v40 >= v39 >> 1)
      {
        v16 = sub_24E617B44((v39 > 1), v40 + 1, 1, v16);
      }

      (*(v35 + 8))(v36, v12);
      *(v16 + 16) = v40 + 1;
      *(v16 + 8 * v40 + 32) = a1;
    }

    else
    {
      (*(v35 + 8))(v36, v12);
    }
  }

  return v16;
}