uint64_t WidgetTodayCardTemplate.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, &unk_27F22EC30, &qword_24F939880);
  return v0;
}

uint64_t WidgetTodayCardTemplate.__deallocating_deinit()
{
  WidgetTodayCardTemplate.deinit();

  return swift_deallocClassInstance();
}

uint64_t WidgetTodayCardTemplate.hashValue.getter()
{
  sub_24F92D068();
  WidgetTodayCardTemplate.hash(into:)(v1);
  return sub_24F92D0B8();
}

void *sub_24EF4CC18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = WidgetTodayCardTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF4CC80()
{
  sub_24F92D068();
  WidgetTodayCardTemplate.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EF4CCE8()
{
  sub_24F92D068();
  WidgetTodayCardTemplate.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit23WidgetTodayCardTemplateC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F648();
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2347D0, &qword_24F9B38F8);
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - v10;
  v11 = sub_24F91F4A8();
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C18, &unk_24F9B3900);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  if (*(a1 + 16) != *(a2 + 16) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_43;
  }

  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  if (v20)
  {
    if (!v21 || (*(a1 + 32) != *(a2 + 32) || v20 != v21) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v21)
  {
    goto LABEL_43;
  }

  v22 = *(a1 + 56);
  v23 = *(a2 + 56);
  if (v22)
  {
    if (!v23 || (*(a1 + 48) != *(a2 + 48) || v22 != v23) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v23)
  {
    goto LABEL_43;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_43;
  }

  sub_24EA16044(*(a1 + 72), *(a2 + 72));
  if ((v24 & 1) == 0)
  {
    goto LABEL_43;
  }

  v51 = v4;
  v25 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!v25)
    {
      goto LABEL_43;
    }

    v50 = *(a1 + 80);

    LODWORD(v50) = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v50, v25);

    if ((v50 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v25)
  {
    goto LABEL_43;
  }

  v26 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!v26)
    {
      goto LABEL_43;
    }

    v49 = *(a1 + 88);
    v50 = sub_24E77ACC8();
    v48 = v26;
    v49 = v49;
    v27 = sub_24F92C408();

    if ((v27 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v26)
  {
    goto LABEL_43;
  }

  v28 = OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url;
  v29 = *(v17 + 48);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, v19, &qword_27F228530, &unk_24F93C6E0);
  v50 = v29;
  sub_24E60169C(a2 + v28, &v19[v29], &qword_27F228530, &unk_24F93C6E0);
  v30 = *(v55 + 48);
  if (v30(v19, 1, v11) == 1)
  {
    if (v30(&v19[v50], 1, v11) == 1)
    {
      sub_24E601704(v19, &qword_27F228530, &unk_24F93C6E0);
      goto LABEL_36;
    }

LABEL_34:
    v31 = &qword_27F226C18;
    v32 = &unk_24F9B3900;
    v33 = v19;
LABEL_42:
    sub_24E601704(v33, v31, v32);
    goto LABEL_43;
  }

  sub_24E60169C(v19, v16, &qword_27F228530, &unk_24F93C6E0);
  if (v30(&v19[v50], 1, v11) == 1)
  {
    (*(v55 + 8))(v16, v11);
    goto LABEL_34;
  }

  v34 = v55;
  (*(v55 + 32))(v13, &v19[v50], v11);
  sub_24EF4D75C(&qword_27F226C38, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  LODWORD(v50) = sub_24F92AFF8();
  v35 = *(v34 + 8);
  v35(v13, v11);
  v35(v16, v11);
  sub_24E601704(v19, &qword_27F228530, &unk_24F93C6E0);
  if ((v50 & 1) == 0)
  {
LABEL_43:
    v43 = 0;
    return v43 & 1;
  }

LABEL_36:
  v36 = OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate;
  v37 = *(v9 + 48);
  v38 = a1 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate;
  v39 = v53;
  sub_24E60169C(v38, v53, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(a2 + v36, v39 + v37, &unk_27F22EC30, &qword_24F939880);
  v40 = v54;
  v41 = *(v54 + 48);
  v42 = v51;
  if (v41(v39, 1, v51) != 1)
  {
    sub_24E60169C(v39, v8, &unk_27F22EC30, &qword_24F939880);
    if (v41(v39 + v37, 1, v42) != 1)
    {
      v45 = v39 + v37;
      v46 = v52;
      (*(v40 + 32))(v52, v45, v42);
      sub_24EF4D75C(&qword_27F2347D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v43 = sub_24F92AFF8();
      v47 = *(v40 + 8);
      v47(v46, v42);
      v47(v8, v42);
      sub_24E601704(v39, &unk_27F22EC30, &qword_24F939880);
      return v43 & 1;
    }

    (*(v40 + 8))(v8, v42);
    goto LABEL_41;
  }

  if (v41(v39 + v37, 1, v42) != 1)
  {
LABEL_41:
    v31 = &qword_27F2347D0;
    v32 = &qword_24F9B38F8;
    v33 = v39;
    goto LABEL_42;
  }

  sub_24E601704(v39, &unk_27F22EC30, &qword_24F939880);
  v43 = 1;
  return v43 & 1;
}

uint64_t type metadata accessor for WidgetTodayCardTemplate(uint64_t a1)
{
  result = qword_27F2347C0;
  if (!qword_27F2347C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF4D58C(uint64_t a1)
{
  sub_24EF4D708(319, &qword_27F218378, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_24EF4D708(319, &qword_27F21A4A0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EF4D708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EF4D75C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UILabel.stringValue.getter()
{
  v1 = [v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24F92B0D8();

  return v3;
}

void sub_24EF4D80C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92B0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void UILabel.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F92B098();

  [v2 setText_];
}

uint64_t (*UILabel.stringValue.modify(uint64_t *a1))()
{
  a1[2] = v1;
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92B0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_24EF4D95C;
}

void sub_24EF4D95C(void *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {

    v3 = sub_24F92B098();

    [v2 setText_];
  }

  else
  {
    v3 = sub_24F92B098();

    [v2 setText_];
  }
}

id UILabel.stringColor.getter()
{
  v1 = [v0 textColor];

  return v1;
}

void UILabel.stringColor.setter(void *a1)
{
  [v1 setTextColor_];
}

void (*UILabel.stringColor.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 textColor];
  return sub_24EF4DAF0;
}

void sub_24EF4DAF0(id *a1)
{
  v1 = *a1;
  [a1[1] setTextColor_];
}

id (*UILabel.alignment.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 textAlignment];
  return sub_24EF4DBB0;
}

uint64_t sub_24EF4DBC4()
{
  v1 = [*v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24F92B0D8();

  return v3;
}

void sub_24EF4DC2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_24F92B098();

  [v3 setText_];
}

void (*sub_24EF4DC90(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UILabel.stringValue.modify(v2);
  return sub_24E622878;
}

id sub_24EF4DD04()
{
  v1 = [*v0 textColor];

  return v1;
}

void sub_24EF4DD3C(void *a1)
{
  [*v1 setTextColor_];
}

void (*sub_24EF4DD84(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 textColor];
  return sub_24EF4DAF0;
}

id (*sub_24EF4DE04(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 textAlignment];
  return sub_24EF4DBB0;
}

void sub_24EF4DE5C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_24F92B098();
  [v2 setText_];
}

id sub_24EF4DEC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textColor];
  *a2 = result;
  return result;
}

id sub_24EF4DF10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textAlignment];
  *a2 = result;
  return result;
}

uint64_t GuidedSearchQuery.init(searchTerm:selectedTokens:optimizationTerm:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t GuidedSearchQuery.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = 0xEA00000000006D72;
  sub_24F928398();
  v39 = sub_24F928348();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  if (v18)
  {
    v42 = v18;
    v43 = a1;
    v16 = 0xEE00736E656B6F54;
    sub_24F928398();
    sub_24F9282B8();
    v19(v12, v7);
    v20 = sub_24F92AC28();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {

      sub_24E8F2EE8(v6);
LABEL_9:
      v22 = v43;
      v23 = 0x64657463656C6573;
      goto LABEL_10;
    }

    v24 = sub_24F92ABC8();
    (*(v21 + 8))(v6, v20);
    if (!v24)
    {

      goto LABEL_9;
    }

    v38 = v24;
    v23 = 0xD000000000000010;
    v16 = 0x800000024FA64B90;
    v25 = v41;
    v22 = v43;
    sub_24F928398();
    v26 = sub_24F928348();
    v28 = v27;
    v19(v25, v7);
    if (v28)
    {
      v29 = sub_24F45D828(v38);

      v30 = sub_24F9285B8();
      (*(*(v30 - 8) + 8))(v44, v30);
      result = (v19)(v22, v7);
      v32 = v40;
      v33 = v42;
      *v40 = v39;
      v32[1] = v33;
      v32[2] = v29;
      v32[3] = v26;
      v32[4] = v28;
      return result;
    }
  }

  else
  {
    v22 = a1;
    v23 = 0x6554686372616573;
  }

LABEL_10:
  v34 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v35 = v23;
  v35[1] = v16;
  v35[2] = &type metadata for GuidedSearchQuery;
  (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
  swift_willThrow();
  v36 = sub_24F9285B8();
  (*(*(v36 - 8) + 8))(v44, v36);
  return (v19)(v22, v7);
}

uint64_t GuidedSearchQuery.searchTerm.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GuidedSearchQuery.optimizationTerm.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

GameStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.merging(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v3 = v1;
  v4 = *v2;
  v14 = sub_24EF4F1A0(v4, contentsOf._rawValue);
  v6 = sub_24EF4F49C(v5);
  v8 = v7;

  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v9 = v4 >> 62 ? sub_24F92C738() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = 0;
      while (1)
      {
        if (v9 == v10)
        {
          v10 = 0;
LABEL_16:
          sub_24F14A464(v10, v10, v6);
          goto LABEL_17;
        }

        if ((v4 & 0xC000000000000001) == 0)
        {
          break;
        }

        v12 = *(MEMORY[0x253052270](v10, v4) + 32);
        swift_unknownObjectRelease();
        if (v12 != 1)
        {
          goto LABEL_16;
        }

LABEL_10:
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_21;
        }
      }

      if (v10 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      if (!sub_24F92C738())
      {
        goto LABEL_17;
      }
    }

    if ((*(*(v4 + 8 * v10 + 32) + 32) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_17:

  if (v8 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_19;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_19:
  result.tokens._rawValue = sub_24EA0B88C(v8);
LABEL_26:
  *v3 = v14;
  return result;
}

GameStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.updateSelection(ofTokenAt:to:)(Swift::Int ofTokenAt, Swift::Bool to)
{
  v4 = to;
  v6 = v2;
  v14 = *v3;

  sub_24EA0E780(ofTokenAt);
  v7 = GuidedSearchToken.withSelection(_:)(v4);

  v8 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_23:
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      if (v8)
      {
        v10 = sub_24F92C738();
        goto LABEL_17;
      }

      v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
      sub_24F14A578(v10, v10, v7);

      *v6 = v14;
      return result;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v10 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((*(*(v14 + 8 * v10 + 32) + 32) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_22;
    }
  }

  v12 = *(MEMORY[0x253052270](v10, v14) + 32);
  swift_unknownObjectRelease();
  if (v12 == 1)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (!v8)
  {
    result.tokens._rawValue = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_17:
  result.tokens._rawValue = sub_24F92C738();
LABEL_18:
  if (result.tokens._rawValue < v10)
  {
    __break(1u);
  }

  else if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

GameStoreKit::GuidedSearchTokenCollection __swiftcall GuidedSearchTokenCollection.selectedOnly()()
{
  v2 = v0;
  v3 = *v1;
  v10 = MEMORY[0x277D84F90];
  if (*v1 >> 62)
  {
LABEL_16:
    result.tokens._rawValue = sub_24F92C738();
    rawValue = result.tokens._rawValue;
    if (result.tokens._rawValue)
    {
      goto LABEL_3;
    }
  }

  else
  {
    rawValue = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (rawValue)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          result.tokens._rawValue = MEMORY[0x253052270](v5, v3);
          v7 = result.tokens._rawValue;
          v8 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v10;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v3 + 8 * v5 + 32);

          v8 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        swift_beginAccess();
        if (v7[32])
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          result.tokens._rawValue = sub_24F92C958();
        }

        else
        {
        }

        ++v5;
        if (v8 == rawValue)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:
  *v2 = v9;
  return result;
}

uint64_t GuidedSearchTokenCollection.endIndex.getter()
{
  if (*v0 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t GuidedSearchTokenCollection.subscript.getter(unint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
LABEL_8:
    JUMPOUT(0x253052270);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_24EF4EA68(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if (a4 >> 62)
  {
    v10 = result;
    v11 = a4;
    v12 = a2;
    v13 = a3;
    result = sub_24F92C738();
    if (v10 < 0 || result < v10)
    {
      goto LABEL_23;
    }

    v14 = sub_24F92C738();
    a3 = v13;
    a2 = v12;
    a4 = v11;
    v5 = v14;
    result = v10;
    if (v13 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 < result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (a3 < 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  if (v5 < a3)
  {
    goto LABEL_22;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_12:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v9 = result;
    v8 = sub_24F92C738();
    result = v9;
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 0 || v8 < result)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_24EF4EB94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v5 = a2;
  result = sub_24F92C738();
  a2 = v5;
  if (v3 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < result)
  {
    *a2 = v3;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *sub_24EF4EC04(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v4 = result;
  v3 = sub_24F92C738();
  result = v4;
  if (v2 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v2 < v3)
  {
    *result = v2;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24EF4EC88@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_24F92C738();
    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

double (*sub_24EF4ECD8(uint64_t *a1, double (**a2)()))()
{
  result = *a2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x253052270](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a1 = v5;
    a1[1] = v5;
    return sub_24EF4ED58;
  }

  __break(1u);
  return result;
}

void sub_24EF4ED60(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = v6;
    v6 = sub_24F92C738();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v7 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v7 = v6;
      a2 = v2;
      v6 = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    a2[1] = v4;
    a2[2] = v6;
    *a2 = v5;
  }
}

uint64_t sub_24EF4EDF8@<X0>(void *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_24F92C738();
    if (result < 0)
    {
      __break(1u);
    }

    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = 0;
  a1[1] = result;
  return result;
}

BOOL sub_24EF4EE50()
{
  if (*v0 >> 62)
  {
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_24EF4EEAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else if (!(*v3 >> 62))
  {
    result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v6 = a3;
  result = sub_24F92C738();
  a3 = v6;
  if (v4 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (result >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24EF4EF1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_24EF4EA68(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_24EF4EF58(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*v2 >> 62)
  {
    result = sub_24F92C738();
    if ((v3 & 0x8000000000000000) != 0 || result < v3)
    {
      goto LABEL_10;
    }

    result = sub_24F92C738();
    if (v4 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 <= result)
  {
    if (v4 < 0)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

LABEL_4:
    if (result >= v4)
    {
      return v4 - v3;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *sub_24EF4EFE4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_24EF4F000(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_24EF4F01C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EF4F038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*v2 >> 62)
  {
    v5 = a2;
    result = sub_24F92C738();
    a2 = v5;
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v3 < result)
  {
    *a2 = v3 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t *sub_24EF4F0A0(uint64_t *result)
{
  v2 = *result;
  if (*v1 >> 62)
  {
    v4 = result;
    v3 = sub_24F92C738();
    result = v4;
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v2 < v3)
  {
    *result = v2 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t sub_24EF4F124()
{
  v1 = sub_24E6B7F88(*v0);

  return v1;
}

uint64_t sub_24EF4F1A0(unint64_t a1, unint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v20 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1;
    v17 = a1 + 32;

    v3 = 0;
    while (v20)
    {
      a1 = MEMORY[0x253052270](v3, v19);
      v6 = a1;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        goto LABEL_42;
      }

LABEL_15:
      if (a2 >> 62)
      {
        a1 = sub_24F92C738();
        v8 = a1;
      }

      else
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      v10 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v8 == v9)
        {

          MEMORY[0x253050F00](v14);
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v5 = v22;
          goto LABEL_8;
        }

        if (v10)
        {
          v11 = MEMORY[0x253052270](v9, a2);
        }

        else
        {
          if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v11 = *(a2 + 8 * v9 + 32);
        }

        if (*(v11 + 16) == *(v6 + 16) && *(v11 + 24) == *(v6 + 24))
        {
          break;
        }

        v13 = sub_24F92CE08();

        if (v13)
        {
          goto LABEL_35;
        }

        v7 = __OFADD__(v9++, 1);
        if (v7)
        {
          goto LABEL_41;
        }
      }

LABEL_35:
      if (v10)
      {
        v4 = MEMORY[0x253052270](v9, a2);
      }

      else
      {
        if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }
      }

      MEMORY[0x253050F00](v4);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v5 = v22;
      sub_24EA0E780(v9);

LABEL_8:
      if (v3 == v2)
      {
        return v5;
      }
    }

    if (v3 >= *(v18 + 16))
    {
      goto LABEL_43;
    }

    v6 = *(v17 + 8 * v3);

    v7 = __OFADD__(v3++, 1);
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v15 = a1;
    v2 = sub_24F92C738();
    a1 = v15;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_24EF4F49C(unint64_t result)
{
  v1 = result;
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_24F92C738();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v5 = *(MEMORY[0x253052270](v3, v1) + 32);
        v6 = swift_unknownObjectRetain();
        if (v5 == 1)
        {
          MEMORY[0x253050F00](v6);
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          swift_unknownObjectRelease();
          v4 = v11;
        }

        else
        {
          MEMORY[0x253050F00]();
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          swift_unknownObjectRelease();
        }

        ++v3;
      }

      while (v2 != v3);
    }

    else
    {
      v7 = v1 + 32;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v8 = *(*v7 + 32);
        v9 = swift_retain_n();
        if (v8 == 1)
        {
          MEMORY[0x253050F00](v9);
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v4 = v11;
        }

        else
        {
          MEMORY[0x253050F00]();
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
        }

        v7 += 8;
        --v2;
      }

      while (v2);
    }

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_24EF4F734()
{
  result = qword_27F2347E0;
  if (!qword_27F2347E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2347E0);
  }

  return result;
}

unint64_t sub_24EF4F804()
{
  result = qword_27F2347F8;
  if (!qword_27F2347F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2347F8);
  }

  return result;
}

unint64_t sub_24EF4F85C()
{
  result = qword_27F234800;
  if (!qword_27F234800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234800);
  }

  return result;
}

uint64_t sub_24EF4F92C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2347F0, &qword_24F9B39D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EF4F9A8()
{
  result = qword_27F234818;
  if (!qword_27F234818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234818);
  }

  return result;
}

uint64_t sub_24EF4FA3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
    sub_24E62A758();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ReusableSupplementaryRegistration.elementKind.getter()
{
  v0 = sub_24EF4FDB0();

  return v0;
}

uint64_t ReusableSupplementaryRegistration.reuseIdentifier.getter()
{
  v0 = sub_24EF4FDB8();

  return v0;
}

uint64_t ReusableSupplementaryRegistration.dequeueConfiguredSupplementary(at:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2);
  v5 = *(v3 + 5);
  v7 = *v3;
  v8 = v4;
  v9 = *(v3 + 24);
  v10 = v5;
  return sub_24EDE51C0(&v7, a1, *(a3 + 16));
}

void ReusableSupplementaryRegistration.reconfigureSupplementary(at:in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[4];
  v9 = sub_24F92B098();
  v10 = sub_24F91F9D8();
  v12 = [a2 supplementaryViewForElementKind:v9 atIndexPath:v10];

  if (v12)
  {
    v11 = swift_dynamicCastUnknownClass();
    if (v11)
    {
      v8(v11, v6, v7, a1);
    }
  }
}

uint64_t sub_24EF4FD38()
{
  v0 = sub_24EF4FDB0();

  return v0;
}

uint64_t sub_24EF4FD70()
{
  v0 = sub_24EF4FDB8();

  return v0;
}

uint64_t sub_24EF4FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double Artwork.Style.iconHeight(fromWidth:)(double result)
{
  v2 = *v1;
  if (((1 << v2) & 0x15F) == 0)
  {
    v3 = result * 3.0;
    if (v2 == 5)
    {
      return v3 * 0.25;
    }

    else
    {
      return v3 / 5.0;
    }
  }

  return result;
}

double Artwork.Style.iconCornerRadius(for:isPlaceholder:)(char a1, double a2, double a3)
{
  v5 = *v3;
  result = 0.0;
  if (v5 > 3)
  {
    if (*v3 > 5u)
    {
      if (v5 == 6)
      {
        return Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, a2 + a2, a3 + a3);
      }

      if (v5 == 7)
      {

        return ASKHomeScreenIconsGetScaledTVCornerRadiusForSize(a2);
      }

      return result;
    }

    if (v5 != 4)
    {
      return a3 * 0.5;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }

LABEL_18:
    if (a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    return v7 * 0.5;
  }

  if (*v3 > 1u)
  {
    if (v5 != 2)
    {
      goto LABEL_18;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else if (!*v3)
  {
    return result;
  }

  return ASKHomeScreenIconsGetScaledCornerRadiusForSize(a2, a3);
}

uint64_t Artwork.Style.orIfUnspecified(_:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 > 3u || *v2)
  {
    v7 = sub_24F92CE08();

    if ((v7 & 1) == 0)
    {
      v4 = v5;
    }
  }

  else
  {
  }

  *a2 = v4;
  return result;
}

double Artwork.Style.iconWidth(fromHeight:)(double result)
{
  v2 = *v1;
  if (((1 << v2) & 0x15F) == 0)
  {
    if (v2 == 5)
    {
      v3 = 4.0;
    }

    else
    {
      v3 = 5.0;
    }

    return result * v3 / 3.0;
  }

  return result;
}

uint64_t Artwork.Style.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CB88();

  v6 = 9;
  if (v4 < 9)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t Artwork.Style.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6669636570736E75;
    v7 = 0xD000000000000016;
    if (v1 != 2)
    {
      v7 = 0x646E756F72;
    }

    if (*v0)
    {
      v6 = 0x526465646E756F72;
    }

    if (*v0 <= 1u)
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
    v2 = 7364969;
    v3 = 0x746365527674;
    if (v1 != 7)
    {
      v3 = 0x656E726F64616E75;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 != 4)
    {
      v4 = 1819044208;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24EF50324()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F2032F0(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EF50374()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F2032F0(v3, v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EF503C4@<X0>(unint64_t *a1@<X8>)
{
  result = Artwork.Style.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24EF503F0()
{
  result = qword_27F2348B8;
  if (!qword_27F2348B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2348B8);
  }

  return result;
}

uint64_t ShareGameActivitySettingsSection.init(settings:)@<X0>(uint64_t a2@<X8>)
{
  v2 = a2 + *(type metadata accessor for ShareGameActivitySettingsSection(0) + 20);
  sub_24F926F28();
  *v2 = v4;
  *(v2 + 8) = v5;
  type metadata accessor for GamesSettings(0);
  sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  return sub_24F927378();
}

uint64_t type metadata accessor for ShareGameActivitySettingsSection(uint64_t a1)
{
  result = qword_27F234920;
  if (!qword_27F234920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareGameActivitySettingsSection.body.getter()
{
  sub_24EF5185C(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C0, &qword_24F9B3DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C8, &qword_24F9B3DF8);
  sub_24EF51E50();
  sub_24EF52154();
  return sub_24F9272C8();
}

uint64_t sub_24EF50610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v36 = type metadata accessor for ShareGameActivitySettingsSection(0);
  v32 = *(v36 - 1);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348F8, &qword_24F9B3E18);
  v33 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348E8, &qword_24F9B3E08);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v31 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348E0, &qword_24F9B3E00);
  MEMORY[0x28223BE20](v40);
  v39 = &v31 - v12;
  if (qword_27F211790 != -1)
  {
    swift_once();
  }

  v50 = qword_27F24C470;
  v51 = *algn_27F24C478;

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v5 + 8))(v7, v4);
  v31 = sub_24E600AEC();
  sub_24F9270E8();
  v35 = v4;
  sub_24F927358();
  v13 = v44;
  swift_getKeyPath();
  v44 = v13;
  v34 = sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v14 = *(v13 + 16);

  LOBYTE(v44) = v14;
  sub_24EF526D4(a1, &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v16 = swift_allocObject();
  sub_24EF5273C(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_24E602068(&qword_27F234900, &qword_27F2348F8, &qword_24F9B3E18, MEMORY[0x277CDF068]);
  v18 = v42;
  sub_24F926AC8();

  (*(v33 + 8))(v9, v18);
  if (qword_27F2117B8 != -1)
  {
    swift_once();
  }

  v50 = qword_27F24C4D0;
  v51 = *algn_27F24C4D8;
  v19 = (a1 + *(v36 + 5));
  v20 = *v19;
  v21 = *(v19 + 1);
  v48 = v20;
  v49 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  v22 = sub_24F926F58();
  v36 = &v31;
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348F0, &qword_24F9B3E10);
  v44 = v42;
  v45 = MEMORY[0x277D839B0];
  v46 = v17;
  v47 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F234908, &qword_27F2348F0, &qword_24F9B3E10, MEMORY[0x277CE14C0]);
  v23 = v38;
  v24 = v39;
  v25 = v43;
  sub_24F926908();

  (*(v37 + 8))(v25, v23);
  sub_24F927358();
  v26 = v44;
  swift_getKeyPath();
  v44 = v26;
  sub_24F91FD88();

  LOBYTE(v25) = *(v26 + 17);

  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v29 = (v24 + *(v40 + 36));
  *v29 = KeyPath;
  v29[1] = sub_24E600A48;
  v29[2] = v28;
  sub_24EF51F0C();
  sub_24F9262F8();
  return sub_24EF527E0(v24);
}

void sub_24EF50DD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  sub_24F927358();
  swift_getKeyPath();
  sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v1 = *(v7 + 16);

  if ((v1 & 1) == 0)
  {
    sub_24F927358();
    swift_getKeyPath();
    sub_24F91FD88();

    v2 = *(v7 + 17);

    if ((v2 & 1) == 0)
    {
      type metadata accessor for ShareGameActivitySettingsSection(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
      sub_24F926F48();
      if (qword_27F211450 != -1)
      {
        swift_once();
      }

      v3 = sub_24F9220D8();
      __swift_project_value_buffer(v3, qword_27F39E940);
      v4 = sub_24F9220B8();
      v5 = sub_24F92BD98();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_24E5DD000, v4, v5, "Turn off confirmation dialog is presented.", v6, 2u);
        MEMORY[0x2530542D0](v6, -1, -1);
      }
    }
  }
}

uint64_t sub_24EF51018@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v39 - v4;
  v41 = sub_24F924138();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShareGameActivitySettingsSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08, &unk_24F973580);
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  MEMORY[0x28223BE20](v11);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234948, &qword_24F9B3F98);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v39 - v19;
  if (qword_27F2117C8 != -1)
  {
    swift_once();
  }

  v51 = qword_27F24C4F0;
  v52 = *algn_27F24C4F8;
  sub_24EF526D4(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_24EF5273C(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_24E600AEC();

  sub_24F926FB8();
  sub_24F924128();
  sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
  v22 = v48;
  sub_24F9264A8();
  (*(v5 + 8))(v7, v41);
  v40 = *(v49 + 1);
  v41 = (v49 + 8);
  v40(v16, v22);
  if (qword_27F211580 != -1)
  {
    swift_once();
  }

  v51 = qword_27F39EBC8;
  v52 = unk_27F39EBD0;

  v23 = v43;
  sub_24F9232D8();
  v24 = sub_24F9232F8();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_24EF526D4(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_24EF5273C(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v20);
  sub_24F926FA8();
  v26 = v42;
  v27 = *(v42 + 16);
  v29 = v44;
  v28 = v45;
  v27(v45, v50, v44);
  v30 = *(v49 + 2);
  v31 = v46;
  v32 = v16;
  v49 = v16;
  v33 = v48;
  v30(v46, v32, v48);
  v34 = v47;
  v27(v47, v28, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234950, &unk_24F9B3FA0);
  v30(&v34[*(v35 + 48)], v31, v33);
  v36 = v40;
  v40(v49, v33);
  v37 = *(v26 + 8);
  v37(v50, v29);
  v36(v31, v33);
  return (v37)(v28, v29);
}

double sub_24EF51620()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  sub_24F927358();
  sub_24ECC5568();

  return result;
}

double sub_24EF51674()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  sub_24F927358();
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EF517B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2117C0 != -1)
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

double sub_24EF5185C@<D0>(__int128 *a1@<X8>)
{
  v39 = a1;
  v2 = sub_24F91F2B8();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  sub_24F927358();
  v8 = v43;
  swift_getKeyPath();
  *&v43 = v8;
  sub_24EF5210C(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v9 = *(v8 + 16);

  if (v9 != 1)
  {
    sub_24F927358();
    v15 = v43;
    v16 = [objc_opt_self() ams:*MEMORY[0x277CEE160] sharedAccountStoreForMediaType:?];
    v17 = [v16 ams_activeiTunesAccount];

    if (v17)
    {

      swift_getKeyPath();
      *&v43 = v15;
      sub_24F91FD88();

      v18 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
      swift_beginAccess();
      sub_24EF525F4(v15 + v18, v7);

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
      v20 = (*(*(v19 - 8) + 48))(v7, 1, v19);
      sub_24EF52664(v7);
      if (v20 != 1)
      {
        if (qword_27F2117B0 != -1)
        {
          swift_once();
        }

        v21 = __swift_project_value_buffer(v2, qword_27F24C4B8);
        (*(v38 + 16))(v4, v21, v2);
        *&v40 = sub_24F925E08();
        *(&v40 + 1) = v22;
        *&v41 = v23 & 1;
        *(&v41 + 1) = v24;
        LOBYTE(v42) = 0;
LABEL_19:
        sub_24F924E28();
        v40 = v43;
        v41 = v44;
        LOBYTE(v42) = v45;
        HIBYTE(v42) = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (qword_27F211798 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v2, qword_27F24C480);
    (*(v38 + 16))(v4, v28, v2);
    *&v40 = sub_24F925E08();
    *(&v40 + 1) = v30;
    *&v41 = v29 & 1;
    *(&v41 + 1) = v31;
    LOBYTE(v42) = 1;
    goto LABEL_19;
  }

  sub_24F927358();
  v10 = v43;
  swift_getKeyPath();
  *&v43 = v10;
  sub_24F91FD88();

  v11 = *(v10 + 19);

  if (v11 == 1)
  {
    if (qword_27F2117A0 != -1)
    {
      swift_once();
    }

    v43 = xmmword_27F24C498;
    sub_24E600AEC();

    *&v40 = sub_24F925E18();
    *(&v40 + 1) = v12;
    *&v41 = v13 & 1;
    *(&v41 + 1) = v14;
    LOBYTE(v42) = 0;
  }

  else
  {
    if (qword_27F2117A8 != -1)
    {
      swift_once();
    }

    v43 = xmmword_27F24C4A8;
    sub_24E600AEC();

    *&v40 = sub_24F925E18();
    *(&v40 + 1) = v26;
    *&v41 = v25 & 1;
    *(&v41 + 1) = v27;
    LOBYTE(v42) = 1;
  }

  sub_24F924E28();
  v40 = v43;
  v41 = v44;
  v42 = v45;
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0, &qword_24FA02720);
  sub_24E8C5A10();
  sub_24F924E28();
  result = *&v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v36 = v39;
  *v39 = v43;
  v36[1] = v33;
  *(v36 + 32) = v34;
  *(v36 + 33) = v35;
  return result;
}

unint64_t sub_24EF51E50()
{
  result = qword_27F2348D0;
  if (!qword_27F2348D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348C0, &qword_24F9B3DF0);
    sub_24EF51F0C();
    sub_24EF5210C(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2348D0);
  }

  return result;
}

unint64_t sub_24EF51F0C()
{
  result = qword_27F2348D8;
  if (!qword_27F2348D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348E0, &qword_24F9B3E00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348E8, &qword_24F9B3E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348F0, &qword_24F9B3E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348F8, &qword_24F9B3E18);
    sub_24E602068(&qword_27F234900, &qword_27F2348F8, &qword_24F9B3E18, MEMORY[0x277CDF068]);
    swift_getOpaqueTypeConformance2();
    sub_24E600AEC();
    sub_24E602068(&qword_27F234908, &qword_27F2348F0, &qword_24F9B3E10, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2348D8);
  }

  return result;
}

uint64_t sub_24EF5210C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EF52154()
{
  result = qword_27F234910;
  if (!qword_27F234910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2348C8, &qword_24F9B3DF8);
    sub_24E8C5A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234910);
  }

  return result;
}

uint64_t sub_24EF521F4(__n128 a1)
{
  sub_24EF5185C(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C0, &qword_24F9B3DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348C8, &qword_24F9B3DF8);
  sub_24EF51E50();
  sub_24EF52154();
  return sub_24F9272C8();
}

uint64_t sub_24EF522B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_24EF523A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24EF5246C(uint64_t a1)
{
  sub_24EF524F0(319);
  if (v1 <= 0x3F)
  {
    sub_24E654514();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF524F0(uint64_t a1)
{
  if (!qword_27F234930)
  {
    type metadata accessor for GamesSettings(255);
    v1 = sub_24F927398();
    if (!v2)
    {
      atomic_store(v1, &qword_27F234930);
    }
  }
}

unint64_t sub_24EF5254C()
{
  result = qword_27F234938;
  if (!qword_27F234938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234940, &unk_24F9B3EA8);
    sub_24EF51E50();
    sub_24EF52154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234938);
  }

  return result;
}

uint64_t sub_24EF525F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF52664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF526D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareGameActivitySettingsSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF5273C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareGameActivitySettingsSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF527E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2348E0, &qword_24F9B3E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_42()
{
  v1 = *(type metadata accessor for ShareGameActivitySettingsSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234918, &qword_24F9B3E78);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24EF52970(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShareGameActivitySettingsSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24EF52A10(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v3, 0);
    v5 = v23;
    v6 = *(sub_24F920B08() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      sub_24EF55C54(&v21);
      v9 = v21;
      v10 = v22;
      v23 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v12 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v7 += v8;
      --v3;
    }

    while (v3);
  }

  v14 = objc_opt_self();
  v15 = sub_24F92B588();

  v16 = [v14 localizedStringByJoiningStrings_];

  v17 = sub_24F92B0D8();
  v19 = v18;

  v21 = v17;
  v22 = v19;
  if (a2)
  {
    MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA460A0);
    return v21;
  }

  return v17;
}

uint64_t sub_24EF52BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for ChallengeDefinitionDetail(0);
  sub_24E60169C(v1 + *(v15 + 52), v14, &qword_27F212A00, &qword_24F9A23B0);
  v16 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    v17 = sub_24F91F648();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {
    sub_24EF5CFB4(v14, v11, type metadata accessor for Leaderboard);
    sub_24EF5C1F4(&v11[*(v9 + 24)], v5, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24EF5C310(v11, type metadata accessor for Leaderboard);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
    v20 = 1;
    v21 = (*(*(v19 - 8) + 48))(v5, 1, v19);
    v22 = sub_24F91F648();
    v23 = *(v22 - 8);
    if (v21 != 1)
    {
      (*(*(v22 - 8) + 32))(v8, v5, v22);
      v20 = 0;
    }

    (*(v23 + 56))(v8, v20, 1, v22);
    return sub_24E6009C8(v8, a1, &unk_27F22EC30, &qword_24F939880);
  }
}

void sub_24EF52F44(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E861818(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_24EF58B84(v4);
  *a1 = v2;
}

void sub_24EF52FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v132 = a6;
  v127 = a5;
  v126 = a4;
  v121 = a3;
  v133 = a2;
  v10 = 0;
  v143 = sub_24F9202F8();
  v122 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = &v119 - v13;
  v124 = sub_24F920B68();
  v145 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v119 - v16;
  v150 = sub_24F920B08();
  v153 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v140 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v119 - v19;
  v146 = sub_24F920AF8();
  v125 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v159 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v21 - 8);
  v129 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v128 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v119 - v26;
  v131 = sub_24F920BC8();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  *&v158 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v119 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0, &unk_24F98F830);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v119 - v36;
  v38 = sub_24F9210E8();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = sub_24F920B18();
  a7[1] = v42;
  a7[2] = sub_24F920B38();
  a7[3] = v43;
  a7[4] = sub_24F920A78();
  a7[5] = v44;
  v134 = a1;
  sub_24F920B78();
  v45 = (*(v39 + 48))(v37, 1, v38);
  v135 = a7;
  if (v45 != 1)
  {
    (*(v39 + 32))(v41, v37, v38);
    (*(v39 + 16))(v34, v41, v38);
    (*(v39 + 56))(v34, 0, 1, v38);
    sub_24F3D6C4C(v34, v27);
    (*(v39 + 8))(v41, v38);
    v138 = type metadata accessor for ChallengeDefinitionDetail(0);
    sub_24E6009C8(v27, v135 + v138[7], &qword_27F213FB0, &qword_24F93E6B0);
    goto LABEL_7;
  }

  sub_24E601704(v37, &qword_27F21E3C0, &unk_24F98F830);
  v138 = type metadata accessor for ChallengeDefinitionDetail(0);
  v46 = v138[7];
  v47 = sub_24F9289E8();
  (*(*(v47 - 8) + 56))(a7 + v46, 1, 1, v47);
  if (qword_27F2113B8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v48 = sub_24F9220D8();
    __swift_project_value_buffer(v48, qword_27F39E778);
    v49 = v130;
    v50 = v131;
    (*(v130 + 16))(v31, v134, v131);
    v51 = sub_24F9220B8();
    v52 = sub_24F92BDB8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v160 = v54;
      *v53 = 136315138;
      v55 = sub_24F920B18();
      v57 = v56;
      (*(v49 + 8))(v31, v50);
      v58 = sub_24E7620D4(v55, v57, &v160);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_24E5DD000, v51, v52, "Challenge definition %s is missing artwork", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x2530542D0](v54, -1, -1);
      MEMORY[0x2530542D0](v53, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v31, v50);
    }

LABEL_7:
    v59 = v146;
    v60 = sub_24F920A68();
    type metadata accessor for ChallengeDefinitionDetail(0);
    v31 = v138;
    v61 = v60 & 1;
    v62 = v135;
    *(v135 + v138[8]) = v61;
    *(v62 + *(v31 + 9)) = sub_24F920A98() & 1;
    v160 = sub_24F920BB8();

    sub_24EF52F44(&v160);
    if (v10)
    {
      break;
    }

    v63 = v160;
    v10 = v160[2];
    if (v10)
    {
      v160 = MEMORY[0x277D84F90];
      sub_24F458600(0, v10, 0);
      v64 = 0;
      v65 = v160;
      v151 = *MEMORY[0x277D0D130];
      *&v158 = v125 + 104;
      v149 = (v153 + 8);
      v136 = (v153 + 16);
      v144 = *MEMORY[0x277D0D140];
      v157 = xmmword_24F93DE60;
      v137 = v63;
      v152 = v10;
      while (v64 < *(v63 + 16))
      {
        v66 = *(v63 + 8 * v64 + 32);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A68, &unk_24F9B4260);
        v31 = ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v155 = *(v153 + 72);
        v156 = v67;
        v68 = swift_allocObject();
        *(v68 + 16) = v157;
        v154 = *v158;
        v154(v159, v151, v59);

        sub_24F920AB8();
        if (*(v66 + 16) == 1)
        {
          if (v66 == v68 || (v69 = *v136, v70 = v139, v71 = v150, (*v136)(v139, &v31[v66], v150), v148 = v65, v72 = v140, v69(v140, &v31[v68], v71), sub_24EF5B41C(&qword_27F212AE8, MEMORY[0x277D0D188], MEMORY[0x277D0D198]), v147 = sub_24F92AFF8(), v73 = *v149, v74 = v72, v65 = v148, (*v149)(v74, v71), v75 = v70, v63 = v137, v73(v75, v71), (v147 & 1) != 0))
          {

            v76 = swift_allocObject();
            *(v76 + 16) = v157;
            v59 = v146;
            v154(v159, v144, v146);
            sub_24F920AB8();

            v66 = v76;
          }

          else
          {
            swift_setDeallocating();
            v73(&v31[v68], v150);
            swift_deallocClassInstance();
            v59 = v146;
          }
        }

        else
        {
          swift_setDeallocating();
          (*v149)(&v31[v68], v150);
          swift_deallocClassInstance();
        }

        v160 = v65;
        v78 = *(v65 + 16);
        v77 = *(v65 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_24F458600((v77 > 1), v78 + 1, 1);
          v65 = v160;
        }

        ++v64;
        *(v65 + 16) = v78 + 1;
        *(v65 + 8 * v78 + 32) = v66;
        v10 = v152;
        if (v152 == v64)
        {

          v62 = v135;
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {

      v65 = MEMORY[0x277D84F90];
LABEL_22:
      v79 = v138;
      *(v62 + v138[10]) = v65;
      v80 = v127;
      *(v62 + v79[12]) = v127;
      v81 = v129;
      sub_24E60169C(v132, v129, &qword_27F2198F8, &unk_24F94CFA0);
      v82 = sub_24F920A88();
      v83 = *(v82 - 8);
      v84 = *(v83 + 48);
      if (v84(v81, 1, v82) == 1)
      {
        if (*(v80 + 16))
        {
          v85 = v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
          v86 = v128;
          (*(v83 + 16))(v128, v85, v82);
          v87 = 0;
        }

        else
        {
          v87 = 1;
          v86 = v128;
        }

        (*(v83 + 56))(v86, v87, 1, v82);
        v88 = v129;
        if (v84(v129, 1, v82) != 1)
        {
          sub_24E601704(v88, &qword_27F2198F8, &unk_24F94CFA0);
        }
      }

      else
      {
        v86 = v128;
        (*(v83 + 32))(v128, v81, v82);
        (*(v83 + 56))(v86, 0, 1, v82);
      }

      v89 = v138;
      v90 = v135;
      sub_24E6009C8(v86, v135 + v138[16], &qword_27F2198F8, &unk_24F94CFA0);
      sub_24E60169C(v133, v90 + v89[13], &qword_27F212A00, &qword_24F9A23B0);
      if (os_variant_has_internal_content())
      {
        v91 = sub_24F92CE08();

        v92 = MEMORY[0x277D84F90];
        if (v91 & 1) == 0 && (v121)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A70, &qword_24F9FA9F0);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_24F9479A0;
          *&v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A68, &unk_24F9B4260);
          v93 = swift_allocObject();
          v158 = xmmword_24F93DE60;
          *(v93 + 16) = xmmword_24F93DE60;
          v94 = *MEMORY[0x277D0D160];
          v148 = v65;
          v95 = *(v125 + 104);
          v96 = v159;
          v95(v159, v94, v59);
          sub_24F920AB8();
          *(v92 + 32) = v93;
          v97 = swift_allocObject();
          *(v97 + 16) = v158;
          v98 = v94;
          v99 = v146;
          v95(v96, v98, v146);
          sub_24F920AB8();
          *(v92 + 40) = v97;
          v100 = swift_allocObject();
          *(v100 + 16) = v158;
          v95(v96, *MEMORY[0x277D0D158], v99);
          v65 = v148;
          v90 = v135;
          sub_24F920AB8();
          *(v92 + 48) = v100;
        }
      }

      else
      {

        v92 = MEMORY[0x277D84F90];
      }

      *(v90 + v138[11]) = v92;
      v101 = sub_24F920B98();
      if (!v101)
      {
        goto LABEL_41;
      }

      v10 = v124;
      v31 = v123;
      v159 = *(v101 + 16);
      if (!v159)
      {
LABEL_40:

LABEL_41:
        v109 = 0;
        v110 = 0;
LABEL_42:
        v111 = (v135 + v138[14]);
        *v111 = v109;
        v111[1] = v110;
        v112 = v126;
        v113 = v131;
        v114 = v130;
        if (v126)
        {
          if (!*(v126 + 16))
          {

            goto LABEL_45;
          }
        }

        else
        {
LABEL_45:
          if (*(v65 + 16))
          {
          }

          else
          {
            v112 = 0;
          }
        }

        *(v135 + v138[15]) = v112;
        v115 = v134;
        sub_24F920AA8();
        sub_24E601704(v132, &qword_27F2198F8, &unk_24F94CFA0);
        sub_24E601704(v133, &qword_27F212A00, &qword_24F9A23B0);
        (*(v114 + 8))(v115, v113);
        return;
      }

      v102 = 0;
      *&v157 = v145 + 16;
      v156 = (v122 + 8);
      *&v158 = v145 + 8;
      v148 = v65;
      while (v102 < *(v101 + 16))
      {
        v103 = v101;
        (*(v145 + 16))(v31, v101 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v102, v10);
        v104 = v141;
        sub_24F920B58();
        v105 = v142;
        sub_24F920228();
        sub_24EF5B41C(&qword_27F21E3C8, MEMORY[0x277D0C9F8], MEMORY[0x277D0CA08]);
        v106 = v143;
        v107 = sub_24F92C678();
        v108 = *v156;
        (*v156)(v105, v106);
        v108(v104, v106);
        if (v107)
        {

          v116 = v145 + 32;
          v117 = v120;
          (*(v145 + 32))(v120, v31, v10);
          v109 = sub_24F920B48();
          v110 = v118;
          (*(v116 - 24))(v117, v10);
          v65 = v148;
          goto LABEL_42;
        }

        ++v102;
        (*v158)(v31, v10);
        v65 = v148;
        v101 = v103;
        if (v159 == v102)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_24EF54554@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_63:
    if ((result != 0x6574696D696C6E55 || a2 != 0xE900000000000064) && (sub_24F92CE08() & 1) == 0)
    {
      v28 = sub_24F920A88();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }

    v27 = MEMORY[0x277D0D0F0];
    goto LABEL_70;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v29 = result;
    v30 = a2;

    v9 = sub_24F2D9F38(v29, v30, 10, v31);
    v33 = v32;

    result = v29;
    a2 = v30;
    if (v33)
    {
      goto LABEL_63;
    }

    goto LABEL_69;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v37 = result;
      v38 = a2;
      v7 = sub_24F92C928();
      result = v37;
      v5 = v39;
      a2 = v38;
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v9 = 0;
          if (v7)
          {
            v16 = v7 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_74;
    }

    if (v8 != 45)
    {
      if (v5)
      {
        v9 = 0;
        if (v7)
        {
          while (1)
          {
            v22 = *v7 - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v41 = v5;
      if (v5)
      {
        goto LABEL_63;
      }

LABEL_69:
      *a3 = v9;
      v27 = MEMORY[0x277D0D0E8];
LABEL_70:
      v34 = *v27;
      v35 = sub_24F920A88();
      v36 = *(v35 - 8);
      (*(v36 + 104))(a3, v34, v35);
      return (*(v36 + 56))(a3, 0, 1, v35);
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v40[0] = result;
  v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v9 = 0;
        v24 = v40;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v9 = 0;
        v13 = v40 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v9 = 0;
      v19 = v40 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_24EF54990@<X0>(void *a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EF5C1F4(v1, v7, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24EF5CFB4(v7, v4, type metadata accessor for Leaderboard);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  v20 = xmmword_24F93DE60;
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x6F6272656461656CLL;
  *(inited + 40) = 0xEB00000000647261;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A30, &qword_24F9B4238);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060, &qword_24F93A810) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v20;
  v12 = (v11 + v10);
  v13 = v9[14];
  *v12 = 0x6F6272656461656CLL;
  v12[1] = 0xEB00000000647261;
  sub_24EF5C1F4(v4, v12 + v13, type metadata accessor for Leaderboard);
  v14 = sub_24E60F384(v11);
  swift_setDeallocating();
  sub_24E601704(v12, &qword_27F213060, &qword_24F93A810);
  swift_deallocClassInstance();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307E8, &qword_24F9A2558);
  *(inited + 80) = sub_24EF5C25C();
  *(inited + 48) = v14;
  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F212F18, &unk_24F93A2B0);
  v16 = sub_24E80FFAC(v15);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  v18 = v21;
  v21[3] = v17;
  v18[4] = sub_24E6060B8();
  *v18 = v16;
  return sub_24EF5C310(v4, type metadata accessor for Leaderboard);
}

uint64_t sub_24EF54CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A40, &qword_24F9B4240);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A48, &qword_24F9B4248);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF5CF0C();
  v11 = v30;
  sub_24F92D108();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_24F92CC78();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_24E643448() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_24F92C918();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v20 = v22;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_24EF5CF60();
  sub_24F92CBA8();
  type metadata accessor for Leaderboard(0);
  sub_24EF5B41C(&qword_27F21B488, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
  v22 = v10;
  sub_24F92CC68();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_24EF5CFB4(v4, v12, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24EF550E0(uint64_t a1)
{
  v2 = sub_24EF5CF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF5511C(uint64_t a1)
{
  v2 = sub_24EF5CF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF55158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EF551E4(uint64_t a1)
{
  v2 = sub_24EF5CF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF55220(uint64_t a1)
{
  v2 = sub_24EF5CF60();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_24EF5528C(uint64_t *a1, uint64_t *a2)
{
  v53 = sub_24F920AF8();
  v43 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_24F920B08();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = *a1;
  v42 = *a2;
  v16 = *(v15 + 16);
  v17 = 0.0;
  v18 = 0.0;
  if (v16)
  {
    v50 = *(v44 + 16);
    v19 = v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v49 = *(v44 + 72);
    v20 = (v43 + 11);
    v48 = *MEMORY[0x277D0D160];
    v47 = *MEMORY[0x277D0D158];
    v46 = *MEMORY[0x277D0D138];
    v45 = *MEMORY[0x277D0D130];
    v41 = *MEMORY[0x277D0D140];
    v40 = *MEMORY[0x277D0D150];
    v39 = *MEMORY[0x277D0D148];
    v38 = v43 + 1;
    v51 = (v44 + 16);
    v21 = (v44 + 8);
    v50(v14, v19, v8, v12);
    while (1)
    {
      sub_24F920AC8();
      v25 = (*v20)(v7, v53);
      v23 = 1.0;
      if (v25 != v48)
      {
        if (v25 == v47)
        {
          v22 = 0x404E000000000000;
LABEL_4:
          v23 = *&v22;
          goto LABEL_5;
        }

        if (v25 == v46)
        {
          v22 = 0x40AC200000000000;
          goto LABEL_4;
        }

        if (v25 == v45)
        {
          v22 = 0x40F5180000000000;
          goto LABEL_4;
        }

        if (v25 == v41)
        {
          v22 = 0x4122750000000000;
          goto LABEL_4;
        }

        if (v25 == v40)
        {
          v22 = 0x4143C68000000000;
          goto LABEL_4;
        }

        if (v25 == v39)
        {
          v22 = 0x417E133800000000;
          goto LABEL_4;
        }

        (*v38)(v7, v53);
      }

LABEL_5:
      v24 = sub_24F920AD8();
      (*v21)(v14, v8);
      v12.n128_f64[0] = v23 * v24;
      v18 = v18 + v12.n128_f64[0];
      v19 += v49;
      if (!--v16)
      {
        break;
      }

      v50(v14, v19, v8, v12);
    }
  }

  v26 = *(v42 + 16);
  if (v26)
  {
    v27 = v44 + 16;
    v51 = *(v44 + 16);
    v28 = v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v50 = *(v44 + 72);
    v29 = (v43 + 11);
    LODWORD(v49) = *MEMORY[0x277D0D160];
    v48 = *MEMORY[0x277D0D158];
    v47 = *MEMORY[0x277D0D138];
    v46 = *MEMORY[0x277D0D130];
    v45 = *MEMORY[0x277D0D140];
    LODWORD(v44) = *MEMORY[0x277D0D150];
    LODWORD(v42) = *MEMORY[0x277D0D148];
    ++v43;
    v30 = (v27 - 8);
    v17 = 0.0;
    v51(v10, v28, v8, v12);
    while (1)
    {
      v35 = v52;
      sub_24F920AC8();
      v36 = (*v29)(v35, v53);
      v32 = 1.0;
      if (v36 != v49)
      {
        if (v36 == v48)
        {
          v31 = 0x404E000000000000;
LABEL_23:
          v32 = *&v31;
          goto LABEL_24;
        }

        if (v36 == v47)
        {
          v31 = 0x40AC200000000000;
          goto LABEL_23;
        }

        if (v36 == v46)
        {
          v31 = 0x40F5180000000000;
          goto LABEL_23;
        }

        if (v36 == v45)
        {
          v31 = 0x4122750000000000;
          goto LABEL_23;
        }

        if (v36 == v44)
        {
          v31 = 0x4143C68000000000;
          goto LABEL_23;
        }

        if (v36 == v42)
        {
          v31 = 0x417E133800000000;
          goto LABEL_23;
        }

        (*v43)(v52, v53);
      }

LABEL_24:
      v33 = sub_24F920AD8();
      (*v30)(v10, v8);
      v34.n128_f64[0] = v32 * v33;
      v17 = v17 + v34.n128_f64[0];
      v28 += v50;
      if (!--v26)
      {
        return v18 < v17;
      }

      v51(v10, v28, v8, v34);
    }
  }

  return v18 < v17;
}

id sub_24EF55828()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  result = [v0 setUnitsStyle_];
  qword_27F234958 = v0;
  return result;
}

void sub_24EF55878(double a1)
{
  v39 = sub_24F920AF8();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F920B08();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ChallengeDefinitionDetail(0);
  v23 = v1;
  v30 = *(v1 + *(v22 + 40));
  v29 = *(v30 + 16);
  if (v29)
  {
    v9 = 0;
    v28 = v30 + 32;
    v38 = v27 + 16;
    v10 = (v3 + 88);
    v37 = *MEMORY[0x277D0D160];
    v36 = *MEMORY[0x277D0D158];
    v35 = *MEMORY[0x277D0D138];
    v34 = *MEMORY[0x277D0D130];
    v33 = *MEMORY[0x277D0D140];
    v26 = *MEMORY[0x277D0D150];
    v24 = (v3 + 8);
    v11 = (v27 + 8);
    v25 = *MEMORY[0x277D0D148];
    do
    {
      if (v9 >= *(v30 + 16))
      {
        __break(1u);
        return;
      }

      v12 = *(v28 + 8 * v9);
      v13 = *(v12 + 16);
      if (!v13)
      {
        if (a1 != 0.0)
        {
          goto LABEL_4;
        }

        break;
      }

      v31 = v9;
      v32 = v12;
      v14 = v12 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v40 = *(v27 + 72);
      v15 = *(v27 + 16);

      v16 = 0.0;
      do
      {
        v15(v8, v14, v6);
        sub_24F920AC8();
        v20 = (*v10)(v5, v39);
        v18 = 1.0;
        if (v20 != v37)
        {
          if (v20 == v36)
          {
            v17 = 0x404E000000000000;
LABEL_9:
            v18 = *&v17;
            goto LABEL_10;
          }

          if (v20 == v35)
          {
            v17 = 0x40AC200000000000;
            goto LABEL_9;
          }

          if (v20 == v34)
          {
            v17 = 0x40F5180000000000;
            goto LABEL_9;
          }

          if (v20 == v33)
          {
            v17 = 0x4122750000000000;
            goto LABEL_9;
          }

          if (v20 == v26)
          {
            v17 = 0x4143C68000000000;
            goto LABEL_9;
          }

          if (v20 == v25)
          {
            v17 = 0x417E133800000000;
            goto LABEL_9;
          }

          (*v24)(v5, v39);
        }

LABEL_10:
        v19 = sub_24F920AD8();
        (*v11)(v8, v6);
        v16 = v16 + v18 * v19;
        v14 += v40;
        --v13;
      }

      while (v13);
      if (v16 == a1)
      {
        return;
      }

      v9 = v31;
LABEL_4:
      ++v9;
    }

    while (v9 != v29);
  }
}

uint64_t sub_24EF55C54@<X0>(void *a1@<X8>)
{
  v30 = a1;
  v1 = sub_24F920AF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128, &qword_24F970418);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234A60, &unk_24F9B4250);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v29 = sub_24F91ED78();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F8A8();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = sub_24F91F9B8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_24F91ED68();
  sub_24F920AC8();
  v16 = (*(v2 + 88))(v4, v1);
  if (v16 == *MEMORY[0x277D0D160])
  {
    sub_24F920AD8();
    sub_24F91ED58();
  }

  else if (v16 == *MEMORY[0x277D0D158])
  {
    sub_24F920AD8();
    sub_24F91ED38();
  }

  else if (v16 == *MEMORY[0x277D0D138])
  {
    sub_24F920AD8();
    sub_24F91ECD8();
  }

  else if (v16 == *MEMORY[0x277D0D130])
  {
    sub_24F920AD8();
    sub_24F91ECB8();
  }

  else
  {
    if (v16 == *MEMORY[0x277D0D140])
    {
      v27 = sub_24F920AD8();
      v19 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD00000000000001ELL, 0x800000024FA64C80, v27);
      v24 = v28;
      goto LABEL_14;
    }

    if (v16 == *MEMORY[0x277D0D150])
    {
      sub_24F920AD8();
      sub_24F91ED18();
    }

    else if (v16 == *MEMORY[0x277D0D148])
    {
      sub_24F920AD8();
      sub_24F91ECF8();
    }

    else
    {
      (*(v2 + 8))(v4, v1);
    }
  }

  if (qword_27F210C80 != -1)
  {
    swift_once();
  }

  v17 = qword_27F234958;
  v18 = sub_24F91EC98();
  v19 = [v17 stringFromDateComponents_];

  if (v19)
  {
    v20 = sub_24F92B0D8();
    v22 = v21;

    v31 = v20;
    v32 = v22;
    sub_24E600AEC();
    v19 = sub_24F92C558();
    v24 = v23;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

LABEL_14:
  result = (*(v11 + 8))(v13, v29);
  v26 = v30;
  *v30 = v19;
  v26[1] = v24;
  return result;
}

uint64_t ChallengeDefinitionDetail.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v122 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v2 - 8);
  v120 = v118 - v3;
  v4 = sub_24F920A88();
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v118[0] = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v121 = v118 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = v118 - v9;
  v147 = sub_24F920AF8();
  v123 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v149 = sub_24F920B08();
  v137 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F974E30;
  *(inited + 32) = 25705;
  v118[1] = inited + 32;
  *(inited + 40) = 0xE200000000000000;
  v13 = *v1;
  v148 = v1[1];
  v14 = v148;
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v16;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 88) = 0x656C746974;
  *(inited + 96) = 0xE500000000000000;
  v17 = v1[2];
  v18 = v1[3];
  *(inited + 128) = v15;
  *(inited + 136) = v16;
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  *(inited + 144) = 0x7470697263736564;
  *(inited + 152) = 0xEB000000006E6F69;
  v19 = v1[4];
  v20 = v1[5];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 184) = v127;
  v21 = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277D225D8]);
  *(inited + 160) = v19;
  *(inited + 168) = v20;
  v126 = v21;
  *(inited + 192) = v21;
  *(inited + 200) = 0x6B726F77747261;
  *(inited + 208) = 0xE700000000000000;
  v22 = type metadata accessor for ChallengeDefinitionDetail(0);
  v23 = v22[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  *(inited + 248) = sub_24E7F1D38();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v1 + v23, boxed_opaque_existential_1, &qword_27F213FB0, &qword_24F93E6B0);
  *(inited + 256) = 0x7669686372417369;
  *(inited + 264) = 0xEA00000000006465;
  v25 = *(v1 + v22[8]);
  v26 = MEMORY[0x277D839B0];
  v27 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v27;
  *(inited + 272) = v25;
  strcpy((inited + 312), "isRepeatable");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  v28 = *(v1 + v22[9]);
  *(inited + 352) = v26;
  *(inited + 360) = v27;
  *(inited + 328) = v28;
  *(inited + 368) = 0x656C7552656D6974;
  *(inited + 376) = 0xEF736E6F6974704FLL;

  v29 = v123;

  sub_24EF57304((inited + 384));
  *(inited + 424) = 0xD000000000000014;
  *(inited + 432) = 0x800000024FA64BD0;
  v128 = inited;
  v129 = v22;
  v30 = v22[11];
  v130 = v1;
  v31 = *(v1 + v30);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  if (!v32)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_16:
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232580, &unk_24F9B3FB0);
    v60 = v128;
    v128[58] = v59;
    v61 = sub_24EE88798();
    v60[55] = v36;
    v60[59] = v61;
    v60[60] = 0xD000000000000013;
    v60[61] = 0x800000024FA64BF0;
    v62 = v130;
    sub_24EF57808(v60 + 62);
    v60[67] = 0xD000000000000020;
    v60[68] = 0x800000024FA64C10;
    v63 = v129;
    v64 = (v62 + v129[14]);
    v65 = *v64;
    v66 = v64[1];
    v67 = v126;
    v60[72] = v127;
    v60[73] = v67;
    v60[69] = v65;
    v60[70] = v66;
    v60[74] = 0x6C62616B63617274;
    v60[75] = 0xE900000000000065;
    v68 = v63[13];
    v60[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
    v60[80] = sub_24EF5B368();
    v69 = __swift_allocate_boxed_opaque_existential_1(v60 + 76);
    sub_24E60169C(v62 + v68, v69, &qword_27F212A00, &qword_24F9A23B0);
    v60[81] = 0xD000000000000013;
    v60[82] = 0x800000024FA64C40;
    v60[86] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234970, &unk_24F9B3FC0);
    v60[87] = sub_24EF5B484();
    v70 = *(v62 + v63[15]);
    if (v70)
    {
      v71 = *(v70 + 16);
      if (v71)
      {
        *&v153 = MEMORY[0x277D84F90];

        sub_24F458B9C(0, v71, 0);
        v72 = v153;
        v143 = *(v137 + 16);
        v73 = v70 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
        v74 = *(v137 + 72);
        v141 = (v123 + 8);
        v142 = v74;
        v140 = (v137 + 8);
        v139 = xmmword_24F93A400;
        v137 += 16;
        do
        {
          v148 = v72;
          v75 = v145;
          v143(v145, v73, v149);
          v76 = swift_allocObject();
          *(v76 + 16) = v139;
          *(v76 + 32) = 1953066613;
          *(v76 + 40) = 0xE400000000000000;
          v77 = v146;
          sub_24F920AC8();
          v78 = sub_24F920AE8();
          v80 = v79;
          (*v141)(v77, v147);
          *(v76 + 72) = MEMORY[0x277D837D0];
          v81 = MEMORY[0x277D22580];
          *(v76 + 48) = v78;
          *(v76 + 56) = v80;
          *(v76 + 80) = v81;
          *(v76 + 88) = 0x65756C6176;
          *(v76 + 96) = 0xE500000000000000;
          v82 = sub_24F920AD8();
          *(v76 + 128) = MEMORY[0x277D83B88];
          *(v76 + 136) = sub_24E65901C();
          *(v76 + 104) = v82;
          v83 = sub_24E607D0C(v76);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v84 = sub_24E80FFAC(v83);

          (*v140)(v75, v149);
          v72 = v148;
          *&v153 = v148;
          v86 = *(v148 + 16);
          v85 = *(v148 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_24F458B9C((v85 > 1), v86 + 1, 1);
            v72 = v153;
          }

          *(v72 + 16) = v86 + 1;
          *(v72 + 8 * v86 + 32) = v84;
          v73 += v142;
          --v71;
        }

        while (v71);
        v60 = v128;
        v128[83] = v72;
      }

      else
      {

        v60[83] = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v60[83] = 0;
    }

    strcpy(v60 + 704, "releaseState");
    *(v60 + 717) = 0;
    *(v60 + 359) = -5120;
    v87 = v126;
    v60[93] = v127;
    v60[94] = v87;
    v88 = v119;
    sub_24E60169C(v130 + v129[17], v119, &qword_27F219030, &qword_24F94BAE8);
    v89 = sub_24F920818();
    v90 = *(v89 - 8);
    if ((*(v90 + 48))(v88, 1, v89) == 1)
    {
      sub_24E601704(v88, &qword_27F219030, &qword_24F94BAE8);
      v91 = 0;
      v92 = 0;
    }

    else
    {
      v91 = sub_24F920808();
      v92 = v93;
      (*(v90 + 8))(v88, v89);
    }

    v94 = v128;
    v128[90] = v91;
    *(v94 + 728) = v92;
    v95 = sub_24E607D0C(v94);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
    swift_arrayDestroy();
    v96 = sub_24E80FFAC(v95);

    v156 = v96;
    v97 = v120;
    sub_24E60169C(v130 + v129[16], v120, &qword_27F2198F8, &unk_24F94CFA0);
    v99 = v124;
    v98 = v125;
    if ((*(v124 + 48))(v97, 1, v125) == 1)
    {
      sub_24E601704(v97, &qword_27F2198F8, &unk_24F94CFA0);
LABEL_39:
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
      v117 = v122;
      v122[3] = v116;
      result = sub_24E6060B8();
      v117[4] = result;
      *v117 = v96;
      return result;
    }

    v100 = v121;
    (*(v99 + 32))(v121, v97, v98);
    v101 = v118[0];
    (*(v99 + 16))(v118[0], v100, v98);
    v102 = (*(v99 + 88))(v101, v98);
    if (v102 == *MEMORY[0x277D0D0E8])
    {
      (*(v99 + 96))(v101, v98);
      v103 = *v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD10, &unk_24F9537B0);
      v104 = swift_initStackObject();
      v149 = xmmword_24F93DE60;
      *(v104 + 16) = xmmword_24F93DE60;
      *(v104 + 32) = 0x646574696D696CLL;
      *(v104 + 40) = 0xE700000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18, &unk_24F9B3FE0);
      v105 = swift_allocObject();
      *(v105 + 16) = v149;
      *(v105 + 32) = 0x746E756F63;
      v106 = v105 + 32;
      *(v105 + 40) = 0xE500000000000000;
      *(v105 + 48) = v103;
      v107 = sub_24E60B368(v105);
      swift_setDeallocating();
      sub_24E601704(v106, &qword_27F21BD20, &unk_24F9537C0);
      swift_deallocClassInstance();
      *(v104 + 48) = v107;
      v108 = sub_24E60B464(v104);
      swift_setDeallocating();
      sub_24E601704(v104 + 32, &qword_27F21BD28, &unk_24F9B3FF0);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD30, &unk_24F9537D0);
      *(&v154 + 1) = v109;
      v110 = sub_24EF5B508();
    }

    else
    {
      if (v102 != *MEMORY[0x277D0D0F0])
      {
        *(&v154 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
        v155 = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
        *&v153 = MEMORY[0x277D84F98];
        (*(v99 + 8))(v101, v98);
        v109 = *(&v154 + 1);
LABEL_36:
        if (v109)
        {
          v151[0] = v153;
          v151[1] = v154;
          v152 = v155;
          v114 = v156;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150 = v114;
          sub_24E82115C(v151, 0xD000000000000012, 0x800000024FA64C60, isUniquelyReferenced_nonNull_native);
          (*(v124 + 8))(v121, v125);
          v96 = v150;
        }

        else
        {
          sub_24E601704(&v153, &qword_27F234980, &unk_24F9B3FD0);
          sub_24E990028(0xD000000000000012, 0x800000024FA64C60, v151);
          sub_24E601704(v151, &qword_27F234980, &unk_24F9B3FD0);
          (*(v124 + 8))(v121, v125);
          v96 = v156;
        }

        goto LABEL_39;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD50, &unk_24F9537E0);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_24F93DE60;
      *(v111 + 32) = 0x6574696D696C6E75;
      v112 = v111 + 32;
      v113 = MEMORY[0x277D84F98];
      *(v111 + 40) = 0xE900000000000064;
      *(v111 + 48) = v113;
      v108 = sub_24E60B478(v111);
      swift_setDeallocating();
      sub_24E601704(v112, &qword_27F21BD58, &unk_24F9B4000);
      swift_deallocClassInstance();
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD60, &unk_24F9537F0);
      *(&v154 + 1) = v109;
      v110 = sub_24EF5B58C();
    }

    v155 = v110;
    *&v153 = v108;
    goto LABEL_36;
  }

  *&v153 = MEMORY[0x277D84F90];
  result = sub_24F458B5C(0, v32, 0);
  v35 = 0;
  v36 = v153;
  v133 = v31 + 32;
  v140 = (v29 + 8);
  v141 = (v137 + 16);
  *&v139 = v137 + 8;
  v138 = xmmword_24F93A400;
  v37 = v137;
  v131 = v32;
  v132 = v31;
  while (v35 < *(v31 + 16))
  {
    v38 = *(v133 + 8 * v35);
    v39 = *(v38 + 16);
    if (v39)
    {
      v135 = v35;
      v136 = v36;
      *&v151[0] = v33;

      v148 = v39;
      sub_24F458B9C(0, v39, 0);
      v40 = *&v151[0];
      v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v134 = v38;
      v42 = v38 + v41;
      v43 = *(v37 + 72);
      v142 = *(v37 + 16);
      v143 = v43;
      do
      {
        v44 = v145;
        v142(v145, v42, v149);
        v45 = swift_allocObject();
        *(v45 + 16) = v138;
        *(v45 + 32) = 1953066613;
        *(v45 + 40) = 0xE400000000000000;
        v46 = v146;
        sub_24F920AC8();
        v47 = sub_24F920AE8();
        v49 = v48;
        (*v140)(v46, v147);
        *(v45 + 72) = MEMORY[0x277D837D0];
        v50 = MEMORY[0x277D22580];
        *(v45 + 48) = v47;
        *(v45 + 56) = v49;
        *(v45 + 80) = v50;
        *(v45 + 88) = 0x65756C6176;
        *(v45 + 96) = 0xE500000000000000;
        v51 = sub_24F920AD8();
        *(v45 + 128) = MEMORY[0x277D83B88];
        *(v45 + 136) = sub_24E65901C();
        *(v45 + 104) = v51;
        v52 = sub_24E607D0C(v45);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v53 = sub_24E80FFAC(v52);

        (*v139)(v44, v149);
        *&v151[0] = v40;
        v55 = *(v40 + 16);
        v54 = *(v40 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_24F458B9C((v54 > 1), v55 + 1, 1);
          v40 = *&v151[0];
        }

        *(v40 + 16) = v55 + 1;
        *(v40 + 8 * v55 + 32) = v53;
        v42 += v143;
        --v148;
      }

      while (v148);

      v36 = v136;
      v37 = v137;
      v33 = MEMORY[0x277D84F90];
      v32 = v131;
      v31 = v132;
      v35 = v135;
      v56 = v40;
    }

    else
    {
      v56 = v33;
    }

    *&v153 = v36;
    v58 = *(v36 + 16);
    v57 = *(v36 + 24);
    if (v58 >= v57 >> 1)
    {
      v148 = v56;
      result = sub_24F458B5C((v57 > 1), v58 + 1, 1);
      v56 = v148;
      v36 = v153;
    }

    ++v35;
    *(v36 + 16) = v58 + 1;
    *(v36 + 8 * v58 + 32) = v56;
    if (v35 == v32)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF57304@<X0>(void *a1@<X8>)
{
  v46 = sub_24F920AF8();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24F920B08();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(type metadata accessor for ChallengeDefinitionDetail(0) + 40));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v33 = a1;
    v50 = MEMORY[0x277D84F90];
    result = sub_24F458B5C(0, v10, 0);
    v13 = 0;
    v14 = v50;
    v37 = v9 + 32;
    v44 = v6 + 16;
    v43 = (v3 + 8);
    v42 = (v6 + 8);
    v41 = xmmword_24F93A400;
    v36 = v6;
    v35 = v9;
    v34 = v10;
    while (v13 < *(v9 + 16))
    {
      v15 = *(v37 + 8 * v13);
      v16 = *(v15 + 16);
      if (v16)
      {
        v40 = v13;
        v39 = v14;
        v49 = v11;

        sub_24F458B9C(0, v16, 0);
        v17 = v49;
        v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v38 = v15;
        v19 = v15 + v18;
        v48 = *(v6 + 72);
        v47 = *(v6 + 16);
        do
        {
          v20 = v45;
          v47(v8, v19, v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
          inited = swift_initStackObject();
          *(inited + 16) = v41;
          *(inited + 32) = 1953066613;
          *(inited + 40) = 0xE400000000000000;
          sub_24F920AC8();
          v22 = sub_24F920AE8();
          v24 = v23;
          (*v43)(v5, v46);
          *(inited + 72) = MEMORY[0x277D837D0];
          v25 = MEMORY[0x277D22580];
          *(inited + 48) = v22;
          *(inited + 56) = v24;
          *(inited + 80) = v25;
          *(inited + 88) = 0x65756C6176;
          *(inited + 96) = 0xE500000000000000;
          v26 = sub_24F920AD8();
          *(inited + 128) = MEMORY[0x277D83B88];
          *(inited + 136) = sub_24E65901C();
          *(inited + 104) = v26;
          v27 = sub_24E607D0C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
          swift_arrayDestroy();
          v28 = sub_24E80FFAC(v27);

          (*v42)(v8, v20);
          v49 = v17;
          v30 = *(v17 + 16);
          v29 = *(v17 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_24F458B9C((v29 > 1), v30 + 1, 1);
            v17 = v49;
          }

          *(v17 + 16) = v30 + 1;
          *(v17 + 8 * v30 + 32) = v28;
          v19 += v48;
          --v16;
        }

        while (v16);

        v6 = v36;
        v11 = MEMORY[0x277D84F90];
        v9 = v35;
        v10 = v34;
        v14 = v39;
        v13 = v40;
      }

      else
      {
        v17 = v11;
      }

      v50 = v14;
      v32 = *(v14 + 16);
      v31 = *(v14 + 24);
      if (v32 >= v31 >> 1)
      {
        v40 = v13;
        result = sub_24F458B5C((v31 > 1), v32 + 1, 1);
        v13 = v40;
        v14 = v50;
      }

      ++v13;
      *(v14 + 16) = v32 + 1;
      *(v14 + 8 * v32 + 32) = v17;
      if (v13 == v10)
      {
        a1 = v33;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_16:
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232580, &unk_24F9B3FB0);
    result = sub_24EE88798();
    a1[4] = result;
    *a1 = v14;
  }

  return result;
}

unint64_t sub_24EF57808@<X0>(void *a1@<X8>)
{
  v3 = sub_24F920A88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = *(v1 + *(type metadata accessor for ChallengeDefinitionDetail(0) + 48));
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = a1;
    v47 = MEMORY[0x277D84F90];
    sub_24F458B9C(0, v11, 0);
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v44 = v14;
    v15 = (v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v43 = (v13 + 72);
    v42 = (v13 - 8);
    v38 = (v13 + 80);
    v12 = v47;
    v41 = *(v13 + 56);
    v40 = *MEMORY[0x277D0D0E8];
    v37 = *MEMORY[0x277D0D0F0];
    v46 = xmmword_24F93DE60;
    v45 = v13;
    while (1)
    {
      v16 = v44;
      v44(v9, v15, v3);
      v16(v6, v9, v3);
      v17 = (*v43)(v6, v3);
      if (v17 == v40)
      {
        (*v38)(v6, v3);
        v39 = *v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        *(inited + 32) = 0x646574696D696CLL;
        *(inited + 40) = 0xE700000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18, &unk_24F9B3FE0);
        v19 = swift_initStackObject();
        *(v19 + 16) = v46;
        v20 = v11;
        v21 = v12;
        v22 = v3;
        v23 = v6;
        v24 = v9;
        *(v19 + 32) = 0x746E756F63;
        v25 = v19 + 32;
        v26 = v39;
        *(v19 + 40) = 0xE500000000000000;
        *(v19 + 48) = v26;
        v39 = sub_24E60B368(v19);
        swift_setDeallocating();
        v27 = v25;
        v9 = v24;
        v6 = v23;
        v3 = v22;
        v12 = v21;
        v11 = v20;
        sub_24E601704(v27, &qword_27F21BD20, &unk_24F9537C0);
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48, &qword_24F95F8A0);
        *(inited + 80) = sub_24E776EC0();
        *(inited + 48) = v39;
        v28 = sub_24E607D0C(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F212F18, &unk_24F93A2B0);
        v29 = sub_24E80FFAC(v28);
      }

      else
      {
        if (v17 != v37)
        {
          v32 = *v42;
          (*v42)(v9, v3);
          v32(v6, v3);
          v29 = MEMORY[0x277D84F98];
          goto LABEL_9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
        v30 = swift_initStackObject();
        *(v30 + 16) = v46;
        *(v30 + 32) = 0x6574696D696C6E75;
        *(v30 + 40) = 0xE900000000000064;
        *(v30 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
        *(v30 + 80) = sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
        *(v30 + 48) = MEMORY[0x277D84F98];
        v31 = sub_24E607D0C(v30);
        swift_setDeallocating();
        sub_24E601704(v30 + 32, &qword_27F212F18, &unk_24F93A2B0);
        v29 = sub_24E80FFAC(v31);
      }

      (*v42)(v9, v3);
LABEL_9:
      v47 = v12;
      v34 = *(v12 + 16);
      v33 = *(v12 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24F458B9C((v33 > 1), v34 + 1, 1);
        v12 = v47;
      }

      *(v12 + 16) = v34 + 1;
      *(v12 + 8 * v34 + 32) = v29;
      v15 += v41;
      if (!--v11)
      {
        a1 = v36;
        break;
      }
    }
  }

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232570, &unk_24F9A9E60);
  result = sub_24EE886F4();
  a1[4] = result;
  *a1 = v12;
  return result;
}

