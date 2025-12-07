uint64_t sub_24EBB43EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for InAppPurchaseShowcase();
  v7 = swift_allocObject();
  result = InAppPurchaseShowcase.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBB4464@<X0>(void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = type metadata accessor for InAppPurchaseShowcase();
  *a2 = v4;
}

unint64_t sub_24EBB44E0()
{
  result = qword_27F22AA88;
  if (!qword_27F22AA88)
  {
    type metadata accessor for InAppPurchaseShowcase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA88);
  }

  return result;
}

uint64_t ImpressionsAppendixFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImpressionsAppendixFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ImpressionsAppendixFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
  __swift_project_value_buffer(v2, qword_27F22E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
  sub_24F929AC8();
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v4 = (*(v9 + 16))(ObjectType, v9);
    if (*(v4 + 16))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      v8 = v4;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24EBB4AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EBB4B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ImpressionsAppendixFieldsProvider(uint64_t a1)
{
  result = qword_27F22AA90;
  if (!qword_27F22AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.init(arcadeSubscriptionManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider(0) + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  result = (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ArcadeSubscriptionFieldsProvider(uint64_t a1)
{
  result = qword_27F22AAA0;
  if (!qword_27F22AAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider(0) + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscriptionFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  v9 = *(v3 + 8);
  v5 = sub_24EB6CE50(*v3, v9);
  v6 = ArcadeState.stringValue.getter(v5);
  v10[3] = MEMORY[0x277D837D0];
  v10[0] = v6;
  v10[1] = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  sub_24EB6CE70(v4, v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_24EBB4EA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EBB4F60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EBB5004(uint64_t a1)
{
  result = type metadata accessor for ArcadeSubscriptionManager();
  if (v2 <= 0x3F)
  {
    result = sub_24F92A2D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AnnotationItem.TextPair.leadingText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnnotationItem.TextPair.trailingText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *AnnotationItem.TextPair.__allocating_init(leadingText:trailingText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *AnnotationItem.TextPair.init(leadingText:trailingText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t AnnotationItem.TextPair.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnnotationItem.TextPair.init(deserializing:using:)(a1, a2);
  return v4;
}

void *AnnotationItem.TextPair.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v43 = a2;
  v6 = *v2;
  v41 = v3;
  v42 = v6;
  v44 = sub_24F928388();
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  sub_24F9282B8();
  v16 = sub_24F92AC28();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0, &qword_24F965EC0);
LABEL_5:
    v19 = v44;
LABEL_6:
    v20 = sub_24F92AC38();
    sub_24EBB6664(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v21 = MEMORY[0x277D84F90];
    *v22 = v42;
    v22[1] = v21;
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D22538], v20);
    swift_willThrow();
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v43, v23);
    (*(v7 + 8))(a1, v19);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v40 = a1;
  v18 = sub_24F92AC08();
  (*(v17 + 8))(v15, v16);
  if (*(v18 + 16) < 2uLL)
  {

    a1 = v40;
    goto LABEL_5;
  }

  v25 = *(v7 + 16);
  v37 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v38 = v25;
  v26 = v44;
  (v25)(v12);
  v27 = sub_24F928348();
  v28 = v12;
  v19 = v26;
  v30 = v29;
  v39 = *(v7 + 8);
  result = v39(v28, v19);
  if (!v30)
  {
LABEL_12:

    a1 = v40;
    goto LABEL_6;
  }

  v36 = v27;
  if (*(v18 + 16) >= 2uLL)
  {
    v38(v9, v37 + *(v7 + 72), v19);

    v31 = sub_24F928348();
    v33 = v32;
    v34 = v39;
    v39(v9, v19);
    if (v33)
    {
      v35 = sub_24F9285B8();
      (*(*(v35 - 8) + 8))(v43, v35);
      v34(v40, v19);
      v4[2] = v36;
      v4[3] = v30;
      v4[4] = v31;
      v4[5] = v33;
      return v4;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static AnnotationItem.TextPair.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_24F92CE08(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

uint64_t AnnotationItem.TextPair.hash(into:)(uint64_t a1)
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t AnnotationItem.TextPair.deinit()
{

  return v0;
}

uint64_t AnnotationItem.TextPair.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AnnotationItem.TextPair.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB57E0()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB5834(uint64_t a1)
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t sub_24EBB5878()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB58C8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_24F92CE08(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

uint64_t AnnotationItem.heading.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AnnotationItem.text.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AnnotationItem.listText.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AnnotationItem.__allocating_init(id:headingArtworkItems:heading:text:listText:textPairs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v14 = a9;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  sub_24E65E064(a1, &v37);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v19 + 80) = v37;
    *(v19 + 96) = v20;
    *(v19 + 112) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v30 = a9;
    v31 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v35 = v24;
    v36 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v14 = v30;
    a5 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v28 = v33;
  *(v19 + 16) = v32;
  *(v19 + 24) = v28;
  *(v19 + 32) = v34;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = v14;
  return v19;
}

uint64_t AnnotationItem.init(id:headingArtworkItems:heading:text:listText:textPairs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v16 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v31 = a9;
    v32 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v16 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v28 = v42;
  *(v10 + 80) = v41;
  *(v10 + 96) = v28;
  *(v10 + 112) = v43;
  v29 = v34;
  *(v10 + 16) = v33;
  *(v10 + 24) = v29;
  *(v10 + 32) = v35;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 64) = a8;
  *(v10 + 72) = v16;
  return v10;
}

uint64_t AnnotationItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnnotationItem.init(deserializing:using:)(a1, a2);
  return v4;
}

void *AnnotationItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_24F9285B8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F928388();
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v51 = v18;
    v52 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v10, v7);
    v51 = v20;
    v52 = v23;
  }

  sub_24F92C7F8();
  v24 = *(v11 + 8);
  v24(v16, v56);
  v46 = v24;
  v25 = v54;
  *(v3 + 80) = v53;
  *(v3 + 96) = v25;
  *(v3 + 112) = v55;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v29 = v56;
  (v24)(v13);
  *(v3 + 40) = v26;
  *(v3 + 48) = v28;
  sub_24F928398();
  v45 = *(v48 + 16);
  v45(v47, v50, v49);
  type metadata accessor for Artwork(0);
  sub_24EBB6664(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(v3 + 16) = sub_24F92B698();
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v33 = v29;
  v34 = v29;
  v35 = v3;
  v36 = v46;
  v46(v13, v34);
  v35[3] = v30;
  v35[4] = v32;
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v36(v13, v33);
  v35[7] = v37;
  v35[8] = v39;
  sub_24F928398();
  v41 = v49;
  v40 = v50;
  v45(v47, v50, v49);
  type metadata accessor for AnnotationItem.TextPair();
  sub_24EBB6664(&qword_27F22AAB0, v42, type metadata accessor for AnnotationItem.TextPair, &protocol conformance descriptor for AnnotationItem.TextPair);
  v43 = sub_24F92B698();
  (*(v48 + 8))(v40, v41);
  v46(v17, v56);
  v35[9] = v43;
  return v35;
}

uint64_t AnnotationItem.deinit()
{

  sub_24E6585F8(v0 + 80);
  return v0;
}

uint64_t AnnotationItem.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t AnnotationItem.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB6444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t sub_24EBB64B4()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB6524()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB6664(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_24EBB677C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9896A0;
  *(inited + 32) = 0x726579616C70;
  v5 = 0xE600000000000000;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0x65736143657375;
  *(inited + 96) = 0xE700000000000000;
  v7 = type metadata accessor for ImpedimentFlowDestinationsIntent(0);
  v8 = v7;
  v26 = a1;
  if (*(v2 + v7[5]))
  {
    if (*(v2 + v7[5]) == 1)
    {
      v5 = 0xE700000000000000;
      v9 = 0x736572746C6F6DLL;
    }

    else
    {
      v5 = 0xED000072656E6E61;
      v9 = 0x42656D6F636C6577;
    }
  }

  else
  {
    v9 = 0x656D61476E69;
  }

  v10 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v10;
  *(inited + 104) = v9;
  *(inited + 112) = v5;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA541F0;
  v11 = *(v2 + v7[6]);
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v13;
  *(inited + 160) = v11;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000024FA54210;
  v14 = *(v2 + v7[7]);
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v14;
  *(inited + 256) = 0xD000000000000018;
  *(inited + 264) = 0x800000024FA54230;
  v15 = *(v2 + v7[8]);
  *(inited + 296) = v12;
  *(inited + 304) = v13;
  *(inited + 272) = v15;
  *(inited + 312) = 0xD000000000000023;
  *(inited + 320) = 0x800000024FA55A00;
  v16 = *(v2 + v7[9]);
  v17 = MEMORY[0x277D83B88];
  *(inited + 352) = MEMORY[0x277D83B88];
  v18 = sub_24E65901C();
  *(inited + 328) = v16;
  *(inited + 360) = v18;
  *(inited + 368) = 0xD00000000000001ALL;
  *(inited + 376) = 0x800000024FA55A30;
  v19 = *(v2 + v8[10]);
  *(inited + 408) = v17;
  *(inited + 416) = v18;
  *(inited + 384) = v19;
  *(inited + 424) = 0xD00000000000001DLL;
  *(inited + 432) = 0x800000024FA55A50;
  v20 = *(v2 + v8[11]);
  *(inited + 464) = v17;
  *(inited + 472) = v18;
  *(inited + 440) = v20;
  *(inited + 480) = 0xD00000000000001CLL;
  *(inited + 488) = 0x800000024FA55A70;
  v21 = *(v2 + v8[12]);
  *(inited + 520) = v17;
  *(inited + 528) = v18;
  *(inited + 496) = v21;
  *(inited + 536) = 0xD000000000000013;
  *(inited + 544) = 0x800000024FA55A90;
  LOBYTE(v21) = *(v2 + v8[13]);
  *(inited + 576) = v12;
  *(inited + 584) = v13;
  *(inited + 552) = v21;
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x800000024FA55AB0;
  LOBYTE(v21) = *(v2 + v8[14]);
  *(inited + 632) = v12;
  *(inited + 640) = v13;
  *(inited + 608) = v21;
  *(inited + 648) = 0xD000000000000018;
  *(inited + 656) = 0x800000024FA55AD0;
  LOBYTE(v21) = *(v2 + v8[15]);
  *(inited + 688) = v12;
  *(inited + 696) = v13;
  *(inited + 664) = v21;
  *(inited + 704) = 0xD000000000000015;
  *(inited + 712) = 0x800000024FA55AF0;
  LOBYTE(v21) = *(v2 + v8[16]);
  *(inited + 744) = v12;
  *(inited + 752) = v13;
  *(inited + 720) = v21;
  *(inited + 760) = 0xD000000000000015;
  *(inited + 768) = 0x800000024FA55B10;
  LOBYTE(v21) = *(v2 + v8[17]);
  *(inited + 800) = v12;
  *(inited + 808) = v13;
  *(inited + 776) = v21;
  *(inited + 816) = 0xD000000000000016;
  *(inited + 824) = 0x800000024FA55B30;
  v22 = *(v2 + v8[18]);
  *(inited + 856) = &type metadata for CommonOnboardingStatus;
  *(inited + 864) = sub_24EBB9898();
  *(inited + 832) = v22;
  v23 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v24 = sub_24E80FFAC(v23);

  v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  v26[4] = result;
  *v26 = v24;
  return result;
}

uint64_t sub_24EBB6BC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v31 - v3;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0x3D726579616C70, 0xE700000000000000);
  sub_24E6364A0(v0, v4);
  v5 = type metadata accessor for Player(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_24E637048(v4);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = Player.debugDescription.getter();
    v7 = v8;
    sub_24EBB9790(v4, type metadata accessor for Player);
  }

  v31[0] = v6;
  v31[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v9 = sub_24F92B188();
  MEMORY[0x253050C20](v9);

  MEMORY[0x253050C20](0x657361436573750ALL, 0xE90000000000003DLL);
  v10 = type metadata accessor for ImpedimentFlowDestinationsIntent(0);
  LOBYTE(v31[0]) = *(v1 + v10[5]);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA55870);
  if (*(v1 + v10[6]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v1 + v10[6]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v11, v12);

  MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA55890);
  if (*(v1 + v10[7]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v10[7]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v13, v14);

  MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA558B0);
  if (*(v1 + v10[8]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + v10[8]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v15, v16);

  MEMORY[0x253050C20](0xD000000000000025, 0x800000024FA558D0);
  v31[0] = *(v1 + v10[9]);
  v17 = sub_24F92CD88();
  MEMORY[0x253050C20](v17);

  MEMORY[0x253050C20](0xD00000000000001CLL, 0x800000024FA55900);
  v31[0] = *(v1 + v10[10]);
  v18 = sub_24F92CD88();
  MEMORY[0x253050C20](v18);

  MEMORY[0x253050C20](0xD00000000000001FLL, 0x800000024FA55920);
  v31[0] = *(v1 + v10[11]);
  v19 = sub_24F92CD88();
  MEMORY[0x253050C20](v19);

  MEMORY[0x253050C20](0xD00000000000001ELL, 0x800000024FA55940);
  v31[0] = *(v1 + v10[12]);
  v20 = sub_24F92CD88();
  MEMORY[0x253050C20](v20);

  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA55960);
  if (*(v1 + v10[14]))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + v10[14]))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v21, v22);

  MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA55980);
  if (*(v1 + v10[15]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v1 + v10[15]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v23, v24);

  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA559A0);
  if (*(v1 + v10[16]))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + v10[16]))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v25, v26);

  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA559C0);
  if (*(v1 + v10[17]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + v10[17]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v27, v28);

  MEMORY[0x253050C20](0xD000000000000019, 0x800000024FA559E0);
  v31[0] = *(v1 + v10[18]);
  v29 = sub_24F92B188();
  MEMORY[0x253050C20](v29);

  return v32;
}

