uint64_t sub_1B94CA12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF838, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CA1AC(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CA21C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CA2B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF338);
  __swift_project_value_buffer(v0, qword_1EBACF338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "urlValue";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "darkUrlValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_URLImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B94CA5B8(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B94CA504(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B94CA504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_URLImage(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B8CD3338(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t sub_1B94CA5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_URLImage(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B8CD3338(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_URLImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v28 = v2;
  v29 = v3;
  v4 = OUTLINED_FUNCTION_502();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_183(v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v26 = v14;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  type metadata accessor for Searchfoundation_URLImage(0);
  v27 = v0;
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8E20, &unk_1B964D620);
  }

  else
  {
    OUTLINED_FUNCTION_19_25();
    sub_1B94C256C();
    OUTLINED_FUNCTION_46_15();
    sub_1B8CD3338(v19, v20, protocol conformance descriptor for Searchfoundation_URL);
    sub_1B964C740();
    OUTLINED_FUNCTION_186();
    sub_1B94C261C();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  if (__swift_getEnumTagSinglePayload(v21, v22, v23) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_7:
    sub_1B964C290();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_19_25();
  sub_1B94C256C();
  OUTLINED_FUNCTION_46_15();
  sub_1B8CD3338(v24, v25, protocol conformance descriptor for Searchfoundation_URL);
  sub_1B964C740();
  OUTLINED_FUNCTION_183_8();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_URLImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v2 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44_0();
  v46 = v4;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_266_0();
  v48 = v6;
  v7 = OUTLINED_FUNCTION_502();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v47 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v50 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v49 = type metadata accessor for Searchfoundation_URLImage(0);
  v21 = *(v15 + 48);
  v51 = v1;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v20);
  if (v23)
  {
    OUTLINED_FUNCTION_37_0(&v20[v21]);
    if (v23)
    {
      sub_1B8D9207C(v20, &qword_1EBAB8E20, &unk_1B964D620);
      v22 = v2;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v20[v21]);
  if (v23)
  {
    OUTLINED_FUNCTION_45_17();
    sub_1B94C261C();
LABEL_9:
    v24 = &qword_1EBAB8E28;
    v25 = &unk_1B96B7BB0;
LABEL_10:
    v26 = v20;
LABEL_27:
    sub_1B8D9207C(v26, v24, v25);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1_79();
  v27 = v48;
  sub_1B94C256C();
  v28 = *v14 == *v27 && v14[1] == v27[1];
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_130_6();
    sub_1B94C261C();
    OUTLINED_FUNCTION_432();
    sub_1B94C261C();
    v24 = &qword_1EBAB8E20;
    v25 = &unk_1B964D620;
    goto LABEL_10;
  }

  sub_1B964C2B0();
  v22 = v2;
  OUTLINED_FUNCTION_0_94();
  sub_1B8CD3338(v29, v30, MEMORY[0x1E69AAC10]);
  v31 = sub_1B964C850();
  OUTLINED_FUNCTION_19_25();
  sub_1B94C261C();
  OUTLINED_FUNCTION_472();
  sub_1B94C261C();
  sub_1B8D9207C(v20, &qword_1EBAB8E20, &unk_1B964D620);
  if ((v31 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v32 = v50;
  v33 = *(v15 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v34 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v34, v35, v22);
  if (v23)
  {
    OUTLINED_FUNCTION_178(v32 + v33, 1, v22);
    if (v23)
    {
      sub_1B8D9207C(v32, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_36:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_94();
      sub_1B8CD3338(v44, v45, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_242_0();
      v38 = sub_1B964C850();
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v36 = v47;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v32 + v33, 1, v22);
  if (v37)
  {
    OUTLINED_FUNCTION_45_17();
    sub_1B94C261C();
LABEL_25:
    v24 = &qword_1EBAB8E28;
    v25 = &unk_1B96B7BB0;
LABEL_26:
    v26 = v32;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_1_79();
  v39 = v46;
  sub_1B94C256C();
  v40 = *v36 == *v39 && v36[1] == v39[1];
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_131_9();
    sub_1B94C261C();
    OUTLINED_FUNCTION_182();
    sub_1B94C261C();
    v24 = &qword_1EBAB8E20;
    v25 = &unk_1B964D620;
    goto LABEL_26;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  sub_1B8CD3338(v41, v42, MEMORY[0x1E69AAC10]);
  v43 = sub_1B964C850();
  OUTLINED_FUNCTION_130_6();
  sub_1B94C261C();
  sub_1B94C261C();
  sub_1B8D9207C(v32, &qword_1EBAB8E20, &unk_1B964D620);
  if (v43)
  {
    goto LABEL_36;
  }

LABEL_28:
  v38 = 0;
LABEL_29:
  OUTLINED_FUNCTION_264(v38);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94CAECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF830, type metadata accessor for Searchfoundation_URLImage, protocol conformance descriptor for Searchfoundation_URLImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CAF4C(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBAB5490, type metadata accessor for Searchfoundation_URLImage, protocol conformance descriptor for Searchfoundation_URLImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CAFBC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBAB5490, type metadata accessor for Searchfoundation_URLImage, protocol conformance descriptor for Searchfoundation_URLImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CB0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_CalendarImage(0);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B8CD3338(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  return sub_1B964C580();
}

void Searchfoundation_CalendarImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_140_1();
  type metadata accessor for Searchfoundation_Date(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Searchfoundation_CalendarImage(0);
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  if (__swift_getEnumTagSinglePayload(v6, v7, v8) == 1)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_4:
    sub_1B964C290();
    goto LABEL_5;
  }

  sub_1B94C256C();
  sub_1B8CD3338(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C740();
  OUTLINED_FUNCTION_242_0();
  sub_1B94C261C();
  if (!v0)
  {
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_CalendarImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = (v6 - v5);
  v8 = OUTLINED_FUNCTION_686();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_22_3();
  v15 = *(type metadata accessor for Searchfoundation_CalendarImage(v14) + 20);
  v16 = *(v12 + 56);
  OUTLINED_FUNCTION_643(v1 + v15, v2);
  OUTLINED_FUNCTION_643(v0 + v15, v2 + v16);
  OUTLINED_FUNCTION_37_0(v2);
  if (v17)
  {
    OUTLINED_FUNCTION_37_0(v2 + v16);
    if (v17)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_14:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_94();
      sub_1B8CD3338(v24, v25, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_294();
      v20 = sub_1B964C850();
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v16);
  if (v17)
  {
    sub_1B94C261C();
LABEL_9:
    v18 = &qword_1EBAB8E38;
    v19 = &qword_1B96CD870;
LABEL_10:
    sub_1B8D9207C(v2, v18, v19);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_25();
  sub_1B94C256C();
  if (*v3 != *v7)
  {
    sub_1B94C261C();
    sub_1B94C261C();
    v18 = &qword_1EBAB8E30;
    v19 = &qword_1B964D630;
    goto LABEL_10;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  sub_1B8CD3338(v21, v22, MEMORY[0x1E69AAC10]);
  v23 = sub_1B964C850();
  sub_1B94C261C();
  OUTLINED_FUNCTION_491();
  sub_1B94C261C();
  sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
  if (v23)
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = 0;
LABEL_15:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94CB6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF828, type metadata accessor for Searchfoundation_CalendarImage, protocol conformance descriptor for Searchfoundation_CalendarImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CB734(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF690, type metadata accessor for Searchfoundation_CalendarImage, protocol conformance descriptor for Searchfoundation_CalendarImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CB7A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF690, type metadata accessor for Searchfoundation_CalendarImage, protocol conformance descriptor for Searchfoundation_CalendarImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CB83C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF368);
  __swift_project_value_buffer(v0, qword_1EBACF368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "contactIdentifiers";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "threeDTouchEnabled";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "appIconBadgeBundleIdentifier";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ContactImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
    }
  }

  return result;
}

uint64_t Searchfoundation_ContactImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 4), !v1))
      {
        type metadata accessor for Searchfoundation_ContactImage(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ContactImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0 || *(v1 + 8) != *(v0 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ContactImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v10 = sub_1B8CD3338(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B94CBCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF820, type metadata accessor for Searchfoundation_ContactImage, protocol conformance descriptor for Searchfoundation_ContactImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CBD68(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF6A8, type metadata accessor for Searchfoundation_ContactImage, protocol conformance descriptor for Searchfoundation_ContactImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CBDD8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF6A8, type metadata accessor for Searchfoundation_ContactImage, protocol conformance descriptor for Searchfoundation_ContactImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CBE70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF380);
  __swift_project_value_buffer(v0, qword_1EBACF380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "monogramLetters";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "monogramStyle";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MonogramImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v2 + 24))
  {
    v6 = v6 != 0;
  }

  if (*(v1 + 24) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_MonogramImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v11 = sub_1B8CD3338(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B94CC2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF818, type metadata accessor for Searchfoundation_MonogramImage, protocol conformance descriptor for Searchfoundation_MonogramImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CC328(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF6C0, type metadata accessor for Searchfoundation_MonogramImage, protocol conformance descriptor for Searchfoundation_MonogramImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CC398(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF6C0, type metadata accessor for Searchfoundation_MonogramImage, protocol conformance descriptor for Searchfoundation_MonogramImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CC498()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t Searchfoundation_LocalImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B94D10C4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    type metadata accessor for Searchfoundation_LocalImage(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Searchfoundation_LocalImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 == 1)
        {
          goto LABEL_6;
        }

        return 0;
      case 2:
        if (v1 == 2)
        {
          goto LABEL_6;
        }

        return 0;
      case 3:
        if (v1 == 3)
        {
          goto LABEL_6;
        }

        return 0;
      case 4:
        if (v1 == 4)
        {
          goto LABEL_6;
        }

        return 0;
      default:
        if (v1)
        {
          return 0;
        }

        goto LABEL_6;
    }
  }

  if (v1 != v3)
  {
    return 0;
  }

LABEL_6:
  type metadata accessor for Searchfoundation_LocalImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v7 = sub_1B8CD3338(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B94CC768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF810, type metadata accessor for Searchfoundation_LocalImage, protocol conformance descriptor for Searchfoundation_LocalImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CC7E8(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF6D8, type metadata accessor for Searchfoundation_LocalImage, protocol conformance descriptor for Searchfoundation_LocalImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CC858(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF6D8, type metadata accessor for Searchfoundation_LocalImage, protocol conformance descriptor for Searchfoundation_LocalImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CC8F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF3B0);
  __swift_project_value_buffer(v0, qword_1EBACF3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "filePath";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coreSpotlightIdentifier";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fileProviderIdentifier";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94CCB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_QuickLookThumbnailImage(0);
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B8CD3338(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_QuickLookThumbnailImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_173_3(v3);
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Searchfoundation_URL(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_140_1();
  v12 = type metadata accessor for Searchfoundation_QuickLookThumbnailImage(v11);
  OUTLINED_FUNCTION_170_5(v12);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
  }

  else
  {
    OUTLINED_FUNCTION_19_25();
    sub_1B94C256C();
    OUTLINED_FUNCTION_46_15();
    v15 = sub_1B8CD3338(v13, v14, protocol conformance descriptor for Searchfoundation_URL);
    OUTLINED_FUNCTION_158_6(v15);
    OUTLINED_FUNCTION_183_8();
    if (v0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v18 || (OUTLINED_FUNCTION_137_6(v16, v17, 2), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v21 || (OUTLINED_FUNCTION_137_6(v19, v20, 3), !v1))
    {
      OUTLINED_FUNCTION_159_2();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_QuickLookThumbnailImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  v26[1] = type metadata accessor for Searchfoundation_QuickLookThumbnailImage(0);
  v13 = *(v11 + 56);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v14)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v13);
    if (!v14)
    {
      OUTLINED_FUNCTION_1_79();
      sub_1B94C256C();
      v18 = *v10 == *v6 && v10[1] == v6[1];
      if (v18 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_94();
        sub_1B8CD3338(v19, v20, MEMORY[0x1E69AAC10]);
        v21 = sub_1B964C850();
        sub_1B94C261C();
        OUTLINED_FUNCTION_686();
        sub_1B94C261C();
        sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
        if ((v21 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      OUTLINED_FUNCTION_131_9();
      sub_1B94C261C();
      sub_1B94C261C();
      v15 = &qword_1EBAB8E20;
      v16 = &unk_1B964D620;
LABEL_10:
      sub_1B8D9207C(v2, v15, v16);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_45_17();
    sub_1B94C261C();
LABEL_9:
    v15 = &qword_1EBAB8E28;
    v16 = &unk_1B96B7BB0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v13);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_19:
  v22 = *v1 == *v0 && v1[1] == v0[1];
  if (v22 || (sub_1B964C9F0() & 1) != 0)
  {
    v23 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v23 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_94();
      sub_1B8CD3338(v24, v25, MEMORY[0x1E69AAC10]);
      v17 = sub_1B964C850();
      goto LABEL_12;
    }
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v17);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94CD148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF808, type metadata accessor for Searchfoundation_QuickLookThumbnailImage, protocol conformance descriptor for Searchfoundation_QuickLookThumbnailImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CD1C8(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF6F0, type metadata accessor for Searchfoundation_QuickLookThumbnailImage, protocol conformance descriptor for Searchfoundation_QuickLookThumbnailImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CD238(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF6F0, type metadata accessor for Searchfoundation_QuickLookThumbnailImage, protocol conformance descriptor for Searchfoundation_QuickLookThumbnailImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CD2D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF3C8);
  __swift_project_value_buffer(v0, qword_1EBACF3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iconType";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94CD4E8()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B94CD610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(void))
{
  v10 = OUTLINED_FUNCTION_1_15();
  if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 1), !v6))
  {
    if (!*(v7 + 16) || (OUTLINED_FUNCTION_94_4(), a4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v6))
    {
      a6(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Searchfoundation_AppIconImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }

LABEL_12:
      type metadata accessor for Searchfoundation_AppIconImage(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_94();
      v10 = sub_1B8CD3338(v8, v9, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v10) & 1;
    }

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1B94CD83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF800, type metadata accessor for Searchfoundation_AppIconImage, protocol conformance descriptor for Searchfoundation_AppIconImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CD8BC(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF708, type metadata accessor for Searchfoundation_AppIconImage, protocol conformance descriptor for Searchfoundation_AppIconImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CD92C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF708, type metadata accessor for Searchfoundation_AppIconImage, protocol conformance descriptor for Searchfoundation_AppIconImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CD9C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF3E0);
  __swift_project_value_buffer(v0, qword_1EBACF3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "persistentID";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spotlightIdentifier";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mediaEntityType";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "universalLibraryID";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_MediaArtworkImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B93FCD1C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_MediaArtworkImage.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_94_4(), sub_1B92C6768(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 4), !v0))
        {
          type metadata accessor for Searchfoundation_MediaArtworkImage(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MediaArtworkImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B8D92198(*(v2 + 32), *(v2 + 40), v1[4]))
  {
    return 0;
  }

  v9 = *(v2 + 48) == v1[6] && *(v2 + 56) == v1[7];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_MediaArtworkImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v12 = sub_1B8CD3338(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B94CDF10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7F8, type metadata accessor for Searchfoundation_MediaArtworkImage, protocol conformance descriptor for Searchfoundation_MediaArtworkImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CDF90(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF720, type metadata accessor for Searchfoundation_MediaArtworkImage, "Ѫ{5|\v\a");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CE000(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF720, type metadata accessor for Searchfoundation_MediaArtworkImage, "Ѫ{5|\v\a");

  return sub_1B964C5D0();
}

uint64_t sub_1B94CE098()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5308);
  __swift_project_value_buffer(v0, qword_1EBAB5308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "symbolName";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "punchThroughBackground";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "backgroundColor";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "primaryColor";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "secondaryColor";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "fillStyle";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_SymbolImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B94CE448(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B94CE4B0(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B94CE518(v3, v4, v5, v6);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B94CE580(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_SymbolImage.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B9463458(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_94_4(), sub_1B9463458(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
        {
          if (!*(v1 + 56) || (OUTLINED_FUNCTION_94_4(), sub_1B9463458(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
          {
            if (!*(v1 + 72) || (OUTLINED_FUNCTION_94_4(), sub_1B94D1118(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
            {
              type metadata accessor for Searchfoundation_SymbolImage(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_SymbolImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (sub_1B964C9F0()) && *(v2 + 16) == *(v1 + 16))
  {
    v6 = *(v2 + 24);
    v7 = *(v1 + 24);
    if (*(v1 + 32) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_10;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_10;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_10;
        case 4:
          if (v6 != 4)
          {
            return 0;
          }

          goto LABEL_10;
        case 5:
          if (v6 != 5)
          {
            return 0;
          }

          goto LABEL_10;
        case 6:
          if (v6 != 6)
          {
            return 0;
          }

          goto LABEL_10;
        case 7:
          if (v6 != 7)
          {
            return 0;
          }

          goto LABEL_10;
        default:
          break;
      }
    }

    if (v6 == v7)
    {
LABEL_10:
      if (sub_1B8D92198(*(v2 + 40), *(v2 + 48), *(v1 + 40)) && sub_1B8D92198(*(v2 + 56), *(v2 + 64), *(v1 + 56)) && sub_1B8D92198(*(v2 + 72), *(v2 + 80), *(v1 + 72)))
      {
        type metadata accessor for Searchfoundation_SymbolImage(0);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_94();
        v10 = sub_1B8CD3338(v8, v9, MEMORY[0x1E69AAC10]);
        return OUTLINED_FUNCTION_634(v10) & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B94CE964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7F0, type metadata accessor for Searchfoundation_SymbolImage, protocol conformance descriptor for Searchfoundation_SymbolImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CE9E4(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1ED9D2EF8, type metadata accessor for Searchfoundation_SymbolImage, protocol conformance descriptor for Searchfoundation_SymbolImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CEA54(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1ED9D2EF8, type metadata accessor for Searchfoundation_SymbolImage, protocol conformance descriptor for Searchfoundation_SymbolImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CEAEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF3F8);
  __swift_project_value_buffer(v0, qword_1EBACF3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "photoIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isSyndicated";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "peopleInPhoto";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "applicationBundleIdentifier";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PhotosLibraryImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B94CEDF4(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94CEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Person(0);
  sub_1B8CD3338(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
  return sub_1B964C570();
}

uint64_t Searchfoundation_PhotosLibraryImage.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
    {
      if (!*(*(v1 + 24) + 16) || (type metadata accessor for Searchfoundation_Person(0), sub_1B8CD3338(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 4), !v0))
        {
          type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_PhotosLibraryImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  sub_1B8D68234(*(v2 + 24), *(v1 + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v10 = sub_1B8CD3338(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B94CF10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7E8, type metadata accessor for Searchfoundation_PhotosLibraryImage, protocol conformance descriptor for Searchfoundation_PhotosLibraryImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CF18C(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage, protocol conformance descriptor for Searchfoundation_PhotosLibraryImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CF1FC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage, protocol conformance descriptor for Searchfoundation_PhotosLibraryImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CF294()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF410);
  __swift_project_value_buffer(v0, qword_1EBACF410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "albumIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicationBundleIdentifier";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94CF568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7E0, type metadata accessor for Searchfoundation_PhotosAlbumImage, protocol conformance descriptor for Searchfoundation_PhotosAlbumImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CF5E8(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF750, type metadata accessor for Searchfoundation_PhotosAlbumImage, protocol conformance descriptor for Searchfoundation_PhotosAlbumImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CF658(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF750, type metadata accessor for Searchfoundation_PhotosAlbumImage, protocol conformance descriptor for Searchfoundation_PhotosAlbumImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CF6F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF428);
  __swift_project_value_buffer(v0, qword_1EBACF428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "memoryIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicationBundleIdentifier";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94CF908(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_1_15();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B94CF9A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v12 = sub_1B8CD3338(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B94CFADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7D8, type metadata accessor for Searchfoundation_PhotosMemoryImage, protocol conformance descriptor for Searchfoundation_PhotosMemoryImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94CFB5C(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF768, type metadata accessor for Searchfoundation_PhotosMemoryImage, protocol conformance descriptor for Searchfoundation_PhotosMemoryImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94CFBCC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF768, type metadata accessor for Searchfoundation_PhotosMemoryImage, protocol conformance descriptor for Searchfoundation_PhotosMemoryImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94CFC64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF440);
  __swift_project_value_buffer(v0, qword_1EBACF440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hour";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minute";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "second";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ClockImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Searchfoundation_ClockImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        type metadata accessor for Searchfoundation_ClockImage(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ClockImage.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ClockImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v8 = sub_1B8CD3338(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B94D00E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7D0, type metadata accessor for Searchfoundation_ClockImage, protocol conformance descriptor for Searchfoundation_ClockImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94D0160(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF780, type metadata accessor for Searchfoundation_ClockImage, protocol conformance descriptor for Searchfoundation_ClockImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94D01D0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF780, type metadata accessor for Searchfoundation_ClockImage, protocol conformance descriptor for Searchfoundation_ClockImage);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_ShortcutsImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_ShortcutsImage.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_1_15();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    type metadata accessor for Searchfoundation_ShortcutsImage(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Searchfoundation_ShortcutsImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ShortcutsImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_94();
  v6 = sub_1B8CD3338(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B94D047C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7C8, type metadata accessor for Searchfoundation_ShortcutsImage, protocol conformance descriptor for Searchfoundation_ShortcutsImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94D04FC(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF798, type metadata accessor for Searchfoundation_ShortcutsImage, protocol conformance descriptor for Searchfoundation_ShortcutsImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94D056C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF798, type metadata accessor for Searchfoundation_ShortcutsImage, protocol conformance descriptor for Searchfoundation_ShortcutsImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B94D0604()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF470);
  __swift_project_value_buffer(v0, qword_1EBACF470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "punchout";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coreSpotlightIdentifier";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fileProviderIdentifier";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94D085C()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1B94D08E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_DefaultPunchoutAppIconImage(0);
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD3338(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C580();
}

void Searchfoundation_DefaultPunchoutAppIconImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_173_3(v3);
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Searchfoundation_Punchout(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_140_1();
  v12 = type metadata accessor for Searchfoundation_DefaultPunchoutAppIconImage(v11);
  OUTLINED_FUNCTION_170_5(v12);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBACAF90, &unk_1B96B77C0);
  }

  else
  {
    sub_1B94C256C();
    v13 = sub_1B8CD3338(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_158_6(v13);
    OUTLINED_FUNCTION_183_8();
    if (v0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_1();
  if (!v16 || (OUTLINED_FUNCTION_137_6(v14, v15, 2), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v19 || (OUTLINED_FUNCTION_137_6(v17, v18, 3), !v1))
    {
      OUTLINED_FUNCTION_159_2();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_DefaultPunchoutAppIconImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v3 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB028, &unk_1B96B98F0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Searchfoundation_DefaultPunchoutAppIconImage(0);
  v9 = *(v7 + 56);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  v10 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v10, v11, v3);
  if (!v12)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v9, 1, v3);
    if (!v12)
    {
      sub_1B94C256C();
      v14 = static Searchfoundation_Punchout.== infix(_:_:)();
      sub_1B94C261C();
      sub_1B94C261C();
      sub_1B8D9207C(v2, &qword_1EBACAF90, &unk_1B96B77C0);
      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_1B94C261C();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBACB028, &unk_1B96B98F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_178(v2 + v9, 1, v3);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBACAF90, &unk_1B96B77C0);
LABEL_12:
  v15 = *v1 == *v0 && v1[1] == v0[1];
  if (v15 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_84_1();
    v18 = v12 && v16 == v17;
    if (v18 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_94();
      v21 = sub_1B8CD3338(v19, v20, MEMORY[0x1E69AAC10]);
      v13 = OUTLINED_FUNCTION_634(v21);
      goto LABEL_23;
    }
  }

LABEL_10:
  v13 = 0;
LABEL_23:
  OUTLINED_FUNCTION_264(v13);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94D0E28()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD3338(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94D0F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3338(&qword_1EBACF7C0, type metadata accessor for Searchfoundation_DefaultPunchoutAppIconImage, protocol conformance descriptor for Searchfoundation_DefaultPunchoutAppIconImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94D0F80(uint64_t a1)
{
  v2 = sub_1B8CD3338(&qword_1EBACF7B0, type metadata accessor for Searchfoundation_DefaultPunchoutAppIconImage, protocol conformance descriptor for Searchfoundation_DefaultPunchoutAppIconImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94D0FF0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3338(&qword_1EBACF7B0, type metadata accessor for Searchfoundation_DefaultPunchoutAppIconImage, protocol conformance descriptor for Searchfoundation_DefaultPunchoutAppIconImage);

  return sub_1B964C5D0();
}

unint64_t sub_1B94D1070()
{
  result = qword_1EBACF518;
  if (!qword_1EBACF518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MonogramStyle, &type metadata for Searchfoundation_MonogramStyle, v0, v1);
    atomic_store(result, &qword_1EBACF518);
  }

  return result;
}

unint64_t sub_1B94D10C4()
{
  result = qword_1EBACF528;
  if (!qword_1EBACF528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_LocalImageType, &type metadata for Searchfoundation_LocalImageType, v0, v1);
    atomic_store(result, &qword_1EBACF528);
  }

  return result;
}

unint64_t sub_1B94D1118()
{
  result = qword_1EBACF550;
  if (!qword_1EBACF550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SymbolImageFillStyle, &type metadata for Searchfoundation_SymbolImageFillStyle, v0, v1);
    atomic_store(result, &qword_1EBACF550);
  }

  return result;
}

unint64_t sub_1B94D1170()
{
  result = qword_1ED9D2F30;
  if (!qword_1ED9D2F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageSource, &type metadata for Searchfoundation_ImageSource, v0, v1);
    atomic_store(result, &qword_1ED9D2F30);
  }

  return result;
}

unint64_t sub_1B94D11C8()
{
  result = qword_1ED9D2F20;
  if (!qword_1ED9D2F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageSource, &type metadata for Searchfoundation_ImageSource, v0, v1);
    atomic_store(result, &qword_1ED9D2F20);
  }

  return result;
}

unint64_t sub_1B94D1220()
{
  result = qword_1ED9D2F28;
  if (!qword_1ED9D2F28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageSource, &type metadata for Searchfoundation_ImageSource, v0, v1);
    atomic_store(result, &qword_1ED9D2F28);
  }

  return result;
}

unint64_t sub_1B94D12A8()
{
  result = qword_1EBAB5478;
  if (!qword_1EBAB5478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageType, &type metadata for Searchfoundation_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAB5478);
  }

  return result;
}

unint64_t sub_1B94D1300()
{
  result = qword_1EBAB5468;
  if (!qword_1EBAB5468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageType, &type metadata for Searchfoundation_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAB5468);
  }

  return result;
}

unint64_t sub_1B94D1358()
{
  result = qword_1EBAB5470;
  if (!qword_1EBAB5470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageType, &type metadata for Searchfoundation_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAB5470);
  }

  return result;
}

unint64_t sub_1B94D13E0()
{
  result = qword_1EBACF5B0;
  if (!qword_1EBACF5B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageCornerRoundingStyle, &type metadata for Searchfoundation_ImageCornerRoundingStyle, v0, v1);
    atomic_store(result, &qword_1EBACF5B0);
  }

  return result;
}

unint64_t sub_1B94D1438()
{
  result = qword_1EBACF5B8;
  if (!qword_1EBACF5B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageCornerRoundingStyle, &type metadata for Searchfoundation_ImageCornerRoundingStyle, v0, v1);
    atomic_store(result, &qword_1EBACF5B8);
  }

  return result;
}

unint64_t sub_1B94D1490()
{
  result = qword_1EBACF5C0;
  if (!qword_1EBACF5C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageCornerRoundingStyle, &type metadata for Searchfoundation_ImageCornerRoundingStyle, v0, v1);
    atomic_store(result, &qword_1EBACF5C0);
  }

  return result;
}

unint64_t sub_1B94D1518()
{
  result = qword_1EBACF5D8;
  if (!qword_1EBACF5D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MonogramStyle, &type metadata for Searchfoundation_MonogramStyle, v0, v1);
    atomic_store(result, &qword_1EBACF5D8);
  }

  return result;
}

unint64_t sub_1B94D1570()
{
  result = qword_1EBACF5E0;
  if (!qword_1EBACF5E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MonogramStyle, &type metadata for Searchfoundation_MonogramStyle, v0, v1);
    atomic_store(result, &qword_1EBACF5E0);
  }

  return result;
}

unint64_t sub_1B94D15C8()
{
  result = qword_1EBACF5E8;
  if (!qword_1EBACF5E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_MonogramStyle, &type metadata for Searchfoundation_MonogramStyle, v0, v1);
    atomic_store(result, &qword_1EBACF5E8);
  }

  return result;
}

unint64_t sub_1B94D1650()
{
  result = qword_1EBACF600;
  if (!qword_1EBACF600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_LocalImageType, &type metadata for Searchfoundation_LocalImageType, v0, v1);
    atomic_store(result, &qword_1EBACF600);
  }

  return result;
}

unint64_t sub_1B94D16A8()
{
  result = qword_1EBACF608;
  if (!qword_1EBACF608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_LocalImageType, &type metadata for Searchfoundation_LocalImageType, v0, v1);
    atomic_store(result, &qword_1EBACF608);
  }

  return result;
}

unint64_t sub_1B94D1700()
{
  result = qword_1EBACF610;
  if (!qword_1EBACF610)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_LocalImageType, &type metadata for Searchfoundation_LocalImageType, v0, v1);
    atomic_store(result, &qword_1EBACF610);
  }

  return result;
}

unint64_t sub_1B94D1788()
{
  result = qword_1EBACF628;
  if (!qword_1EBACF628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_AppIconType, &type metadata for Searchfoundation_AppIconType, v0, v1);
    atomic_store(result, &qword_1EBACF628);
  }

  return result;
}

unint64_t sub_1B94D17E0()
{
  result = qword_1EBACF630;
  if (!qword_1EBACF630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_AppIconType, &type metadata for Searchfoundation_AppIconType, v0, v1);
    atomic_store(result, &qword_1EBACF630);
  }

  return result;
}

unint64_t sub_1B94D1838()
{
  result = qword_1EBACF638;
  if (!qword_1EBACF638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_AppIconType, &type metadata for Searchfoundation_AppIconType, v0, v1);
    atomic_store(result, &qword_1EBACF638);
  }

  return result;
}

unint64_t sub_1B94D18C0()
{
  result = qword_1EBACF650;
  if (!qword_1EBACF650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SymbolImageFillStyle, &type metadata for Searchfoundation_SymbolImageFillStyle, v0, v1);
    atomic_store(result, &qword_1EBACF650);
  }

  return result;
}

unint64_t sub_1B94D1918()
{
  result = qword_1EBACF658;
  if (!qword_1EBACF658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SymbolImageFillStyle, &type metadata for Searchfoundation_SymbolImageFillStyle, v0, v1);
    atomic_store(result, &qword_1EBACF658);
  }

  return result;
}

unint64_t sub_1B94D1970()
{
  result = qword_1EBACF660;
  if (!qword_1EBACF660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_SymbolImageFillStyle, &type metadata for Searchfoundation_SymbolImageFillStyle, v0, v1);
    atomic_store(result, &qword_1EBACF660);
  }

  return result;
}

uint64_t sub_1B94D2C8C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_Image._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B94D2D38(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B94D3004(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_137Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_186();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t __swift_store_extra_inhabitant_index_138Tm()
{
  OUTLINED_FUNCTION_586();
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_1B94D2F50(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B94D3004(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94D3004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B94D3090(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B94D3238(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B94D32E8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B94D33B0(uint64_t a1)
{
  sub_1B94D3004(319, &qword_1ED9EB338, type metadata accessor for Searchfoundation_Person, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B94D3528()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_182Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v6 = *(v2 + 28);
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_183Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 24);
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      v4 = *(v0 + 28);
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1B94D3748(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B964C2B0();
  if (v7 <= 0x3F)
  {
    sub_1B94D3004(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94D3808(uint64_t a1)
{
  sub_1B94D3004(319, &qword_1ED9F8FC0, type metadata accessor for Searchfoundation_GraphicalFloat, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B94D3004(319, &qword_1ED9F9620, type metadata accessor for Searchfoundation_PointSize, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B94D3004(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B94D3004(319, &qword_1ED9EDE40, type metadata accessor for Searchfoundation_URLImage, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B94D3004(319, &qword_1ED9EDA70, type metadata accessor for Searchfoundation_ContactImage, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B94D3004(319, &qword_1ED9ED938, type metadata accessor for Searchfoundation_MonogramImage, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B94D3004(319, &qword_1ED9EDCE0, type metadata accessor for Searchfoundation_LocalImage, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1B94D3004(319, &qword_1ED9EDAC8, type metadata accessor for Searchfoundation_AppIconImage, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1B94D3004(319, &qword_1ED9ED3C0, type metadata accessor for Searchfoundation_MediaArtworkImage, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B94D3004(319, &qword_1ED9ED980, type metadata accessor for Searchfoundation_CalendarImage, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1B94D3004(319, &qword_1ED9F9518, type metadata accessor for Searchfoundation_SymbolImage, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1B94D3004(319, &qword_1ED9F89D8, type metadata accessor for Searchfoundation_PhotosLibraryImage, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1B94D3004(319, &qword_1ED9EC5D8, type metadata accessor for Searchfoundation_QuickLookThumbnailImage, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1B94D3004(319, &qword_1ED9D2F98, type metadata accessor for Searchfoundation_ClockImage, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1B94D3004(319, &qword_1ED9D2CE8, type metadata accessor for Searchfoundation_ShortcutsImage, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1B94D3004(319, &qword_1EBAB4308, type metadata accessor for Searchfoundation_DefaultPunchoutAppIconImage, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1B94D3004(319, &qword_1EBAB4E60, type metadata accessor for Searchfoundation_PhotosAlbumImage, MEMORY[0x1E69E6720]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1B94D3004(319, &qword_1EBAB4DF8, type metadata accessor for Searchfoundation_PhotosMemoryImage, MEMORY[0x1E69E6720]);
                                    if (v18 <= 0x3F)
                                    {
                                      swift_updateClassMetadata2();
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B94D402C()
{
  result = qword_1EBAB5480;
  if (!qword_1EBAB5480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageType, &type metadata for Searchfoundation_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAB5480);
  }

  return result;
}

unint64_t sub_1B94D4080()
{
  result = qword_1ED9D2F38;
  if (!qword_1ED9D2F38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ImageSource, &type metadata for Searchfoundation_ImageSource, v0, v1);
    atomic_store(result, &qword_1ED9D2F38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_14()
{

  return type metadata accessor for Searchfoundation_Image(0);
}

uint64_t OUTLINED_FUNCTION_40_15()
{
  type metadata accessor for Searchfoundation_Image._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_107_6()
{

  return sub_1B94C261C();
}

uint64_t OUTLINED_FUNCTION_137_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_158_6(uint64_t a1)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_159_2()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_163_7()
{

  return sub_1B94C261C();
}

uint64_t OUTLINED_FUNCTION_170_5(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_183_8()
{

  return sub_1B94C261C();
}

uint64_t OUTLINED_FUNCTION_190_5(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_204_6(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_210_4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_212_5()
{
  type metadata accessor for Searchfoundation_Image(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_ImagesCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = v2;
  *(a1 + 88) = 0;
  v3 = type metadata accessor for Searchfoundation_ImagesCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 60);
  v5 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Searchfoundation_ImagesCardSection(uint64_t a1)
{
  result = qword_1ED9F1980;
  if (!qword_1ED9F1980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_ImagesCardSection.punchoutOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ImagesCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Searchfoundation_ImagesCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_ImagesCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Searchfoundation_ImagesCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_ImagesCardSection.type.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Searchfoundation_ImagesCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_ImagesCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_ImagesCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_ImagesCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_ImagesCardSection(0);
  sub_1B92C7198(v1 + *(v6 + 60), v2);
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v8 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v8, v9, v7) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v7 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
  }

  *(a1 + v10) = qword_1ED9CD1C8;
  v11 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v7);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B94D4C2C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v4);
  return Searchfoundation_ImagesCardSection.backgroundColor.setter(v4);
}

uint64_t Searchfoundation_ImagesCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ImagesCardSection(0) + 60);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_ImagesCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ImagesCardSection(0) + 60);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_ImagesCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_ImagesCardSection(0);
  sub_1B92C7198(v0 + *(v4 + 60), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v5 = OUTLINED_FUNCTION_493();
  v8 = __swift_getEnumTagSinglePayload(v5, v6, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_ImagesCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_ImagesCardSection(0) + 60);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_ImagesCardSection.images.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Searchfoundation_ImagesCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_ImagesCardSection(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_ImagesCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ImagesCardSection(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1B94D51B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF8B0);
  __swift_project_value_buffer(v0, qword_1EBACF8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "images";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "borderless";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ImagesCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB84E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACF8B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_ImagesCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B94D5764(v6, v7, v8, v9);
        break;
      case 2:
      case 3:
      case 7:
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        goto LABEL_10;
      case 8:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B92C7E00(v10, v11, v12, v13);
        break;
      case 9:
        v18 = OUTLINED_FUNCTION_9();
        sub_1B94D5804(v18, v19, v20, v21);
        break;
      default:
        if (result == 51)
        {
          v14 = OUTLINED_FUNCTION_9();
          sub_1B94D58B8(v14, v15, v16, v17);
        }

        else if (result == 52)
        {
LABEL_10:
          sub_1B964C400();
        }

        break;
    }
  }
}

uint64_t sub_1B94D5764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B94D6700(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B94D5804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ImagesCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B94D6700(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B94D58B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B94D6700(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ImagesCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v3 + 16))
  {
    v23 = v3;
    v14 = v9;
    v15 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B94D6700(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    result = sub_1B964C730();
    if (v4)
    {
      return result;
    }

    v13 = v15;
    v9 = v14;
    v5 = v23;
  }

  OUTLINED_FUNCTION_1();
  if (!v17 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
    {
      if (*(v5 + 40) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v4))
      {
        if (*(v5 + 41) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v4))
        {
          if (*(v5 + 42) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v4))
          {
            OUTLINED_FUNCTION_1();
            if (!v19 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
            {
              if (!*(v5 + 64) || (v20 = *(v5 + 72), v21 = *(v5 + 64), v22 = v20, sub_1B92C8A2C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v4))
              {
                v23 = type metadata accessor for Searchfoundation_ImagesCardSection(0);
                sub_1B92C7198(v5 + *(v23 + 60), v9);
                if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
                {
                  sub_1B8D9207C(v9, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  sub_1B92C8908(v9, v13);
                  sub_1B94D6700(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
                  OUTLINED_FUNCTION_79_0();
                  sub_1B964C740();
                  result = sub_1B92C89D0(v13);
                  if (v4)
                  {
                    return result;
                  }
                }

                if (!*(*(v5 + 80) + 16) || (type metadata accessor for Searchfoundation_Image(0), sub_1B94D6700(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v4))
                {
                  if (*(v5 + 88) != 1)
                  {
                    return sub_1B964C290();
                  }

                  OUTLINED_FUNCTION_79_0();
                  OUTLINED_FUNCTION_24_3();
                  result = sub_1B964C670();
                  if (!v4)
                  {
                    return sub_1B964C290();
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

uint64_t static Searchfoundation_ImagesCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  sub_1B8D67B1C(*v1, *v0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_33;
  }

  v14 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v15 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_33;
  }

  v16 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v16 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)))
  {
    goto LABEL_33;
  }

  v17 = *(type metadata accessor for Searchfoundation_ImagesCardSection(0) + 60);
  v18 = *(v11 + 48);
  sub_1B92C7198(v1 + v17, v2);
  sub_1B92C7198(v0 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v19, v20, v3) != 1)
  {
    sub_1B92C7198(v2, v10);
    if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
    {
      sub_1B92C8908(v2 + v18, v6);
      if (*&v10[*(v3 + 20)] == *&v6[*(v3 + 20)] || (, , sub_1B947FDE4(), v24 = v23, , , (v24 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_63();
        sub_1B94D6700(v25, v26, MEMORY[0x1E69AAC10]);
        v27 = sub_1B964C850();
        sub_1B92C89D0(v6);
        sub_1B92C89D0(v10);
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      sub_1B92C89D0(v6);
      sub_1B92C89D0(v10);
      v21 = &qword_1EBACB050;
      v22 = &unk_1B96B7BD0;
LABEL_27:
      sub_1B8D9207C(v2, v21, v22);
      goto LABEL_33;
    }

    sub_1B92C89D0(v10);
LABEL_26:
    v21 = &qword_1EBACB058;
    v22 = &unk_1B96CA9D0;
    goto LABEL_27;
  }

  if (__swift_getEnumTagSinglePayload(v2 + v18, 1, v3) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_31:
  sub_1B8D75878(*(v1 + 80), *(v0 + 80));
  if ((v28 & 1) != 0 && *(v1 + 88) == *(v0 + 88))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_63();
    sub_1B94D6700(v31, v32, MEMORY[0x1E69AAC10]);
    v29 = sub_1B964C850();
    return v29 & 1;
  }

LABEL_33:
  v29 = 0;
  return v29 & 1;
}

uint64_t Searchfoundation_ImagesCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_ImagesCardSection(0);
  sub_1B94D6700(&qword_1EBACF8C8, type metadata accessor for Searchfoundation_ImagesCardSection, protocol conformance descriptor for Searchfoundation_ImagesCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94D6278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94D6700(&qword_1EBACF8E0, type metadata accessor for Searchfoundation_ImagesCardSection, protocol conformance descriptor for Searchfoundation_ImagesCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94D62F8(uint64_t a1)
{
  v2 = sub_1B94D6700(&qword_1EBACE6F8, type metadata accessor for Searchfoundation_ImagesCardSection, protocol conformance descriptor for Searchfoundation_ImagesCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94D6368(uint64_t a1, uint64_t a2)
{
  sub_1B94D6700(&qword_1EBACE6F8, type metadata accessor for Searchfoundation_ImagesCardSection, protocol conformance descriptor for Searchfoundation_ImagesCardSection);

  return sub_1B964C5D0();
}

void sub_1B94D6530(uint64_t a1)
{
  sub_1B94D669C(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B94D669C(319, &qword_1ED9D3A80, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B94D669C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B94D669C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B94D6700(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Searchfoundation_IndexState.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_IndexState(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_IndexState(uint64_t a1)
{
  result = qword_1EBACF920;
  if (!qword_1EBACF920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_IndexState.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_IndexState(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_IndexState.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Searchfoundation_IndexState(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B94D6A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF8E8);
  __swift_project_value_buffer(v0, qword_1EBACF8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "percentMessagesIndexed";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "percentAttachmentsIndexed";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "searchIndex";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalMessageCount";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "indexedMessageCount";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_IndexState._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB84E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACF8E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_IndexState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_IndexState.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = *v1;
  if (!v3 || (result = OUTLINED_FUNCTION_16_9(v3, 1), !v2))
  {
    v5 = v1[1];
    if (!v5 || (result = OUTLINED_FUNCTION_16_9(v5, 2), !v2))
    {
      v6 = v1[2];
      if (!v6 || (result = OUTLINED_FUNCTION_16_9(v6, 3), !v2))
      {
        v7 = v1[3];
        if (!v7 || (result = OUTLINED_FUNCTION_16_9(v7, 4), !v2))
        {
          v8 = v1[4];
          if (!v8 || (result = OUTLINED_FUNCTION_16_9(v8, 5), !v2))
          {
            type metadata accessor for Searchfoundation_IndexState(0);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_IndexState.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_IndexState(0);
  sub_1B964C2B0();
  sub_1B8CD3380(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_IndexState.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_IndexState(0);
  sub_1B8CD3380(&qword_1EBACF900, type metadata accessor for Searchfoundation_IndexState, protocol conformance descriptor for Searchfoundation_IndexState);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94D70BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3380(&qword_1EBACF930, type metadata accessor for Searchfoundation_IndexState, protocol conformance descriptor for Searchfoundation_IndexState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94D713C(uint64_t a1)
{
  v2 = sub_1B8CD3380(&qword_1EBACF910, type metadata accessor for Searchfoundation_IndexState, protocol conformance descriptor for Searchfoundation_IndexState);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94D71AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3380(&qword_1EBACF910, type metadata accessor for Searchfoundation_IndexState, protocol conformance descriptor for Searchfoundation_IndexState);

  return sub_1B964C5D0();
}

uint64_t sub_1B94D7374(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = v2;
  type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t type metadata accessor for Searchfoundation_KeyValueDataCardSection(uint64_t a1)
{
  result = qword_1ED9F06F0;
  if (!qword_1ED9F06F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.punchoutOptions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_KeyValueDataCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_KeyValueDataCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 56));
  sub_1B8DD9078(v6, v7, &qword_1EBACB050, &unk_1B96B7BD0);
  v8 = type metadata accessor for Searchfoundation_Color(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *(a1 + v12) = qword_1ED9CD1C8;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_80();
    v16 = OUTLINED_FUNCTION_182();
    return sub_1B94D7D94(v16, v17, v18);
  }

  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.backgroundColor.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_KeyValueDataCardSection(v2) + 56);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_1_80();
  sub_1B94D7D94(v0, v1 + v3, v4);
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_KeyValueDataCardSection.backgroundColor.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  OUTLINED_FUNCTION_16_4(*(v11 + 56));
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_80();
    sub_1B94D7D94(v6, v10, v13);
  }

  return sub_1B94D7AD4;
}

uint64_t Searchfoundation_KeyValueDataCardSection.hasBackgroundColor.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  v3 = OUTLINED_FUNCTION_115(*(v2 + 56));
  sub_1B8DD9078(v3, v4, &qword_1EBACB050, &unk_1B96B7BD0);
  type metadata accessor for Searchfoundation_Color(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &unk_1B96B7BD0);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_KeyValueDataCardSection.clearBackgroundColor()()
{
  v1 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBACB050, &unk_1B96B7BD0);
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_KeyValueDataCardSection.data.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Searchfoundation_KeyValueDataCardSection.accessoryImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 60));
  sub_1B8DD9078(v6, v7, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v8 = type metadata accessor for Searchfoundation_Image(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *(a1 + v12) = qword_1EBAB5608;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_95();
    v16 = OUTLINED_FUNCTION_182();
    return sub_1B94D7D94(v16, v17, v18);
  }

  return result;
}

uint64_t sub_1B94D7D94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

uint64_t sub_1B94D7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B94D81B8(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t Searchfoundation_KeyValueDataCardSection.accessoryImage.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_KeyValueDataCardSection(v2) + 60);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_0_95();
  sub_1B94D7D94(v0, v1 + v3, v4);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_KeyValueDataCardSection.accessoryImage.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  OUTLINED_FUNCTION_16_4(*(v11 + 60));
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_95();
    sub_1B94D7D94(v6, v10, v13);
  }

  return sub_1B94D8084;
}

void sub_1B94D80AC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_1B94D81B8((*a1)[4], v10, a5);
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B94D7D94(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_1B94D8214();
  }

  else
  {
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B94D7D94(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_1B94D81B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return a2;
}

uint64_t sub_1B94D8214()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_KeyValueDataCardSection.hasAccessoryImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  v3 = OUTLINED_FUNCTION_115(*(v2 + 60));
  sub_1B8DD9078(v3, v4, &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &unk_1B96B77D0);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_KeyValueDataCardSection.clearAccessoryImage()()
{
  v1 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_KeyValueDataCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_KeyValueDataCardSection(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_KeyValueDataCardSection.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_KeyValueDataCardSection(v2) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_KeyValueDataCardSection.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_KeyValueDataCardSection(v0);
  return nullsub_1;
}

uint64_t sub_1B94D84C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF938);
  __swift_project_value_buffer(v0, qword_1EBACF938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "punchoutOptions";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "punchoutPickerTitle";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "punchoutPickerDismissText";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "canBeHidden";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hasTopPadding";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasBottomPadding";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "separatorStyle";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "backgroundColor";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 51;
  *v26 = "data";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 52;
  *v28 = "accessoryImage";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_KeyValueDataCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACF938);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_KeyValueDataCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B94D8A84(v6, v7, v8, v9);
        break;
      case 2:
      case 3:
      case 7:
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        sub_1B964C400();
        break;
      case 8:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B92C7E00(v14, v15, v16, v17);
        break;
      case 9:
        v22 = OUTLINED_FUNCTION_9();
        sub_1B94D8B24(v22, v23, v24, v25);
        break;
      default:
        if (result == 51)
        {
          v18 = OUTLINED_FUNCTION_9();
          sub_1B94D8BD8(v18, v19, v20, v21);
        }

        else if (result == 52)
        {
          v10 = OUTLINED_FUNCTION_9();
          sub_1B94D8C78(v10, v11, v12, v13);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B94D8A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B94D9FEC(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B94D8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B94D9FEC(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B94D8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_KeyValueTuple(0);
  sub_1B94D9FEC(&qword_1EBACF950, type metadata accessor for Searchfoundation_KeyValueTuple, protocol conformance descriptor for Searchfoundation_KeyValueTuple);
  return sub_1B964C570();
}

uint64_t sub_1B94D8C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B94D9FEC(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_KeyValueDataCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v44 = v41 - v18;
  v47 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v43 = v21 - v20;
  if (*(*v3 + 16))
  {
    v42 = v3;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B94D9FEC(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
    result = sub_1B964C730();
    if (v4)
    {
      return result;
    }

    v5 = v42;
  }

  OUTLINED_FUNCTION_1();
  if (!v25 || (result = OUTLINED_FUNCTION_6_32(v23, v24, 2), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v28 || (result = OUTLINED_FUNCTION_6_32(v26, v27, 3), !v4))
    {
      if (*(v5 + 40) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 4), !v4))
      {
        if (*(v5 + 41) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 5), !v4))
        {
          if (*(v5 + 42) != 1 || (result = OUTLINED_FUNCTION_12_29(1, 6), !v4))
          {
            OUTLINED_FUNCTION_1();
            if (v31)
            {
              result = OUTLINED_FUNCTION_6_32(v29, v30, 7);
              if (v4)
              {
                return result;
              }

              v42 = 0;
            }

            else
            {
              v42 = v4;
            }

            if (*(v5 + 64))
            {
              v32 = *(v5 + 72);
              v45 = *(v5 + 64);
              v46 = v32;
              sub_1B92C8A2C();
              v33 = v42;
              result = sub_1B964C680();
              if (v33)
              {
                return result;
              }

              v42 = 0;
            }

            v47 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
            v34 = v44;
            sub_1B8DD9078(v5 + *(v47 + 56), v44, &qword_1EBACB050, &unk_1B96B7BD0);
            OUTLINED_FUNCTION_38_1();
            if (__swift_getEnumTagSinglePayload(v35, v36, v37) == 1)
            {
              v43 = v15;
              v38 = v11;
              sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
              v39 = v42;
            }

            else
            {
              v41[1] = type metadata accessor for Searchfoundation_Color;
              v41[2] = a3;
              sub_1B94D7D94(v34, v43, type metadata accessor for Searchfoundation_Color);
              sub_1B94D9FEC(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
              v39 = v42;
              sub_1B964C740();
              result = sub_1B94D8214();
              if (v39)
              {
                return result;
              }

              v43 = v15;
              v38 = v11;
            }

            if (*(*(v5 + 80) + 16))
            {
              type metadata accessor for Searchfoundation_KeyValueTuple(0);
              sub_1B94D9FEC(&qword_1EBACF950, type metadata accessor for Searchfoundation_KeyValueTuple, protocol conformance descriptor for Searchfoundation_KeyValueTuple);
              result = sub_1B964C730();
              if (v39)
              {
                return result;
              }

              v40 = 0;
            }

            else
            {
              v40 = v39;
            }

            sub_1B8DD9078(v5 + *(v47 + 60), v10, &qword_1EBAB8EA8, &unk_1B96B77D0);
            if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
            {
              sub_1B8D9207C(v10, &qword_1EBAB8EA8, &unk_1B96B77D0);
            }

            else
            {
              sub_1B94D7D94(v10, v43, type metadata accessor for Searchfoundation_Image);
              sub_1B94D9FEC(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
              sub_1B964C740();
              result = sub_1B94D8214();
              if (v40)
              {
                return result;
              }
            }

            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_KeyValueDataCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v70 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v68 - v13;
  v14 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_88();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - v23;
  sub_1B8D67B1C(*v1, *v0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_32;
  }

  v26 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v27 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_32;
  }

  v28 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v28 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)))
  {
    goto LABEL_32;
  }

  v29 = type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  v30 = *(v29 + 56);
  v68 = v29;
  v69 = v30;
  v31 = *(v21 + 48);
  sub_1B8DD9078(v1 + v30, v24, &qword_1EBACB050, &unk_1B96B7BD0);
  v32 = v0 + v69;
  v69 = v31;
  sub_1B8DD9078(v32, &v24[v31], &qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v33, v34, v35);
  if (v26)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v36, v37, v38);
    if (v26)
    {
      sub_1B8D9207C(v24, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  sub_1B8DD9078(v24, v2, &qword_1EBACB050, &unk_1B96B7BD0);
  v39 = v69;
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v40, v41, v42);
  if (v43)
  {
    sub_1B94D8214();
LABEL_29:
    v44 = &qword_1EBACB058;
    v45 = &unk_1B96CA9D0;
LABEL_30:
    v46 = v24;
LABEL_31:
    sub_1B8D9207C(v46, v44, v45);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_80();
  sub_1B94D7D94(&v24[v39], v18, v49);
  if (*(v2 + *(v14 + 20)) != *(v18 + *(v14 + 20)))
  {

    sub_1B947FDE4();
    LODWORD(v69) = v50;

    if ((v69 & 1) == 0)
    {
      sub_1B94D8214();
      OUTLINED_FUNCTION_182();
      sub_1B94D8214();
      v44 = &qword_1EBACB050;
      v45 = &unk_1B96B7BD0;
      goto LABEL_30;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_66();
  sub_1B94D9FEC(v51, v52, MEMORY[0x1E69AAC10]);
  v53 = sub_1B964C850();
  sub_1B94D8214();
  sub_1B94D8214();
  sub_1B8D9207C(v24, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_37:
  sub_1B8D6C4C0(*(v1 + 80), *(v0 + 80));
  if ((v54 & 1) == 0)
  {
    goto LABEL_32;
  }

  v55 = *(v68 + 60);
  v56 = *(v11 + 48);
  v57 = v71;
  sub_1B8DD9078(v1 + v55, v71, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8DD9078(v0 + v55, v57 + v56, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_178(v57, 1, v3);
  if (v26)
  {
    OUTLINED_FUNCTION_178(v57 + v56, 1, v3);
    if (v26)
    {
      sub_1B8D9207C(v57, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_52:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_3_66();
      sub_1B94D9FEC(v66, v67, MEMORY[0x1E69AAC10]);
      v47 = sub_1B964C850();
      return v47 & 1;
    }

    goto LABEL_46;
  }

  sub_1B8DD9078(v57, v10, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_178(v57 + v56, 1, v3);
  if (v58)
  {
    sub_1B94D8214();
LABEL_46:
    v44 = &qword_1EBAB8EB0;
    v45 = &qword_1B964D6B0;
LABEL_47:
    v46 = v57;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_95();
  v59 = v70;
  sub_1B94D7D94(v57 + v56, v70, v60);
  if (*&v10[*(v3 + 20)] != *(v59 + *(v3 + 20)))
  {

    sub_1B94C6890();
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      sub_1B94D8214();
      sub_1B94D8214();
      v44 = &qword_1EBAB8EA8;
      v45 = &unk_1B96B77D0;
      goto LABEL_47;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_66();
  sub_1B94D9FEC(v63, v64, MEMORY[0x1E69AAC10]);
  v65 = sub_1B964C850();
  sub_1B94D8214();
  sub_1B94D8214();
  sub_1B8D9207C(v57, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v65)
  {
    goto LABEL_52;
  }

LABEL_32:
  v47 = 0;
  return v47 & 1;
}

uint64_t Searchfoundation_KeyValueDataCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_KeyValueDataCardSection(0);
  sub_1B94D9FEC(&qword_1EBACF958, type metadata accessor for Searchfoundation_KeyValueDataCardSection, protocol conformance descriptor for Searchfoundation_KeyValueDataCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94D9B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94D9FEC(&qword_1EBACF970, type metadata accessor for Searchfoundation_KeyValueDataCardSection, protocol conformance descriptor for Searchfoundation_KeyValueDataCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94D9B9C(uint64_t a1)
{
  v2 = sub_1B94D9FEC(&qword_1EBACE778, type metadata accessor for Searchfoundation_KeyValueDataCardSection, protocol conformance descriptor for Searchfoundation_KeyValueDataCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94D9C0C(uint64_t a1, uint64_t a2)
{
  sub_1B94D9FEC(&qword_1EBACE778, type metadata accessor for Searchfoundation_KeyValueDataCardSection, protocol conformance descriptor for Searchfoundation_KeyValueDataCardSection);

  return sub_1B964C5D0();
}

void sub_1B94D9DD4(uint64_t a1)
{
  sub_1B94D9F88(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B94D9F88(319, &qword_1ED9D3A08, type metadata accessor for Searchfoundation_KeyValueTuple, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B94D9F88(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B94D9F88(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B94D9F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B94D9FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Searchfoundation_StringDictionary.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Searchfoundation_StringDictionary(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_KeyValueTuple.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Searchfoundation_KeyValueTuple.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_KeyValueTuple.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Searchfoundation_KeyValueTuple.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Searchfoundation_KeyValueTuple.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_KeyValueTuple(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_KeyValueTuple.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_KeyValueTuple(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_KeyValueTuple.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_KeyValueTuple(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_KeyValueTuple.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Searchfoundation_KeyValueTuple(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_StringDictionary.keyValues.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_StringDictionary.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_StringDictionary(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_StringDictionary.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_StringDictionary(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_StringDictionary.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_StringDictionary(v0);
  return nullsub_1;
}

uint64_t sub_1B94DA53C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF978);
  __swift_project_value_buffer(v0, qword_1EBACF978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_KeyValueTuple.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_KeyValueTuple.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      type metadata accessor for Searchfoundation_KeyValueTuple(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Searchfoundation_KeyValueTuple.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_KeyValueTuple(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_96();
  v8 = sub_1B8CD33C8(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B94DA970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD33C8(&qword_1EBACF9E0, type metadata accessor for Searchfoundation_KeyValueTuple, protocol conformance descriptor for Searchfoundation_KeyValueTuple);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94DA9F0(uint64_t a1)
{
  v2 = sub_1B8CD33C8(&qword_1EBACF950, type metadata accessor for Searchfoundation_KeyValueTuple, protocol conformance descriptor for Searchfoundation_KeyValueTuple);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94DAA60(uint64_t a1, uint64_t a2)
{
  sub_1B8CD33C8(&qword_1EBACF950, type metadata accessor for Searchfoundation_KeyValueTuple, protocol conformance descriptor for Searchfoundation_KeyValueTuple);

  return sub_1B964C5D0();
}

uint64_t sub_1B94DAAFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF990);
  __swift_project_value_buffer(v0, qword_1EBACF990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "keyValues";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Searchfoundation_StringDictionary.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B94DACE8(v1, v0, v4, v3);
    }
  }

  return result;
}

uint64_t sub_1B94DACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_KeyValueTuple(0);
  sub_1B8CD33C8(&qword_1EBACF950, type metadata accessor for Searchfoundation_KeyValueTuple, protocol conformance descriptor for Searchfoundation_KeyValueTuple);
  return sub_1B964C570();
}

uint64_t Searchfoundation_StringDictionary.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v1 + 16) || (type metadata accessor for Searchfoundation_KeyValueTuple(0), sub_1B8CD33C8(&qword_1EBACF950, type metadata accessor for Searchfoundation_KeyValueTuple, protocol conformance descriptor for Searchfoundation_KeyValueTuple), result = sub_1B964C730(), !v0))
  {
    type metadata accessor for Searchfoundation_StringDictionary(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Searchfoundation_StringDictionary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1B8D6C4C0(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_StringDictionary(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_96();
  v5 = sub_1B8CD33C8(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B94DAF20(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD33C8(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94DB004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD33C8(&qword_1EBACF9D8, type metadata accessor for Searchfoundation_StringDictionary, protocol conformance descriptor for Searchfoundation_StringDictionary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94DB084(uint64_t a1)
{
  v2 = sub_1B8CD33C8(&qword_1EBACF238, type metadata accessor for Searchfoundation_StringDictionary, protocol conformance descriptor for Searchfoundation_StringDictionary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94DB0F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD33C8(&qword_1EBACF238, type metadata accessor for Searchfoundation_StringDictionary, protocol conformance descriptor for Searchfoundation_StringDictionary);

  return sub_1B964C5D0();
}

void sub_1B94DB404(uint64_t a1)
{
  sub_1B94DB488(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94DB488(uint64_t a1)
{
  if (!qword_1ED9D3A08)
  {
    type metadata accessor for Searchfoundation_KeyValueTuple(255);
    v1 = sub_1B964C910();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9D3A08);
    }
  }
}

uint64_t Searchfoundation_LinkPresentationCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Searchfoundation_LinkPresentationCardSection(uint64_t a1)
{
  result = qword_1ED9F00C0;
  if (!qword_1ED9F00C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_LinkPresentationCardSection.coreSpotlightIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Searchfoundation_LinkPresentationCardSection.coreSpotlightIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_LinkPresentationCardSection.url.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Searchfoundation_LinkPresentationCardSection.url.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Searchfoundation_LinkPresentationCardSection.peopleToBadge.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Searchfoundation_LinkPresentationCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_LinkPresentationCardSection(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_LinkPresentationCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_LinkPresentationCardSection(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B94DB884()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF9E8);
  __swift_project_value_buffer(v0, qword_1EBACF9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 51;
  *v6 = "coreSpotlightIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 52;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 53;
  *v12 = "peopleToBadge";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 54;
  *v14 = "isHighlighted";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_LinkPresentationCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8508 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACF9E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_LinkPresentationCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case '3':
      case '4':
        sub_1B964C530();
        break;
      case '5':
        sub_1B94DBC34(a1, v5, a2, a3);
        break;
      case '6':
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94DBC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Person(0);
  sub_1B94DC3C8(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
  return sub_1B964C570();
}

uint64_t Searchfoundation_LinkPresentationCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
    {
      if (!*(*(v3 + 32) + 16) || (type metadata accessor for Searchfoundation_Person(0), sub_1B94DC3C8(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v4))
      {
        if (*(v3 + 40) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v4))
        {
          type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_LinkPresentationCardSection.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D68234(a1[4], *(a2 + 32));
  if ((v6 & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  sub_1B964C2B0();
  sub_1B94DC3C8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_LinkPresentationCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_LinkPresentationCardSection(0);
  sub_1B94DC3C8(&qword_1EBACFA00, type metadata accessor for Searchfoundation_LinkPresentationCardSection, protocol conformance descriptor for Searchfoundation_LinkPresentationCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94DC01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94DC3C8(&qword_1EBACFA18, type metadata accessor for Searchfoundation_LinkPresentationCardSection, protocol conformance descriptor for Searchfoundation_LinkPresentationCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94DC09C(uint64_t a1)
{
  v2 = sub_1B94DC3C8(&qword_1EBACE688, type metadata accessor for Searchfoundation_LinkPresentationCardSection, protocol conformance descriptor for Searchfoundation_LinkPresentationCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94DC10C(uint64_t a1, uint64_t a2)
{
  sub_1B94DC3C8(&qword_1EBACE688, type metadata accessor for Searchfoundation_LinkPresentationCardSection, protocol conformance descriptor for Searchfoundation_LinkPresentationCardSection);

  return sub_1B964C5D0();
}

void sub_1B94DC2D4(uint64_t a1)
{
  sub_1B94DC370(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94DC370(uint64_t a1)
{
  if (!qword_1ED9EB338)
  {
    type metadata accessor for Searchfoundation_Person(255);
    v1 = sub_1B964C910();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9EB338);
    }
  }
}

uint64_t sub_1B94DC3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Searchfoundation_LatLng.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Searchfoundation_LatLng(0);
  *a1 = 0;
  a1[1] = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_StructuredLocation.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  v2 = type metadata accessor for Searchfoundation_StructuredLocation(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Searchfoundation_LatLng(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t Searchfoundation_StructuredLocation.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Searchfoundation_StructuredLocation.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_StructuredLocation.geoLocation.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_StructuredLocation(0);
  sub_1B94DC664(v1 + *(v6 + 28), v2);
  v7 = type metadata accessor for Searchfoundation_LatLng(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (!v10)
  {
    return sub_1B94DC6D4(v2, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v11, v12, v7);
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBACAFA0, &unk_1B96CB440);
  }

  return result;
}

uint64_t sub_1B94DC664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B94DC6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_LatLng(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B94DC738(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_LatLng(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B94DCA74(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Searchfoundation_StructuredLocation.geoLocation.setter();
}

uint64_t Searchfoundation_StructuredLocation.geoLocation.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_StructuredLocation(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
  sub_1B94DC6D4(v0, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_LatLng(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_StructuredLocation.geoLocation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_LatLng(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_StructuredLocation(0) + 28);
  *(v3 + 10) = v11;
  sub_1B94DC664(v1 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    sub_1B94DC6D4(v6, v10);
  }

  return sub_1B94DC994;
}

void sub_1B94DC994(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B94DCA74((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    sub_1B94DC6D4(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B94DCAD8(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    sub_1B94DC6D4(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B94DCA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_LatLng(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B94DCAD8(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_LatLng(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Searchfoundation_StructuredLocation.hasGeoLocation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Searchfoundation_StructuredLocation(0);
  sub_1B94DC664(v0 + *(v4 + 28), v1);
  type metadata accessor for Searchfoundation_LatLng(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_StructuredLocation.clearGeoLocation()()
{
  v1 = *(type metadata accessor for Searchfoundation_StructuredLocation(0) + 28);
  sub_1B8D9207C(v0 + v1, &qword_1EBACAFA0, &unk_1B96CB440);
  v2 = type metadata accessor for Searchfoundation_LatLng(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

void (*Searchfoundation_StructuredLocation.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_StructuredLocation(v0);
  return nullsub_1;
}

uint64_t sub_1B94DCD68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B94DCDFC()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*Searchfoundation_LatLng.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_LatLng(v0);
  return nullsub_1;
}

uint64_t sub_1B94DCED0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFA20);
  __swift_project_value_buffer(v0, qword_1EBACFA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "geoLocation";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "radius";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_StructuredLocation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v6 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 2:
        sub_1B94DD190(v1, v0, v4, v3);
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B94DD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_StructuredLocation(0);
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B94DDD54(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
  return sub_1B964C580();
}

uint64_t Searchfoundation_StructuredLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v9 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 1);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_1B964C700(), !v4))
  {
    v16 = type metadata accessor for Searchfoundation_StructuredLocation(0);
    sub_1B94DC664(v6 + *(v16 + 28), v5);
    v17 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v17, v18, v9) == 1)
    {
      sub_1B8D9207C(v5, &qword_1EBACAFA0, &unk_1B96CB440);
    }

    else
    {
      v19[1] = v16;
      sub_1B94DC6D4(v5, v12);
      sub_1B94DDD54(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
      sub_1B964C740();
      result = sub_1B94DCAD8(v12);
      if (v4)
      {
        return result;
      }
    }

    if (v6[2] == 0.0)
    {
      return sub_1B964C290();
    }

    result = sub_1B964C6F0();
    if (!v4)
    {
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Searchfoundation_StructuredLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88();
  v15 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(type metadata accessor for Searchfoundation_StructuredLocation(0) + 28);
  v17 = *(v13 + 48);
  sub_1B94DC664(a1 + v16, v2);
  sub_1B94DC664(a2 + v16, v2 + v17);
  v18 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v18, v19, v5);
  if (v15)
  {
    OUTLINED_FUNCTION_178(v2 + v17, 1, v5);
    if (v15)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  sub_1B94DC664(v2, v12);
  OUTLINED_FUNCTION_178(v2 + v17, 1, v5);
  if (v23)
  {
    sub_1B94DCAD8(v12);
LABEL_15:
    v24 = &qword_1EBACB018;
    v25 = &unk_1B96B9910;
LABEL_22:
    sub_1B8D9207C(v2, v24, v25);
    goto LABEL_23;
  }

  sub_1B94DC6D4(v2 + v17, v8);
  if (*v12 != *v8 || v12[1] != v8[1])
  {
    sub_1B94DCAD8(v8);
    goto LABEL_21;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_97();
  sub_1B94DDD54(v26, v27, MEMORY[0x1E69AAC10]);
  v28 = sub_1B964C850();
  sub_1B94DCAD8(v8);
  if ((v28 & 1) == 0)
  {
LABEL_21:
    sub_1B94DCAD8(v12);
    v24 = &qword_1EBACAFA0;
    v25 = &unk_1B96CB440;
    goto LABEL_22;
  }

  sub_1B94DCAD8(v12);
LABEL_10:
  sub_1B8D9207C(v2, &qword_1EBACAFA0, &unk_1B96CB440);
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_23:
    v22 = 0;
    return v22 & 1;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_97();
  sub_1B94DDD54(v20, v21, MEMORY[0x1E69AAC10]);
  v22 = sub_1B964C850();
  return v22 & 1;
}

uint64_t sub_1B94DD80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94DDD54(&qword_1EBACFA68, type metadata accessor for Searchfoundation_StructuredLocation, protocol conformance descriptor for Searchfoundation_StructuredLocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94DD88C(uint64_t a1)
{
  v2 = sub_1B94DDD54(&qword_1EBACC9F8, type metadata accessor for Searchfoundation_StructuredLocation, protocol conformance descriptor for Searchfoundation_StructuredLocation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94DD8FC(uint64_t a1, uint64_t a2)
{
  sub_1B94DDD54(&qword_1EBACC9F8, type metadata accessor for Searchfoundation_StructuredLocation, protocol conformance descriptor for Searchfoundation_StructuredLocation);

  return sub_1B964C5D0();
}

uint64_t sub_1B94DD998()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5590);
  __swift_project_value_buffer(v0, qword_1EBAB5590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lng";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_LatLng.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C510();
    }
  }

  return result;
}

uint64_t Searchfoundation_LatLng.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
  {
    if (v0[1] == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
    {
      type metadata accessor for Searchfoundation_LatLng(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Searchfoundation_LatLng.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_97();
  sub_1B94DDD54(v2, v3, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B94DDD54(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B94DDDE4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B94DDD54(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94DDEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94DDD54(&qword_1EBACFA60, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94DDF48(uint64_t a1)
{
  v2 = sub_1B94DDD54(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94DDFB8(uint64_t a1, uint64_t a2)
{
  sub_1B94DDD54(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);

  return sub_1B964C5D0();
}

void sub_1B94DE2A0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B94DE33C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94DE33C(uint64_t a1)
{
  if (!qword_1ED9F9720)
  {
    type metadata accessor for Searchfoundation_LatLng(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9F9720);
    }
  }
}

uint64_t sub_1B94DE3BC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Searchfoundation_MailSuggestionDataSources.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B94DE494@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_MailSuggestionDataSources.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B94DE4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94E79EC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_MailSuggestionDataSources.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBACFA70 = a1;
}

uint64_t (*static Searchfoundation_MailSuggestionDataSources.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B94DE60C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_MailSuggestionDataSources.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.wasReorderedByRecency.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);
  return *(v0 + 16);
}

uint64_t Searchfoundation_MailRankingSignals.wasReorderedByRecency.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 16, v4);
  *(v5 + 16) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.wasReorderedByRecency.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_81(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  *(v1 + 84) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DE770(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.numEngagements.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 24, v1);
  return *(v0 + 24);
}

uint64_t Searchfoundation_MailRankingSignals.numEngagements.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_41();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 24, v5);
  *(v6 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.numEngagements.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_6_39();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 24);
  v3[9] = *(v5 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DE904()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_177_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 24) = v2;

  free(v0);
}

uint64_t Searchfoundation_MailRankingSignals.numDaysEngagedLast30Days.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);
  return *(v0 + 32);
}

uint64_t Searchfoundation_MailRankingSignals.numDaysEngagedLast30Days.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_41();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = a1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.numDaysEngagedLast30Days.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_6_39();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v3[9] = *(v5 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DEA98()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_177_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 32) = v2;

  free(v0);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast7Days.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 40, v1);
  return *(v0 + 40);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast7Days.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 40, v4);
  *(v5 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast7Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DEC0C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 40) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast14Days.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 44, v1);
  return *(v0 + 44);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast14Days.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 44, v4);
  *(v5 + 44) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast14Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DED7C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 44) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast21Days.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 48, v1);
  return *(v0 + 48);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast21Days.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 48, v4);
  *(v5 + 48) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast21Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DEEEC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast30Days.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 52, v1);
  return *(v0 + 52);
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast30Days.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 52, v4);
  *(v5 + 52) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.averageEngagementAgeLast30Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 52);
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DF05C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 52) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.daysSinceReceipt.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 56, v1);
  return *(v0 + 56);
}

uint64_t Searchfoundation_MailRankingSignals.daysSinceReceipt.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_41();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 56, v5);
  *(v6 + 56) = a1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.daysSinceReceipt.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_6_39();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 56);
  v3[9] = *(v5 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DF1EC()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_177_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 56) = v2;

  free(v0);
}

float Searchfoundation_MailRankingSignals.l1Score.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);
  return *(v0 + 64);
}

uint64_t Searchfoundation_MailRankingSignals.l1Score.setter()
{
  v3 = OUTLINED_FUNCTION_22_26();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 64, v4);
  *(v5 + 64) = v2;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.l1Score.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DF368()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_134_1();
  v5 = *(v2 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_29();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 64) = v3;

  free(v0);
}

float Searchfoundation_MailRankingSignals.l2Score.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 68, v1);
  return *(v0 + 68);
}

uint64_t Searchfoundation_MailRankingSignals.l2Score.setter()
{
  v3 = OUTLINED_FUNCTION_22_26();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 68, v4);
  *(v5 + 68) = v2;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.l2Score.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 68);
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DF4EC()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_134_1();
  v5 = *(v2 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_29();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 68) = v3;

  free(v0);
}

uint64_t Searchfoundation_MailRankingSignals.isFlagged.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 72, v1);
  return *(v0 + 72);
}

uint64_t Searchfoundation_MailRankingSignals.isFlagged.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 72, v4);
  *(v5 + 72) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.isFlagged.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_81(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 84) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DF670(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 72) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.isRepliedTo.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 73, v1);
  return *(v0 + 73);
}

uint64_t Searchfoundation_MailRankingSignals.isRepliedTo.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 73, v4);
  *(v5 + 73) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.isRepliedTo.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_81(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 73);
  *(v1 + 84) = *(v0 + 73);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DF7EC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 73) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.isSemanticMatch.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 74, v1);
  return *(v0 + 74);
}

uint64_t Searchfoundation_MailRankingSignals.isSemanticMatch.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 74, v4);
  *(v5 + 74) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.isSemanticMatch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_81(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 74);
  *(v1 + 84) = *(v0 + 74);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DF968(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 74) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.isSyntacticMatch.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 75, v1);
  return *(v0 + 75);
}

uint64_t Searchfoundation_MailRankingSignals.isSyntacticMatch.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 75, v4);
  *(v5 + 75) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.isSyntacticMatch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_81(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 75);
  *(v1 + 84) = *(v0 + 75);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DFAE4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 75) = v3;

  free(v1);
}

float Searchfoundation_MailRankingSignals.semanticScore.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 76, v1);
  return *(v0 + 76);
}

uint64_t Searchfoundation_MailRankingSignals.semanticScore.setter()
{
  v3 = OUTLINED_FUNCTION_22_26();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 76, v4);
  *(v5 + 76) = v2;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.semanticScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 76);
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DFC60()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_134_1();
  v5 = *(v2 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_29();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 76) = v3;

  free(v0);
}

float Searchfoundation_MailRankingSignals.syntacticScore.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 80, v1);
  return *(v0 + 80);
}

uint64_t Searchfoundation_MailRankingSignals.syntacticScore.setter()
{
  v3 = OUTLINED_FUNCTION_22_26();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 80, v4);
  *(v5 + 80) = v2;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.syntacticScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DFDE4()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_134_1();
  v5 = *(v2 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_29();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 80) = v3;

  free(v0);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 84, v1);
  return *(v0 + 84);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 84, v4);
  *(v5 + 84) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 84);
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94DFF60(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 84) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 88, v1);
  return *(v0 + 88);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 88, v4);
  *(v5 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  *(v1 + 80) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E00D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 88) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 92, v1);
  return *(v0 + 92);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 92, v4);
  *(v5 + 92) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 92);
  *(v1 + 80) = *(v0 + 92);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0240(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 92) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);
  return *(v0 + 96);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 96, v4);
  *(v5 + 96) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  *(v1 + 80) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E03B0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 100, v1);
  return *(v0 + 100);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 100, v4);
  *(v5 + 100) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 100);
  *(v1 + 80) = *(v0 + 100);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0520(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 100) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthors.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 104, v1);
  return *(v0 + 104);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthors.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 104, v4);
  *(v5 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthors.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 104);
  *(v1 + 80) = *(v0 + 104);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0690(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 104) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 108, v1);
  return *(v0 + 108);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 108, v4);
  *(v5 + 108) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 108);
  *(v1 + 80) = *(v0 + 108);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0800(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 108) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 112, v1);
  return *(v0 + 112);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 112, v4);
  *(v5 + 112) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  *(v1 + 80) = *(v0 + 112);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0970(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 112) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 116, v1);
  return *(v0 + 116);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 116, v4);
  *(v5 + 116) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 116);
  *(v1 + 80) = *(v0 + 116);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0AE0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 116) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 120, v1);
  return *(v0 + 120);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 120, v4);
  *(v5 + 120) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 80) = *(v0 + 120);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0C50(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 120) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 124, v1);
  return *(v0 + 124);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 124, v4);
  *(v5 + 124) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 124);
  *(v1 + 80) = *(v0 + 124);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0DC0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 124) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthorEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 128, v1);
  return *(v0 + 128);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthorEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 128, v4);
  *(v5 + 128) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInAuthorEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  *(v1 + 80) = *(v0 + 128);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E0F30(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 128) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 132, v1);
  return *(v0 + 132);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 132, v4);
  *(v5 + 132) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 132);
  *(v1 + 80) = *(v0 + 132);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E10A0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 132) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 136, v1);
  return *(v0 + 136);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 136, v4);
  *(v5 + 136) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 136);
  *(v1 + 80) = *(v0 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1210(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 136) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInSubject.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 140, v1);
  return *(v0 + 140);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 140, v4);
  *(v5 + 140) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 140);
  *(v1 + 80) = *(v0 + 140);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1380(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 140) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 144, v1);
  return *(v0 + 144);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 144, v4);
  *(v5 + 144) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 80) = *(v0 + 144);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E14F0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 148, v1);
  return *(v0 + 148);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 148, v4);
  *(v5 + 148) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 148);
  *(v1 + 80) = *(v0 + 148);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1660(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 148) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInSubject.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 152, v1);
  return *(v0 + 152);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInSubject.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 152, v4);
  *(v5 + 152) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInSubject.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  *(v1 + 80) = *(v0 + 152);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E17D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 156, v1);
  return *(v0 + 156);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 156, v4);
  *(v5 + 156) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 156);
  *(v1 + 80) = *(v0 + 156);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1940(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 156) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 160, v1);
  return *(v0 + 160);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 160, v4);
  *(v5 + 160) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 80) = *(v0 + 160);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1AB0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 164, v1);
  return *(v0 + 164);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 164, v4);
  *(v5 + 164) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 164);
  *(v1 + 80) = *(v0 + 164);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1C20(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 164) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 168, v1);
  return *(v0 + 168);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 168, v4);
  *(v5 + 168) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 80) = *(v0 + 168);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1D90(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 168) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 172, v1);
  return *(v0 + 172);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 172, v4);
  *(v5 + 172) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 172);
  *(v1 + 80) = *(v0 + 172);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E1F00(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 172) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInTextContent.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 176, v1);
  return *(v0 + 176);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInTextContent.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 176, v4);
  *(v5 + 176) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInTextContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  *(v1 + 80) = *(v0 + 176);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2070(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 176) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 180, v1);
  return *(v0 + 180);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 180, v4);
  *(v5 + 180) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 180);
  *(v1 + 80) = *(v0 + 180);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E21E0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 180) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 184, v1);
  return *(v0 + 184);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 184, v4);
  *(v5 + 184) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 184);
  *(v1 + 80) = *(v0 + 184);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2350(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 184) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 188, v1);
  return *(v0 + 188);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 188, v4);
  *(v5 + 188) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 188);
  *(v1 + 80) = *(v0 + 188);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E24C0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 188) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 192, v1);
  return *(v0 + 192);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 192, v4);
  *(v5 + 192) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  *(v1 + 80) = *(v0 + 192);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2630(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 192) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 196, v1);
  return *(v0 + 196);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 196, v4);
  *(v5 + 196) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 196);
  *(v1 + 80) = *(v0 + 196);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E27A0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 196) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipients.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 200, v1);
  return *(v0 + 200);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 200, v4);
  *(v5 + 200) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipients.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 200);
  *(v1 + 80) = *(v0 + 200);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2910(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 200) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 204, v1);
  return *(v0 + 204);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 204, v4);
  *(v5 + 204) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 204);
  *(v1 + 80) = *(v0 + 204);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2A80(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 204) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 208, v1);
  return *(v0 + 208);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 208, v4);
  *(v5 + 208) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  *(v1 + 80) = *(v0 + 208);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2BF0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 208) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 212, v1);
  return *(v0 + 212);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 212, v4);
  *(v5 + 212) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 212);
  *(v1 + 80) = *(v0 + 212);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2D60(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 212) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 216, v1);
  return *(v0 + 216);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 216, v4);
  *(v5 + 216) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 216);
  *(v1 + 80) = *(v0 + 216);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E2ED0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 216) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 220, v1);
  return *(v0 + 220);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 220, v4);
  *(v5 + 220) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 220);
  *(v1 + 80) = *(v0 + 220);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3040(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 220) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipientEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 224, v1);
  return *(v0 + 224);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipientEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 224, v4);
  *(v5 + 224) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInRecipientEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  *(v1 + 80) = *(v0 + 224);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E31B0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 224) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 228, v1);
  return *(v0 + 228);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 228, v4);
  *(v5 + 228) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 228);
  *(v1 + 80) = *(v0 + 228);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3320(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 228) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 232, v1);
  return *(v0 + 232);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 232, v4);
  *(v5 + 232) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 232);
  *(v1 + 80) = *(v0 + 232);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3490(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 232) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 236, v1);
  return *(v0 + 236);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 236, v4);
  *(v5 + 236) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 236);
  *(v1 + 80) = *(v0 + 236);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3600(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 236) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 240, v1);
  return *(v0 + 240);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 240, v4);
  *(v5 + 240) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 240);
  *(v1 + 80) = *(v0 + 240);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3770(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 240) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 244, v1);
  return *(v0 + 244);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 244, v4);
  *(v5 + 244) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 244);
  *(v1 + 80) = *(v0 + 244);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E38E0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 244) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInEmailAddresses.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 248, v1);
  return *(v0 + 248);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInEmailAddresses.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 248, v4);
  *(v5 + 248) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramPrefixMatchInEmailAddresses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 248);
  *(v1 + 80) = *(v0 + 248);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3A50(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 248) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 252, v1);
  return *(v0 + 252);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 252, v4);
  *(v5 + 252) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 252);
  *(v1 + 80) = *(v0 + 252);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3BC0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 252) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 256, v1);
  return *(v0 + 256);
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 256, v4);
  *(v5 + 256) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countBigramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 256);
  *(v1 + 80) = *(v0 + 256);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3D30(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 256) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 260, v1);
  return *(v0 + 260);
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 260, v4);
  *(v5 + 260) = v0;
  return result;
}

uint64_t Searchfoundation_MailRankingSignals.countNgramMatchInAttachmentTypes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_98(v3);
  OUTLINED_FUNCTION_62_0(v0 + 260);
  *(v1 + 80) = *(v0 + 260);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94E3EA0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_26();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 260) = v3;

  free(v1);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAttachmentTypes.getter()
{
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_10_4(v0 + 264, v1);
  return *(v0 + 264);
}

uint64_t Searchfoundation_MailRankingSignals.countUnigramPrefixMatchInAttachmentTypes.setter()
{
  v3 = OUTLINED_FUNCTION_4_56();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_MailRankingSignals._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FBDB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 264, v4);
  *(v5 + 264) = v0;
  return result;
}