unint64_t sub_24EF57D8C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x6B726F77747261;
      break;
    case 4:
      result = 0x7669686372417369;
      break;
    case 5:
      result = 0x7461657065527369;
      break;
    case 6:
      result = 0x656C7552656D6974;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6C62616B63617274;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x53657361656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EF57F74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EF5CA94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EF57F9C(uint64_t a1)
{
  v2 = sub_24EF5B630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF57FD8(uint64_t a1)
{
  v2 = sub_24EF5B630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDefinitionDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234988, &qword_24F9B4010);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24EF5B630();
  v68 = v16;
  v21 = v69;
  sub_24F92D108();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v22 = v13;
  v61 = v7;
  v62 = v10;
  v23 = v66;
  v24 = v67;
  v69 = v17;
  v63 = v19;
  LOBYTE(v72) = 0;
  v25 = v68;
  v26 = sub_24F92CC28();
  v28 = v63;
  *v63 = v26;
  v28[1] = v29;
  LOBYTE(v72) = 1;
  v28[2] = sub_24F92CC28();
  v28[3] = v30;
  LOBYTE(v72) = 2;
  v59 = 0;
  v31 = sub_24F92CBC8();
  v60 = 0;
  v28[4] = v31;
  v28[5] = v32;
  sub_24F9289E8();
  LOBYTE(v72) = 3;
  sub_24EF5B41C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v33 = v60;
  sub_24F92CC18();
  v60 = v33;
  if (v33)
  {
    (*(v23 + 8))(v25, v24);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_9;
  }

  v38 = v69;
  sub_24E6009C8(v22, v28 + v69[7], &qword_27F213FB0, &qword_24F93E6B0);
  LOBYTE(v72) = 4;
  v39 = v60;
  v40 = sub_24F92CC38();
  if (v39 || (*(v28 + v38[8]) = v40 & 1, LOBYTE(v72) = 5, v41 = sub_24F92CC38(), v60 = 0, *(v28 + v38[9]) = v41 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234998, &qword_24F9B4018), v71 = 6, sub_24EF5B684(), v39 = v60, sub_24F92CC68(), v39))
  {
    v60 = v39;
    (*(v23 + 8))(v68, v24);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 1;
    goto LABEL_9;
  }

  *(v28 + v38[10]) = v72;
  v71 = 7;
  sub_24F92CC68();
  v60 = 0;
  *(v28 + v38[11]) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2349A8, &qword_24F9EF140);
  v71 = 8;
  sub_24EF5B708();
  v43 = v68;
  v44 = v60;
  sub_24F92CC68();
  v60 = v44;
  if (v44)
  {
    (*(v23 + 8))(v43, v24);
    v37 = 0;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_9;
  }

  *(v28 + v69[12]) = v72;
  type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  LOBYTE(v72) = 9;
  sub_24EF5B41C(&qword_27F2349B8, type metadata accessor for ChallengeDefinitionDetail.Trackable, &unk_24F9B4184);
  v45 = v60;
  sub_24F92CC18();
  v60 = v45;
  if (v45)
  {
    (*(v23 + 8))(v68, v67);
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v28 = v63;
LABEL_9:
    v42 = v59;
    __swift_destroy_boxed_opaque_existential_1(v70);

    if (!v42)
    {
    }

    if (v34)
    {
      result = sub_24E601704(v28 + v69[7], &qword_27F213FB0, &qword_24F93E6B0);
      if (v35)
      {
LABEL_13:

        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    else if (v35)
    {
      goto LABEL_13;
    }

    if (!v36)
    {
LABEL_14:
      if (!v37)
      {
        return result;
      }
    }

LABEL_18:

    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  sub_24E6009C8(v62, v63 + v69[13], &qword_27F212A00, &qword_24F9A23B0);
  LOBYTE(v72) = 10;
  v46 = v60;
  v47 = sub_24F92CBC8();
  v49 = v46;
  if (v46)
  {
    (*(v23 + 8))(v68, v67);
    v50 = 0;
    v51 = 0;
    v60 = v46;
  }

  else
  {
    v52 = (v63 + v69[14]);
    *v52 = v47;
    v52[1] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0, &unk_24F9B4020);
    v71 = 11;
    sub_24EE88870();
    sub_24F92CC18();
    v60 = 0;
    *(v63 + v69[15]) = v72;
    sub_24F920A88();
    LOBYTE(v72) = 12;
    sub_24EF5B41C(&qword_27F2325B8, MEMORY[0x277D0D0F8], MEMORY[0x277D0D110]);
    v53 = v60;
    sub_24F92CC18();
    v60 = v53;
    if (v53)
    {
      (*(v23 + 8))(v68, v67);
      v51 = 0;
      v50 = 1;
    }

    else
    {
      sub_24E6009C8(v61, v63 + v69[16], &qword_27F2198F8, &unk_24F94CFA0);
      sub_24F920818();
      LOBYTE(v72) = 13;
      sub_24EF5B41C(&qword_27F21E378, MEMORY[0x277D0CF00], MEMORY[0x277D0CF28]);
      v54 = v60;
      sub_24F92CC18();
      v60 = v54;
      if (!v54)
      {
        (*(v23 + 8))(v68, v67);
        v57 = v63;
        sub_24E6009C8(v65, v63 + v69[17], &qword_27F219030, &qword_24F94BAE8);
        sub_24EF5C1F4(v57, v64, type metadata accessor for ChallengeDefinitionDetail);
        __swift_destroy_boxed_opaque_existential_1(v70);
        return sub_24EF5C310(v57, type metadata accessor for ChallengeDefinitionDetail);
      }

      (*(v23 + 8))(v68, v67);
      v50 = 1;
      v51 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  v55 = v63;

  v56 = v69;
  sub_24E601704(v55 + v69[7], &qword_27F213FB0, &qword_24F93E6B0);

  result = sub_24E601704(v55 + v56[13], &qword_27F212A00, &qword_24F9A23B0);
  if (v49)
  {
    if (v50)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v50)
    {
LABEL_34:

      if (v51)
      {
        return sub_24E601704(v63 + v69[16], &qword_27F2198F8, &unk_24F94CFA0);
      }

      return result;
    }
  }

  if (v51)
  {
    return sub_24E601704(v63 + v69[16], &qword_27F2198F8, &unk_24F94CFA0);
  }

  return result;
}

void sub_24EF58B84(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0, &unk_24F9B4020);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_24EF5929C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EF58C8C(0, v2, 1, a1);
  }
}