unint64_t sub_24EBB710C(char a1)
{
  result = 0x726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x65736143657375;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 11:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EBB7314(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB30, &qword_24F989A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB9630();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for ImpedimentFlowDestinationsIntent(0);
    LOBYTE(v12) = *(v3 + *(v9 + 20));
    v13 = 1;
    sub_24EBB97F0();
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CD18();
    LOBYTE(v12) = 3;
    sub_24F92CD18();
    LOBYTE(v12) = 4;
    sub_24F92CD18();
    LOBYTE(v12) = 5;
    sub_24F92CD38();
    LOBYTE(v12) = 6;
    sub_24F92CD38();
    LOBYTE(v12) = 7;
    sub_24F92CD38();
    LOBYTE(v12) = 8;
    sub_24F92CD38();
    LOBYTE(v12) = 9;
    sub_24F92CD18();
    LOBYTE(v12) = 10;
    sub_24F92CD18();
    LOBYTE(v12) = 11;
    sub_24F92CD18();
    LOBYTE(v12) = 12;
    sub_24F92CD18();
    v13 = 13;
    sub_24F92CD18();
    v12 = *(v3 + *(v9 + 72));
    v11[15] = 14;
    sub_24EBB9844();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EBB7728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB10, &qword_24F989A18);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ImpedimentFlowDestinationsIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EBB9630();
  v20 = v9;
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  type metadata accessor for Player(0);
  LOBYTE(v22) = 0;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC18();
  sub_24E6365D4(v6, v12);
  v23 = 1;
  sub_24EBB9684();
  sub_24F92CC68();
  v12[v10[5]] = v22;
  LOBYTE(v22) = 2;
  v12[v10[6]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 3;
  v12[v10[7]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 4;
  v12[v10[8]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 5;
  *&v12[v10[9]] = sub_24F92CC58();
  LOBYTE(v22) = 6;
  *&v12[v10[10]] = sub_24F92CC58();
  LOBYTE(v22) = 7;
  *&v12[v10[11]] = sub_24F92CC58();
  LOBYTE(v22) = 8;
  *&v12[v10[12]] = sub_24F92CC58();
  LOBYTE(v22) = 9;
  v12[v10[13]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 10;
  v12[v10[14]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 11;
  v12[v10[15]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 12;
  v12[v10[16]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 13;
  v12[v10[17]] = sub_24F92CC38() & 1;
  v23 = 14;
  sub_24EBB96D8();
  v15 = v19;
  v14 = v20;
  sub_24F92CC68();
  (*(v7 + 8))(v14, v15);
  *&v12[v10[18]] = v22;
  sub_24EBB972C(v12, v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_24EBB9790(v12, type metadata accessor for ImpedimentFlowDestinationsIntent);
}

uint64_t sub_24EBB7CCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EBB8C50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EBB7D00(uint64_t a1)
{
  v2 = sub_24EBB9630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB7D3C(uint64_t a1)
{
  v2 = sub_24EBB9630();

  return MEMORY[0x2821FE720](a1, v2);
}

GameStoreKit::CommonOnboardingStatus __swiftcall CommonOnboardingStatus.init(appStoreSignedIn:gameCenterSignedIn:isSignedIntoAnotherService:appStoreGamesPrivacyAccepted:gameCenterGamesPrivacyAccepted:gameCenterGDPRPrivacyAccepted:appStoreCrossUsePrivacyAccepted:gameCenterCrossUsePrivacyAccepted:)(Swift::Bool appStoreSignedIn, Swift::Bool gameCenterSignedIn, Swift::Bool isSignedIntoAnotherService, Swift::Bool appStoreGamesPrivacyAccepted, Swift::Bool gameCenterGamesPrivacyAccepted, Swift::Bool gameCenterGDPRPrivacyAccepted, Swift::Bool appStoreCrossUsePrivacyAccepted, Swift::Bool gameCenterCrossUsePrivacyAccepted)
{
  *v8 = appStoreSignedIn;
  v8[1] = gameCenterSignedIn;
  v8[2] = isSignedIntoAnotherService;
  v8[3] = appStoreGamesPrivacyAccepted;
  v8[4] = gameCenterGamesPrivacyAccepted;
  v8[5] = gameCenterGDPRPrivacyAccepted;
  v8[6] = appStoreCrossUsePrivacyAccepted;
  v8[7] = gameCenterCrossUsePrivacyAccepted;
  result.appStoreSignedIn = appStoreSignedIn;
  return result;
}

unint64_t CommonOnboardingStatus.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v15 = v1[5];
  v16 = v1[6];
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F979FB0;
  *(inited + 32) = 0xD000000000000010;
  v10 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000024FA55600;
  v11 = MEMORY[0x277D22598];
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  *(inited + 48) = v3;
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA55620;
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v4;
  *(inited + 144) = 0xD00000000000001ALL;
  *(inited + 152) = 0x800000024FA55640;
  *(inited + 184) = v10;
  *(inited + 192) = v11;
  *(inited + 160) = v5;
  *(inited + 200) = 0xD00000000000001CLL;
  *(inited + 208) = 0x800000024FA55660;
  *(inited + 240) = v10;
  *(inited + 248) = v11;
  *(inited + 216) = v6;
  *(inited + 256) = 0xD00000000000001ELL;
  *(inited + 264) = 0x800000024FA55680;
  *(inited + 296) = v10;
  *(inited + 304) = v11;
  *(inited + 272) = v7;
  *(inited + 312) = 0xD00000000000001DLL;
  *(inited + 320) = 0x800000024FA556A0;
  *(inited + 352) = v10;
  *(inited + 360) = v11;
  *(inited + 328) = v15;
  *(inited + 368) = 0xD00000000000001FLL;
  *(inited + 376) = 0x800000024FA556C0;
  *(inited + 408) = v10;
  *(inited + 416) = v11;
  *(inited + 384) = v16;
  *(inited + 424) = 0xD000000000000021;
  *(inited + 432) = 0x800000024FA556E0;
  *(inited + 464) = v10;
  *(inited + 472) = v11;
  *(inited + 440) = v8;
  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t CommonOnboardingStatus.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v22 = v0[4];
  v23 = v0[5];
  v24 = v0[6];
  v25 = v0[7];
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA55710);
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

  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA55730);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v7, v8);

  MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA55750);
  if (v3)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v3)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](0xD000000000000022, 0x800000024FA55780);
  if (v4)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v4)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v11, v12);

  MEMORY[0x253050C20](0xD000000000000024, 0x800000024FA557B0);
  if (v22)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v22)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v13, v14);

  MEMORY[0x253050C20](0xD000000000000023, 0x800000024FA557E0);
  if (v23)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v23)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v15, v16);

  MEMORY[0x253050C20](0xD000000000000025, 0x800000024FA55810);
  if (v24)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v24)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v17, v18);

  MEMORY[0x253050C20](0xD000000000000027, 0x800000024FA55840);
  if (v25)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v25)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v19, v20);

  return 0;
}

