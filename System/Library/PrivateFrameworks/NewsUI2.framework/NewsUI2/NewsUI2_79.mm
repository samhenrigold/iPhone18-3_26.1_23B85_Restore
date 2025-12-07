id sub_218FA69B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();

  return v3;
}

uint64_t sub_218FA6A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_218FA6ADC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_218FA6B30(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id EditorialItem.__allocating_init(identifier:title:subtitle:subtitleColor:attributes:actionURL:thumbnailImage:backingTag:headline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v17 = objc_allocWithZone(v13);
  v18 = &v17[OBJC_IVAR___TSEditorialItem_subtitle];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v17[OBJC_IVAR___TSEditorialItem_subtitleColor];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR___TSEditorialItem_actionURL;
  v21 = sub_219BDB954();
  (*(*(v21 - 8) + 56))(&v17[v20], 1, 1, v21);
  v22 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  *&v17[OBJC_IVAR___TSEditorialItem_thumbnailImage] = 0;
  v23 = OBJC_IVAR___TSEditorialItem_backingTag;
  *&v17[OBJC_IVAR___TSEditorialItem_backingTag] = 0;
  v24 = OBJC_IVAR___TSEditorialItem_headline;
  *&v17[OBJC_IVAR___TSEditorialItem_headline] = 0;
  v25 = &v17[OBJC_IVAR___TSEditorialItem_identifier];
  *v25 = a1;
  *(v25 + 1) = a2;
  v26 = &v17[OBJC_IVAR___TSEditorialItem_title];
  *v26 = a3;
  *(v26 + 1) = a4;
  swift_beginAccess();
  *v18 = a5;
  *(v18 + 1) = a6;
  swift_beginAccess();
  *v19 = a7;
  *(v19 + 1) = a8;
  swift_beginAccess();
  *&v17[v22] = a11;
  swift_beginAccess();
  *&v17[v23] = a12;
  v27 = a11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_218DB6168(a10, &v17[v20]);
  swift_endAccess();
  *&v17[OBJC_IVAR___TSEditorialItem_attributes] = a9;
  swift_beginAccess();
  *&v17[v24] = a13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v36.receiver = v17;
  v36.super_class = v35;
  v28 = objc_msgSendSuper2(&v36, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_218838478(a10);
  return v28;
}

id EditorialItem.init(identifier:title:subtitle:subtitleColor:attributes:actionURL:thumbnailImage:backingTag:headline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v13 = sub_218FA72AC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

id EditorialItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EditorialItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_218FA72AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v16 = &v13[OBJC_IVAR___TSEditorialItem_subtitle];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[OBJC_IVAR___TSEditorialItem_subtitleColor];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR___TSEditorialItem_actionURL;
  v19 = sub_219BDB954();
  (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
  v20 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  *&v13[OBJC_IVAR___TSEditorialItem_thumbnailImage] = 0;
  v21 = OBJC_IVAR___TSEditorialItem_backingTag;
  *&v13[OBJC_IVAR___TSEditorialItem_backingTag] = 0;
  v22 = OBJC_IVAR___TSEditorialItem_headline;
  *&v13[OBJC_IVAR___TSEditorialItem_headline] = 0;
  v23 = &v13[OBJC_IVAR___TSEditorialItem_identifier];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &v13[OBJC_IVAR___TSEditorialItem_title];
  *v24 = a3;
  *(v24 + 1) = a4;
  swift_beginAccess();
  *v16 = a5;
  *(v16 + 1) = a6;
  swift_beginAccess();
  *v17 = a7;
  *(v17 + 1) = a8;
  swift_beginAccess();
  *&v13[v20] = a11;
  swift_beginAccess();
  *&v13[v21] = a12;
  v25 = a11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_218DB6168(a10, &v13[v18]);
  swift_endAccess();
  *&v13[OBJC_IVAR___TSEditorialItem_attributes] = a9;
  swift_beginAccess();
  *&v13[v22] = a13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v34.receiver = v13;
  v34.super_class = type metadata accessor for EditorialItem(0);
  v26 = objc_msgSendSuper2(&v34, sel_init);
  sub_218838478(a10);
  return v26;
}

uint64_t type metadata accessor for EditorialItem(uint64_t a1)
{
  result = qword_280EDE368;
  if (!qword_280EDE368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_15Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

void sub_218FA759C(uint64_t a1)
{
  sub_21873F65C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_218FA7C90(char a1)
{
  v3 = sub_219BE00C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE00B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1((v1 + 88), *(v1 + 112));
  (*(v4 + 104))(v6, **(&unk_2782428A8 + a1), v3);
  sub_219BE00A4();
  (*(v8 + 16))(v10, v13, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  sub_219BDD154();

  return (*(v8 + 8))(v13, v7);
}

unint64_t sub_218FA7F0C()
{
  result = qword_27CC141F8;
  if (!qword_27CC141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC141F8);
  }

  return result;
}

uint64_t sub_218FA7F60(uint64_t a1)
{
  v3 = *(sub_219BE00B4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_219B7CE0C(a1, v4);
}

uint64_t getEnumTagSinglePayload for TagFeedGroupKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TagFeedGroupKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_218FA8120(void *a1, char a2)
{
  sub_218FA854C(0, &qword_27CC14200, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FA84F8();
  sub_219BF7B44();
  v10[15] = a2;
  sub_218933D28();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_218FA8288(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_218FA8310(uint64_t a1)
{
  v2 = sub_218FA84F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FA834C(uint64_t a1)
{
  v2 = sub_218FA84F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FA8388@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_218FA854C(0, &qword_280E8CAB8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FA84F8();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  return result;
}

unint64_t sub_218FA84F8()
{
  result = qword_280EA9108;
  if (!qword_280EA9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9108);
  }

  return result;
}

void sub_218FA854C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FA84F8();
    v7 = a3(a1, &type metadata for IssueListTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218FA85C4()
{
  result = qword_27CC14208;
  if (!qword_27CC14208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14208);
  }

  return result;
}

unint64_t sub_218FA861C()
{
  result = qword_280EA90F8;
  if (!qword_280EA90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA90F8);
  }

  return result;
}

unint64_t sub_218FA8674()
{
  result = qword_280EA9100;
  if (!qword_280EA9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9100);
  }

  return result;
}

_BYTE *sub_218FA86C8(uint64_t a1)
{
  v2 = sub_219BE22F4();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E56C4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_218E9C294(a1);
  v9 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  v10 = &v8[OBJC_IVAR____TtC7NewsUI29AdContext_previewID];
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 1);
  v13 = &v9[OBJC_IVAR___TSFeedViewContext_adPreviewID];
  swift_beginAccess();
  *v13 = v12;
  v13[1] = v11;

  v14 = &v8[OBJC_IVAR____TtC7NewsUI29AdContext_previewSessionID];
  swift_beginAccess();
  v16 = *v14;
  v15 = *(v14 + 1);
  v17 = &v9[OBJC_IVAR___TSFeedViewContext_adPreviewSessionID];
  swift_beginAccess();
  *v17 = v16;
  v17[1] = v15;

  v18 = &v8[OBJC_IVAR____TtC7NewsUI29AdContext_qToken];
  swift_beginAccess();
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = &v9[OBJC_IVAR___TSFeedViewContext_adQToken];
  swift_beginAccess();
  *v21 = v20;
  v21[1] = v19;

  v23 = sub_218DB2C90(v22);
  v25 = v24;
  v26 = &v9[OBJC_IVAR___TSFeedViewContext_sourceApplication];
  swift_beginAccess();
  *v26 = v23;
  v26[1] = v25;

  v27 = &v8[OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID];
  swift_beginAccess();
  if (v27[8])
  {
    v28 = 0;
  }

  else
  {
    v28 = *v27;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v30 = OBJC_IVAR___TSFeedViewContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  v31 = *&v9[v30];
  *&v9[v30] = v29;

  v32 = sub_218D90FCC(a1);
  v33 = OBJC_IVAR___TSFeedViewContext_referral;
  swift_beginAccess();
  v34 = *&v9[v33];
  *&v9[v33] = v32;

  sub_2186E56C4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22A4();
  (*(v44 + 8))(v4, v45);
  v35 = sub_219BDB954();
  (*(*(v35 - 8) + 56))(v7, 0, 1, v35);
  v36 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_218FA6590(v7, &v9[v36]);
  swift_endAccess();
  v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v38 = OBJC_IVAR___TSFeedViewContext_presentationReason;
  swift_beginAccess();
  v39 = *&v9[v38];
  *&v9[v38] = v37;

  LOBYTE(v37) = sub_218DB2A58(v40);
  v41 = OBJC_IVAR___TSFeedViewContext_openedFromNews;
  swift_beginAccess();
  v9[v41] = v37 & 1;
  return v9;
}

void SportsManagementDetailModule.createViewController(model:)(uint64_t a1)
{
  v3 = type metadata accessor for SportsDetailModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SportsManagementDetailViewController(0);
  sub_218A3A494(a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  sub_218FA8DDC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  v9 = sub_219BE1E04();

  if (v9)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218FA8D3C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsDetailModel(0);
  return sub_219BE1BA4();
}

uint64_t sub_218FA8DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDetailModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218FA8E40(void *a1)
{
  v3 = *(type metadata accessor for SportsDetailModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_218FA8D3C(a1, v4, v5);
}

uint64_t SportsManagementDetailModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t SportsManagementDetailModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_218FA8F90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_219BE9414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v12 != 255 && a2)
    {
      sub_218FAA880(v11, v12);
      if (!sub_219BE82D4())
      {

        sub_218FAA8C4(v11, v12);
        return;
      }

      v13 = swift_allocObject();
      *(v13 + 40) = &type metadata for ConfirmationToast;
      *(v13 + 48) = sub_218FAA91C();
      *&v16[0] = v13 | 0xD000000000000006;
      (*(v8 + 104))(v10, *MEMORY[0x277D6E598], v7);
      sub_219BE6474();
      (*(v8 + 8))(v10, v7);
      sub_218932F9C(*&v16[0]);
      sub_218718690(a4, v16);
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v12;
      sub_2186CB1F0(v16, v14 + 32);
      sub_218FAA880(v11, v12);
      sub_219BDD154();

      sub_218FAA8C4(v11, v12);
    }
  }
}

void sub_218FA91F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  sub_218FAA9C8(0, &qword_27CC14218, MEMORY[0x277D2E898], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_219BE0894();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA964C(a4, a2, v5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_218FAAA2C(v9, &qword_27CC14218, MEMORY[0x277D2E898]);
    sub_2186C66AC();
    v14 = sub_219BF6F64();
    v15 = sub_219BF61F4();
    sub_218FAA9C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    v25 = 0;
    v26 = 0xE000000000000000;
    v23 = a2;
    v24 = v5;
    sub_219BF7484();
    v17 = v25;
    v18 = v26;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_2186FC3BC();
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_219BE5314("Failed to lookup score concern data for %{public}@", 50, 2, &dword_2186C1000, v14, v15, v16);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_218FAA9C8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v19 = sub_219BDCD44();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x277CEAD18], v19);
    sub_218FAA980(&qword_27CC14220, MEMORY[0x277D2E898], MEMORY[0x277D2E890]);
    sub_219BDCCC4();

    sub_219BE0974();
    sub_218FAA980(&qword_27CC14228, MEMORY[0x277D2E940], MEMORY[0x277D2E938]);
    sub_219BDCC24();
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_218FA964C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = sub_219BF2BE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x277D83D88];
  sub_218FAA9C8(0, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  sub_218FAA9C8(0, &qword_280E90180, MEMORY[0x277D33E20], v11);
  MEMORY[0x28223BE20](v20 - 8);
  v69 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  v28 = sub_219BE10B4();
  v32 = MEMORY[0x28223BE20](v28);
  v33 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 2u)
  {
    if (a3)
    {
      v34 = v70;
      if (a3 == 1)
      {
        v35 = MEMORY[0x277D2EEF0];
      }

      else
      {
        v35 = MEMORY[0x277D2EEF8];
      }

      v40 = v33;
      (*(v31 + 104))(v33, *v35, v32);
    }

    else
    {
      v40 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 104))(v33, *MEMORY[0x277D2EEE8], v32);

      v34 = v70;
    }

    goto LABEL_24;
  }

  v66 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v29;
  if (a3 == 3)
  {
    v41 = v31;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v10 = a2;
    (*(v8 + 104))(v10, *MEMORY[0x277D33B28], v7);
    swift_unknownObjectRetain();
    v42 = sub_219BF4294();
    (*(v8 + 8))(v10, v7);
    if (v42 >> 62)
    {
      result = sub_219BF7214();
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_17:
        if ((v42 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](0, v42);
        }

        else
        {
          if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        sub_219BF23C4();

        v43 = sub_219BF3B34();
        v44 = *(v43 - 8);
        if ((*(v44 + 48))(v19, 1, v43) != 1)
        {
          sub_219BF3B24();
          (*(v44 + 8))(v19, v43);
          v54 = sub_219BF3484();
          v55 = *(v54 - 8);
          v56 = (*(v55 + 48))(v27, 1, v54);
          v34 = v70;
          if (v56 != 1)
          {
            if ((*(v55 + 88))(v27, v54) == *MEMORY[0x277D33DF0])
            {
              (*(v55 + 96))(v27, v54);
              a2 = *(*v27 + 16);

              v40 = v66;
              (*(v41 + 104))(v66, *MEMORY[0x277D2EEE8], v67);
LABEL_24:
              sub_218FAA2F4(v40, a2, v34);
              v45 = 0;
LABEL_60:
              v64 = sub_219BE0894();
              return (*(*(v64 - 8) + 56))(v34, v45, 1, v64);
            }

            (*(v55 + 8))(v27, v54);
            goto LABEL_59;
          }

          goto LABEL_53;
        }

        sub_218FAAA2C(v19, &qword_27CC20280, MEMORY[0x277D34048]);
LABEL_52:
        v62 = sub_219BF3484();
        (*(*(v62 - 8) + 56))(v27, 1, 1, v62);
        v34 = v70;
LABEL_53:
        v52 = MEMORY[0x277D33E20];
        v53 = v27;
        goto LABEL_58;
      }
    }

    goto LABEL_52;
  }

  v65 = v31;
  if (a3 == 4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v10 = a2;
    (*(v8 + 104))(v10, *MEMORY[0x277D33B28], v7);
    swift_unknownObjectRetain();
    v36 = sub_219BF4294();
    (*(v8 + 8))(v10, v7);
    if (v36 >> 62)
    {
      result = sub_219BF7214();
      v34 = v70;
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v70;
      if (result)
      {
LABEL_9:
        if ((v36 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](0, v36);
          goto LABEL_12;
        }

        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

LABEL_12:

          sub_219BF23C4();

          v38 = sub_219BF3B34();
          v39 = *(v38 - 8);
          if ((*(v39 + 48))(v16, 1, v38) == 1)
          {
            sub_218FAAA2C(v16, &qword_27CC20280, MEMORY[0x277D34048]);
LABEL_56:
            v63 = sub_219BF3484();
            (*(*(v63 - 8) + 56))(v24, 1, 1, v63);
            goto LABEL_57;
          }

          sub_219BF3B24();
          (*(v39 + 8))(v16, v38);
          v57 = sub_219BF3484();
          v58 = *(v57 - 8);
          if ((*(v58 + 48))(v24, 1, v57) == 1)
          {
LABEL_57:
            v52 = MEMORY[0x277D33E20];
            v53 = v24;
            goto LABEL_58;
          }

          if ((*(v58 + 88))(v24, v57) == *MEMORY[0x277D33DF0])
          {
            (*(v58 + 96))(v24, v57);
            a2 = *(*v24 + 16);

            v59 = MEMORY[0x277D2EEF0];
LABEL_45:
            v40 = v66;
            (*(v65 + 104))(v66, *v59, v67);
            goto LABEL_24;
          }

          (*(v58 + 8))(v24, v57);
LABEL_59:
          v45 = 1;
          goto LABEL_60;
        }

        goto LABEL_66;
      }
    }

    goto LABEL_56;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *v10 = a2;
  (*(v8 + 104))(v10, *MEMORY[0x277D33B28], v7);
  swift_unknownObjectRetain();
  v46 = sub_219BF4294();
  (*(v8 + 8))(v10, v7);
  if (v46 >> 62)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v69;
  v34 = v70;
  v48 = v68;
  if (!result)
  {

    goto LABEL_34;
  }

  if ((v46 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v46);
    goto LABEL_31;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_31:

    sub_219BF23C4();

    v49 = sub_219BF3B34();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v48, 1, v49) != 1)
    {
      sub_219BF3B24();
      (*(v50 + 8))(v48, v49);
      v60 = sub_219BF3484();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v47, 1, v60) != 1)
      {
        if ((*(v61 + 88))(v47, v60) != *MEMORY[0x277D33DF0])
        {
          (*(v61 + 8))(v47, v60);
          goto LABEL_59;
        }

        (*(v61 + 96))(v47, v60);
        a2 = *(*v47 + 16);

        v59 = MEMORY[0x277D2EEF8];
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    sub_218FAAA2C(v48, &qword_27CC20280, MEMORY[0x277D34048]);
LABEL_34:
    v51 = sub_219BF3484();
    (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
LABEL_35:
    v52 = MEMORY[0x277D33E20];
    v53 = v47;
LABEL_58:
    sub_218FAAA2C(v53, &qword_280E90180, v52);
    goto LABEL_59;
  }

LABEL_67:
  __break(1u);
  return result;
}

char *sub_218FAA2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  MEMORY[0x28223BE20](v6);
  v69 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = v61 - v10;
  v11 = sub_219BE10B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = *(v12 + 16);
  v61[4] = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v13);
  v16 = sub_219BF3FB4();
  if (v16 >> 62)
  {
    v55 = v16;
    v17 = sub_219BF7214();
    v16 = v55;
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = a1;
  v66 = a2;
  v63 = v11;
  v64 = a3;
  v62 = v12;
  if (v17)
  {
    v18 = v16;
    v72 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v20 = 0;
    v21 = v72;
    v22 = v18;
    v23 = v18 & 0xC000000000000001;
    v24 = v18;
    do
    {
      if (v23)
      {
        v25 = MEMORY[0x21CECE0F0](v20, v22);
      }

      else
      {
        v25 = *(v22 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      v26 = [v25 identifier];
      v27 = sub_219BF5414();
      v29 = v28;
      swift_unknownObjectRelease();

      v72 = v21;
      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_21870B65C((v30 > 1), v31 + 1, 1);
        v21 = v72;
      }

      ++v20;
      *(v21 + 16) = v31 + 1;
      v32 = v21 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v22 = v24;
    }

    while (v17 != v20);
  }

  v33 = sub_219BF3FC4();
  v35 = v34;
  v36 = v68;
  sub_219BF4004();
  v37 = sub_219BDB804();
  v39 = v38;
  v40 = *(v71 + 8);
  v71 += 8;
  v68 = v40;
  (v40)(v36, v70);
  v41 = sub_219BF3F74();
  v61[2] = v39;
  v61[3] = v37;
  if (v41 >> 62)
  {
    v56 = v41;
    v42 = sub_219BF7214();
    v41 = v56;
    if (v42)
    {
LABEL_14:
      v43 = v41;
      v72 = MEMORY[0x277D84F90];
      result = sub_21870B65C(0, v42 & ~(v42 >> 63), 0);
      if ((v42 & 0x8000000000000000) == 0)
      {
        v61[0] = v35;
        v61[1] = v33;
        v44 = 0;
        v45 = v72;
        v46 = v43;
        v67 = v43 & 0xC000000000000001;
        v47 = v42;
        do
        {
          if (v67)
          {
            MEMORY[0x21CECE0F0](v44, v46);
          }

          else
          {
          }

          v48 = v69;
          sub_219BF4EC4();
          v49 = sub_219BDB804();
          v51 = v50;

          (v68)(v48, v70);
          v72 = v45;
          v53 = *(v45 + 16);
          v52 = *(v45 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_21870B65C((v52 > 1), v53 + 1, 1);
            v45 = v72;
          }

          ++v44;
          *(v45 + 16) = v53 + 1;
          v54 = v45 + 16 * v53;
          *(v54 + 32) = v49;
          *(v54 + 40) = v51;
          v46 = v43;
        }

        while (v47 != v44);
        goto LABEL_25;
      }

LABEL_32:
      __break(1u);
      return result;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_14;
    }
  }

LABEL_25:

  v57 = sub_219BF4034();
  if (v57)
  {
    v58 = [v57 UMCCanonicalID];
    swift_unknownObjectRelease();
    if (v58)
    {
      sub_219BF5414();
    }
  }

  v59 = sub_219BF4034();
  if (v59)
  {
    v60 = [v59 name];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  sub_219BE0884();

  return (*(v62 + 8))(v65, v63);
}

uint64_t sub_218FAA880(uint64_t result, uint64_t a2)
{
  if (a2 <= 2u)
  {
  }

  if (a2 == 3 || a2 == 4 || a2 == 5)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

void sub_218FAA8C4(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_218FAA8D8(result, a2);
  }
}

void sub_218FAA8D8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 == 3 || a2 == 4 || a2 == 5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

unint64_t sub_218FAA91C()
{
  result = qword_27CC14210;
  if (!qword_27CC14210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14210);
  }

  return result;
}

uint64_t sub_218FAA980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218FAA9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218FAAA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218FAA9C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_218FAAA9C(uint64_t a1)
{
  v2 = v1;
  sub_21896FA3C(0);
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - v7;
  v8 = sub_219BDD664();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsNavigationRouteModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FAB2D4(a1, v14, type metadata accessor for SportsNavigationRouteModel);
  v48 = v9;
  v15 = *(v9 + 32);
  v49 = v8;
  v15(v11, v14, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v18 = *(v2 + 72);
  v47 = v11;
  v19 = sub_219BDD654();
  v20 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  v21 = swift_allocObject();
  v22 = [v19 identifier];
  v23 = sub_219BF5414();
  v25 = v24;

  swift_unknownObjectRelease();
  *(v21 + 16) = v23;
  *(v21 + 24) = v25;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 1;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0;
  *(v21 + 96) = -1;
  v26 = *(v2 + 64);
  v27 = sub_219BDFA44();
  v28 = v50;
  (*(*(v27 - 8) + 56))(v50, 1, 1, v27);
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v56 = v18;
  sub_2187B14CC(v57, &v52, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v53)
  {
    sub_21875F93C(&v52, v54);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v30 = qword_280ED32D8;
    v29 = qword_280ED32E0;
    v31 = qword_280ED32E8;

    v44 = v29;
    sub_2188202A8(v29);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_2187448D0(&v52, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v30 = qword_280ED32D8;
    v32 = qword_280ED32E0;
    v31 = qword_280ED32E8;

    v44 = v32;
    sub_2188202A8(v32);
  }

  v51 = v21 | 0x2000000000000006;
  v53 = sub_219BDD274();
  *&v52 = v26;
  v33 = v46;
  sub_218FAB2D4(v28, v46, sub_21896FA3C);
  sub_2187B14CC(v59, v54, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v34 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v35 = (v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v26;
  sub_2189B4EAC(v33, v37 + v34);
  v38 = v37 + v35;
  v39 = v54[1];
  *v38 = v54[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v55;
  v40 = (v37 + v36);
  v41 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v40 = 0;
  v40[1] = 0;
  v42 = v44;
  *v41 = v30;
  v41[1] = v42;
  v41[2] = v31;
  swift_retain_n();

  sub_2188202A8(v42);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v42, v31);
  sub_2187448D0(v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v59, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v50);
  (*(v48 + 8))(v47, v49);
  sub_2187448D0(&v52, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_218FAB2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FAB37C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_218FAB3C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218FAB428()
{
  sub_218FADD24(0, &qword_280EE5E98, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C880]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280F61C90);
  __swift_project_value_buffer(v1, qword_280F61C90);
  swift_getKeyPath();
  sub_218725F94();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C4D140;
  *(v2 + 32) = swift_getKeyPath();
  *(v2 + 40) = swift_getKeyPath();
  *(v2 + 48) = swift_getKeyPath();
  *(v2 + 56) = swift_getKeyPath();
  *(v2 + 64) = swift_getKeyPath();
  *(v2 + 72) = swift_getKeyPath();
  *(v2 + 80) = swift_getKeyPath();
  *(v2 + 88) = swift_getKeyPath();
  *(v2 + 96) = swift_getKeyPath();
  sub_218FABB04();
  return sub_219BE5574();
}

uint64_t sub_218FAB6F4(uint64_t a1)
{
  v2 = sub_218FADCD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FAB730(uint64_t a1)
{
  v2 = sub_218FADCD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FAB76C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280ECA3E0 != -1)
  {
    swift_once();
  }

  sub_218FADD24(0, &qword_280EE5E98, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C880]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_280F61C90);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

__n128 sub_218FAB880@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_218FAD31C(a1, &qword_27CC14278, sub_218FADCD0, &type metadata for RecipeBoxSearchEntity.CodingKeys, sub_218FADCD0, sub_218AD7F58, sub_218FACF88, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_218FAB980()
{
  result = qword_280ECA3B0;
  if (!qword_280ECA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA3B0);
  }

  return result;
}

unint64_t sub_218FAB9D8()
{
  result = qword_280ECA3B8;
  if (!qword_280ECA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA3B8);
  }

  return result;
}

unint64_t sub_218FABA30()
{
  result = qword_280ECA3C8;
  if (!qword_280ECA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA3C8);
  }

  return result;
}

unint64_t sub_218FABAB0()
{
  result = qword_27CC14230;
  if (!qword_27CC14230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14230);
  }

  return result;
}

unint64_t sub_218FABB04()
{
  result = qword_280ECA3D0;
  if (!qword_280ECA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA3D0);
  }

  return result;
}

uint64_t sub_218FABB58()
{
  sub_218FADD24(0, &qword_280EE5E90, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C880]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280F61C60);
  __swift_project_value_buffer(v1, qword_280F61C60);
  swift_getKeyPath();
  sub_218725F94();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C4D140;
  *(v2 + 32) = swift_getKeyPath();
  *(v2 + 40) = swift_getKeyPath();
  *(v2 + 48) = swift_getKeyPath();
  *(v2 + 56) = swift_getKeyPath();
  *(v2 + 64) = swift_getKeyPath();
  *(v2 + 72) = swift_getKeyPath();
  *(v2 + 80) = swift_getKeyPath();
  *(v2 + 88) = swift_getKeyPath();
  *(v2 + 96) = swift_getKeyPath();
  sub_218FAC78C();
  return sub_219BE5574();
}

uint64_t sub_218FABCBC()
{
  v0 = sub_219BE5794();
  __swift_allocate_value_buffer(v0, qword_280F61C48);
  v1 = __swift_project_value_buffer(v0, qword_280F61C48);
  sub_219BE56E4();
  v2 = *MEMORY[0x277D6C990];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_218FABD70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7370657473;
    v6 = 0x6C70736944676174;
    if (a1 != 8)
    {
      v6 = 0x734449676174;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7470697263736564;
    if (a1 != 5)
    {
      v7 = 0x6569646572676E69;
    }

    if (a1 <= 6u)
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
    v1 = 0x4449776F72;
    v2 = 1701667182;
    v3 = 0x73726F68747561;
    if (a1 != 3)
    {
      v3 = 0x4E6C656E6E616863;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4449657069636572;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_218FABEB8(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v7 = v5;
  sub_218FADD24(0, a2, a3, a4, MEMORY[0x277D84538]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_219BF7B44();
  v18 = *v7;
  v17 = 0;
  sub_219BE5734();
  sub_218FADC88(&qword_27CC14268, MEMORY[0x277D6C908], MEMORY[0x277D6C910]);
  v14 = v16;
  sub_219BF7834();
  if (!v14)
  {
    v18 = v7[1];
    v17 = 1;
    sub_219BE5564();
    sub_218FADC88(&qword_27CC14270, MEMORY[0x277D6C868], MEMORY[0x277D6C870]);
    sub_219BF7834();
    v18 = v7[2];
    v17 = 2;
    sub_219BF7834();
    v18 = v7[3];
    v17 = 3;
    sub_219BF7834();
    v18 = v7[4];
    v17 = 4;
    sub_219BF7834();
    v18 = v7[5];
    v17 = 5;
    sub_219BF7834();
    v18 = v7[6];
    v17 = 6;
    sub_219BF7834();
    v18 = v7[7];
    v17 = 7;
    sub_219BF7834();
    v18 = v7[8];
    v17 = 8;
    sub_219BF7834();
    v18 = v7[9];
    v17 = 9;
    sub_219BF7834();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_218FAC29C(uint64_t a1)
{
  v2 = sub_218FADC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FAC2D8(uint64_t a1)
{
  v2 = sub_218FADC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FAC314@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EC7088 != -1)
  {
    swift_once();
  }

  sub_218FADD24(0, &qword_280EE5E90, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C880]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_280F61C60);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_218FAC3F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EC7080 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5794();
  v3 = __swift_project_value_buffer(v2, qword_280F61C48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

__n128 sub_218FAC4CC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_218FAD31C(a1, &qword_27CC14240, sub_218FADC34, &type metadata for RecipeBoxSearchEntity2.CodingKeys, sub_218FADC34, sub_218AD7EA8, sub_218FACFB8, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_218FAC5CC()
{
  result = qword_280EC7058;
  if (!qword_280EC7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7058);
  }

  return result;
}

unint64_t sub_218FAC624()
{
  result = qword_280EC7060;
  if (!qword_280EC7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7060);
  }

  return result;
}

unint64_t sub_218FAC67C()
{
  result = qword_280EC7070;
  if (!qword_280EC7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7070);
  }

  return result;
}

uint64_t sub_218FAC6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_218FAC738()
{
  result = qword_27CC14238;
  if (!qword_27CC14238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14238);
  }

  return result;
}

unint64_t sub_218FAC78C()
{
  result = qword_280EC7078;
  if (!qword_280EC7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7078);
  }

  return result;
}

unint64_t sub_218FAC7E4()
{
  result = qword_280EC7068;
  if (!qword_280EC7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7068);
  }

  return result;
}

unint64_t sub_218FAC83C()
{
  result = qword_280ECA3C0;
  if (!qword_280ECA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA3C0);
  }

  return result;
}

uint64_t sub_218FAC890(void *a1, void *a2)
{
  sub_219BE5734();
  if (sub_219BE5714() & 1) != 0 && (sub_219BE5564(), (sub_219BE5544()) && (sub_219BE5544() & 1) != 0 && (sub_219BE5544() & 1) != 0 && (sub_219BE5544() & 1) != 0 && (sub_219BE5544() & 1) != 0 && (sub_219BE5544() & 1) != 0 && (sub_219BE5544() & 1) != 0 && (sub_219BE5544())
  {
    return sub_219BE5544() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218FAC97C@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE5734();
  swift_allocObject();
  v11 = sub_219BE5724();
  sub_219BE5564();
  swift_allocObject();
  v10 = sub_219BE5554();
  swift_allocObject();
  v2 = sub_219BE5554();
  swift_allocObject();
  v3 = sub_219BE5554();
  swift_allocObject();
  v4 = sub_219BE5554();
  swift_allocObject();
  v5 = sub_219BE5554();
  swift_allocObject();
  v6 = sub_219BE5554();
  swift_allocObject();
  v7 = sub_219BE5554();
  swift_allocObject();
  v8 = sub_219BE5554();
  swift_allocObject();
  result = sub_219BE5554();
  *a1 = v11;
  a1[1] = v10;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
  a1[9] = result;
  return result;
}

__n128 sub_218FACC0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219BE5734();
  swift_allocObject();
  *&v22 = sub_219BE5724();
  sub_219BE5564();
  swift_allocObject();
  *(&v22 + 1) = sub_219BE5554();
  swift_allocObject();
  v3 = sub_219BE5554();
  swift_allocObject();
  v4 = sub_219BE5554();
  swift_allocObject();
  v5 = sub_219BE5554();
  swift_allocObject();
  v6 = sub_219BE5554();
  swift_allocObject();
  v7 = sub_219BE5554();
  swift_allocObject();
  v8 = sub_219BE5554();
  swift_allocObject();
  v9 = sub_219BE5554();
  swift_allocObject();
  v10 = sub_219BE5554();
  MEMORY[0x21CEBC2B0]();
  v11 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v11);
  v12 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v12);
  v13 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v13);
  v14 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v14);
  v15 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v15);
  v16 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v16);
  v17 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v17);
  v18 = sub_219BE5524();
  MEMORY[0x21CEBC2B0](v18);
  sub_219BE5524();
  sub_218FACF88(a1);
  v24 = v22;
  v25.n128_u64[0] = v3;
  v25.n128_u64[1] = v4;
  *&v26 = v5;
  *(&v26 + 1) = v6;
  *&v27 = v7;
  *(&v27 + 1) = v8;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v29 = v22;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  sub_218AD7EA8(&v24, v23);
  sub_218FACFB8(&v29);
  v19 = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v19;
  *(a2 + 64) = v28;
  result = v25;
  *a2 = v24;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_218FACFE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449657069636572 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726F68747561 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xEB00000000656D61 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C70736944676174 && a2 == 0xEF73656D614E7961 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x734449676174 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