void sub_24EF58C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = a1;
  v65 = sub_24F920AF8();
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v42 - v10;
  v11 = sub_24F920B08();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v43 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v64 = v50 + 16;
    v18 = (v7 + 88);
    v63 = *MEMORY[0x277D0D160];
    v58 = *MEMORY[0x277D0D158];
    v57 = *MEMORY[0x277D0D138];
    v56 = *MEMORY[0x277D0D130];
    v54 = *MEMORY[0x277D0D140];
    v49 = *MEMORY[0x277D0D150];
    v44 = (v7 + 8);
    v19 = (v50 + 8);
    v45 = *MEMORY[0x277D0D148];
    v47 = v17;
    do
    {
      v20 = *(v17 + 8 * a3);
      v21 = a3;
      v48 = a3;
      do
      {
        v52 = v20;
        v53 = v21;
        v51 = v21 - 1;
        v22 = *(v20 + 16);
        v55 = *(v17 + 8 * (v21 - 1));
        if (v22)
        {
          v23 = v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v24 = *(v50 + 72);
          v61 = *(v50 + 16);
          v62 = v24;

          v25 = 0.0;
          while (1)
          {
            v61(v16, v23, v11);
            v29 = v60;
            sub_24F920AC8();
            v30 = (*v18)(v29, v65);
            v27 = 1.0;
            if (v30 != v63)
            {
              if (v30 == v58)
              {
                v26 = 0x404E000000000000;
              }

              else if (v30 == v57)
              {
                v26 = 0x40AC200000000000;
              }

              else if (v30 == v56)
              {
                v26 = 0x40F5180000000000;
              }

              else if (v30 == v54)
              {
                v26 = 0x4122750000000000;
              }

              else if (v30 == v49)
              {
                v26 = 0x4143C68000000000;
              }

              else
              {
                if (v30 != v45)
                {
                  (*v44)(v60, v65);
                  goto LABEL_10;
                }

                v26 = 0x417E133800000000;
              }

              v27 = *&v26;
            }

LABEL_10:
            v28 = sub_24F920AD8();
            (*v19)(v16, v11);
            v25 = v25 + v27 * v28;
            v23 += v62;
            if (!--v22)
            {
              goto LABEL_25;
            }
          }
        }

        v25 = 0.0;
LABEL_25:
        v31 = *(v55 + 16);
        if (v31)
        {
          v32 = v55 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v33 = *(v50 + 72);
          v61 = *(v50 + 16);
          v62 = v33;
          v34 = 0.0;
          v61(v13, v32, v11);
          while (1)
          {
            v38 = v59;
            sub_24F920AC8();
            v39 = (*v18)(v38, v65);
            v36 = 1.0;
            if (v39 != v63)
            {
              if (v39 == v58)
              {
                v35 = 0x404E000000000000;
LABEL_28:
                v36 = *&v35;
                goto LABEL_29;
              }

              if (v39 == v57)
              {
                v35 = 0x40AC200000000000;
                goto LABEL_28;
              }

              if (v39 == v56)
              {
                v35 = 0x40F5180000000000;
                goto LABEL_28;
              }

              if (v39 == v54)
              {
                v35 = 0x4122750000000000;
                goto LABEL_28;
              }

              if (v39 == v49)
              {
                v35 = 0x4143C68000000000;
                goto LABEL_28;
              }

              if (v39 == v45)
              {
                v35 = 0x417E133800000000;
                goto LABEL_28;
              }

              (*v44)(v59, v65);
            }

LABEL_29:
            v37 = sub_24F920AD8();
            (*v19)(v13, v11);
            v34 = v34 + v36 * v37;
            v32 += v62;
            if (!--v31)
            {

              goto LABEL_46;
            }

            v61(v13, v32, v11);
          }
        }

        v34 = 0.0;
LABEL_46:
        v17 = v47;
        v40 = v48;
        if (v25 >= v34)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v20 = *(v47 + 8 * v53);
        v41 = v51;
        *(v47 + 8 * v53) = *(v47 + 8 * v51);
        *(v17 + 8 * v41) = v20;
        v21 = v41;
      }

      while (v41 != v46);
      a3 = v40 + 1;
    }

    while (a3 != v43);
  }
}