unint64_t sub_24EBB8324()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  if (v2 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0xD00000000000001ELL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v2 != 2)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EBB8408@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EBB90DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EBB8430(uint64_t a1)
{
  v2 = sub_24EBB8A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB846C(uint64_t a1)
{
  v2 = sub_24EBB8A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommonOnboardingStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AAD0, &qword_24F9896B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = v1[1];
  v16[4] = v1[2];
  v16[5] = v7;
  v8 = v1[3];
  v16[2] = v1[4];
  v16[3] = v8;
  v16[1] = v1[5];
  v9 = v1[6];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_24EBB8A34();
  sub_24F92D128();
  v25 = 0;
  v14 = v17;
  sub_24F92CD18();
  if (v14)
  {
    return (*(v4 + 8))(v6, v13);
  }

  LODWORD(v17) = v9;
  v24 = 1;
  sub_24F92CD18();
  v23 = 2;
  sub_24F92CD18();
  v22 = 3;
  sub_24F92CD18();
  v21 = 4;
  sub_24F92CD18();
  v20 = 5;
  sub_24F92CD18();
  v19 = 6;
  sub_24F92CD18();
  v18 = 7;
  sub_24F92CD18();
  return (*(v4 + 8))(v6, v13);
}

uint64_t CommonOnboardingStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AAE0, &qword_24F9896C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB8A34();
  sub_24F92D108();
  if (!v2)
  {
    v32 = 0;
    v9 = sub_24F92CC38();
    v31 = 1;
    v10 = sub_24F92CC38();
    v30 = 2;
    v11 = sub_24F92CC38();
    v29 = 3;
    v24 = sub_24F92CC38();
    v28 = 4;
    v23 = sub_24F92CC38();
    v27 = 5;
    v22 = sub_24F92CC38();
    v26 = 6;
    v21 = sub_24F92CC38();
    v25 = 7;
    v13 = sub_24F92CC38();
    v19 = v10 & 1;
    v20 = v9 & 1;
    HIDWORD(v18) = v11 & 1;
    v23 &= 1u;
    v24 &= 1u;
    v14 = v22 & 1;
    LOBYTE(v9) = v21 & 1;
    v15 = v13;
    (*(v6 + 8))(v8, v5);
    v16 = v19;
    *a2 = v20;
    a2[1] = v16;
    a2[2] = BYTE4(v18);
    v17 = v23;
    a2[3] = v24;
    a2[4] = v17;
    a2[5] = v14;
    a2[6] = v9;
    a2[7] = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24EBB8A34()
{
  result = qword_27F22AAD8;
  if (!qword_27F22AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonOnboardingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonOnboardingStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24EBB8B4C()
{
  result = qword_27F22AAE8;
  if (!qword_27F22AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAE8);
  }

  return result;
}

unint64_t sub_24EBB8BA4()
{
  result = qword_27F22AAF0;
  if (!qword_27F22AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAF0);
  }

  return result;
}

unint64_t sub_24EBB8BFC()
{
  result = qword_27F22AAF8;
  if (!qword_27F22AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAF8);
  }

  return result;
}

uint64_t sub_24EBB8C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA541F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA54210 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA54230 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA55A00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA55A30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA55A50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA55A70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA55A90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA55AB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA55AD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA55AF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA55B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_24EBB90DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA55600 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA55620 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA55640 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA55660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000024FA55680 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA556A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000024FA556C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x800000024FA556E0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t type metadata accessor for ImpedimentFlowDestinationsIntent(uint64_t a1)
{
  result = qword_27F22AB00;
  if (!qword_27F22AB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBB93C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EBB94B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_24EBB9578(uint64_t a1)
{
  sub_24E637694(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24EBB9630()
{
  result = qword_27F22AB18;
  if (!qword_27F22AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB18);
  }

  return result;
}

unint64_t sub_24EBB9684()
{
  result = qword_27F22AB20;
  if (!qword_27F22AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB20);
  }

  return result;
}

unint64_t sub_24EBB96D8()
{
  result = qword_27F22AB28;
  if (!qword_27F22AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB28);
  }

  return result;
}

uint64_t sub_24EBB972C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpedimentFlowDestinationsIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBB9790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EBB97F0()
{
  result = qword_27F22AB38;
  if (!qword_27F22AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB38);
  }

  return result;
}

unint64_t sub_24EBB9844()
{
  result = qword_27F22AB40;
  if (!qword_27F22AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB40);
  }

  return result;
}

unint64_t sub_24EBB9898()
{
  result = qword_27F22AB48;
  if (!qword_27F22AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB48);
  }

  return result;
}

unint64_t sub_24EBB9900()
{
  result = qword_27F22AB50;
  if (!qword_27F22AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB50);
  }

  return result;
}

unint64_t sub_24EBB9958()
{
  result = qword_27F22AB58;
  if (!qword_27F22AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB58);
  }

  return result;
}

unint64_t sub_24EBB99B0()
{
  result = qword_27F22AB60;
  if (!qword_27F22AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB60);
  }

  return result;
}