__n128 sub_218FAD31C@<Q0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, void (*a6)(__int128 *, uint64_t *, __n128)@<X5>, void (*a7)(uint64_t *)@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v32 = a6;
  v36 = a5;
  v33 = a8;
  sub_218FADD24(0, a2, a3, a4, MEMORY[0x277D844C8]);
  v35 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  sub_219BE5734();
  swift_allocObject();
  v42 = sub_219BE5724();
  sub_219BE5564();
  swift_allocObject();
  v41 = sub_219BE5554();
  swift_allocObject();
  v40 = sub_219BE5554();
  swift_allocObject();
  v12 = sub_219BE5554();
  swift_allocObject();
  v39 = sub_219BE5554();
  swift_allocObject();
  v48 = sub_219BE5554();
  swift_allocObject();
  v47 = sub_219BE5554();
  swift_allocObject();
  v46 = sub_219BE5554();
  swift_allocObject();
  v45 = sub_219BE5554();
  swift_allocObject();
  v38 = sub_219BE5554();
  v13 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v36();
  v14 = v37;
  sub_219BF7B34();
  if (v14)
  {
    v15 = v42;
    v16 = v41;
    v17 = v40;
    v18 = v12;
    v19 = v39;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v55 = v15;
    v56 = v16;
    v57 = v17;
    v58 = v18;
    v59 = v19;
    v60 = v48;
    v61 = v47;
    v62 = v46;
    v63 = v45;
    v64 = v38;
    v44(&v55);
  }

  else
  {
    LOBYTE(v49) = 0;
    sub_218FADC88(&qword_27CC14250, MEMORY[0x277D6C908], MEMORY[0x277D6C918]);
    sub_219BF7734();

    v21 = v55;
    LOBYTE(v49) = 1;
    sub_218FADC88(&qword_27CC14258, MEMORY[0x277D6C868], MEMORY[0x277D6C878]);
    v42 = v11;
    sub_219BF7734();

    v22 = v55;
    LOBYTE(v49) = 2;
    sub_219BF7734();

    v23 = v55;
    LOBYTE(v49) = 3;
    sub_219BF7734();

    v24 = v55;
    LOBYTE(v49) = 4;
    sub_219BF7734();

    v25 = v55;
    LOBYTE(v49) = 5;
    sub_219BF7734();

    v48 = v55;
    LOBYTE(v49) = 6;
    sub_219BF7734();

    v47 = v55;
    LOBYTE(v49) = 7;
    sub_219BF7734();

    v46 = v55;
    LOBYTE(v49) = 8;
    sub_219BF7734();

    v45 = v55;
    v54 = 9;
    sub_219BF7734();
    (*(v34 + 8))(v42, v35);

    v42 = v65;
    *&v49 = v21;
    *(&v49 + 1) = v22;
    v50.n128_u64[0] = v23;
    v50.n128_u64[1] = v24;
    v26 = v48;
    *&v51 = v25;
    *(&v51 + 1) = v48;
    v27 = v47;
    v28 = v46;
    *&v52 = v47;
    *(&v52 + 1) = v46;
    *&v53 = v45;
    *(&v53 + 1) = v65;
    (v32)(&v49, &v55);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v55 = v21;
    v56 = v22;
    v57 = v23;
    v58 = v24;
    v59 = v25;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    v63 = v45;
    v64 = v42;
    v44(&v55);
    v29 = v52;
    v30 = v33;
    *(v33 + 32) = v51;
    *(v30 + 48) = v29;
    *(v30 + 64) = v53;
    result = v50;
    *v30 = v49;
    *(v30 + 16) = result;
  }

  return result;
}

unint64_t sub_218FADC34()
{
  result = qword_27CC14248;
  if (!qword_27CC14248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14248);
  }

  return result;
}

uint64_t sub_218FADC88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218FADCD0()
{
  result = qword_27CC14280;
  if (!qword_27CC14280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14280);
  }

  return result;
}

void sub_218FADD24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_218FADDB0()
{
  result = qword_27CC14290;
  if (!qword_27CC14290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14290);
  }

  return result;
}

unint64_t sub_218FADE08()
{
  result = qword_27CC14298;
  if (!qword_27CC14298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14298);
  }

  return result;
}

unint64_t sub_218FADE60()
{
  result = qword_27CC142A0;
  if (!qword_27CC142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC142A0);
  }

  return result;
}

unint64_t sub_218FADEB8()
{
  result = qword_27CC142A8;
  if (!qword_27CC142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC142A8);
  }

  return result;
}

unint64_t sub_218FADF10()
{
  result = qword_27CC142B0;
  if (!qword_27CC142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC142B0);
  }

  return result;
}

unint64_t sub_218FADF68()
{
  result = qword_27CC142B8;
  if (!qword_27CC142B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC142B8);
  }

  return result;
}

BOOL sub_218FAE014(uint64_t (*a1)(char *), uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  sub_218B7E48C(0);
  v30 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6C984(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FB1DF8(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2, v7, v13);
  sub_21872CBB8(&qword_27CC0E7C8, sub_218A6C984, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v16 = *(v12 + 44);
  sub_21872CBB8(&qword_27CC14300, sub_218A6C984, MEMORY[0x277D6D730]);
  v27 = (v4 + 16);
  v28 = (v4 + 8);
  do
  {
    sub_219BF5E84();
    v17 = v34[0];
    v33 = *&v15[v16];
    if (v33 == v34[0])
    {
      break;
    }

    v18 = sub_219BF5EC4();
    v19 = v7;
    v20 = v29;
    v21 = v30;
    (*v27)(v29);
    v18(v34, 0);
    sub_219BF5E94();
    v22 = v35;
    v23 = v31(v20);
    v35 = v22;
    if (v22)
    {
      (*v28)(v20, v21);
      break;
    }

    v24 = v23;
    (*v28)(v20, v21);
    v7 = v19;
  }

  while ((v24 & 1) == 0);
  sub_218FB1E8C(v15, sub_218FB1DF8);
  return v33 != v17;
}

uint64_t sub_218FAE36C(uint64_t (*a1)(uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      v14 = *(v7 - 2);
      v15 = v9;
      v16 = v10;
      v11 = sub_218AB7B18(v14, v9, v10);
      v12 = a1(&v14, v11);
      sub_21896755C(v14, v15, v16);
      LOBYTE(v4) = (v3 != 0) | v12;
      if ((v3 != 0) | v12 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 24;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_218FAE424(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x21CECE0F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_219BF7214();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

BOOL sub_218FAE560(uint64_t (*a1)(char *), uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  sub_218951C88(0);
  v30 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189519D8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BFAE30(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2, v7, v13);
  sub_21872CBB8(&qword_27CC142F0, sub_2189519D8, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v16 = *(v12 + 44);
  sub_21872CBB8(&qword_27CC0AF20, sub_2189519D8, MEMORY[0x277D6D730]);
  v27 = (v4 + 16);
  v28 = (v4 + 8);
  do
  {
    sub_219BF5E84();
    v17 = v34[0];
    v33 = *&v15[v16];
    if (v33 == v34[0])
    {
      break;
    }

    v18 = sub_219BF5EC4();
    v19 = v7;
    v20 = v29;
    v21 = v30;
    (*v27)(v29);
    v18(v34, 0);
    sub_219BF5E94();
    v22 = v35;
    v23 = v31(v20);
    v35 = v22;
    if (v22)
    {
      (*v28)(v20, v21);
      break;
    }

    v24 = v23;
    (*v28)(v20, v21);
    v7 = v19;
  }

  while ((v24 & 1) == 0);
  sub_218FB1E8C(v15, sub_218BFAE30);
  return v33 != v17;
}

void sub_218FAE8B8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_218FAEA04(uint64_t (*a1)(void *), uint64_t a2)
{
  v4 = v3;
  v22[5] = a2;
  sub_218748D40(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FB1D64(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2, v7, v13);
  sub_21872CBB8(&qword_27CC142D8, sub_218748D40, MEMORY[0x277D6CC40]);
  sub_219BF56A4();
  v16 = *(v12 + 44);
  sub_21872CBB8(&qword_27CC142D0, sub_218748D40, MEMORY[0x277D6CC48]);
  while (1)
  {
    sub_219BF5E84();
    if (*&v15[v16] == v22[0])
    {
      break;
    }

    v17 = sub_219BF5EC4();
    v19 = *v18;

    v17(v22, 0);
    sub_219BF5E94();
    v22[0] = v19;
    v20 = a1(v22);

    if (v4 || (v20 & 1) != 0)
    {
      sub_218FB1E8C(v15, sub_218FB1D64);
      return 1;
    }
  }

  sub_218FB1E8C(v15, sub_218FB1D64);
  return 0;
}

uint64_t sub_218FAEC94(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CECE0F0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_219BF7214();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_218FAEDD4@<X0>(uint64_t *a1@<X8>)
{
  v15 = a1;
  v1 = sub_219BE5744();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE5634();
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BE5774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12[1] = sub_219BE5784();
  *v8 = 0xD000000000000015;
  v8[1] = 0x8000000219D04E70;
  (*(v6 + 104))(v8, *MEMORY[0x277D6C970], v5);
  v9 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C0B8C0;
  sub_219BE5604();
  sub_219BE5624();
  sub_219BE5614();
  v16 = v10;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v9, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v9);
  sub_219BF7164();
  (*(v13 + 104))(v3, *MEMORY[0x277D6C950], v14);
  result = sub_219BE5754();
  *v15 = result;
  return result;
}

uint64_t sub_218FAF144@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BE5744();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE5634();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDB954();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = sub_219BE5774();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BE5784();
  v15 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v16 = sub_219BDB8F4();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v8;
  v21 = v26;
  v19(v20, v26);
  v19(v11, v21);
  *v14 = v16;
  v14[1] = v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D6C960], v25);
  v22 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v36 = v23;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v22, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v22);
  sub_219BF7164();
  (*(v33 + 104))(v32, *MEMORY[0x277D6C950], v34);
  result = sub_219BE5754();
  *v35 = result;
  return result;
}

uint64_t sub_218FAF5D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BE5744();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE5634();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDB954();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = sub_219BE5774();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BE5784();
  v15 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v16 = sub_219BDB8F4();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v8;
  v21 = v26;
  v19(v20, v26);
  v19(v11, v21);
  *v14 = v16;
  v14[1] = v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D6C960], v25);
  v22 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v36 = v23;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v22, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v22);
  sub_219BF7164();
  (*(v33 + 104))(v32, *MEMORY[0x277D6C950], v34);
  result = sub_219BE5754();
  *v35 = result;
  return result;
}