void sub_24EF5929C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v140 = a1;
  v170 = sub_24F920AF8();
  v7 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v164 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v163 = &v138 - v10;
  MEMORY[0x28223BE20](v11);
  v156 = &v138 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v138 - v14;
  v15 = sub_24F920B08();
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v138 - v17;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v142 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v147 = MEMORY[0x277D84F90];
LABEL_169:
    if (*v140)
    {
      v4 = v147;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v143;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_202;
      }

      goto LABEL_171;
    }

    goto LABEL_208;
  }

  v157 = &v138 - v21;
  v158 = v24;
  v165 = v23;
  v138 = a4;
  v26 = 0;
  v169 = v22 + 16;
  v27 = (v7 + 88);
  v168 = *MEMORY[0x277D0D160];
  v166 = *MEMORY[0x277D0D158];
  v162 = *MEMORY[0x277D0D138];
  v28 = *MEMORY[0x277D0D130];
  v160 = *MEMORY[0x277D0D140];
  v161 = v28;
  v150 = *MEMORY[0x277D0D150];
  v146 = *MEMORY[0x277D0D148];
  v144 = (v7 + 8);
  v151 = v22;
  v29 = (v22 + 8);
  v147 = MEMORY[0x277D84F90];
  v167 = v18;
  while (1)
  {
    v30 = v26 + 1;
    v149 = v26;
    if (v26 + 1 < v25)
    {
      v139 = v25;
      v31 = *(*v142 + 8 * v30);
      v141 = *v142;
      v171 = *(v141 + 8 * v26);
      v172 = v31;

      v32 = v143;
      LODWORD(v152) = sub_24EF5528C(&v172, &v171);
      v143 = v32;
      if (v32)
      {

LABEL_179:

        return;
      }

      v148 = v139 - 1;
      while (v30 != v148)
      {
        v145 = v30 + 1;
        v34 = *(v141 + 8 * (v30 + 1));
        v35 = *(v141 + 8 * v30);
        v36 = *(v34 + 16);
        v154 = v35;
        v153 = v34;
        if (v36)
        {
          v37 = v34 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v159 = *(v151 + 72);
          v38 = *(v151 + 16);

          v39 = 0.0;
          v40 = v157;
          do
          {
            v38(v40, v37, v15);
            v41 = v156;
            sub_24F920AC8();
            v42 = (*v27)(v41, v170);
            v43 = 1.0;
            if (v42 == v168)
            {
              v18 = v167;
            }

            else
            {
              v18 = v167;
              if (v42 == v166)
              {
                v43 = 60.0;
              }

              else if (v42 == v162)
              {
                v43 = 3600.0;
              }

              else if (v42 == v161)
              {
                v43 = 86400.0;
              }

              else if (v42 == v160)
              {
                v43 = 604800.0;
              }

              else if (v42 == v150)
              {
                v43 = 2592000.0;
              }

              else if (v42 == v146)
              {
                v43 = 31536000.0;
              }

              else
              {
                (*v144)(v156, v170);
              }
            }

            v40 = v157;
            v4 = sub_24F920AD8();
            (*v29)(v40, v15);
            v39 = v39 + v43 * v4;
            v37 += v159;
            --v36;
          }

          while (v36);
        }

        else
        {

          v39 = 0.0;
        }

        v44 = *(v154 + 16);
        if (v44)
        {
          v45 = v154 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v159 = *(v151 + 72);
          v46 = *(v151 + 16);
          v47 = 0.0;
          v46(v158, v45, v15);
          while (1)
          {
            v49 = v155;
            sub_24F920AC8();
            v50 = (*v27)(v49, v170);
            v51 = 1.0;
            if (v50 == v168)
            {
              v18 = v167;
            }

            else
            {
              v18 = v167;
              if (v50 == v166)
              {
                v51 = 60.0;
              }

              else if (v50 == v162)
              {
                v51 = 3600.0;
              }

              else if (v50 == v161)
              {
                v51 = 86400.0;
              }

              else if (v50 == v160)
              {
                v51 = 604800.0;
              }

              else if (v50 == v150)
              {
                v51 = 2592000.0;
              }

              else if (v50 == v146)
              {
                v51 = 31536000.0;
              }

              else
              {
                (*v144)(v155, v170);
              }
            }

            v48 = v158;
            v4 = sub_24F920AD8();
            (*v29)(v48, v15);
            v47 = v47 + v51 * v4;
            v45 += v159;
            if (!--v44)
            {
              break;
            }

            v46(v48, v45, v15);
          }
        }

        else
        {

          v47 = 0.0;
        }

        v33 = v145;
        v30 = v145;
        if (((v152 ^ (v39 >= v47)) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      v33 = v139;
LABEL_50:
      v30 = v33;
      if (v152)
      {
        v52 = v149;
        if (v33 < v149)
        {
          goto LABEL_201;
        }

        v53 = v33;
        if (v149 < v33)
        {
          v54 = 8 * v33 - 8;
          v55 = 8 * v149;
          do
          {
            if (v52 != --v53)
            {
              v56 = *v142;
              if (!*v142)
              {
                goto LABEL_205;
              }

              v57 = *(v56 + v55);
              *(v56 + v55) = *(v56 + v54);
              *(v56 + v54) = v57;
            }

            ++v52;
            v54 -= 8;
            v55 += 8;
          }

          while (v52 < v53);
        }
      }
    }

    v58 = v142[1];
    if (v30 >= v58)
    {
      v62 = v30;
      v61 = v149;
      if (v62 < v149)
      {
        goto LABEL_197;
      }

      goto LABEL_69;
    }

    v59 = v30 - v149;
    if (__OFSUB__(v30, v149))
    {
      goto LABEL_198;
    }

    v60 = v30;
    v61 = v149;
    if (v59 >= v138)
    {
LABEL_66:
      v62 = v60;
      if (v60 < v149)
      {
        goto LABEL_197;
      }

      goto LABEL_69;
    }

    if (__OFADD__(v149, v138))
    {
      goto LABEL_199;
    }

    if (v149 + v138 < v58)
    {
      v58 = v149 + v138;
    }

    if (v58 < v149)
    {
      break;
    }

    if (v60 == v58)
    {
      goto LABEL_66;
    }

    v141 = v58;
    v112 = *v142;
    v148 = *v142;
    while (2)
    {
      v113 = *(v112 + 8 * v60);
      v145 = v60;
      do
      {
        v154 = v60;
        v152 = v60 - 1;
        v114 = *(v113 + 16);
        v159 = *(v112 + 8 * (v60 - 1));
        v153 = v113;
        if (v114)
        {
          v115 = v113 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v116 = *(v151 + 72);
          v4 = *(v151 + 16);

          v117 = 0.0;
          do
          {
            (v4)(v18, v115, v15);
            v119 = v164;
            sub_24F920AC8();
            v120 = (*v27)(v119, v170);
            v121 = 1.0;
            if (v120 == v168)
            {
              v18 = v167;
            }

            else
            {
              v18 = v167;
              if (v120 == v166)
              {
                v121 = 60.0;
              }

              else if (v120 == v162)
              {
                v121 = 3600.0;
              }

              else if (v120 == v161)
              {
                v121 = 86400.0;
              }

              else if (v120 == v160)
              {
                v121 = 604800.0;
              }

              else if (v120 == v150)
              {
                v121 = 2592000.0;
              }

              else if (v120 == v146)
              {
                v121 = 31536000.0;
              }

              else
              {
                (*v144)(v164, v170);
              }
            }

            v118 = sub_24F920AD8();
            (*v29)(v18, v15);
            v117 = v117 + v121 * v118;
            v115 += v116;
            --v114;
          }

          while (v114);
        }

        else
        {

          v117 = 0.0;
        }

        v122 = *(v159 + 16);
        if (v122)
        {
          v123 = v159 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v4 = *(v151 + 72);
          v124 = *(v151 + 16);
          v125 = 0.0;
          v124(v165, v123, v15);
          while (1)
          {
            v130 = v163;
            sub_24F920AC8();
            v131 = (*v27)(v130, v170);
            v127 = 1.0;
            if (v131 != v168)
            {
              if (v131 == v166)
              {
                v126 = 0x404E000000000000;
LABEL_143:
                v127 = *&v126;
                goto LABEL_144;
              }

              if (v131 == v162)
              {
                v126 = 0x40AC200000000000;
                goto LABEL_143;
              }

              if (v131 == v161)
              {
                v126 = 0x40F5180000000000;
                goto LABEL_143;
              }

              if (v131 == v160)
              {
                v126 = 0x4122750000000000;
                goto LABEL_143;
              }

              if (v131 == v150)
              {
                v126 = 0x4143C68000000000;
                goto LABEL_143;
              }

              if (v131 == v146)
              {
                v126 = 0x417E133800000000;
                goto LABEL_143;
              }

              (*v144)(v163, v170);
            }

LABEL_144:
            v128 = v165;
            v129 = sub_24F920AD8();
            (*v29)(v128, v15);
            v125 = v125 + v127 * v129;
            v123 += v4;
            if (!--v122)
            {

              v18 = v167;
              goto LABEL_161;
            }

            v124(v128, v123, v15);
          }
        }

        v125 = 0.0;
LABEL_161:
        v61 = v149;
        v112 = v148;
        if (v117 >= v125)
        {
          break;
        }

        if (!v148)
        {
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        v113 = *(v148 + 8 * v154);
        v132 = v152;
        *(v148 + 8 * v154) = *(v148 + 8 * v152);
        *(v112 + 8 * v132) = v113;
        v60 = v132;
      }

      while (v132 != v61);
      v60 = v145 + 1;
      if (v145 + 1 != v141)
      {
        continue;
      }

      break;
    }

    v62 = v141;
    if (v141 < v61)
    {
      goto LABEL_197;
    }

LABEL_69:
    v145 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_24E615ED8(0, *(v147 + 2) + 1, 1, v147);
    }

    v64 = *(v147 + 2);
    v63 = *(v147 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v147 = sub_24E615ED8((v63 > 1), v64 + 1, 1, v147);
    }

    v66 = v147;
    *(v147 + 2) = v65;
    v67 = &v66[16 * v64];
    v68 = v145;
    *(v67 + 4) = v61;
    *(v67 + 5) = v68;
    if (!*v140)
    {
      goto LABEL_207;
    }

    if (v64)
    {
      while (1)
      {
        v69 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v70 = *(v147 + 4);
          v71 = *(v147 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_88:
          if (v73)
          {
            goto LABEL_186;
          }

          v86 = &v147[16 * v65];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_189;
          }

          v92 = &v147[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_192;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_193;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v65 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v96 = &v147[16 * v65];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_102:
        if (v91)
        {
          goto LABEL_188;
        }

        v99 = &v147[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_191;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_109:
        v107 = v69 - 1;
        if (v69 - 1 >= v65)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (!*v142)
        {
          goto LABEL_204;
        }

        v108 = *&v147[16 * v107 + 32];
        v4 = *&v147[16 * v69 + 40];
        v109 = v143;
        sub_24EF5A3E0(*v142 + 8 * v108, (*v142 + 8 * *&v147[16 * v69 + 32]), (*v142 + 8 * v4));
        v143 = v109;
        if (v109)
        {
          goto LABEL_179;
        }

        if (v4 < v108)
        {
          goto LABEL_182;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_24E86164C(v147);
        }

        v110 = v147;
        if (v107 >= *(v147 + 2))
        {
          goto LABEL_183;
        }

        v111 = &v147[16 * v107];
        *(v111 + 4) = v108;
        *(v111 + 5) = v4;
        v173 = v110;
        sub_24E8615C0(v69);
        v147 = v173;
        v65 = *(v173 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v147[16 * v65 + 32];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_184;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_185;
      }

      v81 = &v147[16 * v65];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_187;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_190;
      }

      if (v85 >= v77)
      {
        v103 = &v147[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_194;
        }

        if (v72 < v106)
        {
          v69 = v65 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v25 = v142[1];
    v26 = v145;
    if (v145 >= v25)
    {
      goto LABEL_169;
    }
  }

LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  v4 = sub_24E86164C(v4);
LABEL_171:
  v173 = v4;
  v134 = *(v4 + 16);
  if (v134 < 2)
  {
    goto LABEL_179;
  }

  while (*v142)
  {
    v135 = *(v4 + 16 * v134);
    v136 = *(v4 + 16 * (v134 - 1) + 40);
    sub_24EF5A3E0(*v142 + 8 * v135, (*v142 + 8 * *(v4 + 16 * (v134 - 1) + 32)), (*v142 + 8 * v136));
    if (v29)
    {
      goto LABEL_179;
    }

    if (v136 < v135)
    {
      goto LABEL_195;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_24E86164C(v4);
    }

    if (v134 - 2 >= *(v4 + 16))
    {
      goto LABEL_196;
    }

    v137 = (v4 + 16 * v134);
    *v137 = v135;
    v137[1] = v136;
    v173 = v4;
    sub_24E8615C0(v134 - 1);
    v4 = v173;
    v134 = *(v173 + 16);
    if (v134 <= 1)
    {
      goto LABEL_179;
    }
  }

LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
}

uint64_t sub_24EF5A3E0(uint64_t a1, char *a2, char *a3)
{
  v110 = sub_24F920AF8();
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v86 - v7;
  MEMORY[0x28223BE20](v8);
  v103 = &v86 - v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v86 - v11;
  v12 = sub_24F920B08();
  v98 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v86 - v19;
  MEMORY[0x28223BE20](v21);
  v24 = a2;
  v26 = &v86 - v25;
  v27 = a2 - v23;
  v28 = v27 / 8;
  v91 = a3;
  v29 = a3 - v24;
  v30 = a3 - v24 + 7;
  if (a3 - v24 >= 0)
  {
    v30 = a3 - v24;
  }

  v31 = v30 >> 3;
  v99 = v22;
  if (v28 >= v30 >> 3)
  {
    v95 = v23;
    if (v22 != v24 || &v24[8 * v31] <= v22)
    {
      v60 = v24;
      memmove(v22, v24, 8 * v31);
      v24 = v60;
      v22 = v99;
    }

    v59 = v24;
    v100 = &v22[8 * v31];
    if (v29 < 8 || v24 <= v95)
    {
      goto LABEL_115;
    }

    v109 = v98 + 16;
    v61 = (v107 + 88);
    v108 = *MEMORY[0x277D0D160];
    LODWORD(v103) = *MEMORY[0x277D0D158];
    LODWORD(v102) = *MEMORY[0x277D0D138];
    v101 = *MEMORY[0x277D0D130];
    v96 = *MEMORY[0x277D0D140];
    v90 = *MEMORY[0x277D0D150];
    v87 = (v107 + 8);
    v62 = (v98 + 8);
    v88 = *MEMORY[0x277D0D148];
    v63 = v91;
LABEL_64:
    v94 = v59;
    v64 = v59 - 8;
    v65 = v100;
    v89 = v59 - 8;
    while (1)
    {
      v66 = *(v65 - 1);
      v92 = v63;
      v93 = v65 - 8;
      v67 = *(v66 + 16);
      v97 = *v64;
      v91 = v66;
      if (v67)
      {
        v68 = v66 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v69 = *(v98 + 72);
        v106 = *(v98 + 16);
        v107 = v69;

        v70 = 0.0;
        while (1)
        {
          v106(v17, v68, v12);
          v74 = v105;
          sub_24F920AC8();
          v75 = (*v61)(v74, v110);
          v72 = 1.0;
          if (v75 != v108)
          {
            if (v75 == v103)
            {
              v71 = 0x404E000000000000;
            }

            else if (v75 == v102)
            {
              v71 = 0x40AC200000000000;
            }

            else if (v75 == v101)
            {
              v71 = 0x40F5180000000000;
            }

            else if (v75 == v96)
            {
              v71 = 0x4122750000000000;
            }

            else if (v75 == v90)
            {
              v71 = 0x4143C68000000000;
            }

            else
            {
              if (v75 != v88)
              {
                (*v87)(v105, v110);
                goto LABEL_70;
              }

              v71 = 0x417E133800000000;
            }

            v72 = *&v71;
          }

LABEL_70:
          v73 = sub_24F920AD8();
          (*v62)(v17, v12);
          v70 = v70 + v72 * v73;
          v68 += v107;
          if (!--v67)
          {
            goto LABEL_85;
          }
        }
      }

      v70 = 0.0;
LABEL_85:
      v76 = *(v97 + 16);
      if (v76)
      {
        break;
      }

      v79 = 0.0;
LABEL_106:
      v65 = v93;
      v63 = v92 - 8;
      v22 = v99;
      v64 = v89;
      if (v70 < v79)
      {
        if (v92 != v94)
        {
          *v63 = *v89;
        }

        if (v100 <= v22 || (v59 = v64, v64 <= v95))
        {
          v59 = v64;
          goto LABEL_115;
        }

        goto LABEL_64;
      }

      if (v92 != v100)
      {
        *v63 = *v93;
      }

      v100 = v65;
      if (v65 <= v22)
      {
        v100 = v65;
        v59 = v94;
        goto LABEL_115;
      }
    }

    v77 = v97 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v78 = *(v98 + 72);
    v106 = *(v98 + 16);
    v107 = v78;
    v79 = 0.0;
    v106(v14, v77, v12);
    while (1)
    {
      v83 = v104;
      sub_24F920AC8();
      v84 = (*v61)(v83, v110);
      v81 = 1.0;
      if (v84 != v108)
      {
        if (v84 == v103)
        {
          v80 = 0x404E000000000000;
LABEL_88:
          v81 = *&v80;
          goto LABEL_89;
        }

        if (v84 == v102)
        {
          v80 = 0x40AC200000000000;
          goto LABEL_88;
        }

        if (v84 == v101)
        {
          v80 = 0x40F5180000000000;
          goto LABEL_88;
        }

        if (v84 == v96)
        {
          v80 = 0x4122750000000000;
          goto LABEL_88;
        }

        if (v84 == v90)
        {
          v80 = 0x4143C68000000000;
          goto LABEL_88;
        }

        if (v84 == v88)
        {
          v80 = 0x417E133800000000;
          goto LABEL_88;
        }

        (*v87)(v104, v110);
      }

LABEL_89:
      v82 = sub_24F920AD8();
      (*v62)(v14, v12);
      v79 = v79 + v81 * v82;
      v77 += v107;
      if (!--v76)
      {

        goto LABEL_106;
      }

      v106(v14, v77, v12);
    }
  }

  v32 = v24;
  v33 = v23;
  if (v22 != v23 || &v23[8 * v28] <= v22)
  {
    memmove(v22, v23, 8 * v28);
    v22 = v99;
  }

  v100 = &v22[8 * v28];
  if (v27 >= 8)
  {
    v34 = v32;
    if (v32 < v91)
    {
      v109 = v98 + 16;
      v35 = (v107 + 88);
      v108 = *MEMORY[0x277D0D160];
      LODWORD(v105) = *MEMORY[0x277D0D158];
      LODWORD(v104) = *MEMORY[0x277D0D138];
      v101 = *MEMORY[0x277D0D130];
      v96 = *MEMORY[0x277D0D140];
      LODWORD(v92) = *MEMORY[0x277D0D150];
      v89 = (v107 + 8);
      v36 = (v98 + 8);
      v90 = *MEMORY[0x277D0D148];
      while (1)
      {
        v94 = v34;
        v95 = v33;
        v37 = *v34;
        v99 = v22;
        v38 = *(v37 + 2);
        v97 = *v22;
        v93 = v37;
        if (v38)
        {
          v39 = &v37[(*(v98 + 80) + 32) & ~*(v98 + 80)];
          v40 = *(v98 + 72);
          v106 = *(v98 + 16);
          v107 = v40;

          v41 = 0.0;
          while (1)
          {
            v106(v26, v39, v12);
            v45 = v103;
            sub_24F920AC8();
            v46 = (*v35)(v45, v110);
            v43 = 1.0;
            if (v46 != v108)
            {
              if (v46 == v105)
              {
                v42 = 0x404E000000000000;
              }

              else if (v46 == v104)
              {
                v42 = 0x40AC200000000000;
              }

              else if (v46 == v101)
              {
                v42 = 0x40F5180000000000;
              }

              else if (v46 == v96)
              {
                v42 = 0x4122750000000000;
              }

              else if (v46 == v92)
              {
                v42 = 0x4143C68000000000;
              }

              else
              {
                if (v46 != v90)
                {
                  (*v89)(v103, v110);
                  goto LABEL_14;
                }

                v42 = 0x417E133800000000;
              }

              v43 = *&v42;
            }

LABEL_14:
            v44 = sub_24F920AD8();
            (*v36)(v26, v12);
            v41 = v41 + v43 * v44;
            v39 += v107;
            if (!--v38)
            {
              goto LABEL_29;
            }
          }
        }

        v41 = 0.0;
LABEL_29:
        v47 = *(v97 + 16);
        if (v47)
        {
          v48 = v97 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
          v49 = *(v98 + 72);
          v106 = *(v98 + 16);
          v107 = v49;
          v50 = 0.0;
          v106(v20, v48, v12);
          while (1)
          {
            v54 = v102;
            sub_24F920AC8();
            v55 = (*v35)(v54, v110);
            v52 = 1.0;
            if (v55 != v108)
            {
              if (v55 == v105)
              {
                v51 = 0x404E000000000000;
LABEL_32:
                v52 = *&v51;
                goto LABEL_33;
              }

              if (v55 == v104)
              {
                v51 = 0x40AC200000000000;
                goto LABEL_32;
              }

              if (v55 == v101)
              {
                v51 = 0x40F5180000000000;
                goto LABEL_32;
              }

              if (v55 == v96)
              {
                v51 = 0x4122750000000000;
                goto LABEL_32;
              }

              if (v55 == v92)
              {
                v51 = 0x4143C68000000000;
                goto LABEL_32;
              }

              if (v55 == v90)
              {
                v51 = 0x417E133800000000;
                goto LABEL_32;
              }

              (*v89)(v102, v110);
            }

LABEL_33:
            v53 = sub_24F920AD8();
            (*v36)(v20, v12);
            v50 = v50 + v52 * v53;
            v48 += v107;
            if (!--v47)
            {

              goto LABEL_50;
            }

            v106(v20, v48, v12);
          }
        }

        v50 = 0.0;
LABEL_50:
        v56 = v91;
        v22 = v99;
        v34 = v94;
        v57 = v95;
        if (v41 >= v50)
        {
          break;
        }

        v58 = v94;
        v34 = v94 + 8;
        if (v95 != v94)
        {
          goto LABEL_54;
        }

LABEL_55:
        v33 = v57 + 8;
        if (v22 >= v100 || v34 >= v56)
        {
          goto LABEL_57;
        }
      }

      v58 = v99;
      v22 = v99 + 8;
      if (v95 == v99)
      {
        goto LABEL_55;
      }

LABEL_54:
      *v95 = *v58;
      goto LABEL_55;
    }
  }

LABEL_57:
  v59 = v33;
LABEL_115:
  if (v59 != v22 || v59 >= &v22[(v100 - v22 + (v100 - v22 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v59, v22, 8 * ((v100 - v22) / 8));
  }

  return 1;
}

double sub_24EF5B040(uint64_t a1)
{
  v34 = sub_24F920AF8();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F920B08();
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v32 = *(v11 + 56);
    v33 = v12;
    v14 = (v2 + 88);
    v15 = *MEMORY[0x277D0D160];
    v31 = *MEMORY[0x277D0D158];
    v30 = *MEMORY[0x277D0D138];
    v29 = *MEMORY[0x277D0D130];
    v28 = *MEMORY[0x277D0D140];
    v27 = *MEMORY[0x277D0D150];
    v25 = (v2 + 8);
    v16 = (v11 - 8);
    v17 = 0.0;
    v26 = *MEMORY[0x277D0D148];
    while (1)
    {
      v21 = v11;
      v33(v9, v13, v5, v7);
      sub_24F920AC8();
      v22 = (*v14)(v4, v34);
      v19 = 1.0;
      if (v22 != v15)
      {
        if (v22 == v31)
        {
          v18 = 0x404E000000000000;
        }

        else if (v22 == v30)
        {
          v18 = 0x40AC200000000000;
        }

        else if (v22 == v29)
        {
          v18 = 0x40F5180000000000;
        }

        else if (v22 == v28)
        {
          v18 = 0x4122750000000000;
        }

        else if (v22 == v27)
        {
          v18 = 0x4143C68000000000;
        }

        else
        {
          if (v22 != v26)
          {
            (*v25)(v4, v34);
            goto LABEL_5;
          }

          v18 = 0x417E133800000000;
        }

        v19 = *&v18;
      }

LABEL_5:
      v20 = sub_24F920AD8();
      (*v16)(v9, v5);
      v7.n128_f64[0] = v19 * v20;
      v17 = v17 + v7.n128_f64[0];
      v13 += v32;
      --v10;
      v11 = v21;
      if (!v10)
      {
        return v17;
      }
    }
  }

  return 0.0;
}

unint64_t sub_24EF5B368()
{
  result = qword_27F234960;
  if (!qword_27F234960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212A00, &qword_24F9A23B0);
    sub_24EF5B41C(&qword_27F234968, type metadata accessor for ChallengeDefinitionDetail.Trackable, &unk_24F9B41FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234960);
  }

  return result;
}

uint64_t sub_24EF5B41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EF5B484()
{
  result = qword_27F234978;
  if (!qword_27F234978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234970, &unk_24F9B3FC0);
    sub_24EE886F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234978);
  }

  return result;
}

unint64_t sub_24EF5B508()
{
  result = qword_27F21BD38;
  if (!qword_27F21BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BD30, &unk_24F9537D0);
    sub_24E776EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BD38);
  }

  return result;
}

unint64_t sub_24EF5B58C()
{
  result = qword_27F21BD68;
  if (!qword_27F21BD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BD60, &unk_24F9537F0);
    sub_24EA14AE4(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D22578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BD68);
  }

  return result;
}

unint64_t sub_24EF5B630()
{
  result = qword_27F234990;
  if (!qword_27F234990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234990);
  }

  return result;
}

unint64_t sub_24EF5B684()
{
  result = qword_27F2349A0;
  if (!qword_27F2349A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234998, &qword_24F9B4018);
    sub_24EE88870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2349A0);
  }

  return result;
}