uint64_t sub_24EBB9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a2;
  v50 = a4;
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = sub_24F9288E8();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F929158();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v17 = (v4 + qword_27F39B480);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + qword_27F39B488) = 0;
  v18 = (v4 + qword_27F39B490);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v4 + *(*v4 + 176));
  v19[1] = 0;
  v19[2] = 0;
  *v19 = 0x8000000000000000;
  v20 = *(*v4 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEE0, &qword_24F989E98);
  swift_allocObject();
  *(v4 + v20) = sub_24F92ADA8();
  v21 = v5 + *(*v5 + 192);
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = v5 + *(*v5 + 200);
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = (v5 + *(*v5 + 208));
  *v23 = 0;
  v23[1] = 0;
  v24 = (v5 + *(*v5 + 216));
  *v24 = 0.0;
  v24[1] = 0.0;
  *(v4 + 16) = a1;
  sub_24F928FD8();

  sub_24F92A758();
  (*(v14 + 32))(v4 + qword_27F39B498, v16, v13);
  v25 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
  sub_24F928EF8();
  v26 = v52;
  v27 = v53;
  swift_beginAccess();
  *v24 = v26;
  *(v24 + 1) = v27;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract(0);
  sub_24F92A758();
  if (v25)
  {
    v28 = v25;
    v29 = v46;
  }

  else
  {
    v30 = v44;
    v31 = v45;
    v46 = sub_24F929EB8();
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    (*(v30 + 104))(v12, *MEMORY[0x277D21C38], v31);
    sub_24F92A368();
    (*(v30 + 8))(v12, v31);
    v32 = v48;
    sub_24F92A408();
    (*(v47 + 8))(v9, v32);
    v28 = sub_24F929EA8();
    v29 = MEMORY[0x277D221C0];
  }

  v33 = (v5 + qword_27F39B4A0);
  *v33 = v28;
  v33[1] = v29;
  v34 = v50;
  if (v50)
  {
    swift_unknownObjectRetain();
    v35 = v34;
  }

  else
  {
    v36 = qword_27F2108F8;
    swift_unknownObjectRetain();
    if (v36 != -1)
    {
      swift_once();
    }

    sub_24F92A438();
    v37 = v48;
    sub_24F92A408();
    (*(v47 + 8))(v9, v37);
    v38 = v52;
    v39 = v33[1];
    type metadata accessor for ImpressionsCalculator(0);
    swift_allocObject();
    v40 = swift_unknownObjectRetain();
    v35 = sub_24EB0E424(v40, v39, v38);
    swift_unknownObjectRelease();
  }

  *(v5 + qword_27F39B4A8) = v35;
  type metadata accessor for MetricsPageEnterGate();
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + 32) = 0;
  *(v41 + 34) = 0;
  *(v41 + 24) = &protocol witness table for TimedMetricsPagePresenter<A>;
  swift_unknownObjectWeakAssign();
  v42 = qword_27F39B488;
  swift_beginAccess();
  *(v5 + v42) = v41;

  sub_24F92A0F8();
  sub_24F928EF8();
  sub_24EBD8C00(v51);

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_24EBBA248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t))
{
  v57 = a7;
  v58 = a4;
  v10 = v7;
  v52 = a3;
  v56 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = &v50 - v13;
  v14 = sub_24F9288E8();
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F929158();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  v21 = (v7 + qword_27F39B480);
  *v21 = 0;
  v21[1] = 0;
  *(v7 + qword_27F39B488) = 0;
  v22 = (v7 + qword_27F39B490);
  *v22 = 0;
  v22[1] = 0;
  v23 = v7 + *(*v7 + 176);
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 0;
  *(v23 + 24) = 2;
  v24 = *(*v7 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  swift_allocObject();
  *(v7 + v24) = sub_24F92ADA8();
  v25 = v10 + *(*v10 + 192);
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v26 = v10 + *(*v10 + 200);
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = (v10 + *(*v10 + 208));
  *v27 = 0;
  v27[1] = 0;
  v28 = (v10 + *(*v10 + 216));
  *v28 = 0.0;
  v28[1] = 0.0;
  *(v7 + 16) = a1;
  sub_24F928FD8();

  sub_24F92A758();
  (*(v18 + 32))(v7 + qword_27F39B498, v20, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
  sub_24F928EF8();
  v29 = v60;
  v30 = v61;
  swift_beginAccess();
  *v28 = v29;
  *(v28 + 1) = v30;
  v31 = v56;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract(0);
  sub_24F92A758();
  if (v31)
  {
    v32 = v31;
    v33 = v52;
  }

  else
  {
    v34 = v50;
    v35 = v51;
    v52 = sub_24F929EB8();
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    (*(v34 + 104))(v16, *MEMORY[0x277D21C38], v35);
    v36 = v53;
    sub_24F92A368();
    (*(v34 + 8))(v16, v35);
    v37 = v55;
    sub_24F92A408();
    (*(v54 + 8))(v36, v37);
    v32 = sub_24F929EA8();
    v33 = MEMORY[0x277D221C0];
  }

  v38 = (v10 + qword_27F39B4A0);
  *v38 = v32;
  v38[1] = v33;
  v39 = v58;
  if (v58)
  {
    swift_unknownObjectRetain();
    v40 = v39;
  }

  else
  {
    v41 = qword_27F2108F8;
    swift_unknownObjectRetain();
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = v53;
    sub_24F92A438();
    v43 = v55;
    sub_24F92A408();
    (*(v54 + 8))(v42, v43);
    v44 = v60;
    v45 = v38[1];
    type metadata accessor for ImpressionsCalculator(0);
    swift_allocObject();
    v46 = swift_unknownObjectRetain();
    v40 = sub_24EB0E424(v46, v45, v44);
    swift_unknownObjectRelease();
  }

  *(v10 + qword_27F39B4A8) = v40;
  type metadata accessor for MetricsPageEnterGate();
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v47 + 32) = 0;
  *(v47 + 34) = 0;
  *(v47 + 24) = &protocol witness table for TimedMetricsPagePresenter<A>;
  swift_unknownObjectWeakAssign();
  v48 = qword_27F39B488;
  swift_beginAccess();
  *(v10 + v48) = v47;

  sub_24F92A0F8();
  sub_24F928EF8();
  v57(v59);

  swift_unknownObjectRelease();

  return v10;
}

uint64_t GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a4;
  v63 = a3;
  v54 = sub_24F928188();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB68, &unk_24F989B50);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v51 - v12;
  v62 = sub_24F92BEE8();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F92BE88();
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927DC8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51 - v17;
  v56 = &v51 - v17;
  v19 = (v5 + qword_27F39BE28);
  *v19 = 0;
  v19[1] = 0;
  *(v5 + qword_27F39BE30) = 0;
  *(v5 + qword_27F39BE38) = 0;
  *(v5 + qword_27F22AB70) = MEMORY[0x277D84FA0];
  *(v5 + qword_27F22AB78) = 0;
  *(v5 + qword_27F22AB80) = a2;
  v66 = a5;
  sub_24E60169C(a5, v18, &qword_27F228530, &unk_24F93C6E0);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  *(v5 + qword_27F39CC00) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v6 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v6 + qword_27F2326C8) = 0;
  v21 = *(*v6 + 640);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB88, &unk_24F989B60);
  v23 = *(*(v22 - 8) + 56);
  v23(v6 + v21, 1, 1, v22);
  v24 = *(*v6 + 648);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v25 - 8) + 56))(v6 + v24, 1, 1, v25);
  v26 = *(*v6 + 656);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB98, &unk_24F989B70);
  (*(*(v27 - 8) + 56))(v6 + v26, 1, 1, v27);
  v23(v6 + *(*v6 + 664), 1, 1, v22);
  v28 = *(*v6 + 672);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v29 - 8) + 56))(v6 + v28, 1, 1, v29);
  v30 = *(*v6 + 680);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v31 - 8) + 56))(v6 + v30, 1, 1, v31);
  v55 = *(*v6 + 688);
  sub_24E74EC40();
  v32 = v61;

  v64 = a1;

  v65 = a2;

  v33 = v63;

  sub_24F927DA8();
  v69 = v20;
  sub_24EBD4288(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  v35 = v56;
  sub_24F92C6A8();
  (*(v60 + 104))(v59, *MEMORY[0x277D85260], v62);
  *(v6 + v55) = sub_24F92BF38();
  sub_24EBD3128(v6 + *(*v6 + 696));
  v36 = (v6 + *(*v6 + 704));
  *v36 = 0u;
  v36[1] = 0u;
  *(v36 + 25) = 0u;
  v37 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v6 + v37) = sub_24F92ADA8();
  v38 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v6 + v38) = sub_24F92ADA8();
  v39 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v39) = sub_24F92ADA8();
  *(v6 + *(*v6 + 736)) = 0;
  v40 = (v6 + *(*v6 + 752));
  *v40 = 0;
  v40[1] = 0;
  sub_24E60169C(v35, v6 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v70, v6 + *(*v6 + 744), &qword_27F229490, &unk_24F984C40);
  v41 = type metadata accessor for InlineUnifiedMessagePresenter();
  v68.receiver = objc_allocWithZone(v41);
  v68.super_class = v41;
  *(v6 + qword_27F39CC08) = objc_msgSendSuper2(&v68, sel_init);
  if (v33 && v32)
  {
    sub_24F92A0F8();
    v69 = v32;

    v42 = v52;
    sub_24F928168();
    v43 = sub_24F928F88();
    (*(v53 + 8))(v42, v54);
    v44 = v43;
  }

  else
  {
  }

  v45 = sub_24EBBA248(v44, 0, 0, 0, &qword_27F22AF10, &qword_24F989ED0, sub_24EBD8B98);
  v46 = *(*v45 + 1112);

  *(v45 + qword_27F39CC00) = v46(v33);

  sub_24EBC0494(0);

  sub_24E601704(v70, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v35, &qword_27F228530, &unk_24F93C6E0);
  v47 = v67;
  if (*(v45 + qword_27F22AB80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABC8, &qword_24F989BA8);
    sub_24E602068(&qword_27F22ABD0, &qword_27F22ABC8, &qword_24F989BA8, MEMORY[0x277D21A98]);

    sub_24F9288B8();
    type metadata accessor for GenericDiffablePagePresenter(0);
    sub_24F9288C8();

    sub_24E601704(v66, &qword_27F228530, &unk_24F93C6E0);
    __swift_destroy_boxed_opaque_existential_1(v70);

    v48 = 0;
  }

  else
  {

    sub_24E601704(v66, &qword_27F228530, &unk_24F93C6E0);

    v48 = 1;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABC0, &qword_24F989BA0);
  (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
  sub_24E601704(v47, &qword_27F22AB68, &unk_24F989B50);
  return v45;
}

uint64_t sub_24EBBB524(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + qword_27F22AB70);

  v5 = sub_24F4D42B0(v3, v4);

  if (v5)
  {
    v7 = a2 + *(*a2 + 176);
    result = swift_beginAccess();
    if (*(v7 + 24) < 2u || !(*(v7 + 8) | *(v7 + 16) | *v7))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213920, &unk_24F989EB0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24F93DE60;
      *(v8 + 32) = v3;
      sub_24EBBDC98(v8, &unk_2861E7488, sub_24EBD51C0, sub_24EBD5618);
    }
  }

  return result;
}