uint64_t sub_218FAFA6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BE5744();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE5634();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDB954();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = sub_219BE5774();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BE5784();
  v15 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v16 = sub_219BDB8F4();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v8;
  v21 = v26;
  v19(v20, v26);
  v19(v11, v21);
  *v14 = v16;
  v14[1] = v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D6C960], v25);
  v22 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v36 = v23;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v22, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v22);
  sub_219BF7164();
  (*(v33 + 104))(v32, *MEMORY[0x277D6C950], v34);
  result = sub_219BE5754();
  *v35 = result;
  return result;
}

uint64_t sub_218FAFF00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BE5744();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE5634();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDB954();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = sub_219BE5774();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BE5784();
  v15 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v16 = sub_219BDB8F4();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v8;
  v21 = v26;
  v19(v20, v26);
  v19(v11, v21);
  *v14 = v16;
  v14[1] = v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D6C960], v25);
  v22 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v36 = v23;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v22, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v22);
  sub_219BF7164();
  (*(v33 + 104))(v32, *MEMORY[0x277D6C950], v34);
  result = sub_219BE5754();
  *v35 = result;
  return result;
}

uint64_t sub_218FB0394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BE5744();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE5634();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDB954();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = sub_219BE5774();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BE5784();
  v15 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v16 = sub_219BDB8F4();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v8;
  v21 = v26;
  v19(v20, v26);
  v19(v11, v21);
  *v14 = v16;
  v14[1] = v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D6C960], v25);
  v22 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v36 = v23;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v22, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v22);
  sub_219BF7164();
  (*(v33 + 104))(v32, *MEMORY[0x277D6C950], v34);
  result = sub_219BE5754();
  *v35 = result;
  return result;
}

uint64_t sub_218FB0828@<X0>(uint64_t *a1@<X8>)
{
  v15 = a1;
  v1 = sub_219BE5744();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE5634();
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BE5774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12[1] = sub_219BE5784();
  *v8 = 0xD000000000000026;
  v8[1] = 0x8000000219D04E90;
  (*(v6 + 104))(v8, *MEMORY[0x277D6C970], v5);
  v9 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C0B8C0;
  sub_219BE5604();
  sub_219BE5624();
  sub_219BE5614();
  v16 = v10;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v9, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v9);
  sub_219BF7164();
  (*(v13 + 104))(v3, *MEMORY[0x277D6C950], v14);
  result = sub_219BE5754();
  *v15 = result;
  return result;
}

uint64_t sub_218FB0B98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = sub_219BE5744();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE5634();
  v26 = *(v30 - 8);
  v27 = v26;
  MEMORY[0x28223BE20](v30);
  v29 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v25 = sub_219BE5774();
  v13 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_219BE5784();
  v16 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v17 = sub_219BDB8F4();
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);
  *v15 = v17;
  v15[1] = v19;
  (*(v13 + 104))(v15, *MEMORY[0x277D6C960], v25);
  v21 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C0B8C0;
  sub_219BE5604();
  sub_219BE5624();
  sub_219BE5614();
  v35 = v22;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v21, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v21);
  sub_219BF7164();
  (*(v32 + 104))(v31, *MEMORY[0x277D6C950], v33);
  result = sub_219BE5754();
  *v34 = result;
  return result;
}

uint64_t sub_218FB1044@<X0>(uint64_t *a1@<X8>)
{
  v15 = a1;
  v1 = sub_219BE5744();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE5634();
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BE5774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12[1] = sub_219BE5784();
  *v8 = 0xD000000000000014;
  v8[1] = 0x8000000219D04EC0;
  (*(v6 + 104))(v8, *MEMORY[0x277D6C970], v5);
  v9 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C0B8C0;
  sub_219BE5604();
  sub_219BE5624();
  sub_219BE5614();
  v16 = v10;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v9, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v9);
  sub_219BF7164();
  (*(v13 + 104))(v3, *MEMORY[0x277D6C950], v14);
  result = sub_219BE5754();
  *v15 = result;
  return result;
}

uint64_t sub_218FB13B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BE5744();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE5634();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDB954();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = sub_219BE5774();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BE5784();
  v15 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v16 = sub_219BDB8F4();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v8;
  v21 = v26;
  v19(v20, v26);
  v19(v11, v21);
  *v14 = v16;
  v14[1] = v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D6C960], v25);
  v22 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v36 = v23;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v22, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v22);
  sub_219BF7164();
  (*(v33 + 104))(v32, *MEMORY[0x277D6C950], v34);
  result = sub_219BE5754();
  *v35 = result;
  return result;
}

uint64_t sub_218FB1848@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BE5744();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE5634();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDB954();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v25 = sub_219BE5774();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BE5784();
  v15 = [a1 contentDirectory];
  sub_219BF5414();

  sub_219BDB834();

  sub_219BDB864();
  v16 = sub_219BDB8F4();
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v8;
  v21 = v26;
  v19(v20, v26);
  v19(v11, v21);
  *v14 = v16;
  v14[1] = v18;
  (*(v12 + 104))(v14, *MEMORY[0x277D6C960], v25);
  v22 = MEMORY[0x277D6C8B0];
  sub_2186D0720(0, &qword_280E8C018, MEMORY[0x277D6C8B0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_219BE5624();
  v36 = v23;
  sub_21872CBB8(&unk_280EE5E50, MEMORY[0x277D6C8B0], MEMORY[0x277D6C8B8]);
  sub_2186D0720(0, &qword_280E8F548, v22, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F540, &qword_280E8F548, v22);
  sub_219BF7164();
  (*(v33 + 104))(v32, *MEMORY[0x277D6C950], v34);
  result = sub_219BE5754();
  *v35 = result;
  return result;
}

void sub_218FB1D64(uint64_t a1)
{
  if (!qword_27CC142C8)
  {
    sub_218748D40(255);
    sub_21872CBB8(&qword_27CC142D0, sub_218748D40, MEMORY[0x277D6CC48]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC142C8);
    }
  }
}

void sub_218FB1DF8(uint64_t a1)
{
  if (!qword_27CC142F8)
  {
    sub_218A6C984(255);
    sub_21872CBB8(&qword_27CC14300, sub_218A6C984, MEMORY[0x277D6D730]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC142F8);
    }
  }
}