unint64_t sub_24EF5B708()
{
  result = qword_27F2349B0;
  if (!qword_27F2349B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2349A8, &qword_24F9EF140);
    sub_24EF5B41C(&qword_27F2325B8, MEMORY[0x277D0D0F8], MEMORY[0x277D0D110]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2349B0);
  }

  return result;
}

uint64_t sub_24EF5B7D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[17];

  return v16(v17, a2, v15);
}

uint64_t sub_24EF5B9C8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[17];

  return v16(v17, a2, a2, v15);
}

void sub_24EF5BBAC(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24EF5BE0C(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24EF5BE70(319, &qword_27F2349D0, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24EF5BE0C(319, &qword_27F2349D8, MEMORY[0x277D0D0F8], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24EF5BE0C(319, &qword_27F2349E0, type metadata accessor for ChallengeDefinitionDetail.Trackable, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24EF5BE70(319, &qword_27F2349E8, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24EF5BE0C(319, &qword_27F2349F0, MEMORY[0x277D0D0F8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24EF5BE0C(319, &qword_27F21E390, MEMORY[0x277D0CF00], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
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

void sub_24EF5BE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EF5BE70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2325A0, &unk_24F9B4020);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24EF5BEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2349F8, &qword_24F9B40B8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EF5BF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2349F8, &qword_24F9B40B8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_24EF5BFEC(uint64_t a1)
{
  sub_24EF5C0A4();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for Leaderboard(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_24EF5C0A4()
{
  if (!qword_27F234A10)
  {
    v0 = type metadata accessor for Leaderboard(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F234A10);
    }
  }
}

unint64_t sub_24EF5C0F0()
{
  result = qword_27F234A18;
  if (!qword_27F234A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A18);
  }

  return result;
}

unint64_t sub_24EF5C148()
{
  result = qword_27F234A20;
  if (!qword_27F234A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A20);
  }

  return result;
}

unint64_t sub_24EF5C1A0()
{
  result = qword_27F234A28;
  if (!qword_27F234A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A28);
  }

  return result;
}

uint64_t sub_24EF5C1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF5C25C()
{
  result = qword_27F234A38;
  if (!qword_27F234A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2307E8, &qword_24F9A2558);
    sub_24EF5B41C(&qword_27F21B450, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A38);
  }

  return result;
}

uint64_t sub_24EF5C310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24EF5C370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v48 - v6);
  v8 = sub_24F920A88();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v54 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v50 = &v48 - v15;
  if (!*(a1 + 16))
  {
    v18 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v16 = sub_24E76D644(0x626179616C706572, 0xEA0000000000656CLL);
  if (v17)
  {
    v18 = *(*(a1 + 56) + 8 * v16);

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  v19 = sub_24E76D644(0x6C7065722D6E6F6ELL, 0xEE00656C62617961);
  if (v20)
  {
    v55 = *(*(a1 + 56) + 8 * v19);

    goto LABEL_10;
  }

LABEL_9:
  v55 = MEMORY[0x277D84F90];
LABEL_10:

  v22 = *(v18 + 16);
  v52 = v4;
  v53 = v22;
  if (v22)
  {
    v23 = 0;
    v24 = (v56 + 48);
    v25 = (v56 + 32);
    v26 = (v18 + 40);
    v57 = MEMORY[0x277D84F90];
    while (v23 < *(v18 + 16))
    {
      v27 = v18;
      v28 = *(v26 - 1);
      v29 = *v26;

      sub_24EF54554(v28, v29, v7);

      if ((*v24)(v7, 1, v8) == 1)
      {
        result = sub_24E601704(v7, &qword_27F2198F8, &unk_24F94CFA0);
      }

      else
      {
        v30 = *v25;
        v31 = v50;
        (*v25)(v50, v7, v8);
        v30(v54, v31, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_24E61852C(0, v57[2] + 1, 1, v57);
        }

        v33 = v57[2];
        v32 = v57[3];
        if (v33 >= v32 >> 1)
        {
          v57 = sub_24E61852C((v32 > 1), v33 + 1, 1, v57);
        }

        v34 = v56;
        v35 = v57;
        v57[2] = v33 + 1;
        result = (v30)(v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v54, v8);
        v4 = v52;
      }

      ++v23;
      v26 += 2;
      v18 = v27;
      if (v53 == v23)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
LABEL_22:

    result = v55;
    v36 = v55[2];
    if (!v36)
    {
LABEL_33:

      return v57;
    }

    v37 = 0;
    v38 = (v56 + 48);
    v39 = (v56 + 32);
    v40 = v55 + 5;
    v41 = MEMORY[0x277D84F90];
    while (v37 < result[2])
    {
      v43 = *(v40 - 1);
      v42 = *v40;

      sub_24EF54554(v43, v42, v4);

      if ((*v38)(v4, 1, v8) == 1)
      {
        sub_24E601704(v4, &qword_27F2198F8, &unk_24F94CFA0);
      }

      else
      {
        v44 = *v39;
        v45 = v49;
        (*v39)(v49, v4, v8);
        v44(v51, v45, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_24E61852C(0, *(v41 + 2) + 1, 1, v41);
        }

        v47 = *(v41 + 2);
        v46 = *(v41 + 3);
        if (v47 >= v46 >> 1)
        {
          v41 = sub_24E61852C((v46 > 1), v47 + 1, 1, v41);
        }

        *(v41 + 2) = v47 + 1;
        v44(&v41[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v47], v51, v8);
        v4 = v52;
      }

      ++v37;
      v40 += 2;
      result = v55;
      if (v36 == v37)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF5C904(uint64_t a1)
{
  v2 = sub_24F920A88();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D0D0E8])
  {
    (*(v3 + 96))(v6, v2);
    return _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000025, 0x800000024FA64CA0, *v6);
  }

  else if (v7 == *MEMORY[0x277D0D0F0])
  {
    v9._countAndFlagsBits = 0xD000000000000027;
    v9._object = 0x800000024FA64CD0;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_24EF5CA94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7669686372417369 && a2 == 0xEA00000000006465 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461657065527369 && a2 == 0xEC000000656C6261 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C7552656D6974 && a2 == 0xEF736E6F6974704FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA64BD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA64BF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C62616B63617274 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024FA64C10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA64C40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA64C60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x53657361656C6572 && a2 == 0xEC00000065746174)
  {

    return 13;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_24EF5CF0C()
{
  result = qword_27F234A50;
  if (!qword_27F234A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A50);
  }

  return result;
}

unint64_t sub_24EF5CF60()
{
  result = qword_27F234A58;
  if (!qword_27F234A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A58);
  }

  return result;
}

uint64_t sub_24EF5CFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF5D040()
{
  result = qword_27F234A78;
  if (!qword_27F234A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A78);
  }

  return result;
}

unint64_t sub_24EF5D098()
{
  result = qword_27F234A80;
  if (!qword_27F234A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A80);
  }

  return result;
}

unint64_t sub_24EF5D0F0()
{
  result = qword_27F234A88;
  if (!qword_27F234A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A88);
  }

  return result;
}

unint64_t sub_24EF5D148()
{
  result = qword_27F234A90;
  if (!qword_27F234A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A90);
  }

  return result;
}

unint64_t sub_24EF5D1A0()
{
  result = qword_27F234A98;
  if (!qword_27F234A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234A98);
  }

  return result;
}

unint64_t sub_24EF5D1F8()
{
  result = qword_27F234AA0;
  if (!qword_27F234AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AA0);
  }

  return result;
}