uint64_t sub_24EBBB684(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39BE28);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24EBBB6F0()
{
  v1 = (v0 + qword_27F39BE28);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_24EBBB748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39BE30;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_24EBBB7F8(uint64_t a1)
{
  v3 = qword_27F39BE30;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_24EBBB8B0()
{
  v1 = qword_27F39BE38;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EBBB8F4(uint64_t a1)
{
  v3 = qword_27F39BE38;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24EBBB9A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v11[-v4], &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v7 = v1[3];
  swift_beginAccess();
  v8 = v1[4];
  type metadata accessor for GenericDiffablePageContentPresenter(0);
  swift_allocObject();

  v9 = sub_24E9647B8(v6, v5, a1, v7, v8);

  return v9;
}

void sub_24EBBBAFC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_24F2F373C(*a1, v2, v3);
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    v4 = sub_24F0C5C5C(v2);
    v5 = *(v1 + qword_27F22AB70);
    *(v1 + qword_27F22AB70) = v4;

    v6 = sub_24EDD4C24(v5, v4);

    if ((v6 & 1) == 0)
    {

      sub_24EBBDC98(v7, &unk_2861E66C8, sub_24EBD4D88, sub_24EBD4DA0);
    }
  }
}

double sub_24EBBBBF4(uint64_t a1, char a2)
{
  sub_24F2F5F5C(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v5 = qword_27F39BE38;
  swift_beginAccess();
  *(v2 + v5) = v4;
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v8 = (v2 + qword_27F39BE28);
  swift_beginAccess();
  *v8 = v7;
  v8[1] = v6;

  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = qword_27F39BE30;
  swift_beginAccess();
  *(v2 + v11) = v10;

  return result;
}

void sub_24EBBBD04(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_24EBBD698(*a1, v2, *(a1 + 16));
  if ((v3 & 0x80000000) == 0)
  {
    v4 = sub_24F0C5C5C(v2);
    v5 = *(v1 + qword_27F22AB70);
    *(v1 + qword_27F22AB70) = v4;

    v6 = sub_24EDD4C24(v5, v4);

    if ((v6 & 1) == 0)
    {

      sub_24EBBDC98(v7, &unk_2861E66C8, sub_24EBD4D88, sub_24EBD4DA0);
    }
  }
}

void sub_24EBBBDF8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_251;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD56D0;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBC10C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_497;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD512C;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBC420(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_393;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD5000;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBC734(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_341;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD4F64;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBCA48(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_172;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD4D28;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBCD5C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_445;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD509C;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBD070(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_289;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD4EBC;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBD384(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54C8;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_107;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD4C4C;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBD698(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    (*(*v3 + 1184))(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD4BAC;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_222;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD4DB0;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

void sub_24EBBD9AC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    v4 = v3;
    sub_24F2F77B0(a1, a3 & 1);
    *(v3 + qword_27F39CC10) = a2;

    v7 = *(v4 + *(*v4 + 688));
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a2;
    *(v8 + 32) = 65792;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24EBD54A4;
    *(v9 + 24) = v8;
    v18[4] = sub_24E9727C0;
    v18[5] = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_24E971290;
    v18[3] = &block_descriptor_55;
    v10 = _Block_copy(v18);

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(*v4 + 736);
      if (*(v4 + v11))
      {
        v12 = *(a1 + 16);

        sub_24ED64DBC(v12);
      }

      else
      {
        if (!*(a1 + 16))
        {
          *(v4 + v11) = 0;
          return;
        }
      }

      type metadata accessor for PageRefreshGate(0);
      swift_allocObject();

      v14 = sub_24EA69948(v13);

      *(v4 + v11) = v14;

      v15 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      *(v14 + 16) = sub_24EBD4B54;
      *(v14 + 24) = v15;

      sub_24E824448(v16, v17);
    }
  }
}

uint64_t sub_24EBBDC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) && *(v4 + qword_27F22AB78) != 1)
  {
    if (*(v4 + qword_27F22AB80))
    {
      *(v4 + qword_27F22AB78) = 1;
      v5 = result;

      sub_24EBDFF44(v6);

      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v5;
      v8 = sub_24E74EC40();
      swift_retain_n();

      v9 = sub_24F92BEF8();
      v10[3] = v8;
      v10[4] = MEMORY[0x277D225C0];
      v10[0] = v9;
      sub_24F92A958();

      return __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  return result;
}

void sub_24EBBDDE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), void *a4, uint64_t a5, void *a6)
{
  v12 = qword_27F39CC10;
  v13 = *(a5 + qword_27F39CC10);

  v14 = sub_24EBBE1D8(a6, v13);
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = a3;
  v22 = a4;
  v15 = Array<A>.personalizedShelves(with:)(&v20, v13);

  *(a5 + v12) = v15;

  v16 = *(a5 + *(*a5 + 688));
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v14;
  *(v17 + 32) = 65824;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24EBD54C8;
  *(v18 + 24) = v17;
  v23 = sub_24E9727C0;
  v24 = v18;
  *&v20 = MEMORY[0x277D85DD0];
  *(&v20 + 1) = 1107296256;
  v21 = sub_24E971290;
  v22 = &block_descriptor_539;
  v19 = _Block_copy(&v20);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + qword_27F22AB78) = 0;
  }
}

void sub_24EBBDFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), void *a4, uint64_t a5, void *a6)
{
  v12 = qword_27F39CC10;
  v13 = *(a5 + qword_27F39CC10);

  v14 = sub_24EBBE578(a6, v13);
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = a3;
  v22 = a4;
  v15 = Array<A>.personalizedShelves(with:)(&v20, v13);

  *(a5 + v12) = v15;

  v16 = *(a5 + *(*a5 + 688));
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v14;
  *(v17 + 32) = 65824;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24EBD4BAC;
  *(v18 + 24) = v17;
  v23 = sub_24E9727C0;
  v24 = v18;
  *&v20 = MEMORY[0x277D85DD0];
  *(&v20 + 1) = 1107296256;
  v21 = sub_24E971290;
  v22 = &block_descriptor_212;
  v19 = _Block_copy(&v20);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + qword_27F22AB78) = 0;
  }
}

void *sub_24EBBE1D8(void *result, unint64_t a2)
{
  v3 = result;
  v37 = MEMORY[0x277D84FA0];
  if (a2 >> 62)
  {
    result = sub_24F92C738();
    v4 = result;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_44;
    }
  }

  if (v4 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = MEMORY[0x253052270](i, a2);
        v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        v8 = sub_24EBD4730(v3, v7);

        if (v8)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_24E65864C(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v36);
          sub_24ED7EDA8(&v35, v36);
          swift_unknownObjectRelease();
          sub_24E772780(&v35);
        }
      }
    }

    else
    {
      v9 = 0;
      v10 = a2 + 32;
      v33 = v3 + 32;
      v30 = v4;
      v31 = v3;
      v29 = a2 + 32;
      do
      {
        v11 = *(*(v10 + 8 * v9) + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);
        if (*(v11 + 16))
        {
          v34 = *(v3 + 16);
          if (v34)
          {
            v12 = v11 + 56;
            v32 = *(v10 + 8 * v9);

            v13 = 0;
            while (1)
            {
              if (*(v11 + 16))
              {
                v14 = *(v33 + v13);
                sub_24F92D068();
                v15 = v14 ? 7304045 : 1701736302;
                v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
                sub_24F92B218();

                v17 = sub_24F92D0B8();
                v18 = -1 << *(v11 + 32);
                v19 = v17 & ~v18;
                if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
                {
                  break;
                }
              }

LABEL_18:
              if (++v13 == v34)
              {

                goto LABEL_13;
              }
            }

            v20 = ~v18;
            while (1)
            {
              v21 = *(*(v11 + 48) + v19) ? 7304045 : 1701736302;
              v22 = *(*(v11 + 48) + v19) ? 0xE300000000000000 : 0xE400000000000000;
              if (v21 == v15 && v22 == v16)
              {
                break;
              }

              v24 = sub_24F92CE08();

              if (v24)
              {
                goto LABEL_12;
              }

              v19 = (v19 + 1) & v20;
              if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

LABEL_12:

            sub_24E65864C(v32 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v36);
            sub_24ED7EDA8(&v35, v36);

            sub_24E772780(&v35);
LABEL_13:
            v4 = v30;
            v3 = v31;
            v10 = v29;
          }
        }

        ++v9;
      }

      while (v9 != v4);
    }

LABEL_44:
    v25 = v37;
    v26 = *(v37 + 16);
    if (v26)
    {
      v27 = sub_24EAE6938(*(v37 + 16), 0);
      v28 = sub_24EAE88FC(&v35, (v27 + 4), v26, v25);
      sub_24E6586B4(v35);
      if (v28 == v26)
      {
        return v27;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

void *sub_24EBBE578(void *result, unint64_t a2)
{
  v3 = result;
  v21 = MEMORY[0x277D84FA0];
  if (a2 >> 62)
  {
    result = sub_24F92C738();
    v4 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (v4 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = MEMORY[0x253052270](i, a2);
        v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        sub_24EBD48E0(v3, v7);
        v9 = v8;

        if (v9)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_24E65864C(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v19);
          sub_24ED7EDA8(&v20, v19);
          swift_unknownObjectRelease();
          sub_24E772780(&v20);
        }
      }
    }

    else
    {
      v10 = (a2 + 32);
      do
      {
        v11 = *v10;
        v12 = *(*v10 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        sub_24EBD48E0(v3, v12);
        v14 = v13;

        if (v14)
        {
        }

        else
        {
          sub_24E65864C(v11 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v19);
          sub_24ED7EDA8(&v20, v19);

          sub_24E772780(&v20);
        }

        ++v10;
        --v4;
      }

      while (v4);
    }

LABEL_16:
    v15 = v21;
    v16 = *(v21 + 16);
    if (v16)
    {
      v17 = sub_24EAE6938(*(v21 + 16), 0);
      v18 = sub_24EAE88FC(&v20, (v17 + 4), v16, v15);
      sub_24E6586B4(v20);
      if (v18 == v16)
      {
        return v17;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBBE7D8()
{
}

uint64_t GenericDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBE8A8();

  return v0;
}

uint64_t sub_24EBBE8A8()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AEE8, &qword_24F989EA0);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AEF0, &qword_24F989EA8);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AEE8, &qword_24F989EA0);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBEB60()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22ACB8, &unk_24F989CD0);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22ACA8, &unk_24F989CC0);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22ACB8, &unk_24F989CD0);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBEE18()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AE88, &qword_24F989E50);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AE90, &qword_24F989E58);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AE88, &qword_24F989E50);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBF0D0()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AE38, &qword_24F989E10);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AE40, &qword_24F989E18);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AE38, &qword_24F989E10);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBF388()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22ADF8, &qword_24F989DD0);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AE00, &qword_24F989DD8);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22ADF8, &qword_24F989DD0);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBF640()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22ADA8, &qword_24F989D90);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22ADB0, &qword_24F989D98);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22ADA8, &qword_24F989D90);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBF8F8()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AD58, &qword_24F989D50);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AD60, &qword_24F989D58);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AD58, &qword_24F989D50);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBFBB0()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AD18, &qword_24F989D20);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AD08, &qword_24F989D10);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AD18, &qword_24F989D20);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBBFE68()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AC70, &qword_24F989C98);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22AC60, &qword_24F989C88);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AC70, &qword_24F989C98);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t sub_24EBC0120()
{
  v0 = sub_24EBDEDF0();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + *(*v0 + 640), &qword_27F22AC10, &qword_24F989C50);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08, &qword_24F989C48);
  sub_24E601704(v0 + *(*v0 + 656), &qword_27F22ABF8, &qword_24F989C38);
  sub_24E601704(v0 + *(*v0 + 664), &qword_27F22AC10, &qword_24F989C50);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*(v0 + *(*v0 + 752)), *(v0 + *(*v0 + 752) + 8));
  return v0;
}