uint64_t sub_218FB1E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218FB1F18()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218FB1FE0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218FB20A8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218FB21B8()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000048;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v4, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C(0);
  sub_218FB27DC(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v10, v12);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_218FB27DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218FB2824()
{
  v1 = [*(v0 + 184) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_2187452EC(&v11, sub_21880702C);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_2187452EC(&v11, sub_21880702C);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -50;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 50;
  return (v6 ^ v3) & 1;
}

uint64_t sub_218FB2A1C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_218FB2A94()
{
  sub_218FB2A1C();

  return swift_deallocClassInstance();
}

uint64_t sub_218FB2AC8()
{
  v1 = v0;
  sub_219BEAF54();
  sub_219BEACD4();
  v2 = sub_219BEA954();

  if (v2 & 1) != 0 || (sub_219BEAC54(), v3 = sub_219BEA954(), , (v3))
  {
    v4 = [*(v1 + 96) listenableArticleIDs];
    v5 = sub_219BF5D44();

    sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
    sub_219BF2574();
    v6 = [v12 identifier];
    swift_unknownObjectRelease();
    v7 = sub_219BF5414();
    v9 = v8;

    v10 = sub_2188537B8(v7, v9, v5);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_218FB2C3C(id *a1, uint64_t a2)
{
  sub_218FB76F0(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = (&v21 - v6);
  v8 = [*a1 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  sub_218FB7650(a2, v7, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v12 = type metadata accessor for AudioFeedTrack(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_218FB75E0(v7, &qword_280EDC960, type metadata accessor for AudioFeedTrack);

    v13 = 1;
  }

  else
  {
    v14 = [*v7 identifier];
    v15 = sub_219BF5414();
    v17 = v16;

    sub_2187452EC(v7, type metadata accessor for AudioFeedTrack);
    if (v9 == v15 && v11 == v17)
    {

      v13 = 0;
    }

    else
    {
      v19 = sub_219BF78F4();

      v13 = v19 ^ 1;
    }
  }

  return v13 & 1;
}

void sub_218FB2EB4(void *a1, uint64_t a2)
{
  v3 = v2;
  v547 = a1;
  v518 = sub_219BF2624();
  v517 = *(v518 - 1);
  MEMORY[0x28223BE20](v518);
  v515 = &v464 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = sub_219BF1D74();
  v514 = *(v516 - 8);
  MEMORY[0x28223BE20](v516);
  v512 = &v464 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = sub_219BF1584();
  v511 = *(v513 - 8);
  MEMORY[0x28223BE20](v513);
  v510 = &v464 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FB74C4(0);
  v481 = v8;
  v480 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v479 = &v464 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218FB76F0(0, &qword_280EDCA40, sub_218D58C8C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v501 = &v464 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v482 = &v464 - v14;
  MEMORY[0x28223BE20](v15);
  v472 = &v464 - v16;
  MEMORY[0x28223BE20](v17);
  v489 = &v464 - v18;
  MEMORY[0x28223BE20](v19);
  v475 = &v464 - v20;
  MEMORY[0x28223BE20](v21);
  v500 = &v464 - v22;
  sub_218EE3174(0);
  v519 = v23;
  MEMORY[0x28223BE20](v23);
  v491 = &v464 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v490 = &v464 - v26;
  MEMORY[0x28223BE20](v27);
  v492 = &v464 - v28;
  MEMORY[0x28223BE20](v29);
  v535 = &v464 - v30;
  sub_218FB76F0(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v10);
  MEMORY[0x28223BE20](v31 - 8);
  v467 = &v464 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v470 = &v464 - v34;
  MEMORY[0x28223BE20](v35);
  v493 = &v464 - v36;
  MEMORY[0x28223BE20](v37);
  v486 = (&v464 - v38);
  MEMORY[0x28223BE20](v39);
  v498 = (&v464 - v40);
  MEMORY[0x28223BE20](v41);
  v502 = &v464 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v464 - v44;
  MEMORY[0x28223BE20](v46);
  v505 = &v464 - v47;
  MEMORY[0x28223BE20](v48);
  v478 = &v464 - v49;
  MEMORY[0x28223BE20](v50);
  v476 = &v464 - v51;
  MEMORY[0x28223BE20](v52);
  v485 = (&v464 - v53);
  MEMORY[0x28223BE20](v54);
  v494 = (&v464 - v55);
  MEMORY[0x28223BE20](v56);
  v474 = &v464 - v57;
  MEMORY[0x28223BE20](v58);
  v484 = (&v464 - v59);
  MEMORY[0x28223BE20](v60);
  v496 = (&v464 - v61);
  MEMORY[0x28223BE20](v62);
  v497 = &v464 - v63;
  MEMORY[0x28223BE20](v64);
  v507 = &v464 - v65;
  MEMORY[0x28223BE20](v66);
  v508 = &v464 - v67;
  MEMORY[0x28223BE20](v68);
  v509 = (&v464 - v69);
  MEMORY[0x28223BE20](v70);
  v521 = &v464 - v71;
  MEMORY[0x28223BE20](v72);
  v522 = &v464 - v73;
  sub_21883F194(0);
  MEMORY[0x28223BE20](v74 - 8);
  v536 = &v464 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for AudioFeedTrack(0);
  v537 = *(v76 - 8);
  v538 = v76;
  MEMORY[0x28223BE20](v76);
  v465 = (&v464 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78);
  v466 = (&v464 - v79);
  MEMORY[0x28223BE20](v80);
  v487 = (&v464 - v81);
  MEMORY[0x28223BE20](v82);
  v469 = (&v464 - v83);
  MEMORY[0x28223BE20](v84);
  v468 = (&v464 - v85);
  MEMORY[0x28223BE20](v86);
  v483 = (&v464 - v87);
  MEMORY[0x28223BE20](v88);
  v503 = (&v464 - v89);
  MEMORY[0x28223BE20](v90);
  v539 = (&v464 - v91);
  MEMORY[0x28223BE20](v92);
  v520 = &v464 - v93;
  v534 = sub_219BDF874();
  v533 = *(v534 - 8);
  MEMORY[0x28223BE20](v534);
  v532 = &v464 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = sub_219BF1C74();
  v528 = *(v529 - 8);
  MEMORY[0x28223BE20](v529);
  v524 = &v464 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v527 = &v464 - v97;
  v98 = sub_219BDF864();
  v542 = *(v98 - 8);
  v543 = v98;
  MEMORY[0x28223BE20](v98);
  v541 = &v464 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BF2A04();
  v523 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v102 = &v464 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v105 = &v464 - v104;
  v526 = sub_219BE0774();
  v525 = *(v526 - 8);
  MEMORY[0x28223BE20](v526);
  v540 = &v464 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BF1324();
  v544 = *(v107 - 8);
  v545 = v107;
  MEMORY[0x28223BE20](v107);
  v531 = &v464 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v530 = &v464 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v464 - v112;
  sub_218FB76F0(0, &unk_280EDC8D0, sub_218D58B4C, v10);
  MEMORY[0x28223BE20](v114 - 8);
  v499 = &v464 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v504 = &v464 - v117;
  MEMORY[0x28223BE20](v118);
  v477 = &v464 - v119;
  MEMORY[0x28223BE20](v120);
  v471 = &v464 - v121;
  MEMORY[0x28223BE20](v122);
  v488 = &v464 - v123;
  MEMORY[0x28223BE20](v124);
  v473 = &v464 - v125;
  MEMORY[0x28223BE20](v126);
  v495 = &v464 - v127;
  MEMORY[0x28223BE20](v128);
  v506 = &v464 - v129;
  MEMORY[0x28223BE20](v130);
  v132 = &v464 - v131;
  MEMORY[0x28223BE20](v133);
  v135 = &v464 - v134;
  v136 = sub_219BF1B84();
  v546 = v3;
  if (v136 & 1) != 0 || (sub_218FB2AC8())
  {
    v518 = v45;
    v137 = a2;
    sub_219BEAF54();
    sub_219BEAC44();
    v138 = sub_219BEA954();

    if (v138)
    {
      sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
      sub_219BF2574();
      v139 = v548;
      sub_218D58B4C(0);
      (*(*(v140 - 8) + 56))(v135, 1, 1, v140);
      sub_218D58828(v139, v135);
      swift_unknownObjectRelease();
      sub_218FB75E0(v135, &unk_280EDC8D0, sub_218D58B4C);
      return;
    }

    sub_219BEACD4();
    v141 = sub_219BEA954();

    if (v141 & 1) != 0 || (sub_219BEAC54(), v142 = sub_219BEA954(), , (v142) || (sub_219BEABF4(), v143 = sub_219BEA954(), , (v143))
    {
      sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
      sub_219BF2574();
      v518 = v548;
      v144 = v546;
      v145 = *(v546 + 168);
      v515 = *(v546 + 176);
      v516 = v145;
      v514 = __swift_project_boxed_opaque_existential_1((v546 + 144), v145);
      sub_219BF2594();
      sub_218C8FF70(v540);
      v146 = v137;
      v517 = *(v544 + 1);
      (v517)(v113, v545);
      sub_219BF25A4();
      v147 = v523;
      (*(v523 + 16))(v102, v105, v100);
      v148 = (*(v147 + 88))(v102, v100);
      if (v148 == *MEMORY[0x277D33A68])
      {
        v149 = MEMORY[0x277D2DDB0];
      }

      else if (v148 == *MEMORY[0x277D33A78])
      {
        v149 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v148 != *MEMORY[0x277D33A70])
        {
          v463 = 0;
          goto LABEL_197;
        }

        v149 = MEMORY[0x277D2DDB8];
      }

      (*(v147 + 8))(v105, v100);
      (*(v542 + 104))(v541, *v149, v543);
      v162 = v527;
      sub_219BF2584();
      v163 = v528;
      v164 = v524;
      v165 = v529;
      (*(v528 + 16))(v524, v162, v529);
      v166 = (*(v163 + 88))(v164, v165);
      v167 = v166 == *MEMORY[0x277D33570];
      v464 = v146;
      if (v167)
      {
        v168 = MEMORY[0x277D2DDC8];
        goto LABEL_22;
      }

      if (v166 == *MEMORY[0x277D33568])
      {
        v168 = MEMORY[0x277D2DDD8];
LABEL_22:
        (*(v163 + 8))(v162, v165);
        v169 = *v168;
        v170 = v533;
        v171 = v532;
        v172 = v534;
        (*(v533 + 104))(v532, v169, v534);
        v173 = v540;
        v174 = v541;
        (*(v515 + 1))(v540, v541, v171, v516);
        (*(v170 + 8))(v171, v172);
        (*(v542 + 8))(v174, v543);
        (*(v525 + 8))(v173, v526);
        v543 = v144[4];
        sub_219BDE124();
        v175 = v536;
        sub_219BE20E4();

        sub_218D5862C(v132);
        sub_2187452EC(v175, sub_21883F194);
        sub_218D58B4C(0);
        v177 = v176;
        if ((*(*(v176 - 8) + 48))(v132, 1, v176) == 1)
        {
          sub_218FB75E0(v132, &unk_280EDC8D0, sub_218D58B4C);
        }

        else
        {
          v178 = *&v132[*(v177 + 48)];
          v179 = v520;
          sub_218C162E4(v132, v520);
          sub_2197D77B0(v179, 3u, v178);
          sub_2187452EC(v179, type metadata accessor for AudioFeedTrack);
        }

        v180 = v144;
        v181 = v530;
        sub_219BF2594();
        v182 = v545;
        v183 = v531;
        (*(v544 + 13))(v531, *MEMORY[0x277D33270], v545);
        v184 = sub_219BF1314();
        v185 = v183;
        v186 = v517;
        (v517)(v185, v182);
        v186(v181, v182);
        v187 = v180[9];
        v188 = v180[10];
        __swift_project_boxed_opaque_existential_1(v180 + 6, v187);
        v189 = v535;
        v190 = v538;
        v191 = v539;
        if (v184)
        {
          (*(v188 + 16))(v518, v187, v188);
        }

        else
        {
          (*(v188 + 8))(v518, v187, v188);
        }

        v192 = v537;
        v193 = v522;
        sub_218C1620C(v191, v522);
        v194 = *(v192 + 56);
        v195 = 1;
        v194(v193, 0, 1, v190);
        v545 = *(v546 + 16);

        sub_219BE20E4();

        v196 = v521;
        if (v548[2])
        {
          sub_218C1620C(v548 + ((*(v192 + 80) + 32) & ~*(v192 + 80)), v521);
          v195 = 0;
        }

        v194(v196, v195, 1, v190);
        v204 = *(v519 + 48);
        sub_218FB7650(v193, v189, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        sub_218FB7650(v196, v189 + v204, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        v205 = *(v192 + 48);
        if (v205(v189, 1, v190) == 1)
        {
          sub_218FB75E0(v196, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_218FB75E0(v193, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          if (v205(v189 + v204, 1, v190) == 1)
          {
            sub_218FB75E0(v189, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
            v206 = v539;
LABEL_53:
            v548 = MEMORY[0x277D84F90];
            sub_218EE32FC();
            sub_219BE2114();
            v234 = sub_219BEABF4();

            if (v234 == v547)
            {
              sub_219BDE184();
            }

            else
            {
              sub_219BDE164();
            }

            swift_unknownObjectRelease();
LABEL_57:
            sub_2187452EC(v206, type metadata accessor for AudioFeedTrack);
            return;
          }
        }

        else
        {
          v207 = v509;
          sub_218FB7650(v189, v509, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          if (v205(v189 + v204, 1, v190) != 1)
          {
            v211 = v503;
            sub_218C162E4(v189 + v204, v503);
            v212 = [*v207 identifier];
            v213 = sub_219BF5414();
            v215 = v214;

            v216 = [*v211 identifier];
            v217 = sub_219BF5414();
            v219 = v218;

            if (v213 == v217 && v215 == v219)
            {

              v206 = v539;
              v220 = v521;
            }

            else
            {
              v230 = sub_219BF78F4();

              v206 = v539;
              v220 = v521;
              if ((v230 & 1) == 0)
              {
                sub_218FB75E0(v521, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
                sub_218FB75E0(v522, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
                sub_2187452EC(v211, type metadata accessor for AudioFeedTrack);
                sub_2187452EC(v509, type metadata accessor for AudioFeedTrack);
                sub_218FB75E0(v189, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
                goto LABEL_39;
              }
            }

            v231 = *(v190 + 32);
            v232 = v509;
            v233 = sub_2198DB278((v509 + v231), (v211 + v231));
            sub_218FB75E0(v220, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
            sub_218FB75E0(v522, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
            sub_2187452EC(v211, type metadata accessor for AudioFeedTrack);
            sub_2187452EC(v232, type metadata accessor for AudioFeedTrack);
            sub_218FB75E0(v189, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
            if (v233)
            {
              goto LABEL_53;
            }

LABEL_39:
            sub_218FB76F0(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
            v208 = (*(v192 + 80) + 32) & ~*(v192 + 80);
            v209 = swift_allocObject();
            v209[1] = xmmword_219C09BA0;
            sub_218C1620C(v206, v209 + v208);
            v548 = v209;
            sub_218EE32FC();
            sub_219BE2114();

            v210 = sub_219BEABF4();

            if (v210 == v547)
            {
              sub_219BDE184();
            }

            else
            {
              sub_219BDE164();
            }

            v221 = *(v545 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_readingHistory);
            v222 = [*v206 articleID];
            if (!v222)
            {
              sub_219BF5414();
              v222 = sub_219BF53D4();
            }

            [v221 markArticle:v222 withCompletedListening:0];
            swift_unknownObjectRelease();

            goto LABEL_57;
          }

          sub_218FB75E0(v521, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_218FB75E0(v522, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_2187452EC(v207, type metadata accessor for AudioFeedTrack);
        }

        sub_2187452EC(v189, sub_218EE3174);
        v206 = v539;
        goto LABEL_39;
      }

      v463 = 0;
LABEL_197:
      sub_219BF7514();
      __break(1u);
      return;
    }

    sub_219BEACF4();
    v197 = sub_219BEA954();

    if (v197)
    {
      sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
      sub_219BF2574();
      v547 = v548;
      v198 = v546;
      sub_219BDE114();
      v199 = v508;
      sub_219BE20E4();

      v545 = *(v198 + 40);
      sub_219BE20E4();
      v201 = v537;
      v200 = v538;
      if (v548[2])
      {
        v202 = v507;
        sub_218C1620C(v548 + ((*(v537 + 80) + 32) & ~*(v537 + 80)), v507);
        v203 = 0;
      }

      else
      {
        v203 = 1;
        v202 = v507;
      }

      v240 = *(v201 + 56);
      v240(v202, v203, 1, v200);
      sub_219BDE124();
      v241 = v536;
      sub_219BE20E4();

      v242 = v506;
      sub_218D5862C(v506);
      sub_2187452EC(v241, sub_21883F194);
      v243 = v200;
      v244 = *(v201 + 48);
      if (v244(v199, 1, v243) == 1)
      {
        v245 = v497;
        v240(v497, 1, 1, v243);
        v246 = v495;
        sub_218FB7650(v242, v495, &unk_280EDC8D0, sub_218D58B4C);
        sub_218D58B4C(0);
        v248 = v247;
        if ((*(*(v247 - 8) + 48))(v246, 1, v247) == 1)
        {
          sub_218FB75E0(v246, &unk_280EDC8D0, sub_218D58B4C);
          sub_218D58C8C(0);
          v250 = v249;
          v251 = *(*(v249 - 8) + 56);
          v252 = &v532;
LABEL_69:
          v253 = *(v252 - 32);
          v254 = v253;
          v255 = 1;
LABEL_75:
          v251(v254, v255, 1, v250);
          sub_2197D6114(v547, v245, v253);
          swift_unknownObjectRelease();
          sub_218FB75E0(v253, &qword_280EDCA40, sub_218D58C8C);
          sub_218FB75E0(v245, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_218FB75E0(v242, &unk_280EDC8D0, sub_218D58B4C);
          v265 = v199;
LABEL_129:
          sub_218FB75E0(v265, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_218FB75E0(v202, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          return;
        }

        v259 = *(v246 + *(v248 + 48));
        sub_218D58C8C(0);
        v261 = v260;
        v262 = *(v260 + 48);
        v263 = v246;
        v264 = &v532;
        goto LABEL_74;
      }

      v256 = v496;
      sub_218FB7650(v199, v496, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      if (v244(v256, 1, v243) == 1)
      {
        sub_218FB75E0(v256, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        v257 = 0;
        v258 = 0;
      }

      else
      {
        v266 = [*v256 identifier];
        v257 = sub_219BF5414();
        v258 = v267;

        sub_2187452EC(v256, type metadata accessor for AudioFeedTrack);
      }

      v268 = [v547 identifier];
      v269 = sub_219BF5414();
      v271 = v270;

      if (v258)
      {
        v202 = v507;
        if (v257 == v269 && v258 == v271)
        {

          v199 = v508;
          goto LABEL_107;
        }

        v297 = sub_219BF78F4();

        v199 = v508;
        if (v297)
        {
          goto LABEL_107;
        }
      }

      else
      {

        v202 = v507;
        v199 = v508;
      }

      v298 = *(v519 + 48);
      v299 = v492;
      sub_218FB7650(v199, v492, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_218FB7650(v202, v299 + v298, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v300 = v538;
      if (v244(v299, 1, v538) == 1)
      {
        if (v244(v299 + v298, 1, v300) == 1)
        {
          sub_218FB75E0(v299, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_160:
          v245 = v474;
          v240(v474, 1, 1, v538);
          v242 = v506;
          v399 = v473;
          sub_218FB7650(v506, v473, &unk_280EDC8D0, sub_218D58B4C);
          sub_218D58B4C(0);
          v401 = v400;
          if ((*(*(v400 - 8) + 48))(v399, 1, v400) == 1)
          {
            sub_218FB75E0(v399, &unk_280EDC8D0, sub_218D58B4C);
            sub_218D58C8C(0);
            v250 = v402;
            v251 = *(*(v402 - 8) + 56);
            v252 = &v507;
            goto LABEL_69;
          }

          v259 = *(v399 + *(v401 + 48));
          sub_218D58C8C(0);
          v261 = v403;
          v262 = *(v403 + 48);
          v263 = v399;
          v264 = &v507;
LABEL_74:
          v253 = *(v264 - 32);
          sub_218C162E4(v263, v253);
          *&v253[v262] = v259;
          v251 = *(*(v261 - 8) + 56);
          v254 = v253;
          v255 = 0;
          v250 = v261;
          goto LABEL_75;
        }

        goto LABEL_106;
      }

      v305 = v484;
      sub_218FB7650(v299, v484, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      if (v244(v299 + v298, 1, v300) == 1)
      {
        sub_2187452EC(v305, type metadata accessor for AudioFeedTrack);
LABEL_106:
        sub_2187452EC(v299, sub_218EE3174);
        goto LABEL_107;
      }

      v356 = v299 + v298;
      v357 = v483;
      sub_218C162E4(v356, v483);
      v358 = [*v305 identifier];
      v359 = sub_219BF5414();
      v361 = v360;

      v362 = [*v357 identifier];
      v363 = sub_219BF5414();
      v365 = v364;

      if (v359 == v363 && v361 == v365)
      {

        v202 = v507;
        v199 = v508;
      }

      else
      {
        v396 = sub_219BF78F4();

        v202 = v507;
        v199 = v508;
        if ((v396 & 1) == 0)
        {
          sub_2187452EC(v483, type metadata accessor for AudioFeedTrack);
          sub_2187452EC(v305, type metadata accessor for AudioFeedTrack);
          sub_218FB75E0(v492, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          goto LABEL_107;
        }
      }

      v397 = v483;
      v398 = sub_2198DB278((v305 + *(v538 + 32)), (v483 + *(v538 + 32)));
      sub_2187452EC(v397, type metadata accessor for AudioFeedTrack);
      sub_2187452EC(v305, type metadata accessor for AudioFeedTrack);
      sub_218FB75E0(v492, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      if (v398)
      {
        goto LABEL_160;
      }

LABEL_107:
      v544 = v240;
      v306 = v494;
      sub_218FB7650(v199, v494, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      if (v244(v306, 1, v538) == 1)
      {
        sub_218FB75E0(v306, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        v307 = 0;
        v308 = 0;
        v309 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      }

      else
      {
        v309 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        v310 = [*v306 identifier];
        v307 = sub_219BF5414();
        v308 = v311;

        sub_2187452EC(v306, type metadata accessor for AudioFeedTrack);
      }

      v312 = [v547 v309[278]];
      v313 = sub_219BF5414();
      v315 = v314;

      if (v308)
      {
        v316 = v309;
        v202 = v507;
        if (v307 == v313 && v308 == v315)
        {

          v317 = v544;
          goto LABEL_116;
        }

        v318 = sub_219BF78F4();

        v317 = v544;
        if (v318)
        {
LABEL_116:
          v319 = *(v519 + 48);
          v320 = v490;
          sub_218FB7650(v508, v490, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_218FB7650(v202, v320 + v319, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          v321 = v538;
          if (v244(v320, 1, v538) == 1)
          {
            if (v244(v320 + v319, 1, v321) == 1)
            {
              sub_218FB75E0(v320, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
              v322 = v538;
              v323 = v476;
LABEL_175:
              v431 = sub_219BE20E4();
              MEMORY[0x28223BE20](v431);
              v462 = v202;
              sub_2195E6910(sub_218FB7754, (&v464 - 4), v432);
              v548 = v433;
              sub_218EE32FC();
              v434 = 1;
              sub_219BE2114();

              sub_219BE20E4();

              if (v548[2])
              {
                sub_218C1620C(v548 + ((*(v537 + 80) + 32) & ~*(v537 + 80)), v323);
                v434 = 0;
              }

              v435 = v506;
              v436 = v472;

              v317(v323, v434, 1, v322);
              v437 = v471;
              sub_218FB7650(v435, v471, &unk_280EDC8D0, sub_218D58B4C);
              sub_218D58B4C(0);
              v439 = v438;
              if ((*(*(v438 - 8) + 48))(v437, 1, v438) == 1)
              {
                sub_218FB75E0(v437, &unk_280EDC8D0, sub_218D58B4C);
                sub_218D58C8C(0);
                (*(*(v440 - 8) + 56))(v436, 1, 1, v440);
              }

              else
              {
                v441 = *(v437 + *(v439 + 48));
                sub_218D58C8C(0);
                v443 = v442;
                v444 = *(v442 + 48);
                sub_218C162E4(v437, v436);
                *&v436[v444] = v441;
                (*(*(v443 - 8) + 56))(v436, 0, 1, v443);
              }

              v445 = v508;
              sub_2197D6114(v547, v323, v436);
              swift_unknownObjectRelease();
              sub_218FB75E0(v436, &qword_280EDCA40, sub_218D58C8C);
              sub_218FB75E0(v323, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
              sub_218FB75E0(v435, &unk_280EDC8D0, sub_218D58B4C);
              v265 = v445;
              goto LABEL_129;
            }
          }

          else
          {
            v340 = v485;
            sub_218FB7650(v320, v485, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
            if (v244(v320 + v319, 1, v321) != 1)
            {
              v387 = v468;
              sub_218C162E4(v320 + v319, v468);
              v388 = [*v340 v316 + 1656];
              v389 = sub_219BF5414();
              v391 = v390;

              v392 = [*v387 v316 + 1656];
              v393 = sub_219BF5414();
              v395 = v394;

              if (v389 == v393 && v391 == v395)
              {

                v322 = v538;
                v202 = v507;
                v323 = v476;
              }

              else
              {
                v428 = sub_219BF78F4();

                v322 = v538;
                v202 = v507;
                v323 = v476;
                if ((v428 & 1) == 0)
                {
                  sub_2187452EC(v387, type metadata accessor for AudioFeedTrack);
                  sub_2187452EC(v485, type metadata accessor for AudioFeedTrack);
                  sub_218FB75E0(v490, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
                  goto LABEL_133;
                }
              }

              v429 = v485;
              v430 = sub_2198DB278((v485 + *(v322 + 32)), (v387 + *(v322 + 32)));
              sub_2187452EC(v387, type metadata accessor for AudioFeedTrack);
              sub_2187452EC(v429, type metadata accessor for AudioFeedTrack);
              sub_218FB75E0(v490, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
              if (v430)
              {
                goto LABEL_175;
              }

LABEL_133:

              sub_219BE20E4();

              v550 = v548;
              sub_218FB76F0(0, &qword_280E8F360, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83940]);
              sub_218FB7558();
              v341 = v479;
              sub_219BF5E04();

              v549 = 1;
              v342 = v478;
              v343 = v481;
              sub_219BE2084();
              (*(v480 + 8))(v341, v343);
              v344 = v477;
              sub_218FB7650(v506, v477, &unk_280EDC8D0, sub_218D58B4C);
              sub_218D58B4C(0);
              v346 = v345;
              v347 = (*(*(v345 - 8) + 48))(v344, 1, v345);
              v348 = v508;
              if (v347 == 1)
              {
                sub_218FB75E0(v344, &unk_280EDC8D0, sub_218D58B4C);
                sub_218D58C8C(0);
                v350 = v482;
                (*(*(v349 - 8) + 56))(v482, 1, 1, v349);
              }

              else
              {
                v366 = *(v344 + *(v346 + 48));
                sub_218D58C8C(0);
                v368 = v367;
                v369 = *(v367 + 48);
                v370 = v344;
                v350 = v482;
                sub_218C162E4(v370, v482);
                *&v350[v369] = v366;
                (*(*(v368 - 8) + 56))(v350, 0, 1, v368);
              }

              sub_2197D6114(v547, v342, v350);
              swift_unknownObjectRelease();
              sub_218FB75E0(v350, &qword_280EDCA40, sub_218D58C8C);
              sub_218FB75E0(v342, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
              sub_218FB75E0(v506, &unk_280EDC8D0, sub_218D58B4C);
              v265 = v348;
              goto LABEL_129;
            }

            sub_2187452EC(v340, type metadata accessor for AudioFeedTrack);
          }

          sub_2187452EC(v320, sub_218EE3174);
          goto LABEL_133;
        }
      }

      else
      {

        v202 = v507;
      }

      v324 = v488;
      sub_218FB7650(v506, v488, &unk_280EDC8D0, sub_218D58B4C);
      sub_218D58B4C(0);
      v326 = v325;
      v327 = (*(*(v325 - 8) + 48))(v324, 1, v325);
      v328 = v508;
      if (v327 == 1)
      {
        sub_218FB75E0(v324, &unk_280EDC8D0, sub_218D58B4C);
        sub_218D58C8C(0);
        v330 = v489;
        (*(*(v329 - 8) + 56))(v489, 1, 1, v329);
      }

      else
      {
        v335 = *(v324 + *(v326 + 48));
        sub_218D58C8C(0);
        v337 = v336;
        v338 = *(v336 + 48);
        v339 = v324;
        v330 = v489;
        sub_218C162E4(v339, v489);
        *&v330[v338] = v335;
        (*(*(v337 - 8) + 56))(v330, 0, 1, v337);
      }

      sub_2197D6114(v547, v328, v330);
      swift_unknownObjectRelease();
      sub_218FB75E0(v330, &qword_280EDCA40, sub_218D58C8C);
      sub_218FB75E0(v506, &unk_280EDC8D0, sub_218D58B4C);
      v265 = v328;
      goto LABEL_129;
    }

    sub_219BEACE4();
    v223 = sub_219BEA954();

    v224 = v537;
    v225 = v538;
    if (v223)
    {
      sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
      sub_219BF2574();
      v226 = v548;
      v227 = v546;
      sub_219BDE114();
      sub_219BE20E4();

      v547 = *(v227 + 40);
      sub_219BE20E4();
      if (v548[2])
      {
        v228 = v518;
        sub_218C1620C(v548 + ((*(v224 + 80) + 32) & ~*(v224 + 80)), v518);
        v229 = 0;
      }

      else
      {
        v229 = 1;
        v228 = v518;
      }

      v272 = *(v224 + 56);
      v273 = 1;
      v272(v228, v229, 1, v225);
      sub_219BDE124();
      v274 = v536;
      sub_219BE20E4();

      sub_218D5862C(v504);
      sub_2187452EC(v274, sub_21883F194);

      sub_219BE20E4();

      v275 = v548[2];
      v276 = v502;
      if (v275)
      {
        sub_218C1620C(v548 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * (v275 - 1), v502);
        v273 = 0;
      }

      v272(v276, v273, 1, v225);
      v286 = v498;
      sub_218FB7650(v505, v498, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v287 = *(v224 + 48);
      if (v287(v286, 1, v225) == 1)
      {
        sub_218FB75E0(v286, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        v288 = 0;
        v289 = 0;
      }

      else
      {
        v290 = [*v286 identifier];
        v288 = sub_219BF5414();
        v289 = v291;

        sub_2187452EC(v286, type metadata accessor for AudioFeedTrack);
      }

      v292 = [v226 identifier];
      v293 = sub_219BF5414();
      v295 = v294;

      if (v289)
      {
        if (v288 == v293 && v289 == v295)
        {

          v296 = v501;
        }

        else
        {
          v301 = sub_219BF78F4();

          v296 = v501;
          if ((v301 & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        v302 = *(v519 + 48);
        v303 = v491;
        sub_218FB7650(v505, v491, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        sub_218FB7650(v518, v303 + v302, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        v304 = v538;
        if (v287(v303, 1, v538) == 1)
        {
          if (v287((v303 + v302), 1, v304) == 1)
          {
            sub_218FB75E0(v303, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_168:
            v416 = sub_219BE20E4();
            MEMORY[0x28223BE20](v416);
            v462 = v518;
            sub_2195E6910(sub_218FB76D0, (&v464 - 4), v417);
            v548 = v418;
            sub_218EE32FC();
            sub_219BE2114();

            goto LABEL_169;
          }

          goto LABEL_126;
        }

        v334 = v486;
        sub_218FB7650(v303, v486, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        if (v287((v303 + v302), 1, v304) == 1)
        {
          sub_2187452EC(v334, type metadata accessor for AudioFeedTrack);
LABEL_126:
          sub_2187452EC(v303, sub_218EE3174);
          goto LABEL_169;
        }

        v377 = v469;
        sub_218C162E4(v303 + v302, v469);
        v378 = [*v334 identifier];
        v379 = sub_219BF5414();
        v381 = v380;

        v382 = [*v377 identifier];
        v383 = sub_219BF5414();
        v385 = v384;

        if (v379 == v383 && v381 == v385)
        {

          v386 = v538;
        }

        else
        {
          v413 = sub_219BF78F4();

          v386 = v538;
          if ((v413 & 1) == 0)
          {
            sub_2187452EC(v377, type metadata accessor for AudioFeedTrack);
            sub_2187452EC(v486, type metadata accessor for AudioFeedTrack);
            sub_218FB75E0(v491, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
            goto LABEL_169;
          }
        }

        v414 = v486;
        v415 = sub_2198DB278((v486 + *(v386 + 32)), (v377 + *(v386 + 32)));
        sub_2187452EC(v377, type metadata accessor for AudioFeedTrack);
        sub_2187452EC(v414, type metadata accessor for AudioFeedTrack);
        sub_218FB75E0(v491, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        if (v415)
        {
          goto LABEL_168;
        }
      }

      else
      {

        v296 = v501;
      }

LABEL_169:
      v419 = v499;
      sub_218FB7650(v504, v499, &unk_280EDC8D0, sub_218D58B4C);
      sub_218D58B4C(0);
      v421 = v420;
      if ((*(*(v420 - 8) + 48))(v419, 1, v420) == 1)
      {
        sub_218FB75E0(v419, &unk_280EDC8D0, sub_218D58B4C);
        sub_218D58C8C(0);
        (*(*(v422 - 8) + 56))(v296, 1, 1, v422);
      }

      else
      {
        v423 = *(v419 + *(v421 + 48));
        sub_218D58C8C(0);
        v425 = v424;
        v426 = *(v424 + 48);
        sub_218C162E4(v419, v296);
        *&v296[v426] = v423;
        (*(*(v425 - 8) + 56))(v296, 0, 1, v425);
      }

      v427 = v502;
      sub_2197D6114(v226, v502, v296);
      swift_unknownObjectRelease();
      sub_218FB75E0(v296, &qword_280EDCA40, sub_218D58C8C);
      sub_218FB75E0(v427, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_218FB75E0(v504, &unk_280EDC8D0, sub_218D58B4C);
      sub_218FB75E0(v505, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_218FB75E0(v518, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      return;
    }

    sub_219BEACA4();
    v235 = sub_219BEA954();

    if (v235 & 1) != 0 || (sub_219BEABB4(), v236 = sub_219BEA954(), , (v236))
    {
      sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
      sub_219BF2574();
      v237 = v548;
      v238 = [v548 articleID];
      if (!v238)
      {
        sub_219BF5414();
        v238 = sub_219BF53D4();
      }

      sub_219BDE114();
      v239 = v493;
      sub_219BE20E4();

      if ((*(v224 + 48))(v239, 1, v225) == 1)
      {
        sub_218FB75E0(v239, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_138:
        v352 = v546;
        v353 = *(v546 + 240);
        v354 = [v237 articleID];
        if (!v354)
        {
          sub_219BF5414();
          v354 = sub_219BF53D4();
        }

        [v353 removeArticleID_];

        v355 = *(v352 + 232);
        goto LABEL_141;
      }

      v277 = v487;
      sub_218C162E4(v239, v487);
      v278 = [*v277 identifier];
      v279 = sub_219BF5414();
      v281 = v280;

      v282 = [v237 identifier];
      v283 = sub_219BF5414();
      v285 = v284;

      if (v279 == v283 && v281 == v285)
      {
      }

      else
      {
        v351 = sub_219BF78F4();

        if ((v351 & 1) == 0)
        {
LABEL_137:
          sub_2187452EC(v277, type metadata accessor for AudioFeedTrack);
          goto LABEL_138;
        }
      }

      sub_219BDE174();
      goto LABEL_137;
    }

    sub_219BEAC14();
    v331 = sub_219BEA954();

    if (v331)
    {
      sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
      sub_219BF2574();
      v332 = v548;
      sub_219BDE114();
      v333 = v470;
      sub_219BE20E4();

      if ((*(v224 + 48))(v333, 1, v225) == 1)
      {
        sub_218FB75E0(v333, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_185:
        v447 = [v332 articleID];
        v448 = sub_219BF5414();
        v450 = v449;

        sub_219A24030(v448, v450);
        swift_unknownObjectRelease();

        return;
      }

      v404 = v466;
      sub_218C162E4(v333, v466);
      v405 = [*v404 identifier];
      v406 = sub_219BF5414();
      v408 = v407;

      v409 = [v332 identifier];
      v410 = sub_219BF5414();
      v412 = v411;

      if (v406 == v410 && v408 == v412)
      {
      }

      else
      {
        v446 = sub_219BF78F4();

        if ((v446 & 1) == 0)
        {
LABEL_184:
          sub_2187452EC(v404, type metadata accessor for AudioFeedTrack);
          goto LABEL_185;
        }
      }

      sub_219BDE174();
      goto LABEL_184;
    }

    sub_219BEAC24();
    v371 = sub_219BEA954();

    if ((v371 & 1) == 0)
    {
      return;
    }

    sub_218FB76F0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
    sub_219BF2574();
    v372 = v548;
    v373 = [v548 articleID];
    v238 = v373;
    v374 = v373;
    if (!v373)
    {
      sub_219BF5414();
      v374 = sub_219BF53D4();

      sub_219BF5414();
      v238 = sub_219BF53D4();
    }

    v375 = v373;
    sub_219BDE114();
    v376 = v467;
    sub_219BE20E4();

    if ((*(v224 + 48))(v376, 1, v225) == 1)
    {
      sub_218FB75E0(v376, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_194:
      v461 = v546;
      [*(v546 + 240) removeArticleID_];

      v355 = *(v461 + 232);
LABEL_141:
      [v355 markArticle:v238 withRemovedFromAudio:1];
      swift_unknownObjectRelease();

      return;
    }

    v451 = v465;
    sub_218C162E4(v376, v465);
    v452 = [*v451 identifier];
    v453 = sub_219BF5414();
    v455 = v454;

    v456 = [v372 identifier];
    v457 = sub_219BF5414();
    v459 = v458;

    if (v453 == v457 && v455 == v459)
    {
    }

    else
    {
      v460 = sub_219BF78F4();

      if ((v460 & 1) == 0)
      {
LABEL_193:
        sub_2187452EC(v451, type metadata accessor for AudioFeedTrack);
        goto LABEL_194;
      }
    }

    sub_219BDE174();
    goto LABEL_193;
  }

  __swift_project_boxed_opaque_existential_1((v3 + 192), *(v3 + 216));
  v150 = sub_219BE7174();
  if (v150)
  {
    v151 = v150;
    v152 = [v150 rootViewController];

    if (v152)
    {
      v153 = *(v546 + 128);
      v547 = *(v546 + 136);
      __swift_project_boxed_opaque_existential_1((v546 + 104), v153);
      v154 = v510;
      sub_219BDDC44();
      v155 = v514;
      v156 = v512;
      v157 = v516;
      (v514[13])(v512, *MEMORY[0x277D33600], v516);
      v158 = v517;
      v159 = v515;
      v160 = v518;
      (*(v517 + 104))(v515, *MEMORY[0x277D33990], v518);
      v161 = sub_219BF4984();
      (*(v158 + 8))(v159, v160);
      (v155[1])(v156, v157);
      (*(v511 + 8))(v154, v513);
      [v152 presentViewController:v161 animated:1 completion:0];
    }
  }
}

uint64_t sub_218FB73DC()
{
  sub_219BEAF54();
  sub_219BEACA4();
  v0 = sub_219BEA954();

  if ((v0 & 1) == 0)
  {
    sub_219BEABB4();
    v1 = sub_219BEA954();

    if ((v1 & 1) == 0)
    {
      sub_219BEACF4();
      v2 = sub_219BEA954();

      if ((v2 & 1) == 0)
      {
        sub_219BEACE4();
        v3 = sub_219BEA954();

        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return sub_218FB2824();
}

void sub_218FB74C4(uint64_t a1)
{
  if (!qword_280EE7BD0)
  {
    sub_218FB76F0(255, &qword_280E8F360, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83940]);
    sub_218FB7558();
    v1 = sub_219BE2074();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7BD0);
    }
  }
}

unint64_t sub_218FB7558()
{
  result = qword_280E8F340;
  if (!qword_280E8F340)
  {
    sub_218FB76F0(255, &qword_280E8F360, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F340);
  }

  return result;
}

uint64_t sub_218FB75E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218FB76F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218FB7650(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218FB76F0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_218FB76F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218FB7770()
{
  sub_218724DE0(0, &unk_280EE3970, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218724DE0(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F624A0 = result;
  return result;
}

uint64_t sub_218FB78B8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v78 = a3;
  v79 = a2;
  sub_218FB8548(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v77 = v5;
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = v72 - v6;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v7 - 8);
  v100 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v99 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v82 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BF2CB4();
  v12 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = (v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = sub_219BF2634();
  v14 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928(0);
  v103 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v94 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v72 - v23;
  sub_218FB8548(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v72 - v27;
  v73 = v29;
  v30 = *(v29 + 16);
  v104 = v28;
  v74 = a1;
  v105 = v31;
  v72[1] = v29 + 16;
  v72[0] = v30;
  v30(v26);
  v101 = v3;
  v32 = *v3;
  v33 = *(*v3 + 16);
  if (v33)
  {
    v34 = (v20 + 48);
    v90 = (v20 + 32);
    v89 = (v20 + 16);
    v88 = *MEMORY[0x277D33B98];
    v87 = (v12 + 104);
    v86 = (v12 + 8);
    v85 = (v14 + 8);
    v84 = (v10 + 48);
    v81 = (v10 + 32);
    v80 = (v10 + 8);
    v83 = (v20 + 8);
    v35 = (v32 + 40);
    v93 = v18;
    v92 = v24;
    v91 = (v20 + 48);
    do
    {
      if (*v35 <= 0x3Fu)
      {
        v36 = *(v35 - 1);
        j__swift_retain();
        sub_219BEB354();
        v37 = v103;
        if ((*v34)(v18, 1, v103) == 1)
        {
          sub_218C69A30(v18, sub_218A2D984);
        }

        else
        {
          (*v90)(v24, v18, v37);
          v38 = *v89;
          v106 = v36;
          v39 = v94;
          v38(v94, v24, v37);
          __swift_project_boxed_opaque_existential_1(v101 + 1, v101[4]);
          v41 = v97;
          v40 = v98;
          *v97 = *(v106 + 16);
          (*v87)(v41, v88, v40);
          swift_unknownObjectRetain();
          v42 = v95;
          sub_219BF4794();
          v43 = v106;
          (*v86)(v41, v40);
          v44 = sub_219BF2614();
          (*v85)(v42, v96);
          type metadata accessor for FollowingTagModel();
          inited = swift_initStackObject();
          *(inited + 16) = 1;
          *(inited + 24) = v43;
          v102 = inited;
          *(inited + 32) = v44 & 1;
          v108[0] = 0;
          v108[1] = 0xE000000000000000;
          LOBYTE(v107) = 1;
          j__swift_retain();
          sub_219BF7484();
          MEMORY[0x21CECC330](58, 0xE100000000000000);
          v46 = *(v43 + 16);
          v47 = v103;
          v48 = [v46 identifier];
          v49 = sub_219BF5414();
          v51 = v50;

          MEMORY[0x21CECC330](v49, v51);

          v52 = v100;
          sub_219BE6A64();

          v53 = v99;
          if ((*v84)(v52, 1, v99) == 1)
          {
            sub_218C69A30(v52, sub_218A7BA30);
          }

          else
          {
            v54 = v82;
            (*v81)(v82, v52, v53);
            sub_219BE69D4();
            (*v80)(v54, v53);
          }

          sub_2186D57BC(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
          sub_219BF5DF4();
          sub_219BF5E84();
          v55 = v39;
          v18 = v93;
          v56 = v92;
          if (v108[0] == v107)
          {
            sub_219BE6944();
            sub_219BEB214();
          }

          else
          {
            sub_219BEB234();
          }

          v57 = *v83;
          (*v83)(v55, v47);
          v57(v56, v47);
          v24 = v56;
          v34 = v91;
          v36 = v106;
        }

        j__swift_release(v36);
      }

      v35 += 16;
      --v33;
    }

    while (v33);
  }

  type metadata accessor for FollowingModel(0);
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D57BC(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  v58 = v104;
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  if (sub_219BE6E54())
  {
    v59 = MEMORY[0x277D6DF80];
    v60 = v79;
    v61 = v77;
    v62 = v76;
    v63 = v75;
    v64 = v73;
    v65 = v105;
  }

  else
  {
    sub_218A7BB4C(0);
    v67 = *(v66 + 48);
    v68 = *(v66 + 64);
    v63 = v75;
    v65 = v105;
    (v72[0])(v75, v58, v105);
    sub_218718690(v108, &v63[v67]);
    v69 = *MEMORY[0x277D6D868];
    v70 = sub_219BE6DF4();
    (*(*(v70 - 8) + 104))(&v63[v68], v69, v70);
    v59 = MEMORY[0x277D6DF78];
    v60 = v79;
    v61 = v77;
    v62 = v76;
    v64 = v73;
  }

  (*(v62 + 104))(v63, *v59, v61);
  v60(v63);
  (*(v62 + 8))(v63, v61);
  (*(v64 + 8))(v58, v65);
  return __swift_destroy_boxed_opaque_existential_1(v108);
}

uint64_t sub_218FB846C(uint64_t a1)
{
  v2 = sub_218B12F10();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218FB84AC()
{
  result = qword_27CC14308;
  if (!qword_27CC14308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14308);
  }

  return result;
}

void sub_218FB8548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel(255);
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D57BC(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218FB86A4(void *a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t (*a5)(void), uint64_t a6)
{
  if (([a1 respondsToSelector_] & 1) != 0 && (v9 = objc_msgSend(a1, *a4)) != 0)
  {
    v10 = v9;
    v11 = sub_219BF5414();

    return v11;
  }

  else
  {
    a5();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_218FB875C()
{
  result = qword_27CC14310;
  if (!qword_27CC14310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14310);
  }

  return result;
}

unint64_t sub_218FB87B0()
{
  result = qword_27CC14318;
  if (!qword_27CC14318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14318);
  }

  return result;
}

unint64_t sub_218FB8828()
{
  result = qword_27CC14320;
  if (!qword_27CC14320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14320);
  }

  return result;
}

unint64_t sub_218FB8880()
{
  result = qword_27CC14328;
  if (!qword_27CC14328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14328);
  }

  return result;
}

uint64_t sub_218FB8908()
{
  v1 = v0;
  v34 = type metadata accessor for RecipesSearchFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84(0);
  v32 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchFeedGroupConfig(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = v1 + *(type metadata accessor for SearchFeedServiceConfig(0) + 20);
  result = type metadata accessor for SearchFeedConfig(0);
  v15 = *(v13 + *(result + 20));
  v16 = *(v15 + 16);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  v18 = v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v28 = (v4 + 8);
  v29 = (v4 + 32);
  v30 = v18;
  v19 = v32;
  while (v17 < *(v15 + 16))
  {
    sub_218FB9230(v18 + *(v7 + 72) * v17, v12, type metadata accessor for SearchFeedGroupConfig);
    sub_218FB9230(v12, v9, type metadata accessor for SearchFeedGroupConfig);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v20 = v31;
      (*v29)(v31, v9, v19);
      v21 = v16;
      v22 = v15;
      v23 = v7;
      v24 = v6;
      v25 = v33;
      sub_219BEDD14();
      (*v28)(v20, v19);
      sub_218FB9298(v12, type metadata accessor for SearchFeedGroupConfig);
      LOBYTE(v20) = v25[*(v34 + 24)];
      v26 = v25;
      v6 = v24;
      v7 = v23;
      v15 = v22;
      v16 = v21;
      v18 = v30;
      result = sub_218FB9298(v26, type metadata accessor for RecipesSearchFeedGroupConfigData);
      if (v20)
      {
        return 1;
      }
    }

    else
    {
      sub_218FB9298(v12, type metadata accessor for SearchFeedGroupConfig);
      result = sub_218FB9298(v9, type metadata accessor for SearchFeedGroupConfig);
    }

    if (v16 == ++v17)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

double sub_218FB8C64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = sub_219BEEA84();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchFeedContentConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchFeedServiceContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FB9230(v2, v12, type metadata accessor for SearchFeedServiceContext);
  sub_218FB9230(a1, v9, type metadata accessor for SearchFeedContentConfig);
  v13 = type metadata accessor for SearchFeedServiceConfig(0);
  v14 = *(v2 + v13[6]);
  v15 = v6;
  v16 = v6;
  v17 = v30;
  (*(v4 + 104))(v16, *MEMORY[0x277D32220], v30);
  v18 = *(v2 + v13[9]);
  v27 = *(v2 + v13[10]);
  v28 = v18;
  v19 = v29;
  sub_218FB9230(v12, v29, type metadata accessor for SearchFeedServiceContext);
  v20 = v19 + v13[5];
  v21 = v19;
  v22 = v9;
  sub_218FB9230(v9, v20, type metadata accessor for SearchFeedContentConfig);
  v23 = v21;
  *(v21 + v13[6]) = v14;
  (*(v4 + 16))(v21 + v13[7], v15, v17);
  v24 = v27;
  swift_unknownObjectRetain();
  v25 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v4 + 8))(v15, v17);
  sub_218FB9298(v22, type metadata accessor for SearchFeedContentConfig);
  sub_218FB9298(v12, type metadata accessor for SearchFeedServiceContext);
  result = v25;
  *(v23 + v13[8]) = v25;
  *(v23 + v13[9]) = v28;
  *(v23 + v13[10]) = v24;
  return result;
}

uint64_t sub_218FB8FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_219BEEA84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_218FB9024()
{
  v1 = type metadata accessor for SearchFeedServiceContext(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218FB9230(v0, v3, type metadata accessor for SearchFeedServiceContext);
  v4 = *v3;

  sub_218FB9298(v3, type metadata accessor for SearchResults);
  return v4;
}

uint64_t sub_218FB90E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D32EA8];
  v3 = sub_219BF0634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_218FB91DC()
{
  result = qword_280EDBAA8[0];
  if (!qword_280EDBAA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDBAA8);
  }

  return result;
}

uint64_t sub_218FB9230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FB9298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218FB92F8()
{
  v1 = 0x656E696C64616568;
  v2 = 0x676E69646E657274;
  if (*v0 != 2)
  {
    v2 = 0x64657461727563;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_218FB9390()
{
  result = qword_280EAC5E8;
  if (!qword_280EAC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC5E8);
  }

  return result;
}

uint64_t sub_218FB93E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_218FB942C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_218FB949C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_21941838C(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (v2 != 4)
  {
    return v3 != 4 && (sub_21908A55C(v2, v3) & 1) != 0;
  }

  return v3 == 4;
}

void sub_218FB951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == *(a3 + 16))
  {
    v5 = a4;
    v6 = a2;
    if (v4)
    {
      v7 = a1 == a3;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
LABEL_10:
      if (v6 != 4 && v5 != 4)
      {
        sub_21908A55C(v6, v5);
      }
    }

    else
    {
      v8 = (a1 + 32);
      v9 = (a3 + 32);
      while (v4)
      {
        v10 = *v8;
        v11 = *v9;

        sub_21941805C(v10, v11);
        v13 = v12;

        if ((v13 & 1) == 0)
        {
          return;
        }

        ++v8;
        ++v9;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_218FB9624(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE10D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE10C4();
  sub_2186E8148(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
  v6 = sub_219BDCD44();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD18], v6);
  sub_218FBA05C(&qword_280EE8118, MEMORY[0x277D2EF08], MEMORY[0x277D2EF00]);
  sub_219BDCCC4();

  (*(v3 + 8))(v5, v2);
  sub_219BE1174();
  sub_218FBA05C(&qword_280EE8100, MEMORY[0x277D2EF80], MEMORY[0x277D2EF78]);
  memset(v11, 0, sizeof(v11));
  sub_219BDCCE4();
  return sub_218806FD0(v11);
}

double sub_218FB98B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  if (sub_219BE12C4())
  {
    *(swift_allocObject() + 16) = a1;

    sub_219BDD154();
  }

  else
  {
    sub_2186C66AC();
    v10 = sub_219BF6F64();
    v11 = sub_219BF6214();
    sub_2186E8148(0, &qword_280E8B5B0, sub_2186C66F8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    v13 = sub_219BF7894();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2186FC3BC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_219BE5314(a4, a5, 2, &dword_2186C1000, v10, v11, v12);
  }

  return result;
}

uint64_t sub_218FB9A64(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE0E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE0E74();
  sub_2186E8148(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
  v6 = sub_219BDCD44();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD18], v6);
  sub_218FBA05C(&qword_27CC14340, MEMORY[0x277D2ED90], MEMORY[0x277D2ED88]);
  sub_219BDCCC4();

  (*(v3 + 8))(v5, v2);
  sub_219BE0FC4();
  sub_218FBA05C(&qword_27CC14348, MEMORY[0x277D2EE28], MEMORY[0x277D2EE20]);
  memset(v11, 0, sizeof(v11));
  sub_219BDCCE4();
  return sub_218806FD0(v11);
}

uint64_t sub_218FB9CF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE1194();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1184();
  sub_2186E8148(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
  v6 = sub_219BDCD44();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD18], v6);
  sub_218FBA05C(&qword_27CC14330, MEMORY[0x277D2EF90], MEMORY[0x277D2EF88]);
  sub_219BDCCC4();

  (*(v3 + 8))(v5, v2);
  sub_219BE1214();
  sub_218FBA05C(&qword_27CC14338, MEMORY[0x277D2F078], MEMORY[0x277D2F070]);
  memset(v11, 0, sizeof(v11));
  sub_219BDCCE4();
  return sub_218806FD0(v11);
}

uint64_t sub_218FBA05C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218FBA0A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v48 = a2;
  v3 = sub_219BEDFD4();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FBA648(0);
  v54 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872902C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  sub_218729564(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  sub_218729564(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = type metadata accessor for FeedPerformanceCommandContext(0);
  (*(v18 + 16))(v20, v2 + *(v21 + 20), v17);
  v22 = sub_218B19470();
  v23 = v22;
  v24 = v22[2];
  if (v24)
  {
    v25 = 0;
    v26 = v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v56 = v13 + 8;
    v57 = v13 + 16;
    v51 = (v6 + 8);
    v52 = v22;
    v49 = v26;
    v50 = v24;
    while (v25 < v23[2])
    {
      (*(v13 + 16))(v15, &v26[*(v13 + 72) * v25], v12);
      sub_219BE6934();
      (*(v13 + 8))(v15, v12);
      sub_2193B5F80(v58, v10);

      v27 = type metadata accessor for TodayFeedGroup(0);
      if ((*(*(v27 - 8) + 48))(v10, 1, v27) == 1)
      {
        sub_218FBA6DC(v10);
      }

      else
      {
        v28 = sub_218829720();
        v30 = v29;
        sub_218FBA768(v10);
        type metadata accessor for TodayFeedServiceConfig(0);
        sub_2186DFBD8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
        v31 = v53;
        sub_219BEE7B4();
        v32 = v54;
        v33 = sub_219BF0C14();
        (*v51)(v31, v32);
        if (*(v33 + 16))
        {
          v34 = sub_21870F700(v28, v30);
          v36 = v35;

          if (v36)
          {

            v40 = v46;
            v41 = v47;
            v42 = *(v33 + 56) + *(v46 + 72) * v34;
            v43 = v45;
            (*(v46 + 16))(v45, v42, v47);

            v44 = v48;
            (*(v40 + 32))(v48, v43, v41);
            v39 = v41;
            v38 = v44;
            v37 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }

        v23 = v52;
        v26 = v49;
        v24 = v50;
      }

      if (v24 == ++v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v37 = 1;
    v39 = v47;
    v38 = v48;
    v40 = v46;
LABEL_13:
    (*(v40 + 56))(v38, v37, 1, v39);
  }
}

void sub_218FBA648(uint64_t a1)
{
  if (!qword_280E90C40)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2186DFBD8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v1 = sub_219BF0C34();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90C40);
    }
  }
}

uint64_t sub_218FBA6DC(uint64_t a1)
{
  sub_21872902C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218FBA768(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218FBA7EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_218FBA848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_218FBA8CC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void *sub_218FBA998()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_218FBA9CC(uint64_t a1, uint64_t a2)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218FBAA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_218FBAC08();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218FBAA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

unint64_t sub_218FBAB00()
{
  result = qword_27CC14350;
  if (!qword_27CC14350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14350);
  }

  return result;
}

unint64_t sub_218FBAB58()
{
  result = qword_27CC14358;
  if (!qword_27CC14358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14358);
  }

  return result;
}

unint64_t sub_218FBABB0()
{
  result = qword_27CC14360;
  if (!qword_27CC14360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14360);
  }

  return result;
}

unint64_t sub_218FBAC08()
{
  result = qword_27CC14368;
  if (!qword_27CC14368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14368);
  }

  return result;
}

unint64_t sub_218FBAC60()
{
  result = qword_27CC14370;
  if (!qword_27CC14370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14370);
  }

  return result;
}

id sub_218FBACB4(uint64_t a1)
{
  sub_219BED0C4();
  sub_219BF5114();
  v1 = sub_219BF5094();
  sub_218A293AC();
  v2 = sub_219BF6BB4();
  v3 = [objc_opt_self() configurationWithFont_];

  v4 = [v1 imageWithConfiguration_];
  v5 = [v4 imageWithRenderingMode_];

  return v5;
}

uint64_t type metadata accessor for SportsSearchFeedGroup(uint64_t a1)
{
  result = qword_280EC9A58;
  if (!qword_280EC9A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218FBAE10(uint64_t a1)
{
  v2 = sub_218FBAF18(&unk_27CC14390, "A]]h");

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218FBAF18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsSearchFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218FBAF5C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F62790);
    sub_218720448(a4, a5);
    v13 = sub_219BE5414();
    v14 = sub_219BF6214();
    sub_218720434(a4, a5);
    v30 = a1;
    if (os_log_type_enabled(v13, v14))
    {
      v29 = a2;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136446210;
      if (a5 - 2 >= 9 && a5)
      {
        if (a5 == 1)
        {
          v19 = 0xED0000756F596874;
          v17 = 0x6957646572616853;
        }

        else
        {
          MEMORY[0x21CECC330](a4, a5);
          v17 = 0x7954656C7A7A7550;
          v19 = 0xEB000000005F6570;
        }
      }

      else
      {
        OfflineFeedKind.rawValue.getter();
        sub_2187F3BD4();
        v17 = sub_219BF6FF4();
        v19 = v18;
      }

      v20 = sub_2186D1058(v17, v19, &v31);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2186C1000, v13, v14, "FG worker will trigger rebuild of offline %{public}s feed", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CECF960](v16, -1, -1);
      MEMORY[0x21CECF960](v15, -1, -1);

      a2 = v29;
    }

    else
    {
    }

    MEMORY[0x28223BE20](v21);
    sub_219BE3204();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_218FBC068;
    *(v23 + 24) = v22;
    sub_218720448(a4, a5);
    v24 = sub_219BE2E54();
    sub_219BE2F74();

    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    sub_218720448(a4, a5);
    v26 = sub_219BE2E54();
    sub_219BE2FD4();

    v27 = swift_allocObject();
    *(v27 + 16) = v30;
    *(v27 + 24) = a2;

    v28 = sub_219BE2E54();
    sub_219BE3024();
  }

  else
  {
    a1();
  }
}

void sub_218FBB398(uint64_t a1, unint64_t a2)
{
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62790);
  sub_218720448(a1, a2);
  oslog = sub_219BE5414();
  v5 = sub_219BF6214();
  sub_218720434(a1, a2);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    if (a2 - 2 >= 9 && a2)
    {
      if (a2 == 1)
      {
        v10 = 0xED0000756F596874;
        v8 = 0x6957646572616853;
      }

      else
      {
        MEMORY[0x21CECC330](a1, a2);
        v8 = 0x7954656C7A7A7550;
        v10 = 0xEB000000005F6570;
      }
    }

    else
    {
      OfflineFeedKind.rawValue.getter();
      sub_2187F3BD4();
      v8 = sub_219BF6FF4();
      v10 = v9;
    }

    v11 = sub_2186D1058(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2186C1000, oslog, v5, "FG worker finished rebuild of offline %{public}s feed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }
}

void sub_218FBB5D4(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62790);
  sub_218720448(a2, a3);
  v7 = a1;
  oslog = sub_219BE5414();
  v8 = sub_219BF61F4();
  sub_218720434(a2, a3);

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    if (a3 - 2 >= 9 && a3)
    {
      if (a3 == 1)
      {
        v13 = 0xED0000756F596874;
        v11 = 0x6957646572616853;
      }

      else
      {
        MEMORY[0x21CECC330](a2, a3);
        v11 = 0x7954656C7A7A7550;
        v13 = 0xEB000000005F6570;
      }
    }

    else
    {
      OfflineFeedKind.rawValue.getter();
      sub_2187F3BD4();
      v11 = sub_219BF6FF4();
      v13 = v12;
    }

    v14 = sub_2186D1058(v11, v13, &v17);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    sub_218A450F0();
    sub_219BF7484();
    v15 = sub_2186D1058(0, 0xE000000000000000, &v17);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_2186C1000, oslog, v8, "FG worker failed to rebuild offline %{public}s feed, error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {
  }
}

double sub_218FBB89C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_2187E8A64, v4);

  return result;
}

uint64_t sub_218FBBC60()
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = xmmword_219C14A10;
  swift_storeEnumTagMultiPayload();
  sub_2187B6648(&v4, v2);
  return sub_2187B6BC4(v2, type metadata accessor for OfflineFeedUpdateCondition);
}

uint64_t sub_218FBBD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x282192F58](a1, a2, ObjectType, a4);
}

uint64_t sub_218FBBDDC()
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = xmmword_219C43540;
  swift_storeEnumTagMultiPayload();
  sub_2187B6648(&v4, v2);
  return sub_2187B6BC4(v2, type metadata accessor for OfflineFeedUpdateCondition);
}

uint64_t sub_218FBBE8C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_218FBBEF0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

void sub_218FBBF54(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for OfflineFeedUpdateCondition(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_218FBAF5C(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_218FBBFDC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_offlineFeedsSupervisor + 24);
  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_offlineFeedsSupervisor + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI228OfflineFeedsForegroundWorker_offlineFeedsSupervisor), v5);
  v8[0] = v2;
  v8[1] = v4;
  return (*(v6 + 40))(v8, v3, v5, v6);
}

uint64_t objectdestroy_9Tm()
{
  if (*(v0 + 24) >= 0xBuLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218FBC0BC()
{
  v1 = OBJC_IVAR____TtC7NewsUI217TipKitStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E95200;
  if (!qword_280E95200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218FBC208@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FBC738(0, &qword_280E8C710, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FBC6E4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 22;
    v13 = type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218FBC470(void *a1)
{
  v3 = v1;
  sub_218FBC738(0, &qword_27CC144B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FBC6E4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsInjuryReportsTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FBC63C(uint64_t a1)
{
  v2 = sub_218FBC6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FBC678(uint64_t a1)
{
  v2 = sub_218FBC6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218FBC6E4()
{
  result = qword_280E95238[0];
  if (!qword_280E95238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E95238);
  }

  return result;
}

void sub_218FBC738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FBC6E4();
    v7 = a3(a1, &type metadata for SportsInjuryReportsTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218FBC7B0()
{
  result = qword_27CC144C0;
  if (!qword_27CC144C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC144C0);
  }

  return result;
}

unint64_t sub_218FBC808()
{
  result = qword_280E95228;
  if (!qword_280E95228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95228);
  }

  return result;
}

unint64_t sub_218FBC860()
{
  result = qword_280E95230;
  if (!qword_280E95230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95230);
  }

  return result;
}

void sub_218FBC8B4()
{
  sub_21896FA3C(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v3);
  v97 = &v93 - v4;
  MEMORY[0x28223BE20](v5);
  v96 = &v93 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v93 - v8;
  v10 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v93 - v14;
  v16 = type metadata accessor for MagazineCatalogModel(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189537DC(0);
  sub_219BE5FC4();
  sub_218FBECA8(v18, v15, type metadata accessor for MagazineGridItemModel);
  sub_218FBED10(v15, v12, type metadata accessor for MagazineGridItemModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v12;
  v100 = v15;
  v101 = v20;
  v99 = v1;
  v102 = v9;
  if (!EnumCaseMultiPayload)
  {
    v97 = v2;
    LODWORD(v95) = v12[8];
    LODWORD(v94) = v12[9];
    v21 = v12[10];
    v22 = v12[11];
    v23 = v12[12];
    v24 = *(v12 + 2);
    v25 = v12[24];
    sub_2189E96A0(0);
    v27 = 64;
    v28 = 48;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v97 = v2;
    LODWORD(v95) = v12[8];
    LODWORD(v94) = v12[9];
    v21 = v12[10];
    v22 = v12[11];
    v23 = v12[12];
    v24 = *(v12 + 2);
    v25 = v12[24];
    sub_2189E9530(*(v12 + 4), *(v12 + 5), *(v12 + 6));
    sub_2189E9570(0);
    v27 = 80;
    v28 = 64;
LABEL_5:
    v29 = *(v26 + v28);
    v30 = *&v12[*(v26 + v27) + 32];

    v31 = sub_219BF0744();
    (*(*(v31 - 8) + 8))(&v12[v29], v31);
    v109 = v101;
    v110 = v95;
    v111 = v94;
    v112 = v21;
    v113 = v22;
    v114 = v23;
    v115 = v24;
    v116 = v25;
    v32 = [objc_msgSend(v101 sourceChannel)];
    swift_unknownObjectRelease();
    v33 = sub_219BF5414();
    v35 = v34;

    v36 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
    sub_218950D08(&v109);
    *&v117 = v33;
    *(&v117 + 1) = v35;
    v118 = v36;
    LOBYTE(v119) = 1;
    *(&v119 + 1) = v103;
    DWORD1(v119) = *(&v103 + 3);
    *(&v119 + 1) = 2;
    v120 = 0u;
    v121 = 0u;
    v122 = -1;
    v37 = v98;
    v38 = *(v98 + 128);
    v39 = swift_allocObject();
    v40 = v120;
    *(v39 + 48) = v119;
    *(v39 + 64) = v40;
    *(v39 + 80) = v121;
    *(v39 + 96) = v122;
    v41 = v118;
    *(v39 + 16) = v117;
    *(v39 + 32) = v41;
    v101 = v39;
    v42 = v39 | 0x2000000000000006;
    v43 = *(v37 + 80);
    v44 = sub_219BDFA44();
    v45 = v102;
    (*(*(v44 - 8) + 56))(v102, 1, 1, v44);
    sub_218718690(v37 + 88, v126);
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v108[5] = v38;
    sub_2187B14CC(&v123, &v106, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v107)
    {
      sub_21875F93C(&v106, v108);
      sub_218B5A004(&v117, &v103);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v47 = qword_280ED32D8;
      v46 = qword_280ED32E0;
      v48 = qword_280ED32E8;

      v98 = v46;
      v95 = v48;
      sub_2188202A8(v46);
      __swift_destroy_boxed_opaque_existential_1(v108);
    }

    else
    {
      sub_218B5A004(&v117, &v103);
      sub_2187448D0(&v106, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v47 = qword_280ED32D8;
      v66 = qword_280ED32E0;
      v67 = qword_280ED32E8;

      v98 = v66;
      v95 = v67;
      sub_2188202A8(v66);
    }

    *&v106 = v42;
    v108[3] = sub_219BDD274();
    v108[0] = v43;
    v68 = v96;
    sub_218FBED10(v45, v96, sub_21896FA3C);
    sub_2187B14CC(v126, &v103, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v69 = (*(v99 + 80) + 24) & ~*(v99 + 80);
    v70 = (v97 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 47) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 16) = v43;
    sub_218FBECA8(v68, v72 + v69, sub_21896FA3C);
    v73 = v72 + v70;
    v74 = v104;
    *v73 = v103;
    *(v73 + 16) = v74;
    *(v73 + 32) = v105;
    v75 = (v72 + v71);
    v76 = (v72 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v75 = 0;
    v75[1] = 0;
    v77 = v98;
    *v76 = v47;
    v76[1] = v77;
    v78 = v95;
    v76[2] = v95;
    swift_retain_n();

    sub_2188202A8(v77);
    sub_2186CF94C(0);
    sub_2186F7E40(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v77, v78);
    sub_218B5A060(&v117);
    sub_2187448D0(&v123, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v126, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218FBED78(v102, sub_21896FA3C);
    sub_218FBED78(v100, type metadata accessor for MagazineGridItemModel);
    sub_2187448D0(v108, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DF120);

    return;
  }

  v49 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v2;
  sub_2189E93F4(0);
  v102 = v51;
  v52 = *&v12[*(v51 + 64) + 32];

  v53 = v98;
  v54 = *(v98 + 128);
  v55 = *(v101 + 2);
  v56 = objc_allocWithZone(type metadata accessor for FeedViewContext(0));
  swift_unknownObjectRetain();
  v57 = [v56 init];
  v58 = swift_allocObject();
  *(v58 + 16) = v55;
  *(v58 + 24) = v57;
  *(v58 + 32) = MEMORY[0x277D84F90];
  *(v58 + 40) = 0;
  *(v58 + 48) = 0;
  *(v58 + 56) = 0u;
  *(v58 + 72) = 0u;
  *(v58 + 88) = 0;
  *(v58 + 96) = -1;
  v96 = v58;
  v59 = v58 | 0x2000000000000006;
  v60 = *(v53 + 80);
  v61 = sub_219BDFA44();
  v62 = v97;
  (*(*(v61 - 8) + 56))(v97, 1, 1, v61);
  sub_218718690(v53 + 88, &v117);
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v108[0] = v54;
  sub_2187B14CC(&v103, &v123, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v124 + 1))
  {
    sub_21875F93C(&v123, v126);
    v63 = v99;
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v64 = qword_280ED32E0;
    v65 = qword_280ED32E8;
    v94 = qword_280ED32D8;

    v98 = v64;
    v95 = v65;
    sub_2188202A8(v64);
    __swift_destroy_boxed_opaque_existential_1(v126);
  }

  else
  {
    sub_2187448D0(&v123, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v63 = v99;
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v79 = qword_280ED32E0;
    v80 = qword_280ED32E8;
    v94 = qword_280ED32D8;

    v98 = v79;
    v95 = v80;
    sub_2188202A8(v79);
  }

  *&v106 = v59;
  *(&v124 + 1) = sub_219BDD274();
  *&v123 = v60;
  sub_218FBED10(v62, v49, sub_21896FA3C);
  sub_2187B14CC(&v117, v126, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v81 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v82 = (v50 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 47) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  *(v84 + 16) = v60;
  sub_218FBECA8(v49, v84 + v81, sub_21896FA3C);
  v85 = v84 + v82;
  v86 = v126[1];
  *v85 = v126[0];
  *(v85 + 16) = v86;
  *(v85 + 32) = v127;
  v87 = (v84 + v83);
  v88 = (v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v87 = 0;
  v87[1] = 0;
  v89 = v95;
  v90 = v98;
  *v88 = v94;
  v88[1] = v90;
  v88[2] = v89;
  swift_retain_n();

  sub_2188202A8(v90);
  sub_2186CF94C(0);
  sub_2186F7E40(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v90, v89);
  sub_2187448D0(&v103, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(&v117, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218FBED78(v97, sub_21896FA3C);
  sub_218FBED78(v100, type metadata accessor for MagazineGridItemModel);
  sub_2187448D0(&v123, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DF120);

  v91 = *(v102 + 12);
  v92 = sub_219BF0444();
  (*(*(v92 - 8) + 8))(&v12[v91], v92);
}

uint64_t sub_218FBD914()
{
  sub_21896FA3C(0);
  v84 = *(v0 - 8);
  v1 = *(v84 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v76[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v82 = &v76[-v4];
  MEMORY[0x28223BE20](v5);
  v7 = &v76[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v76[-v9];
  v11 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v76[-v15];
  v17 = type metadata accessor for MagazineCatalogModel(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189537DC(0);
  sub_219BE5FC4();
  sub_218FBECA8(v19, v16, type metadata accessor for MagazineGridItemModel);
  sub_218FBED10(v16, v13, type metadata accessor for MagazineGridItemModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *v13;
  v85 = v16;
  v81 = v21;
  if (!EnumCaseMultiPayload)
  {
    v80 = v7;
    v82 = v10;
    v30 = v13[8];
    v78 = v13[9];
    v79 = v30;
    v77 = v13[10];
    v23 = v13[11];
    v24 = v13[12];
    v25 = *(v13 + 2);
    v26 = v13[24];
    sub_2189E96A0(0);
    v28 = 64;
    v29 = 48;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v80 = v7;
    v82 = v10;
    v22 = v13[8];
    v78 = v13[9];
    v79 = v22;
    v77 = v13[10];
    v23 = v13[11];
    v24 = v13[12];
    v25 = *(v13 + 2);
    v26 = v13[24];
    sub_2189E9530(*(v13 + 4), *(v13 + 5), *(v13 + 6));
    sub_2189E9570(0);
    v28 = 80;
    v29 = 64;
LABEL_5:
    v31 = *(v27 + v29);
    v32 = *&v13[*(v27 + v28) + 32];

    v33 = sub_219BF0744();
    (*(*(v33 - 8) + 8))(&v13[v31], v33);
    v92 = v81;
    v93 = v79;
    v94 = v78;
    v95 = v77;
    v96 = v23;
    v97 = v24;
    v98 = v25;
    v99 = v26;
    v34 = [objc_msgSend(v81 sourceChannel)];
    swift_unknownObjectRelease();
    v35 = sub_219BF5414();
    v37 = v36;

    v38 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
    sub_218950D08(&v92);
    *&v100 = v35;
    *(&v100 + 1) = v37;
    v101 = v38;
    LOBYTE(v102) = 1;
    *(&v102 + 1) = v87;
    DWORD1(v102) = *(&v87 + 3);
    *(&v102 + 1) = 2;
    v103 = 0u;
    v104 = 0u;
    v105 = -1;
    v39 = v83;
    v40 = *(v83 + 128);
    v41 = swift_allocObject();
    v42 = v103;
    *(v41 + 48) = v102;
    *(v41 + 64) = v42;
    *(v41 + 80) = v104;
    *(v41 + 96) = v105;
    v43 = v101;
    *(v41 + 16) = v100;
    *(v41 + 32) = v43;
    v44 = v41 | 0x2000000000000006;
    v45 = *(v39 + 80);
    v46 = sub_219BDFA44();
    v47 = v82;
    (*(*(v46 - 8) + 56))(v82, 1, 1, v46);
    sub_218718690(v39 + 88, v91);
    v90 = v40;
    sub_219BDC8D4();
    sub_218B5A004(&v100, &v87);
    sub_219BDC8B4();
    if (qword_280EE9210 != -1)
    {
      swift_once();
    }

    sub_219BDC8C4();

    v86[4] = v44;
    v86[3] = sub_219BDD274();
    v86[0] = v45;
    v48 = v80;
    sub_218FBED10(v47, v80, sub_21896FA3C);
    sub_2187B14CC(v91, &v87, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v49 = (*(v84 + 80) + 24) & ~*(v84 + 80);
    v50 = (v1 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v45;
    sub_218FBECA8(v48, v51 + v49, sub_21896FA3C);
    v52 = v51 + v50;
    v53 = v88;
    *v52 = v87;
    *(v52 + 16) = v53;
    *(v52 + 32) = v89;
    v54 = (v51 + ((v50 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v54 = 0;
    v54[1] = 0;
    sub_2186CF94C(0);
    sub_2186F7E40(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    swift_retain_n();
    v55 = sub_219BEB454();

    sub_218B5A060(&v100);
    sub_2187448D0(v91, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218FBED78(v47, sub_21896FA3C);
    sub_218FBED78(v85, type metadata accessor for MagazineGridItemModel);
    sub_2187448D0(v86, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DF120);

    return v55;
  }

  sub_2189E93F4(0);
  v80 = v56;
  v57 = *&v13[*(v56 + 64) + 32];

  v58 = v83;
  v59 = *(v83 + 128);
  v60 = v21[2];
  v61 = objc_allocWithZone(type metadata accessor for FeedViewContext(0));
  swift_unknownObjectRetain();
  v62 = [v61 init];
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  *(v63 + 24) = v62;
  *(v63 + 32) = MEMORY[0x277D84F90];
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 56) = 0u;
  *(v63 + 72) = 0u;
  *(v63 + 88) = 0;
  *(v63 + 96) = -1;
  v64 = v63 | 0x2000000000000006;
  v65 = *(v58 + 80);
  v66 = sub_219BDFA44();
  (*(*(v66 - 8) + 56))(v82, 1, 1, v66);
  sub_218718690(v58 + 88, &v100);
  v86[0] = v59;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v92 = v64;
  v91[3] = sub_219BDD274();
  v91[0] = v65;
  sub_218FBED10(v82, v2, sub_21896FA3C);
  sub_2187B14CC(&v100, &v87, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v67 = (*(v84 + 80) + 24) & ~*(v84 + 80);
  v68 = (v1 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  sub_218FBECA8(v2, v69 + v67, sub_21896FA3C);
  v70 = v69 + v68;
  v71 = v88;
  *v70 = v87;
  *(v70 + 16) = v71;
  *(v70 + 32) = v89;
  v72 = (v69 + ((v68 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v72 = 0;
  v72[1] = 0;
  sub_2186CF94C(0);
  sub_2186F7E40(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  swift_retain_n();
  v55 = sub_219BEB454();

  sub_2187448D0(&v100, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218FBED78(v82, sub_21896FA3C);
  sub_218FBED78(v85, type metadata accessor for MagazineGridItemModel);
  sub_2187448D0(v91, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DF120);

  v73 = *(v80 + 12);
  v74 = sub_219BF0444();
  (*(*(v74 - 8) + 8))(&v13[v73], v74);
  return v55;
}

double sub_218FBE500(uint64_t a1)
{
  v2 = v1;
  sub_21896FA3C(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = *(v1 + 128);
  v12 = swift_allocObject();
  sub_21896FC94(a1, v12 + 16);
  v37 = v12;
  v13 = v12 | 0x6000000000000002;
  v14 = *(v2 + 80);
  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_218718690(v2 + 88, v46);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = v11;
  sub_2187B14CC(v44, &v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v35 = v2;
  if (v40)
  {
    sub_21875F93C(&v39, v41);
    v16 = qword_280ED32D0;

    if (v16 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    v34 = v17;
    sub_2188202A8(v17);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {

    sub_2187448D0(&v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v20 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    v34 = v20;
    sub_2188202A8(v20);
  }

  v38 = v13;
  v40 = sub_219BDD274();
  *&v39 = v14;
  sub_218FBED10(v10, v7, sub_21896FA3C);
  sub_2187B14CC(v46, v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v21 = *(v5 + 80);
  v36 = v10;
  v22 = (v21 + 24) & ~v21;
  v23 = (v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = v14;
  v25 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  sub_218FBECA8(v7, v26 + v22, sub_21896FA3C);
  v27 = v26 + v23;
  v28 = v41[1];
  *v27 = v41[0];
  *(v27 + 16) = v28;
  *(v27 + 32) = v42;
  v29 = (v26 + v25);
  v30 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v29 = 0;
  v29[1] = 0;
  v31 = v34;
  *v30 = v18;
  v30[1] = v31;
  v30[2] = v19;
  swift_retain_n();

  sub_2188202A8(v31);
  sub_2186CF94C(0);
  sub_2186F7E40(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v31, v19);
  sub_2187448D0(v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v46, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218FBED78(v36, sub_21896FA3C);
  sub_2187448D0(&v39, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DF120);

  return result;
}

void sub_218FBEBA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineCategoriesPickerViewController();
  sub_219BF6584();
  if (v2)
  {
    *&v2[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_delegate + 8] = &off_282A55988;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_218FBEC14()
{
  MEMORY[0x21CECFA80](v0 + 16);
  sub_218774F78(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_218FBECA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FBED10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FBED78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218FBEE20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DE644(0);
  v29 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TodayFeedGroupConfig(0);
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  result = type metadata accessor for TodayFeedConfig(0);
  v18 = *(v2 + *(result + 20));
  v19 = *(v18 + 16);
  if (v19)
  {
    v26 = a1;
    v20 = 0;
    v21 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v27 = (v8 + 32);
    v28 = (v8 + 8);
    while (v20 < *(v18 + 16))
    {
      sub_218FC0238(v21 + *(v11 + 72) * v20, v16, type metadata accessor for TodayFeedGroupConfig);
      sub_218FC0238(v16, v13, type metadata accessor for TodayFeedGroupConfig);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_218FC01D8(v16, type metadata accessor for TodayFeedGroupConfig);
        v22 = v13;
      }

      else
      {
        (*v27)(v10, v13, v29);
        sub_219BEDD14();
        if (*v6 == 0x69726F7453706F74 && v6[1] == 0xEA00000000007365)
        {
          (*v28)(v10, v29);
          sub_218FC01D8(v6, type metadata accessor for CuratedTodayFeedGroupConfigData);
LABEL_14:
          a1 = v26;
          sub_218FC03DC(v16, v26, type metadata accessor for TodayFeedGroupConfig);
          v24 = 0;
          return (*(v11 + 56))(a1, v24, 1, v30);
        }

        v23 = sub_219BF78F4();
        (*v28)(v10, v29);
        sub_218FC01D8(v6, type metadata accessor for CuratedTodayFeedGroupConfigData);
        v22 = v16;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      ++v20;
      result = sub_218FC01D8(v22, type metadata accessor for TodayFeedGroupConfig);
      if (v19 == v20)
      {
        v24 = 1;
        a1 = v26;
        return (*(v11 + 56))(a1, v24, 1, v30);
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 1;
    return (*(v11 + 56))(a1, v24, 1, v30);
  }

  return result;
}

uint64_t sub_218FBF1EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TodayFeedGroupConfig(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TodayFeedConfig(0);
  v8 = *(v1 + *(result + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      sub_218FC0238(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6, type metadata accessor for TodayFeedGroupConfig);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_2186E0010(0);
        v13 = v12;
        v14 = *(v12 - 8);
        (*(v14 + 32))(a1, v6, v12);
        return (*(v14 + 56))(a1, 0, 1, v13);
      }

      ++v10;
      result = sub_218FC01D8(v6, type metadata accessor for TodayFeedGroupConfig);
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_2186E0010(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  return result;
}

uint64_t sub_218FBF40C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TodayFeedGroupConfig(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TodayFeedConfig(0);
  v8 = *(v1 + *(result + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      sub_218FC0238(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6, type metadata accessor for TodayFeedGroupConfig);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_2186E0170(0);
        v13 = v12;
        v14 = *(v12 - 8);
        (*(v14 + 32))(a1, v6, v12);
        return (*(v14 + 56))(a1, 0, 1, v13);
      }

      ++v10;
      result = sub_218FC01D8(v6, type metadata accessor for TodayFeedGroupConfig);
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_2186E0170(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  return result;
}

uint64_t sub_218FBF62C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = type metadata accessor for TodayFeedConfig(0);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD750(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v34 - v5;
  sub_218FC0084(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC02A0(0, &qword_280EE72D8, MEMORY[0x277D6CE98]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FC0184();
  v17 = v41;
  sub_219BF7B04();
  if (v17)
  {
    v30 = a1;
  }

  else
  {
    v18 = v14;
    v19 = v40;
    sub_219BDBD34();
    v44 = 0;
    sub_2186DE810(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_219BE2C94();
    v41 = v11;
    sub_218FC00B8(0);
    v21 = v20;
    v43 = 1;
    sub_2186DE810(&qword_280EE7D60, sub_218FC00B8, MEMORY[0x277D6CB08]);
    v22 = v16;
    sub_219BE2C94();
    v23 = v18;
    v36 = v22;
    v24 = *(v21 - 8);
    if ((*(v24 + 48))(v8, 1, v21) == 1)
    {
      sub_218FC01D8(v8, sub_218FC0084);
      v35 = 0;
    }

    else
    {
      v35 = sub_219BE1E44();
      (*(v24 + 8))(v8, v21);
    }

    v25 = v37;
    sub_219BEE5B4();
    v42 = 2;
    sub_2186DE810(&qword_280E91B88, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    v26 = v38;
    v27 = v36;
    sub_219BE2C94();
    v28 = v13;
    v29 = v39;
    v40 = a1;
    v32 = v41;
    sub_218FC0238(v41, v25, sub_2186DCF58);
    v33 = MEMORY[0x277D84F90];
    if (v35)
    {
      v33 = v35;
    }

    v37 = v33;
    sub_218FC01D8(v32, sub_2186DCF58);
    (*(v23 + 8))(v27, v28);
    *(v25 + *(v19 + 5)) = v37;
    sub_2189A1E30(v26, v25 + *(v19 + 6));
    sub_218FC03DC(v25, v29, type metadata accessor for TodayFeedConfig);
    v30 = v40;
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_218FBFC18(void *a1)
{
  v3 = v1;
  sub_218FC02A0(0, &qword_280E8C650, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FC0184();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_2186DE810(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for TodayFeedConfig(0) + 20));
    v11[15] = 1;
    sub_2186DD750(0, &unk_280E8F230, type metadata accessor for TodayFeedGroupConfig, MEMORY[0x277D83940]);
    sub_218FC0304();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_2186DE810(&unk_280E91B90, MEMORY[0x277D32028], MEMORY[0x277D32030]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FBFEA8(uint64_t a1)
{
  v2 = sub_218FC0184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FBFEE4(uint64_t a1)
{
  v2 = sub_218FC0184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FBFF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC0238(v3, v9, sub_2186DCF58);
  sub_218E1CEC4(v3 + *(a2 + 24), a3 + *(a2 + 24));
  sub_218FC0238(v9, a3, sub_2186DCF58);

  result = sub_218FC01D8(v9, sub_2186DCF58);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_218FC00B8(uint64_t a1)
{
  if (!qword_280EE7D58)
  {
    type metadata accessor for TodayFeedGroupConfig(255);
    sub_2186DE810(&qword_280ECC6B0, type metadata accessor for TodayFeedGroupConfig, &unk_219CC2CB0);
    sub_2186DE810(&qword_280ECC6C0, type metadata accessor for TodayFeedGroupConfig, &unk_219CC2C88);
    v1 = sub_219BE1E54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7D58);
    }
  }
}

unint64_t sub_218FC0184()
{
  result = qword_280ED91F0[0];
  if (!qword_280ED91F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED91F0);
  }

  return result;
}

uint64_t sub_218FC01D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218FC0238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218FC02A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FC0184();
    v7 = a3(a1, &type metadata for TodayFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218FC0304()
{
  result = qword_280E8F228;
  if (!qword_280E8F228)
  {
    sub_2186DD750(255, &unk_280E8F230, type metadata accessor for TodayFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2186DE810(&qword_280ECC6C0, type metadata accessor for TodayFeedGroupConfig, &unk_219CC2C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F228);
  }

  return result;
}

uint64_t sub_218FC03DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218FC0458()
{
  result = qword_27CC144C8;
  if (!qword_27CC144C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC144C8);
  }

  return result;
}

unint64_t sub_218FC04B0()
{
  result = qword_280ED91E0;
  if (!qword_280ED91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED91E0);
  }

  return result;
}

unint64_t sub_218FC0508()
{
  result = qword_280ED91E8;
  if (!qword_280ED91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED91E8);
  }

  return result;
}

unint64_t sub_218FC0570()
{
  result = qword_27CC144D0;
  if (!qword_27CC144D0)
  {
    sub_218FC05C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC144D0);
  }

  return result;
}

void sub_218FC05C8()
{
  if (!qword_27CC144D8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC144D8);
    }
  }
}

void sub_218FC0618(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

unint64_t sub_218FC0730()
{
  result = qword_280ED2F28;
  if (!qword_280ED2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2F28);
  }

  return result;
}

unint64_t sub_218FC0784()
{
  result = qword_280ED2F20;
  if (!qword_280ED2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2F20);
  }

  return result;
}

uint64_t type metadata accessor for ArticleListSavedFeedGroup(uint64_t a1)
{
  result = qword_280EBF918;
  if (!qword_280EBF918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218FC0850()
{
  v1 = *(v0 + *(type metadata accessor for ArticleListSavedFeedGroup(0) + 24));
  if (v1 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

    v4 = sub_219BF7534();

    return v4;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v2 = sub_218CFA4E0(v1 & 0xFFFFFFFFFFFFFF8);

    if (v2)
    {
      return v1;
    }

    else
    {
      return v1 & 0xFFFFFFFFFFFFFF8 | 1;
    }
  }
}

void sub_218FC0924(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_218CFCB64(0);
  v30 = v3;
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED8D4();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC1590(0, &qword_27CC14520, MEMORY[0x277D844C8]);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FC14E0();
  v34 = v10;
  v14 = v35;
  sub_219BF7B34();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v7;
    v26 = v13;
    v16 = v31;
    v17 = v5;
    v39 = 0;
    v18 = sub_219BF76F4();
    v20 = v19;
    v21 = v26;
    *v26 = v18;
    v21[1] = v19;
    v38 = 1;
    sub_218FC1298(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    v35 = v20;
    (*(v16 + 32))(v26 + *(v11 + 20), v15, v17);
    v37 = 2;
    sub_218FC1298(&unk_280EE67D8, sub_218CFCB64, MEMORY[0x277D6CF98]);
    v23 = v29;
    v22 = v30;
    v25 = 0;
    sub_219BF7734();
    sub_219BE3384();
    (*(v27 + 8))(v23, v22);
    (*(v32 + 8))(v34, v33);
    v24 = v26;
    *(v26 + *(v11 + 24)) = v36;
    sub_218CB134C(v24, v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_218FC1534(v24);
  }
}

uint64_t sub_218FC0DF8(void *a1)
{
  v2 = v1;
  sub_218CFCB64(0);
  v5 = v4;
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC1590(0, &unk_27CC14530, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FC14E0();
  sub_219BF7B44();
  v24 = 0;
  v13 = v20;
  sub_219BF77F4();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v20 = v10;
  v18 = v7;
  v15 = type metadata accessor for ArticleListSavedFeedGroup(0);
  v23 = 1;
  sub_219BED8D4();
  sub_218FC1298(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  v21 = *(v2 + *(v15 + 24));
  sub_2187E7248(0);
  sub_218FC1298(&qword_280E8EBF0, sub_2187E7248, MEMORY[0x277D83970]);

  v16 = v18;
  sub_219BE33C4();
  v22 = 2;
  sub_218FC1298(&qword_280EE67E8, sub_218CFCB64, MEMORY[0x277D6CF90]);
  sub_219BF7834();
  v17 = v20;
  (*(v19 + 8))(v16, v5);
  return (*(v17 + 8))(v12, v9);
}

uint64_t sub_218FC1180(uint64_t a1)
{
  v2 = sub_218FC1298(&qword_27CC144E8, type metadata accessor for ArticleListSavedFeedGroup, &unk_219C4EDFC);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218FC11EC(void *a1)
{
  a1[1] = sub_218FC1298(&qword_27CC144E8, type metadata accessor for ArticleListSavedFeedGroup, &unk_219C4EDFC);
  a1[2] = sub_218FC1298(&qword_27CC144F0, type metadata accessor for ArticleListSavedFeedGroup, &unk_219C4EDB8);
  result = sub_218FC1298(&qword_27CC144F8, type metadata accessor for ArticleListSavedFeedGroup, &unk_219C4ED90);
  a1[3] = result;
  return result;
}

uint64_t sub_218FC1298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218FC13B8(uint64_t a1)
{
  result = sub_218FC1298(&qword_27CC14518, type metadata accessor for ArticleListSavedFeedGroup, &unk_219C4EDE0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_218FC1410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218FC170C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_218FC1440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218FC170C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218FC1468(uint64_t a1)
{
  v2 = sub_218FC14E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FC14A4(uint64_t a1)
{
  v2 = sub_218FC14E0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218FC14E0()
{
  result = qword_27CC14528;
  if (!qword_27CC14528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14528);
  }

  return result;
}

uint64_t sub_218FC1534(uint64_t a1)
{
  v2 = type metadata accessor for ArticleListSavedFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218FC1590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FC14E0();
    v7 = a3(a1, &type metadata for ArticleListSavedFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218FC1608()
{
  result = qword_27CC14540;
  if (!qword_27CC14540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14540);
  }

  return result;
}

unint64_t sub_218FC1660()
{
  result = qword_27CC14548;
  if (!qword_27CC14548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14548);
  }

  return result;
}

unint64_t sub_218FC16B8()
{
  result = qword_27CC14550;
  if (!qword_27CC14550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14550);
  }

  return result;
}

unint64_t sub_218FC170C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_218FC1758(void *a1)
{
  v12 = sub_219BF2AB4();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1904();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  type metadata accessor for SharedWithYouTodayFeedGroup(0);
  sub_219BED874();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v8 = sub_219BF21A4();
  (*(v2 + 8))(v4, v12);
  (*(v5 + 8))(v7, v11);
  return v8;
}

void sub_218FC1994(uint64_t a1)
{
  if (!qword_280EE6F10)
  {
    type metadata accessor for TodayFeedGroup(255);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6F10);
    }
  }
}

uint64_t type metadata accessor for SuggestionTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EAE918;
  if (!qword_280EAE918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218FC1A60(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      sub_218CC4F9C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218FC1AFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_2189AE9B4(0);
  v60 = v3;
  v65 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SuggestionTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v59);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v51 - v13;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = &v51 - v17;
  sub_218FC27E4(0, &qword_280E8CB70, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FC2790();
  v23 = v69;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v53 = v11;
  v54 = 0;
  v56 = v20;
  v58 = a1;
  v69 = v8;
  v74 = 0;
  sub_2186DFC20(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v25 = v67;
  v26 = v62;
  sub_219BF7674();
  v73 = 1;
  sub_2186DFC20(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  v27 = v60;
  sub_219BF7674();
  sub_218CC4F9C();
  v29 = v28;
  v72 = 2;
  sub_2186DFC20(&qword_280E91798, sub_218CC4F9C, MEMORY[0x277D32448]);
  v51 = v29;
  sub_219BF7674();
  v52 = v71;
  v30 = v68;
  sub_2189AF794(v25, v68, sub_2189AF720);
  v31 = v61;
  v32 = *(v61 + 48);
  v33 = v32(v30, 1, v26);
  v57 = v19;
  v55 = v22;
  if (v33 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFC20(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v34 = v63;
    sub_219BEE974();
    v35 = v32(v68, 1, v26);
    v36 = v65;
    v37 = v53;
    if (v35 != 1)
    {
      sub_2189AF7FC(v68, sub_2189AF720);
    }
  }

  else
  {
    v34 = v63;
    (*(v31 + 32))(v63, v68, v26);
    v36 = v65;
    v37 = v53;
  }

  v38 = v69;
  (*(v31 + 32))(v69, v34, v26);
  sub_2189AF794(v70, v37, sub_2189AF700);
  v39 = *(v36 + 48);
  v40 = v27;
  if (v39(v37, 1, v27) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFC20(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v41 = v37;
    v42 = v64;
    sub_219BEEC74();
    v43 = v39(v41, 1, v27);
    v44 = v42;
    v45 = v66;
    if (v43 != 1)
    {
      sub_2189AF7FC(v41, sub_2189AF700);
    }
  }

  else
  {
    v44 = v64;
    (*(v36 + 32))(v64, v37, v27);
    v45 = v66;
  }

  v46 = v59;
  (*(v36 + 32))(v38 + *(v59 + 20), v44, v40);
  v47 = v52;
  if (!v52)
  {
    swift_allocObject();
    v47 = sub_219BEEE04();
  }

  v48 = v67;
  v50 = v56;
  v49 = v57;
  sub_2189AF7FC(v70, sub_2189AF700);
  sub_2189AF7FC(v48, sub_2189AF720);
  (*(v50 + 8))(v55, v49);
  *(v38 + *(v46 + 24)) = v47;
  sub_218FC2848(v38, v45);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_218FC22F4(void *a1)
{
  v3 = v1;
  sub_218FC27E4(0, &qword_280E8C3D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FC2790();
  sub_219BF7B44();
  v15 = 0;
  sub_2189AE994(0);
  sub_2186DFC20(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SuggestionTodayFeedGroupKnobs(0);
    v14 = 1;
    sub_2189AE9B4(0);
    sub_2186DFC20(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 24));
    v12[15] = 2;
    sub_218CC4F9C();
    sub_2186DFC20(&qword_280E917A0, sub_218CC4F9C, MEMORY[0x277D32440]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FC2584()
{
  v1 = 0x6C6F6F706572;
  if (*v0 != 1)
  {
    v1 = 0x546465726F6E6769;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218FC25E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218FC29C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218FC260C(uint64_t a1)
{
  v2 = sub_218FC2790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FC2648(uint64_t a1)
{
  v2 = sub_218FC2790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FC26B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFC20(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  if ((sub_219BEE9F4() & 1) == 0 || (sub_219BEEC64() & 1) == 0)
  {
    return 0;
  }

  sub_218CC4F9C();
  return sub_219BEEDE4() & 1;
}

unint64_t sub_218FC2790()
{
  result = qword_280EAE948[0];
  if (!qword_280EAE948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAE948);
  }

  return result;
}

void sub_218FC27E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FC2790();
    v7 = a3(a1, &type metadata for SuggestionTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218FC2848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionTodayFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218FC28C0()
{
  result = qword_27CC14560;
  if (!qword_27CC14560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14560);
  }

  return result;
}

unint64_t sub_218FC2918()
{
  result = qword_280EAE938;
  if (!qword_280EAE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAE938);
  }

  return result;
}

unint64_t sub_218FC2970()
{
  result = qword_280EAE940;
  if (!qword_280EAE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAE940);
  }

  return result;
}

uint64_t sub_218FC29C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_218FC2ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE8164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BE9E04();
  sub_219BE8154();
  v14[4] = v7;
  v14[5] = v6;
  sub_219BE7FD4();
  v14[2] = v9;
  v14[3] = v8;
  sub_219BE8064();
  v14[0] = v11;
  v14[1] = v10;
  sub_219BE8014();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE41F4();
  (*(v3 + 8))(v5, v2);
  v12 = sub_219BE4204();
  return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
}

unint64_t sub_218FC2D04(uint64_t a1)
{
  result = sub_218D1A810();
  *(a1 + 8) = result;
  return result;
}

void sub_218FC2D88()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_219BDE9B4();
  v1 = sub_219BE1E24();
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_219BDEAE4();
  if (!sub_219BE1E24())
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for AudioPlayingItemHistoryRecorder();
  if (!sub_219BE1E24())
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for AudioListeningProgressRecorder();
  if (!sub_219BE1E24())
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for AudioAutoNextTrackHandler();
  if (!sub_219BE1E24())
  {
LABEL_13:
    __break(1u);
    return;
  }
}

uint64_t PuzzleArchiveFilterSelectionCommandState.rawValue.getter()
{
  if (*v0)
  {
    return 0x53737265746C6966;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_218FC2F38(uint64_t a1)
{
  v2 = sub_218FC4618();

  return MEMORY[0x2821D61E8](a1, v2);
}

uint64_t PuzzleArchiveFilterItemCommandState.commandState.getter@<X0>(BOOL *a1@<X8>)
{
  *a1 = (*v1 & 1) == 0;
  v3 = *MEMORY[0x277D6D368];
  v4 = sub_219BE5D94();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void sub_218FC3018(char *a4@<X8>)
{
  v5 = sub_219BF7614();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t sub_218FC30AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEB0000000066664FLL;
  }

  else
  {
    v2 = 0xEA00000000006E4FLL;
  }

  if (*a2)
  {
    v3 = 0xEB0000000066664FLL;
  }

  else
  {
    v3 = 0xEA00000000006E4FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  return v4 & 1;
}

uint64_t sub_218FC3148()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218FC31C4(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218FC322C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218FC32B0(void *a1@<X8>)
{
  v2 = 0xEA00000000006E4FLL;
  if (*v1)
  {
    v2 = 0xEB0000000066664FLL;
  }

  *a1 = 0x6D657449756E656DLL;
  a1[1] = v2;
}

uint64_t sub_218FC32E8@<X0>(BOOL *a1@<X8>)
{
  *a1 = (*v1 & 1) == 0;
  v3 = *MEMORY[0x277D6D368];
  v4 = sub_219BE5D94();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t static ContextMenuItem.filterMenuItem(filterOption:puzzleType:title:icon:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  sub_218FC38D0(0);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218FC3990(0, &qword_27CC14580, &qword_27CC14588, sub_218FC392C);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31[-v14];
  sub_218FC3990(0, &qword_27CC14598, &unk_27CC145A0, sub_218E4A63C);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31[-v17];
  sub_218FC3A6C(0);
  MEMORY[0x28223BE20](v19 - 8);
  sub_218FC3B10(0);
  MEMORY[0x28223BE20](v20 - 8);
  v21 = *a1;
  v22 = *(a1 + 8);
  if (qword_280EE3868 != -1)
  {
    swift_once();
  }

  v37 = qword_280EE3878;
  v43 = v21;
  v44 = v22;

  swift_unknownObjectRetain();
  v34 = a2;
  v23 = PuzzleArchiveFilterOption.identifier.getter();
  v35 = v24;
  v36 = v23;
  LOBYTE(v40) = 0;
  v25 = swift_allocObject();
  v33 = v21;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  sub_218728B2C();

  v32 = v22;
  v26 = MEMORY[0x277D837D0];
  sub_219BE8B74();
  LOBYTE(v40) = 0;
  sub_2186DF170(0, &qword_280E8F860, v26, MEMORY[0x277D83D88]);
  sub_219BE8B74();
  LOBYTE(v40) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = a5;
  *(v27 + 24) = v38;
  sub_218E4A63C();

  sub_219BE8B74();
  sub_218FC39E8(0, &unk_27CC145A0, sub_218E4A63C);
  (*(*(v28 - 8) + 56))(v18, 0, 1, v28);
  LOBYTE(v40) = 0;
  sub_218FC392C();
  sub_219BE8B74();
  sub_218FC39E8(0, &qword_27CC14588, sub_218FC392C);
  (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
  sub_219BE77A4();
  v40 = v33;
  v41 = v32;
  v42 = v34;
  swift_allocObject();
  return sub_219BE65B4();
}

void sub_218FC38D0(uint64_t a1)
{
  if (!qword_27CC14570)
  {
    sub_218728B2C();
    v1 = sub_219BE77B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14570);
    }
  }
}

unint64_t sub_218FC392C()
{
  result = qword_27CC14590;
  if (!qword_27CC14590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC14590);
  }

  return result;
}

void sub_218FC3990(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_218FC39E8(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218FC39E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_218728B2C();
    v4 = sub_219BE8B84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218FC3A6C(uint64_t a1)
{
  if (!qword_27CC145B0)
  {
    sub_2186DF170(255, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_218728B2C();
    v1 = sub_219BE8B84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC145B0);
    }
  }
}

void sub_218FC3B10(uint64_t a1)
{
  if (!qword_27CC145C0)
  {
    sub_218728B2C();
    v1 = sub_219BE8B84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC145C0);
    }
  }
}

void sub_218FC3B8C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!*(a1 + 16))
  {
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v5 = *(a1 + 8);
  if (v5 <= 1)
  {
    if (!*(a1 + 8))
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = objc_opt_self();
      swift_unknownObjectRetain();
      v8 = [v7 bundleForClass_];
      v9 = sub_219BDB5E4();
      v11 = v10;
      swift_unknownObjectRelease();

      *a4 = v9;
      a4[1] = v11;
      return;
    }

    if (!a3)
    {
      goto LABEL_27;
    }
  }

  else if (v5 == 2)
  {
    if (!a3)
    {
      goto LABEL_27;
    }
  }

  else if (v5 == 3)
  {
    if (!a3)
    {
      goto LABEL_27;
    }
  }

  else if (*a1 > 2)
  {
    if (*a1 == 3)
    {
      if (!a3)
      {
        goto LABEL_27;
      }
    }

    else if (!a3)
    {
LABEL_27:
      type metadata accessor for Localized();
      v12 = swift_getObjCClassFromMetadata();
      v13 = objc_opt_self();
      swift_unknownObjectRetain();
      v14 = [v13 bundleForClass_];
      v15 = sub_219BDB5E4();
      v17 = v16;
      swift_unknownObjectRelease();

      *a4 = v15;
      a4[1] = v17;
      return;
    }
  }

  else if (*a1 >= 2uLL)
  {
    if (!a3)
    {
      goto LABEL_27;
    }
  }

  else if (!a3)
  {
    goto LABEL_27;
  }

  *a4 = a2;
  a4[1] = a3;
}

void sub_218FC40EC(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a2 + 16) || (*(a2 + 8) == 4 ? (v3 = *a2 >= 2uLL) : (v3 = 1), v3))
  {
    *a3 = xmmword_219C14A10;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = objc_opt_self();
    swift_unknownObjectRetain();
    v7 = [v6 bundleForClass_];
    v8 = sub_219BDB5E4();
    v10 = v9;
    swift_unknownObjectRelease();

    *a3 = v8;
    *(a3 + 8) = v10;
  }
}

void sub_218FC4220(uint64_t a1@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (*(a1 + 16) && (*(a1 + 8) & 0xFC) != 0)
  {
    if (*a1 <= 2)
    {
      if (*a1 >= 2uLL)
      {
        if (a3)
        {
          swift_unknownObjectRetain();
          v8 = sub_219BF53D4();
          v6 = [objc_opt_self() systemImageNamed_];

          if (v6)
          {
            goto LABEL_36;
          }
        }

        else
        {
          swift_unknownObjectRetain();
        }

        if (qword_27CC08440 != -1)
        {
          swift_once();
        }

        v10 = &qword_27CC17910;
        goto LABEL_35;
      }

      if (!a3)
      {
        swift_unknownObjectRetain();
LABEL_20:
        if (qword_27CC08450 != -1)
        {
          swift_once();
        }

        v10 = &qword_27CC17920;
LABEL_35:
        v6 = *v10;
        goto LABEL_36;
      }

      swift_unknownObjectRetain();
      v5 = sub_219BF53D4();
      v6 = [objc_opt_self() systemImageNamed_];

      if (!v6)
      {
        goto LABEL_20;
      }

LABEL_36:
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    if (*a1 != 3)
    {
      if (a3)
      {
        swift_unknownObjectRetain();
        v9 = sub_219BF53D4();
        v6 = [objc_opt_self() systemImageNamed_];

        if (v6)
        {
          goto LABEL_36;
        }
      }

      else
      {
        swift_unknownObjectRetain();
      }

      if (qword_27CC08448 != -1)
      {
        swift_once();
      }

      v10 = &qword_27CC17918;
      goto LABEL_35;
    }

    if (a3)
    {
      swift_unknownObjectRetain();
      v7 = sub_219BF53D4();
      v6 = [objc_opt_self() systemImageNamed_];

      if (v6)
      {
        goto LABEL_36;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (qword_27CC08438 != -1)
    {
      swift_once();
    }

    v10 = &qword_27CC17908;
    goto LABEL_35;
  }

  v6 = 0;
LABEL_37:
  *a4 = v6;
}

unint64_t sub_218FC44EC@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (a2[2])
  {
    v6 = (a2[1] & 0xFCLL) != 0 && *a2 < 2uLL;
    *(a3 + 24) = &type metadata for PuzzleArchiveFilterItemCommandState;
    result = sub_218728B2C();
    *(a3 + 32) = result;
    v4 |= v6;
  }

  else
  {
    *(a3 + 24) = &type metadata for PuzzleArchiveFilterItemCommandState;
    result = sub_218728B2C();
    *(a3 + 32) = result;
  }

  *a3 = v4 & 1;
  return result;
}

unint64_t sub_218FC4574()
{
  result = qword_27CC145C8;
  if (!qword_27CC145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC145C8);
  }

  return result;
}

unint64_t sub_218FC4618()
{
  result = qword_27CC145D0;
  if (!qword_27CC145D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC145D0);
  }

  return result;
}

uint64_t sub_218FC467C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F61CA8);
  __swift_project_value_buffer(v0, qword_280F61CA8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218FC482C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD86E0);
  __swift_project_value_buffer(v0, qword_27CCD86E0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218FC49DC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD86F8);
  __swift_project_value_buffer(v0, qword_27CCD86F8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218FC4B90()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8710);
  __swift_project_value_buffer(v0, qword_27CCD8710);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218FC4D48()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8728);
  __swift_project_value_buffer(v0, qword_27CCD8728);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218FC4FC0(uint64_t a1, uint64_t a2)
{
  sub_218AF3D74(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v14 = a1;
  sub_218830064(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_219BE3204();
  (*(v6 + 16))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  (*(v6 + 32))(v9 + v8, &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);

  v10 = sub_219BE2E54();
  v11 = sub_219BE2F74();

  return v11;
}

uint64_t sub_218FC51A0(uint64_t a1, void (*a2)(char *))
{
  sub_218FC6594(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_218FC5720(0);
  v10 = *(v9 + 48);
  sub_218AF3D74(0);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = *MEMORY[0x277D6D850];
  v13 = sub_219BE6DF4();
  (*(*(v13 - 8) + 104))(&v8[v10], v12, v13);
  (*(v6 + 104))(v8, *MEMORY[0x277D6DF48], v5);
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218FC5358(void *a1, void (*a2)(char *))
{
  sub_218FC6594(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  *(&v12 - v8) = a1;
  (*(v6 + 104))(&v12 - v8, *MEMORY[0x277D6DF68], v5, v7);
  v10 = a1;
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

void sub_218FC547C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218AF3D74(0);
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_219BE2E54();
  sub_219BE2F74();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_218FC55BC(uint64_t a1)
{
  v2 = sub_218E1547C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218FC55FC()
{
  result = qword_27CC145D8;
  if (!qword_27CC145D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC145D8);
  }

  return result;
}

void sub_218FC5720(uint64_t a1)
{
  if (!qword_27CC145E0)
  {
    sub_218AF3D74(255);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC145E0);
    }
  }
}

uint64_t sub_218FC5794(uint64_t a1)
{
  sub_218830064(0, &qword_280EE7028, MEMORY[0x277D6D310], MEMORY[0x277D6CF30]);

  v1 = sub_219BE2E54();
  sub_21898C1B8(0);
  sub_2186D7778(&qword_280E8FC68, sub_21898C1B8, MEMORY[0x277D834C8]);
  v2 = sub_219BE2F34();

  return v2;
}

double sub_218FC58A0@<D0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  sub_218830064(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2186D7778(&unk_280EE5DD0, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v6 = sub_219BF56C4();
  sub_218FC5AE0(a3, v6, x8_0);

  v7 = sub_218B13AC4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for SearchFeedServiceConfig(0);
  sub_2186D7778(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
  v8 = sub_219BEEFC4();

  if (v8)
  {
    sub_219BEDC74();
  }

  sub_218AF3D74(0);
  sub_219BEB2C4();
  return sub_21885AB78(v7);
}

void *sub_218FC5AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v79 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v79);
  v72 = (v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = v59 - v7;
  sub_2189539F0(0);
  v75 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v82 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = v59 - v13;
  sub_218AF3B00(0);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v68);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953A84(0);
  v19 = v18;
  v67 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v78 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v59 - v22;
  sub_218AF3D94(0);
  MEMORY[0x28223BE20](v24 - 8);
  v59[4] = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D74(0);
  v27 = v26;
  v59[3] = sub_219BEB1B4();
  v59[2] = v28;
  v29 = sub_2186D7778(&qword_280EE36F8, sub_218AF3D74, MEMORY[0x277D6EC70]);
  v30 = sub_219BF5E44();
  if (v30)
  {
    v85 = MEMORY[0x277D84F90];
    v66 = v30;
    sub_218C364D8(0, v30 & ~(v30 >> 63), 0);
    v70 = v85;
    result = sub_219BF5DF4();
    if ((v66 & 0x8000000000000000) == 0)
    {
      v59[1] = a3;
      v32 = 0;
      v64 = (v67 + 16);
      v77 = (v10 + 16);
      v71 = (v10 + 8);
      v80 = (v10 + 32);
      v60 = (v67 + 8);
      v59[7] = v67 + 32;
      v59[6] = a1;
      v73 = v8;
      v74 = v10;
      v59[5] = v17;
      v63 = v23;
      v62 = v27;
      v61 = v29;
      while (1)
      {
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          __break(1u);
          goto LABEL_28;
        }

        v69 = v34;
        v35 = sub_219BF5EC4();
        (*v64)(v78);
        v35(v84, 0);
        sub_219BE6934();
        sub_2186D7778(&unk_27CC0B140, sub_218953A84, MEMORY[0x277D6D730]);
        v36 = sub_219BF5E44();
        if (v36)
        {
          break;
        }

        v38 = MEMORY[0x277D84F90];
LABEL_21:
        v49 = sub_2186D7778(&qword_280EE5D08, sub_2189539F0, MEMORY[0x277D6D408]);
        v50 = sub_2186D7778(&unk_280EE5D10, sub_2189539F0, MEMORY[0x277D6D3F8]);
        MEMORY[0x21CEB9170](v38, v75, v49, v50);
        sub_2186D7778(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
        sub_2186D7778(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
        v51 = v63;
        sub_219BE6924();
        (*v60)(v78, v19);
        v52 = v70;
        v85 = v70;
        v54 = *(v70 + 16);
        v53 = *(v70 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_218C364D8((v53 > 1), v54 + 1, 1);
          v52 = v85;
        }

        *(v52 + 16) = v54 + 1;
        v55 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v70 = v52;
        (*(v67 + 32))(v52 + v55 + *(v67 + 72) * v54, v51, v19);
        result = sub_219BF5E94();
        v32 = v69;
        if (v69 == v66)
        {
          v56 = v70;
          goto LABEL_26;
        }
      }

      v37 = v36;
      v83 = MEMORY[0x277D84F90];
      sub_218C34C50(0, v36 & ~(v36 >> 63), 0);
      v38 = v83;
      result = sub_219BF5DF4();
      if ((v37 & 0x8000000000000000) == 0)
      {
        v39 = v75;
        while (1)
        {
          v40 = sub_219BF5EC4();
          (*v77)(v82);
          v40(v84, 0);
          sub_219BE5FC4();
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            break;
          }

          v41 = sub_219BE5B24();
          v43 = v76;
          if (!*(v76 + 16))
          {

            goto LABEL_15;
          }

          v44 = sub_21870F700(v41, v42);
          v46 = v45;

          if ((v46 & 1) == 0)
          {

            v8 = v73;
            v10 = v74;
            v39 = v75;
            goto LABEL_15;
          }

          *v72 = *(*(v43 + 56) + 8 * v44);
          swift_storeEnumTagMultiPayload();
          sub_2186D7778(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
          swift_retain_n();
          sub_219BE5FB4();

          v39 = v75;
          (*v71)(v82, v75);
          v8 = v73;
          v10 = v74;
LABEL_16:
          v83 = v38;
          v48 = *(v38 + 16);
          v47 = *(v38 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_218C34C50((v47 > 1), v48 + 1, 1);
            v38 = v83;
          }

          *(v38 + 16) = v48 + 1;
          (*(v10 + 32))(v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v48, v81, v39);
          sub_219BF5E94();
          if (!--v37)
          {
            goto LABEL_21;
          }
        }

        sub_218FC6688(v8);
LABEL_15:
        (*v80)(v81, v82, v39);
        goto LABEL_16;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
LABEL_26:
    v57 = sub_2186D7778(&qword_280EE58A0, sub_218953A84, MEMORY[0x277D6D720]);
    v58 = sub_2186D7778(&qword_280EE58A8, sub_218953A84, MEMORY[0x277D6D718]);
    MEMORY[0x21CEB9170](v56, v19, v57, v58);
    sub_2186D7778(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    sub_2186D7778(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    return sub_219BEB1A4();
  }

  return result;
}