uint64_t sub_24EF5D250()
{
  swift_getKeyPath();
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
  sub_24F91FD88();

  return *(v0 + 16);
}

void sub_24EF5D2F0(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
    sub_24F91FD78();
  }
}

uint64_t sub_24EF5D400@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry;
  swift_beginAccess();
  return sub_24E798408(v5 + v3, a1);
}

uint64_t sub_24EF5D4C8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry;
  swift_beginAccess();
  sub_24EF5E20C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24EF5D534()
{
  v1 = v0;
  v2 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for LeaderboardEntry(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820, &unk_24F9567F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  swift_getKeyPath();
  v21 = v0;
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry;
  swift_beginAccess();
  sub_24E798408(v1 + v12, v11);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_24E798478(v11);
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    sub_24EF5E300(v11, v8, type metadata accessor for LeaderboardEntry);
    sub_24E798478(v11);
    sub_24EF5E300(&v8[*(v5 + 20)], v4, type metadata accessor for Player);
    sub_24EF5E368(v8, type metadata accessor for LeaderboardEntry);
    v14 = *v4;
    v15 = v4[1];

    sub_24EF5E368(v4, type metadata accessor for Player);
    v13 = sub_24F92B098();
  }

  v16 = [objc_opt_self() availableForPlayerID_];

  if ((v16 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for LocalPlayerProvider(0);
    sub_24F928F28();
    v17 = v20[4];
    swift_getKeyPath();
    v20[1] = v17;
    sub_24EF5E2B8(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v18 = (v17 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
    swift_beginAccess();
    v14 = *v18;

    return v14;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  return v14;
}

double sub_24EF5D8D4(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
    sub_24F91FD78();
  }

  return result;
}

void sub_24EF5D9F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
    sub_24F91FD78();
  }

  else
  {
    *(a1 + 16) = 0;
  }
}

void sub_24EF5DB0C()
{
  v1 = type metadata accessor for LeaderboardEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24EF5D534();
  v7 = v6;
  v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager_visibilityTracker);
  swift_getKeyPath();
  v15[1] = v8;
  sub_24EF5E2B8(&qword_27F217F20, type metadata accessor for LeaderboardEntriesVisibilityTracker, &unk_24F947834);
  sub_24F91FD88();

  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v9 + 16);

  v11 = 0;
  while (1)
  {
    if (v10 == v11)
    {
      goto LABEL_11;
    }

    if (v11 >= *(v9 + 16))
    {
      break;
    }

    sub_24EF5E300(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v4, type metadata accessor for LeaderboardEntry);
    v12 = &v4[*(v1 + 20)];
    if (*v12 == v5 && *(v12 + 1) == v7)
    {
      sub_24EF5E368(v4, type metadata accessor for LeaderboardEntry);
LABEL_11:

      return;
    }

    ++v11;
    v14 = sub_24F92CE08();
    sub_24EF5E368(v4, type metadata accessor for LeaderboardEntry);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24EF5DD4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820, &unk_24F9567F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v8 - 2) = v0;
    *(&v8 - 8) = 0;
    v9 = v0;
    sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
    sub_24F91FD78();
  }

  else
  {
    *(v0 + 16) = 0;
  }

  v5 = type metadata accessor for LeaderboardEntry(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_getKeyPath();
  MEMORY[0x28223BE20](v6);
  *(&v8 - 2) = v0;
  *(&v8 - 1) = v3;
  v9 = v0;
  sub_24EF5E2B8(&qword_27F234AE0, type metadata accessor for LeaderboardEntriesStickyPlayerManager, &unk_24F9B4520);
  sub_24F91FD78();

  return sub_24E798478(v3);
}