uint64_t GenericDiffablePagePresenter.__deallocating_deinit()
{
  sub_24EBBE8A8();

  return swift_deallocClassInstance();
}

void sub_24EBC0494(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEF0, &qword_24F989EA8);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB98, &unk_24F989B70);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEE8, &qword_24F989EA0);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB88, &unk_24F989B60);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AEE8, &qword_24F989EA0);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AEE8, &qword_24F989EA0);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AEF0, &qword_24F989EA8);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AEF0, &qword_24F989EA8);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AEE8, &qword_24F989EA0);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AEE8, &qword_24F989EA0);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40, &unk_24F96B688);
    sub_24E602068(&qword_27F22AEF8, &qword_27F222A40, &unk_24F96B688, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00, &unk_24F989EC0);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AEE8, &qword_24F989EA0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00, &unk_24F989EC0);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48, &qword_24F96B698);
    sub_24E602068(&qword_27F22AF08, &qword_27F222A48, &qword_24F96B698, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00, &unk_24F989EC0);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AEF0, &qword_24F989EA8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40, &unk_24F96B688);
    sub_24E602068(&qword_27F22AEF8, &qword_27F222A40, &unk_24F96B688, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00, &unk_24F989EC0);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AEE8, &qword_24F989EA0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00, &unk_24F989EC0);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF00, &unk_24F989EC0);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD54C8;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_550;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC1940(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD08, &qword_24F989D10);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD10, &qword_24F989D18);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD18, &qword_24F989D20);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD20, &qword_24F989D28);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AD18, &qword_24F989D20);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AD18, &qword_24F989D20);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AD08, &qword_24F989D10);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AD08, &qword_24F989D10);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AD18, &qword_24F989D20);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AD18, &qword_24F989D20);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD28, &qword_24F989D30);
    sub_24E602068(&qword_27F22AD30, &qword_27F22AD28, &qword_24F989D30, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38, &qword_24F989D38);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AD18, &qword_24F989D20);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38, &qword_24F989D38);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD40, &qword_24F989D40);
    sub_24E602068(&qword_27F22AD48, &qword_27F22AD40, &qword_24F989D40, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38, &qword_24F989D38);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AD08, &qword_24F989D10);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD28, &qword_24F989D30);
    sub_24E602068(&qword_27F22AD30, &qword_27F22AD28, &qword_24F989D30, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38, &qword_24F989D38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AD18, &qword_24F989D20);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38, &qword_24F989D38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD38, &qword_24F989D38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD54C8;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_236;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC2DEC(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE90, &qword_24F989E58);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE98, &unk_24F989E60);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE88, &qword_24F989E50);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA0, &unk_24F992810);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AE88, &qword_24F989E50);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AE88, &qword_24F989E50);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AE90, &qword_24F989E58);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AE90, &qword_24F989E58);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AE88, &qword_24F989E50);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AE88, &qword_24F989E50);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8, &qword_24F989E70);
    sub_24E602068(&qword_27F22AEB0, &qword_27F22AEA8, &qword_24F989E70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8, &qword_24F989E78);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AE88, &qword_24F989E50);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8, &qword_24F989E78);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0, &unk_24F989E80);
    sub_24E602068(&qword_27F22AEC8, &qword_27F22AEC0, &unk_24F989E80, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8, &qword_24F989E78);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AE90, &qword_24F989E58);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8, &qword_24F989E70);
    sub_24E602068(&qword_27F22AEB0, &qword_27F22AEA8, &qword_24F989E70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8, &qword_24F989E78);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AE88, &qword_24F989E50);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8, &qword_24F989E78);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEB8, &qword_24F989E78);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_482;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC4298(uint64_t a1)
{
  v2 = v1;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v97 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v103 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE00, &qword_24F989DD8);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = &v97 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE08, &qword_24F989DE0);
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v105 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v97 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v21 = &v97 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADF8, &qword_24F989DD0);
  MEMORY[0x28223BE20](v22 - 8);
  v109 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v100 = &v97 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE10, &qword_24F989DE8);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v98 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v97 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v101 = v37;
  v38 = v119;
  sub_24E60169C(v2 + v37, v30, &qword_27F22ADF8, &qword_24F989DD0);
  v99 = *(v32 + 48);
  v39 = v99(v30, 1, v31);
  v114 = v31;
  v120 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22ADF8, &qword_24F989DD0);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v118;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v112;
  v43 = v113;
  if ((*(v112 + 48))(v19, 1, v113) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v119;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v119;
    if (v119)
    {
      sub_24F92AD78();
      v40 = v118;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v107;
  sub_24E60169C(v2 + v45, v107, &qword_27F22AE00, &qword_24F989DD8);
  v47 = v115;
  v48 = (*(v40 + 48))(v46, 1, v115);
  v49 = v105;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AE00, &qword_24F989DD8);
  }

  else
  {
    (*(v40 + 32))(v105, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v118;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v114;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v105 = v52;
  v53 = &v52[v2];
  v54 = v100;
  sub_24E60169C(v53, v100, &qword_27F22ADF8, &qword_24F989DD0);
  v55 = v99(v54, 1, v51);
  v56 = v103;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22ADF8, &qword_24F989DD0);
    v57 = v117;
    v58 = v116;
    v59 = v120;
  }

  else
  {
    v59 = v120;
    v60 = v98;
    (*(v120 + 32))(v98, v54, v51);
    v58 = v116;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v117;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v107 = v61;
  v62 = v2 + v61;
  v63 = v104;
  sub_24E60169C(v62, v104, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v102;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B0, &qword_24F989DF0);
    sub_24E602068(&qword_27F22AE18, &qword_27F2226B0, &qword_24F989DF0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20, &qword_24F989DF8);
    v59 = v120;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v120 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v101;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22ADF8, &qword_24F989DD0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20, &qword_24F989DF8);
    v71 = v106;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v106;
  }

  v72 = 1;
  (*(v112 + 56))(v71, v69, 1, v113);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C0, &qword_24F989E00);
    sub_24E602068(&qword_27F22AE28, &qword_27F2226C0, &qword_24F989E00, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20, &qword_24F989DF8);
    v73 = v108;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v109;
  }

  else
  {
    v74 = v109;
    v73 = v108;
  }

  v75 = 1;
  (*(v118 + 56))(v73, v72, 1, v115);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AE00, &qword_24F989DD8);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B0, &qword_24F989DF0);
    sub_24E602068(&qword_27F22AE18, &qword_27F2226B0, &qword_24F989DF0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20, &qword_24F989DF8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v110;
  v77 = 1;
  v68(v74, v75, 1, v114);
  v78 = v105;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22ADF8, &qword_24F989DD0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20, &qword_24F989DF8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v119;
  v80 = v111;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE20, &qword_24F989DF8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v116 + 56))(v80, v82, 1, v117);
  v84 = v107;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  v85 = swift_endAccess();
  v86 = *(v2 + v64);
  if (v86)
  {
    v87 = qword_27F39CC08;
    swift_beginAccess();
    v88 = *(v2 + v87);
    v89 = qword_27F39C798;
    swift_beginAccess();
    v90 = *(v86 + v89);
    *(v86 + v89) = v88;

    v91 = v88;
  }

  if (v79 && ((*(*v2 + 1128))(v85) & 1) != 0)
  {
    v92 = *(v2 + *(*v2 + 688));
    v93 = swift_allocObject();
    *(v93 + 16) = v2;
    *(v93 + 24) = 0;
    *(v93 + 32) = 65920;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_24EBD4BAC;
    *(v94 + 24) = v93;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v94;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_378;
    v95 = _Block_copy(aBlock);

    dispatch_sync(v92, v95);
    _Block_release(v95);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC5778(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB0, &qword_24F989D98);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB8, &unk_24F989DA0);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADA8, &qword_24F989D90);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC0, &unk_24F9C0530);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22ADA8, &qword_24F989D90);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22ADA8, &qword_24F989D90);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22ADB0, &qword_24F989D98);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22ADB0, &qword_24F989D98);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22ADA8, &qword_24F989D90);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22ADA8, &qword_24F989D90);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8, &qword_24F989DB0);
    sub_24E602068(&qword_27F22ADD0, &qword_27F22ADC8, &qword_24F989DB0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8, &qword_24F989DB8);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22ADA8, &qword_24F989D90);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8, &qword_24F989DB8);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0, &qword_24F989DC0);
    sub_24E602068(&qword_27F22ADE8, &qword_27F22ADE0, &qword_24F989DC0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8, &qword_24F989DB8);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22ADB0, &qword_24F989D98);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8, &qword_24F989DB0);
    sub_24E602068(&qword_27F22ADD0, &qword_27F22ADC8, &qword_24F989DB0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8, &qword_24F989DB8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22ADA8, &qword_24F989D90);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8, &qword_24F989DB8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADD8, &qword_24F989DB8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_326;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC6C24(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACA8, &unk_24F989CC0);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACB0, &qword_24F98A460);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACB8, &unk_24F989CD0);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC0, &unk_24F98A450);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22ACB8, &unk_24F989CD0);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22ACB8, &unk_24F989CD0);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22ACA8, &unk_24F989CC0);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22ACA8, &unk_24F989CC0);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22ACB8, &unk_24F989CD0);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22ACB8, &unk_24F989CD0);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8, &qword_24F989CE0);
    sub_24E602068(&qword_27F22ACD0, &qword_27F22ACC8, &qword_24F989CE0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8, &qword_24F989CE8);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22ACB8, &unk_24F989CD0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8, &qword_24F989CE8);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACE0, &qword_24F989CF0);
    sub_24E602068(&qword_27F22ACE8, &qword_27F22ACE0, &qword_24F989CF0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8, &qword_24F989CE8);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22ACA8, &unk_24F989CC0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC8, &qword_24F989CE0);
    sub_24E602068(&qword_27F22ACD0, &qword_27F22ACC8, &qword_24F989CE0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8, &qword_24F989CE8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22ACB8, &unk_24F989CD0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8, &qword_24F989CE8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACD8, &qword_24F989CE8);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_157;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC80D0(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE40, &qword_24F989E18);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE48, &unk_24F989E20);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE38, &qword_24F989E10);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE50, &qword_24F993EE0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AE38, &qword_24F989E10);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AE38, &qword_24F989E10);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AE40, &qword_24F989E18);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AE40, &qword_24F989E18);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AE38, &qword_24F989E10);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AE38, &qword_24F989E10);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58, &qword_24F989E30);
    sub_24E602068(&qword_27F22AE60, &qword_27F22AE58, &qword_24F989E30, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68, &qword_24F989E38);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AE38, &qword_24F989E10);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68, &qword_24F989E38);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE70, &qword_24F989E40);
    sub_24E602068(&qword_27F22AE78, &qword_27F22AE70, &qword_24F989E40, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68, &qword_24F989E38);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AE40, &qword_24F989E18);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE58, &qword_24F989E30);
    sub_24E602068(&qword_27F22AE60, &qword_27F22AE58, &qword_24F989E30, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68, &qword_24F989E38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AE38, &qword_24F989E10);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68, &qword_24F989E38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE68, &qword_24F989E38);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_430;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBC957C(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD60, &qword_24F989D58);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD68, &unk_24F989D60);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD58, &qword_24F989D50);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD70, &unk_24F9D7020);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AD58, &qword_24F989D50);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AD58, &qword_24F989D50);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AD60, &qword_24F989D58);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AD60, &qword_24F989D58);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AD58, &qword_24F989D50);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AD58, &qword_24F989D50);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78, &qword_24F989D70);
    sub_24E602068(&qword_27F22AD80, &qword_27F22AD78, &qword_24F989D70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88, &qword_24F989D78);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AD58, &qword_24F989D50);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88, &qword_24F989D78);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90, &qword_24F989D80);
    sub_24E602068(&qword_27F22AD98, &qword_27F22AD90, &qword_24F989D80, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88, &qword_24F989D78);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AD60, &qword_24F989D58);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78, &qword_24F989D70);
    sub_24E602068(&qword_27F22AD80, &qword_27F22AD78, &qword_24F989D70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88, &qword_24F989D78);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AD58, &qword_24F989D50);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88, &qword_24F989D78);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD88, &qword_24F989D78);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_274;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBCAA28(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC60, &qword_24F989C88);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC68, &qword_24F989C90);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC70, &qword_24F989C98);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC78, &unk_24F989CA0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AC70, &qword_24F989C98);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AC70, &qword_24F989C98);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22AC60, &qword_24F989C88);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22AC60, &qword_24F989C88);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AC70, &qword_24F989C98);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AC70, &qword_24F989C98);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80, &unk_24F9DF850);
    sub_24E602068(&qword_27F22AC88, &qword_27F22AC80, &unk_24F9DF850, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90, &unk_24F989CB0);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AC70, &qword_24F989C98);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90, &unk_24F989CB0);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98, &unk_24F9DF860);
    sub_24E602068(&qword_27F22ACA0, &qword_27F22AC98, &unk_24F9DF860, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90, &unk_24F989CB0);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22AC60, &qword_24F989C88);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80, &unk_24F9DF850);
    sub_24E602068(&qword_27F22AC88, &qword_27F22AC80, &unk_24F9DF850, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90, &unk_24F989CB0);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AC70, &qword_24F989C98);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90, &unk_24F989CB0);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC90, &unk_24F989CB0);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD4BAC;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_92;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBCBED4(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF8, &qword_24F989C38);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v96 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC00, &qword_24F989C40);
  v117 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v21 = &v96 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC10, &qword_24F989C50);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v96 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC18, &qword_24F989C58);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = *(*v1 + 640);
  swift_beginAccess();
  v100 = v37;
  v38 = v118;
  sub_24E60169C(v2 + v37, v30, &qword_27F22AC10, &qword_24F989C50);
  v98 = *(v32 + 48);
  v39 = v98(v30, 1, v31);
  v113 = v31;
  v119 = v32;
  if (v39 == 1)
  {
    sub_24E601704(v30, &qword_27F22AC10, &qword_24F989C50);
  }

  else
  {
    (*(v32 + 32))(v36, v30, v31);
    if (v38)
    {
      sub_24F92AD78();
    }

    (*(v32 + 8))(v36, v31);
  }

  v40 = v117;
  v41 = *(*v2 + 648);
  swift_beginAccess();
  sub_24E60169C(v2 + v41, v19, &qword_27F22AC08, &qword_24F989C48);
  v42 = v111;
  v43 = v112;
  if ((*(v111 + 48))(v19, 1, v112) == 1)
  {
    sub_24E601704(v19, &qword_27F22AC08, &qword_24F989C48);
    v44 = v118;
  }

  else
  {
    (*(v42 + 32))(v21, v19, v43);
    v44 = v118;
    if (v118)
    {
      sub_24F92AD78();
      v40 = v117;
    }

    (*(v42 + 8))(v21, v43);
  }

  v45 = *(*v2 + 656);
  swift_beginAccess();
  v46 = v106;
  sub_24E60169C(v2 + v45, v106, &qword_27F22ABF8, &qword_24F989C38);
  v47 = v114;
  v48 = (*(v40 + 48))(v46, 1, v114);
  v49 = v104;
  if (v48 == 1)
  {
    sub_24E601704(v46, &qword_27F22ABF8, &qword_24F989C38);
  }

  else
  {
    (*(v40 + 32))(v104, v46, v47);
    if (v44)
    {
      sub_24F92AD78();
      v50 = v117;
    }

    else
    {
      v50 = v40;
    }

    (*(v50 + 8))(v49, v47);
  }

  v51 = v113;
  v52 = *(*v2 + 664);
  swift_beginAccess();
  v104 = v52;
  v53 = &v52[v2];
  v54 = v99;
  sub_24E60169C(v53, v99, &qword_27F22AC10, &qword_24F989C50);
  v55 = v98(v54, 1, v51);
  v56 = v102;
  if (v55 == 1)
  {
    sub_24E601704(v54, &qword_27F22AC10, &qword_24F989C50);
    v57 = v116;
    v58 = v115;
    v59 = v119;
  }

  else
  {
    v59 = v119;
    v60 = v97;
    (*(v119 + 32))(v97, v54, v51);
    v58 = v115;
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v59 + 8))(v60, v51);
    v57 = v116;
  }

  v61 = *(*v2 + 680);
  swift_beginAccess();
  v106 = v61;
  v62 = v2 + v61;
  v63 = v103;
  sub_24E60169C(v62, v103, &qword_27F22ABF0, &qword_24F989C30);
  if ((*(v58 + 48))(v63, 1, v57) == 1)
  {
    sub_24E601704(v63, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v58 + 32))(v56, v63, v57);
    if (v44)
    {
      sub_24F92AD78();
    }

    (*(v58 + 8))(v56, v57);
  }

  v64 = qword_27F39CC00;
  v65 = v101;
  if (*(v2 + qword_27F39CC00))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20, &qword_24F989C60);
    sub_24E602068(&qword_27F22AC28, &qword_27F22AC20, &qword_24F989C60, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30, &qword_24F989C68);
    v59 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = v65;
  v68 = *(v59 + 56);
  v69 = 1;
  v119 = v59 + 56;
  v68(v67, v66, 1, v51);
  v70 = v100;
  swift_beginAccess();
  sub_24E61DA68(v67, v2 + v70, &qword_27F22AC10, &qword_24F989C50);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30, &qword_24F989C68);
    v71 = v105;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v69 = 0;
  }

  else
  {
    v71 = v105;
  }

  v72 = 1;
  (*(v111 + 56))(v71, v69, 1, v112);
  swift_beginAccess();
  sub_24E61DA68(v71, v2 + v41, &qword_27F22AC08, &qword_24F989C48);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40, &unk_24F9E1CB0);
    sub_24E602068(&qword_27F22AC48, &qword_27F22AC40, &unk_24F9E1CB0, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30, &qword_24F989C68);
    v73 = v107;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v72 = 0;
    v74 = v108;
  }

  else
  {
    v74 = v108;
    v73 = v107;
  }

  v75 = 1;
  (*(v117 + 56))(v73, v72, 1, v114);
  swift_beginAccess();
  sub_24E61DA68(v73, v2 + v45, &qword_27F22ABF8, &qword_24F989C38);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20, &qword_24F989C60);
    sub_24E602068(&qword_27F22AC28, &qword_27F22AC20, &qword_24F989C60, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30, &qword_24F989C68);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v75 = 0;
  }

  v76 = v109;
  v77 = 1;
  v68(v74, v75, 1, v113);
  v78 = v104;
  swift_beginAccess();
  sub_24E61DA68(v74, &v78[v2], &qword_27F22AC10, &qword_24F989C50);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30, &qword_24F989C68);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v77 = 0;
  }

  v79 = v118;
  v80 = v110;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v82 = 1;
  (*(*(v81 - 8) + 56))(v76, v77, 1, v81);
  v83 = *(*v2 + 672);
  swift_beginAccess();
  sub_24E61DA68(v76, v2 + v83, &qword_27F22ABE8, &unk_24F9AA4F0);
  swift_endAccess();
  if (*(v2 + v64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);

    sub_24F9288B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC30, &qword_24F989C68);
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v82 = 0;
  }

  (*(v115 + 56))(v80, v82, 1, v116);
  v84 = v106;
  swift_beginAccess();
  sub_24E61DA68(v80, v2 + v84, &qword_27F22ABF0, &qword_24F989C30);
  swift_endAccess();
  v85 = *(v2 + v64);
  if (v85)
  {
    v86 = qword_27F39CC08;
    swift_beginAccess();
    v87 = *(v2 + v86);
    v88 = qword_27F39C798;
    swift_beginAccess();
    v89 = *(v85 + v88);
    *(v85 + v88) = v87;

    v90 = v87;
  }

  if (v79)
  {
    v91 = *(v2 + *(*v2 + 688));
    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    *(v92 + 24) = 0;
    *(v92 + 32) = 65920;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EBD466C;
    *(v93 + 24) = v92;
    aBlock[4] = sub_24E972460;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_57;
    v94 = _Block_copy(aBlock);

    dispatch_sync(v91, v94);
    _Block_release(v94);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24EBCD380(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_565;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56EC;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBCDB54(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_511;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56E8;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBCE328(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_407;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56E0;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBCEAFC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_355;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56DC;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBCF2D0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_186;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56CC;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBCFAA4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_459;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56E4;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBD0278(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_303;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56D4;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBD0A4C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);
      sub_24E60169C(v65, v63, &unk_27F237670, &qword_24F989C80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_24E617130((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_24E601704(v65, &unk_27F237670, &qword_24F989C80);
    }
  }

  else
  {
    v60 = v9;
    v62 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_27F39CC10) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_24EBD54C8;
    *(v21 + 24) = v20;
    aBlock[4] = sub_24E9727C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E971290;
    aBlock[3] = &block_descriptor_121;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v61 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_24EA0A8D8(v26);
        v1 = v61;
        swift_endAccess();

        v27 = v62;
        if (v1[3])
        {
          swift_beginAccess();

          sub_24EA0A904(v28);
          v1 = v61;
          swift_endAccess();
        }
      }

      else
      {

        v27 = v62;
      }

      v29 = *(v1 + *(*v1 + 736));
      if (v29)
      {
        v56 = *(*v1 + 736);
        v30 = *(v29 + 32);
        v58 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v31 = 1 << *(v13 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v33 = v32 & v13[8];
        v34 = (v31 + 63) >> 6;
        v10 = (v27 + 48);
        v55 = (v27 + 32);
        swift_bridgeObjectRetain_n();
        v57 = v30;

        v35 = 0;
        v59 = MEMORY[0x277D84F90];
        while (1)
        {
          v36 = v35;
          if (!v33)
          {
            break;
          }

LABEL_22:
          v37 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          sub_24E60169C(*(v13[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
          }

          else
          {
            v54 = *v55;
            v54(v60, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_24E616878(0, *(v59 + 2) + 1, 1, v59);
            }

            v38 = v62;
            v40 = *(v59 + 2);
            v39 = *(v59 + 3);
            v41 = v40 + 1;
            if (v40 >= v39 >> 1)
            {
              v53 = v40 + 1;
              v52 = v40;
              v44 = sub_24E616878((v39 > 1), v40 + 1, 1, v59);
              v41 = v53;
              v40 = v52;
              v59 = v44;
            }

            v43 = v59;
            v42 = v60;
            *(v59 + 2) = v41;
            v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
          }
        }

        v12 = &unk_27F22EC30;
        while (1)
        {
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v35 >= v34)
          {
            break;
          }

          v33 = v11[v35];
          ++v36;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v45 = sub_24ED6555C(v59);

        if (v45)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v47 = sub_24EA69948(v46);
          *(v61 + v56) = v47;

          v48 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v49 = *(v47 + 16);
          v50 = *(v47 + 24);
          *(v47 + 16) = sub_24EBD56C8;
          *(v47 + 24) = v48;

          sub_24E824448(v49, v50);
        }
      }
    }
  }
}

void sub_24EBD1220(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v64 = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (!v11)
    {
      return;
    }

    v6 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v12 = *(v11 + v6);
    sub_24E60169C(&v64, v62, &unk_27F237670, &qword_24F989C80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v6) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v12 = sub_24E617130(0, v12[2] + 1, 1, v12);
      *(v11 + v6) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_24E617130((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v12[v15 + 4] = v10;
    *(v11 + v6) = v12;
    swift_endAccess();
    goto LABEL_7;
  }

  v59 = v9;
  v61 = v7;
  v16 = *a1;
  v17 = a1[3];
  *(v1 + qword_27F39CC10) = *a1;

  v18 = *(v1 + *(*v1 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v16;
  *(v19 + 32) = 65792;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24EBD54A4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_24E9727C0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_69;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  if (v17)
  {
    v23 = v17;
    swift_beginAccess();
    v24 = v1[3];
    v60 = v1;
    if (v24)
    {
      swift_beginAccess();

      sub_24EA0A8D8(v25);
      v1 = v60;
      swift_endAccess();

      v26 = v61;
      if (v1[3])
      {
        swift_beginAccess();

        sub_24EA0A904(v27);
        v1 = v60;
        swift_endAccess();
      }
    }

    else
    {

      v26 = v61;
    }

    v28 = *(v1 + *(*v1 + 736));
    if (v28)
    {
      v55 = *(*v1 + 736);
      v29 = *(v28 + 32);
      v57 = v23;
      v12 = *(v23 + 16);
      v11 = v12 + 8;
      v30 = 1 << *(v12 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & v12[8];
      v33 = (v30 + 63) >> 6;
      v10 = (v26 + 48);
      v54 = (v26 + 32);
      swift_bridgeObjectRetain_n();
      v56 = v29;

      v34 = 0;
      v58 = MEMORY[0x277D84F90];
      while (1)
      {
        v35 = v34;
        if (!v32)
        {
          break;
        }

LABEL_23:
        v36 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        sub_24E60169C(*(v12[7] + ((v34 << 9) | (8 * v36))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
        if ((*v10)(v5, 1, v6) == 1)
        {
          sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
        }

        else
        {
          v53 = *v54;
          v53(v59, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_24E616878(0, *(v58 + 2) + 1, 1, v58);
          }

          v37 = v61;
          v39 = *(v58 + 2);
          v38 = *(v58 + 3);
          v40 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            v52 = v39 + 1;
            v51 = v39;
            v43 = sub_24E616878((v38 > 1), v39 + 1, 1, v58);
            v40 = v52;
            v39 = v51;
            v58 = v43;
          }

          v42 = v58;
          v41 = v59;
          *(v58 + 2) = v40;
          v53(&v42[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39], v41, v6);
        }
      }

      while (1)
      {
        v34 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v34 >= v33)
        {
          break;
        }

        v32 = v11[v34];
        ++v35;
        if (v32)
        {
          goto LABEL_23;
        }
      }

      v44 = sub_24ED6555C(v58);

      if (v44)
      {
        type metadata accessor for PageRefreshGate(0);
        swift_allocObject();

        v46 = sub_24EA69948(v45);
        *(v60 + v55) = v46;

        v47 = swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        v48 = *(v46 + 16);
        v49 = *(v46 + 24);
        *(v46 + 16) = sub_24EBD56C0;
        *(v46 + 24) = v47;

        sub_24E824448(v48, v49);
      }
    }

LABEL_7:
  }
}