uint64_t sub_24EF5DFAC()
{
  sub_24E798478(v0 + OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager__localPlayerEntry);

  v1 = OBJC_IVAR____TtC12GameStoreKit37LeaderboardEntriesStickyPlayerManager___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntriesStickyPlayerManager(uint64_t a1)
{
  result = qword_27F234AC8;
  if (!qword_27F234AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF5E0CC(uint64_t a1)
{
  sub_24EF5E1B4(319);
  if (v1 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EF5E1B4(uint64_t a1)
{
  if (!qword_27F234AD8)
  {
    type metadata accessor for LeaderboardEntry(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F234AD8);
    }
  }
}

uint64_t sub_24EF5E20C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820, &unk_24F9567F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF5E2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF5E300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF5E368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SegmentedSearchResultsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SegmentedSearchResultsPage.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *SegmentedSearchResultsPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v37 = a2;
  v34 = *v4;
  v35 = v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36 = a1;
  sub_24F928398();
  v15 = v6;
  v16 = v37;
  (*(v7 + 16))(v9, v37, v15);
  sub_24EF5E7EC();
  v17 = v35;
  v18 = sub_24F92B678();
  v19 = (v11 + 8);
  if (v17)
  {
    (*(v7 + 8))(v16, v15);
    (*v19)(v36, v10);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v7;
    v34 = v15;
    v4[4] = v18;
    v21 = v36;
    sub_24F928398();
    v35 = sub_24F928348();
    v23 = v22;
    v24 = *v19;
    (*v19)(v13, v10);
    if (v23)
    {
      (*(v20 + 8))(v37, v34);
      v24(v21, v10);
    }

    else
    {
      v33 = v4;
      v25 = v4[4];
      if (v25[2])
      {
        v26 = v25[4];
        v31 = v25[5];
        v32 = v26;
        v23 = v25[9];
        v35 = v25[8];
        v30 = v10;
        v27 = *(v20 + 8);

        v27(v37, v34);
        v24(v36, v30);
      }

      else
      {
        (*(v20 + 8))(v37, v34);
        v24(v36, v10);
        v35 = 0;
        v23 = 0;
      }

      v4 = v33;
    }

    v4[2] = v35;
    v4[3] = v23;
  }

  return v4;
}

unint64_t sub_24EF5E7EC()
{
  result = qword_27F234AE8;
  if (!qword_27F234AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AE8);
  }

  return result;
}

uint64_t SegmentedSearchResultsPage.selectedSegmentId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SegmentedSearchResultsPage.deinit()
{

  return v0;
}

uint64_t SegmentedSearchResultsPage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EF5E8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SegmentedSearchResultsPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF5E9AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234B00, qword_24F9B4880);
  result = swift_allocObject();
  *(result + 16) = sub_24EF5E9FC;
  *(result + 24) = 0;
  qword_27F39D0A8 = result;
  return result;
}

void sub_24EF5E9FC(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
LABEL_6:

LABEL_16:
    v21 = 2.0;
    goto LABEL_17;
  }

  v11 = sub_24F92B0D8();
  v13 = v12;
  if (v11 == sub_24F92B0D8() && v13 == v14)
  {
LABEL_15:

    goto LABEL_16;
  }

  v16 = sub_24F92CE08();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = sub_24F92B0D8();
  v19 = v18;
  if (v17 == sub_24F92B0D8() && v19 == v20)
  {
    goto LABEL_14;
  }

  v22 = sub_24F92CE08();

  if (v22)
  {
LABEL_19:

    v21 = 3.0;
    goto LABEL_17;
  }

  v23 = sub_24F92B0D8();
  v25 = v24;
  if (v23 == sub_24F92B0D8() && v25 == v26)
  {
    goto LABEL_14;
  }

  v27 = sub_24F92CE08();

  if (v27)
  {
    goto LABEL_19;
  }

  v28 = sub_24F92B0D8();
  v30 = v29;
  if (v28 == sub_24F92B0D8() && v30 == v31)
  {
LABEL_14:

    v21 = 3.0;
    goto LABEL_17;
  }

  v32 = sub_24F92CE08();

  v21 = 1.0;
  if (v32)
  {
    v21 = 3.0;
  }

LABEL_17:
  *a2 = v21;
}

__n128 LargeLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 208);
  v13 = (a7 + 200);
  v13[12] = *(a1 + 192);
  v13[13] = v12;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v14;
  v15 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v15;
  v16 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v16;
  v17 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v17;
  v18 = *(a1 + 16);
  *(a7 + 200) = *a1;
  *(a7 + 216) = v18;
  v19 = *(a1 + 48);
  *(a7 + 232) = *(a1 + 32);
  *(a7 + 440) = *(a1 + 240);
  *(a7 + 248) = v19;
  sub_24E612C80(a2, a7);
  v20 = *(a3 + 16);
  *(a7 + 40) = *a3;
  *(a7 + 56) = v20;
  *(a7 + 72) = *(a3 + 32);
  sub_24E612C80(a4, a7 + 80);
  sub_24E612C80(a5, a7 + 120);
  result = *a6;
  v22 = *(a6 + 16);
  *(a7 + 160) = *a6;
  *(a7 + 176) = v22;
  *(a7 + 192) = *(a6 + 32);
  return result;
}

uint64_t LargeLockupLayout.Metrics.init(headingSpace:titleSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:bottomSpace:isTextHorizontallyCentered:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_24E612C80(a1, a8);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  sub_24E612C80(a4, a8 + 120);
  sub_24E612C80(a5, a8 + 160);
  result = sub_24E612C80(a6, a8 + 200);
  *(a8 + 240) = a7;
  return result;
}

uint64_t LargeLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v7 = sub_24F9227B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F9227C8();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_24F9225A8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(v6, v31);
  sub_24F922318();
  v21 = sub_24F922348();
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  sub_24F922598();
  sub_24EF5F370(v25, v31);
  v30[3] = v17;
  v30[4] = MEMORY[0x277D22740];
  v30[5] = MEMORY[0x277D22748];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(v18 + 16))(boxed_opaque_existential_1, v20, v17);
  sub_24E8F997C(v31, v29);
  (*(v8 + 104))(v10, *MEMORY[0x277D22820], v7);
  v28[3] = sub_24F922418();
  v28[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_24F922408();
  sub_24F9227A8();
  sub_24F922798();
  (*(v11 + 8))(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_24EF5F370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v7 = sub_24F922868();
  v100 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = sub_24F9227F8();
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = sub_24F922848();
  v11 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v89 = &v87[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v97 = &v87[-v14];
  MEMORY[0x28223BE20](v15);
  v102 = &v87[-v16];
  MEMORY[0x28223BE20](v17);
  v92 = &v87[-v18];
  v19 = sub_24F92CDB8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v87[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_24F922838();
  v24 = MEMORY[0x28223BE20](v23);
  v98 = v26;
  v27 = *(v26 + 104);
  v106 = &v87[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = v28;
  v27(v24);
  if (qword_27F210C88 != -1)
  {
    swift_once();
  }

  v114[0] = qword_27F39D0A8;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v22);
  v30 = v29;
  (*(v20 + 8))(v22, v19);

  sub_24E90E558((v3 + 5), v114);
  v31 = v115;
  if (!v115)
  {
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v114, v115);
  v32 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(v114);
  if ((v32 & 1) == 0)
  {
    sub_24E90E558((v3 + 5), v114);
    v31 = v115;
    if (v115)
    {
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v31 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(v114);
      goto LABEL_9;
    }

LABEL_8:
    sub_24E90ED10(v114);
    goto LABEL_9;
  }

  v31 = 0;
LABEL_9:
  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  if (sub_24F922238())
  {
    v96 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
    v96 = sub_24F9221E8();
  }

  sub_24E90E558((v3 + 20), v114);
  v33 = v115;
  if (!v115)
  {
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(v114, v115);
  v34 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(v114);
  if (v34)
  {
    v33 = 0;
    goto LABEL_18;
  }

  sub_24E90E558((v4 + 20), v114);
  v33 = v115;
  if (v115)
  {
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v33 = sub_24F9221E8();
    __swift_destroy_boxed_opaque_existential_1(v114);
  }

  else
  {
LABEL_17:
    sub_24E90ED10(v114);
  }

LABEL_18:
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v30 < 9.22337204e18)
  {
    v88 = v33;
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
    sub_24F922478();
    sub_24E90E558((v4 + 20), v114);
    if (v115)
    {
      __swift_project_boxed_opaque_existential_1(v114, v115);
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(v114);
    }

    else
    {
      sub_24E90ED10(v114);
    }

    sub_24E90E558((v4 + 5), &v111);
    v35 = MEMORY[0x277D84F90];
    v95 = a2;
    v94 = v9;
    v93 = v7;
    if (v112)
    {
      sub_24E612C80(&v111, v114);
      if (v31)
      {
        v36 = v115;
        v37 = v116;
        v38 = __swift_project_boxed_opaque_existential_1(v114, v115);
        v112 = v36;
        v113 = *(v37 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v111);
        v40.n128_f64[0] = (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);
        *&v108 = v35;
        sub_24E8EF510(v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
        sub_24E8EF568();
        v41 = v103;
        v42 = v104;
        sub_24F92C6A8();
        sub_24F922818();
        (*(v101 + 8))(v41, v42);
        __swift_destroy_boxed_opaque_existential_1(&v111);
        v33 = sub_24E6179D8(0, 1, 1, v35);
        v44 = *(v33 + 2);
        v43 = *(v33 + 3);
        if (v44 >= v43 >> 1)
        {
          v33 = sub_24E6179D8((v43 > 1), v44 + 1, 1, v33);
        }

        *(v33 + 2) = v44 + 1;
        (*(v11 + 32))(&v33[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v44], v92, v105);
        __swift_destroy_boxed_opaque_existential_1(v114);
        v45 = 35;
LABEL_33:
        sub_24E615E00(&v4[v45], v114);
        v46 = v4[13];
        v47 = v4[14];
        v48 = __swift_project_boxed_opaque_existential_1(v4 + 10, v46);
        v112 = v46;
        v113 = *(v47 + 8);
        v49 = __swift_allocate_boxed_opaque_existential_1(&v111);
        v50.n128_f64[0] = (*(*(v46 - 8) + 16))(v49, v48, v46);
        *&v108 = v35;
        v51 = sub_24E8EF510(v50);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
        v53 = sub_24E8EF568();
        v54 = v103;
        v91 = v52;
        v90 = v53;
        v55 = v104;
        v92 = v51;
        sub_24F92C6A8();
        sub_24F922818();
        v9 = *(v101 + 8);
        (v9)(v54, v55);
        __swift_destroy_boxed_opaque_existential_1(&v111);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_34;
        }

        goto LABEL_52;
      }

      __swift_destroy_boxed_opaque_existential_1(v114);
    }

    else
    {
      sub_24E90ED10(&v111);
      if (v31)
      {
        v33 = MEMORY[0x277D84F90];
        v45 = 35;
        goto LABEL_33;
      }
    }

    v33 = MEMORY[0x277D84F90];
    v45 = 30;
    goto LABEL_33;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v33 = sub_24E6179D8(0, *(v33 + 2) + 1, 1, v33);
LABEL_34:
  v57 = *(v33 + 2);
  v56 = *(v33 + 3);
  if (v57 >= v56 >> 1)
  {
    v33 = sub_24E6179D8((v56 > 1), v57 + 1, 1, v33);
  }

  *(v33 + 2) = v57 + 1;
  v58 = v11 + 32;
  v59 = *(v11 + 32);
  v60 = (*(v58 + 48) + 32) & ~*(v58 + 48);
  v61 = *(v58 + 40);
  v62 = v102;
  v102 = v58;
  v59(&v33[v60 + v61 * v57], v62, v105);
  if (v96)
  {
    v64 = v4[18];
    v63 = v4[19];
    v65 = __swift_project_boxed_opaque_existential_1(v4 + 15, v64);
    v112 = v64;
    v113 = *(v63 + 8);
    v66 = __swift_allocate_boxed_opaque_existential_1(&v111);
    (*(*(v64 - 8) + 16))(v66, v65, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_24F93DE60;
    sub_24F9227E8();
    *&v108 = v67;
    v68 = v103;
    v69 = v104;
    sub_24F92C6A8();
    sub_24F922818();
    (v9)(v68, v69);
    __swift_destroy_boxed_opaque_existential_1(&v111);
    v71 = *(v33 + 2);
    v70 = *(v33 + 3);
    if (v71 >= v70 >> 1)
    {
      v33 = sub_24E6179D8((v70 > 1), v71 + 1, 1, v33);
    }

    *(v33 + 2) = v71 + 1;
    v59(&v33[v60 + v71 * v61], v97, v105);
  }

  sub_24E90E558((v4 + 20), &v108);
  if (!v109)
  {
    sub_24E90ED10(&v108);
LABEL_47:
    v80 = v95;
    v81 = v94;
    v82 = v99;
    v83 = v98;
    goto LABEL_48;
  }

  sub_24E612C80(&v108, &v111);
  if ((v88 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v111);
    goto LABEL_47;
  }

  v73 = v112;
  v72 = v113;
  v74 = __swift_project_boxed_opaque_existential_1(&v111, v112);
  v109 = v73;
  v110 = *(v72 + 8);
  v75 = __swift_allocate_boxed_opaque_existential_1(&v108);
  (*(*(v73 - 8) + 16))(v75, v74, v73);
  v107 = MEMORY[0x277D84F90];
  v76 = v103;
  v77 = v104;
  sub_24F92C6A8();
  sub_24F922818();
  (v9)(v76, v77);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  v79 = *(v33 + 2);
  v78 = *(v33 + 3);
  if (v79 >= v78 >> 1)
  {
    v33 = sub_24E6179D8((v78 > 1), v79 + 1, 1, v33);
  }

  v80 = v95;
  v81 = v94;
  v82 = v99;
  v83 = v98;
  *(v33 + 2) = v79 + 1;
  v59(&v33[v60 + v79 * v61], v89, v105);
  __swift_destroy_boxed_opaque_existential_1(&v111);
LABEL_48:
  (*(v100 + 104))(v81, *MEMORY[0x277D22868], v93);
  v112 = sub_24F922418();
  v113 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v111);
  sub_24F922408();
  v84 = sub_24F922888();
  v85 = MEMORY[0x277D22878];
  v80[3] = v84;
  v80[4] = v85;
  v80[5] = MEMORY[0x277D22880];
  __swift_allocate_boxed_opaque_existential_1(v80);
  sub_24F922878();
  __swift_destroy_boxed_opaque_existential_1(v114);
  return (*(v83 + 8))(v106, v82);
}

uint64_t sub_24EF60178(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EF60750();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit17LargeLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_24F9225E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F922618();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92CDB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210C88 != -1)
  {
    swift_once();
  }

  v28[0] = qword_27F39D0A8;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a2, v17);
  (*(v15 + 8))(v17, v14);

  (*(v8 + 104))(v10, *MEMORY[0x277D22788], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85048];
  *(v18 + 16) = xmmword_24F942000;
  v28[3] = v19;
  v28[4] = MEMORY[0x277D225F8];
  *v28 = a3;
  v20 = sub_24F9229A8();
  v21 = MEMORY[0x277D228E0];
  *(v18 + 56) = v20;
  *(v18 + 64) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1, v28);
  *(v18 + 96) = v20;
  *(v18 + 104) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 72));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v28);
  *(v18 + 136) = v20;
  *(v18 + 144) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 112));
  sub_24F9229B8();
  sub_24E615E00(a1 + 120, v28);
  *(v18 + 176) = v20;
  *(v18 + 184) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + 200, v28);
  *(v18 + 216) = v20;
  *(v18 + 224) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 192));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v23 = v22;
  (*(v26 + 8))(v13, v27);
  return v23;
}

unint64_t sub_24EF605D8()
{
  result = qword_27F234AF0;
  if (!qword_27F234AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AF0);
  }

  return result;
}

uint64_t sub_24EF60634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 441))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF6067C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 440) = 0;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 441) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 441) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EF60750()
{
  result = qword_27F234AF8;
  if (!qword_27F234AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234AF8);
  }

  return result;
}

uint64_t sub_24EF607F8@<X0>(uint64_t a2@<X8>)
{
  if (!sub_24F921C08())
  {
    sub_24F926C98();
  }

  result = sub_24F924E28();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_24EF6088C()
{
  result = qword_27F234B08;
  if (!qword_27F234B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F234B10, &qword_24F9B4918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234B08);
  }

  return result;
}

double sub_24EF60910@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B830, &qword_24F98C900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v5 = inited;
  *(inited + 32) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B838, &qword_24F98C908);
  v6 = type metadata accessor for CardLeaderboardView.LayoutMetrics.ChartStyle.BarMark(0);
  v7 = *(*(v6 - 1) + 72);
  v8 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93A400;
  v46 = v8;
  v42 = v9;
  v10 = v9 + v8;
  if (qword_27F210DA8 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39D340;

  v44 = a2;
  v12 = sub_24EFED180(a2 & 1);
  if (qword_27F210DB0 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9234D8();
  v14 = __swift_project_value_buffer(v13, qword_27F39D348);
  *v10 = 0x4053000000000000;
  *(v10 + 8) = v11;
  *(v10 + 16) = xmmword_24F9B4920;
  *(v10 + 32) = v12;
  v41 = v14;
  v15 = *(*(v13 - 8) + 16);
  v15(v10 + v6[9]);
  *(v10 + v6[10]) = 0x4050000000000000;
  v16 = (v10 + v6[11]);
  __asm { FMOV            V1.2D, #6.0 }

  v49 = _Q1;
  *v16 = xmmword_24F9B4930;
  v16[1] = _Q1;
  v22 = qword_27F210DB8;
  v43 = v11;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27F39D360;
  v24 = qword_27F210DC0;
  swift_retain_n();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F39D368;
  v26 = qword_27F210DC8;
  swift_retain_n();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v10 + v7;
  v40 = __swift_project_value_buffer(v13, qword_27F39D370);
  *v27 = 0x4050800000000000;
  *(v27 + 8) = v23;
  *(v27 + 16) = xmmword_24F9B4940;
  *(v27 + 32) = v25;
  v28 = v15;
  v39 = v13;
  (v15)(v10 + v7 + v6[9], v40, v13);
  *(v27 + v6[10]) = 0x404B000000000000;
  v29 = (v10 + v7 + v6[11]);
  *v29 = xmmword_24F9B4930;
  v29[1] = v49;
  *(v5 + 40) = v42;
  *(v5 + 48) = xmmword_24F9B4950;
  *(v5 + 64) = 0x4028000000000000;
  *(v5 + 72) = 3;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_24F9479A0;
  v30 = v45 + v46;

  v31 = sub_24EFED180(v44 & 1);
  *v30 = 0x4050000000000000;
  *(v30 + 8) = v43;
  *(v30 + 16) = xmmword_24F9B4960;
  *(v30 + 32) = v31;
  v28(v45 + v46 + v6[9], v41, v13);
  *(v30 + v6[10]) = 0x404A000000000000;
  v32 = (v45 + v46 + v6[11]);
  *v32 = xmmword_24F9B4930;
  v32[1] = v49;
  v33 = v45 + v46 + v7;
  *v33 = 0x404C000000000000;
  *(v33 + 8) = v23;
  *(v33 + 16) = xmmword_24F9B4970;
  *(v33 + 32) = v25;
  v28(v33 + v6[9], v40, v39);
  *(v33 + v6[10]) = 0x4046000000000000;
  v34 = (v33 + v6[11]);
  *v34 = xmmword_24F9B4930;
  v34[1] = v49;
  v35 = v45 + v46 + 2 * v7;
  *v35 = 0x404C000000000000;
  *(v35 + 8) = v23;
  *(v35 + 16) = xmmword_24F9B4970;
  *(v35 + 32) = v25;
  v28(v35 + v6[9], v40, v39);
  *(v35 + v6[10]) = 0x4046000000000000;
  v36 = (v35 + v6[11]);
  *v36 = xmmword_24F9B4930;
  v36[1] = v49;
  *(v5 + 80) = v45;
  *(v5 + 88) = xmmword_24F9B4980;
  *(v5 + 104) = 0x4028000000000000;
  v37 = sub_24E60E620(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B840, &unk_24F98C910);
  swift_arrayDestroy();
  *a3 = v37;
  *(a3 + 8) = 3;
  *(a3 + 16) = 1;
  *(a3 + 17) = a1 & 1;
  *(a3 + 18) = v50;
  *(a3 + 22) = v51;
  *(a3 + 24) = xmmword_24F9B4990;
  result = 24.0;
  *(a3 + 40) = xmmword_24F9B49A0;
  *(a3 + 56) = 0;
  return result;
}

void sub_24EF60F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    if (a1)
    {
      v8 = v7;
      type metadata accessor for PlaybackCoordinator();
      sub_24F928FD8();
      v9 = a1;
      sub_24F92A758();
      v10 = v9;
      a5(v9, v8);
    }
  }
}

void sub_24EF61014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t))
{
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    if (a1)
    {
      v10 = v9;
      type metadata accessor for PlaybackCoordinator();
      sub_24F928FD8();
      v11 = a1;
      sub_24F92A758();
      v12 = v11;
      a7(v11, v10);
    }
  }
}

uint64_t Conditional<>.value(in:rounded:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v12 = a1;
  (*(*v10 + 104))(&v13, &v12, v7);
  (*(v6 + 16))(v9, a2, v5);
  result = (*(v6 + 88))(v9, v5);
  if (result != *MEMORY[0x277D84678] && result != *MEMORY[0x277D84670] && result != *MEMORY[0x277D84680] && result != *MEMORY[0x277D84688] && result != *MEMORY[0x277D84660] && result != *MEMORY[0x277D84668])
  {
    sub_24F92BA48();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_24EF61388()
{
  if (*(v0 + 16))
  {

    sub_24F92C888();
    MEMORY[0x253050C20](0x79747265706F7270, 0xEA0000000000203ALL);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F234B58, &qword_24F9B4B98);
    sub_24F92CA38();
    MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA64ED0);
    v1 = sub_24F92BA38();
    MEMORY[0x253050C20](v1);

    MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA64EF0);
    v2 = sub_24F92BA38();
    MEMORY[0x253050C20](v2);

    MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
    sub_24F922118();
    sub_24F92CA38();
  }

  else
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0x746E6174736E6F63, 0xEA0000000000203ALL);
    v3 = sub_24F92BA38();
    MEMORY[0x253050C20](v3);

    MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
    sub_24F922118();
    sub_24F92CA38();
  }

  return 0;
}

double sub_24EF615C8(void *a1, double a2)
{
  if (*(v2 + 16))
  {
    v11[0] = a1;

    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();
  }

  v4 = qword_27F234B20;
  v5 = [a1 traitCollection];
  v6 = sub_24F922118();
  v11[3] = v6;
  v11[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v2 + v4, v6);
  sub_24F91FE48();
  v9 = v8;

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_24EF616F4()
{

  v1 = qword_27F234B20;
  v2 = sub_24F922118();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24EF61764()
{

  v1 = qword_27F234B20;
  v2 = sub_24F922118();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_24EF61848(uint64_t a1)
{
  sub_24F92C888();

  v3 = (*(*a1 + 96))(v2);
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0xD000000000000029;
}

void Conditional<>.languageAwareOutsets(compatibleWith:)(uint64_t a1)
{
  if (**v1 == &off_281C7E878)
  {

    v2 = sub_24F922108();
    sub_24F92C278();
  }
}

double sub_24EF61A28(uint64_t a1)
{
  v2 = *v1;
  v5 = a1;
  v3 = *(*v2 + 104);

  v3(&v6, &v5);

  return v6;
}

void sub_24EF61A9C(uint64_t a1)
{
  if (**v1 == &off_281C7E878)
  {

    v2 = sub_24F922108();
    sub_24F92C278();
  }
}

uint64_t sub_24EF61B70()
{
  v1 = *v0;
  strcpy(v4, "Conditional(");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v2 = (*(*v1 + 96))();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v4[0];
}

id sub_24EF61C18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

uint64_t sub_24EF61C54@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24F92BF78();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata accessor for DimensionExpression(uint64_t a1)
{
  result = qword_27F234B40;
  if (!qword_27F234B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF61CDC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for DimensionExpression(0);
  v10 = swift_allocObject();
  *(v10 + 16) = KeyPath;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  v11 = qword_27F234B20;
  v12 = sub_24F922118();
  result = (*(*(v12 - 8) + 32))(v10 + v11, a1, v12);
  *a3 = v10;
  return result;
}

uint64_t sub_24EF61D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF98();
  *a1 = result & 1;
  return result;
}

uint64_t Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_24F922118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + v14 + 8) & ~v12;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  v17 = *(v11 + 32);
  v17(v16 + v13, a1, v10);
  *(v16 + v14) = a5;
  v17(v16 + v15, a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234B00, qword_24F9B4880);
  result = swift_allocObject();
  *(result + 16) = sub_24EF6211C;
  *(result + 24) = v16;
  *a3 = result;
  return result;
}

uint64_t sub_24EF61F14@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v9 = [*a1 traitCollection];
  if (sub_24F92BF78())
  {
    v10 = sub_24F922118();
    v18 = v10;
    v19 = MEMORY[0x277D22628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a2, v10);
  }

  else
  {
    v12 = sub_24F922118();
    v18 = v12;
    v19 = MEMORY[0x277D22628];
    v13 = __swift_allocate_boxed_opaque_existential_1(v17);
    (*(*(v12 - 8) + 16))(v13, a3, v12);
  }

  sub_24F91FE48();
  v15 = v14;

  result = __swift_destroy_boxed_opaque_existential_1(v17);
  *a4 = v15;
  return result;
}

uint64_t sub_24EF62054()
{
  v1 = sub_24F922118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (v4 + ((*(v2 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_24EF6211C@<X0>(id *a1@<X0>, double *a2@<X8>)
{
  v5 = *(sub_24F922118() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = v2 + ((v6 + ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);

  return sub_24EF61F14(a1, v2 + v7, v8, a2);
}

uint64_t Conditional<>.init(roundedCornersConstant:nonRoundedCornersConstant:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  HasRoundedCorners = JUScreenClassHasRoundedCorners(a1, a2);
  type metadata accessor for DimensionExpression(0);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = 0;
  if (HasRoundedCorners)
  {
    v12 = a4;
  }

  else
  {
    v12 = a5;
  }

  *(v10 + 24) = v12;
  *(v10 + 32) = v12;
  v13 = qword_27F234B20;
  v14 = sub_24F922118();
  result = (*(*(v14 - 8) + 32))(v11 + v13, a1, v14);
  *a3 = v11;
  return result;
}

uint64_t Conditional<>.init(whenOneOf:useConstant:otherwiseUse:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  Main = JUScreenClassGetMain(a1, a2);
  v11 = sub_24F4D4420(Main, a1);

  type metadata accessor for DimensionExpression(0);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = 0;
  if (v11)
  {
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  *(v12 + 24) = v14;
  *(v12 + 32) = v14;
  v15 = qword_27F234B20;
  v16 = sub_24F922118();
  result = (*(*(v16 - 8) + 32))(v13 + v15, a2, v16);
  *a3 = v13;
  return result;
}

uint64_t Conditional<>.anyDimension.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for AnyDimensionWrapper;
  a1[4] = sub_24EF623A8();
  *a1 = v3;
}

unint64_t sub_24EF623A8()
{
  result = qword_27F234B30;
  if (!qword_27F234B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234B30);
  }

  return result;
}

uint64_t sub_24EF623FC(uint64_t a1)
{
  result = sub_24F922118();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall String.isValid(expansionFor:)(Swift::String_optional expansionFor)
{
  if (!expansionFor.value._object)
  {
    return 0;
  }

  object = expansionFor.value._object;
  countAndFlagsBits = expansionFor.value._countAndFlagsBits;
  v5 = HIBYTE(expansionFor.value._object) & 0xF;
  if ((expansionFor.value._object & 0x2000000000000000) == 0)
  {
    v5 = expansionFor.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v1;
    v7 = v2;
    sub_24F92B198();
    sub_24F92B198();
    v8 = sub_24F92B358();

    if ((v8 & 1) == 0 || countAndFlagsBits == v6 && v7 == object)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = sub_24F92CE08() ^ 1;
    }
  }

  return v5 & 1;
}

Swift::Bool __swiftcall String.isValid(trailingExtensionFor:)(Swift::String trailingExtensionFor)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_24F92B198();
  sub_24F92B198();
  v4 = sub_24F92B368();

  return v4 & 1;
}

uint64_t sub_24EF62658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_24F92B198();
  v6 = sub_24F92B198();
  LOBYTE(a5) = a5(v6);

  return a5 & 1;
}

uint64_t static String.trailingExtension(expanding:into:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  sub_24F92B198();
  sub_24F92B198();
  v9 = sub_24F92B358();

  if ((v9 & 1) == 0 || a1 == a3 && a4 == a2)
  {
    return 0;
  }

  if (sub_24F92CE08())
  {
    return 0;
  }

  v11 = sub_24F92B228();
  v12 = sub_24EF62944(v11, a3, a4);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x253050B50](v12, v14, v16, v18);

  return v19;
}

uint64_t static String.prefixText(undoingExpansionOf:with:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    goto LABEL_7;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 && (sub_24F92B198(), sub_24F92B198(), v7 = sub_24F92B368(), , , (v7 & 1) != 0))
  {
    v8 = sub_24F92B228();

    v9 = sub_24EF629F4(v8, a1, a2);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    a1 = MEMORY[0x253050B50](v9, v11, v13, v15);
  }

  else
  {
LABEL_7:
  }

  return a1;
}

unint64_t sub_24EF62944(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24F92B258();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24F92B3D8();
}