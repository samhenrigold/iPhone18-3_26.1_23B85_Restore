uint64_t sub_1B93AE480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B93AE534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  return sub_1B964C570();
}

void Searchfoundation_ButtonListCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_Color(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (v8)
  {
    OUTLINED_FUNCTION_868_0();
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v9, v10, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_200_6();
    OUTLINED_FUNCTION_5_34();
    sub_1B964C730();
    if (v1)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_834_0();
  }

  else
  {
    v1 = v0;
  }

  OUTLINED_FUNCTION_1();
  if (!v11 || (OUTLINED_FUNCTION_860(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (OUTLINED_FUNCTION_877(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1212();
      if (!v13 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
      {
        OUTLINED_FUNCTION_1209();
        if (!v13 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
        {
          OUTLINED_FUNCTION_1261();
          if (!v13 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v14 || (OUTLINED_FUNCTION_1171(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
            {
              v15 = v1;
              v16 = *(v2 + 64);
              if (v16)
              {
                OUTLINED_FUNCTION_540_0(v16);
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_687();
                sub_1B964C680();
                if (v1)
                {
                  goto LABEL_34;
                }

                v15 = 0;
              }

              v28 = type metadata accessor for Searchfoundation_ButtonListCardSection(0);
              OUTLINED_FUNCTION_285_1(*(v28 + 64));
              sub_1B8D92024();
              OUTLINED_FUNCTION_243_1();
              if (v13)
              {
                sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v15;
              }

              else
              {
                OUTLINED_FUNCTION_5_36();
                OUTLINED_FUNCTION_1277();
                OUTLINED_FUNCTION_70_10();
                sub_1B8CD3068(v17, v18, protocol conformance descriptor for Searchfoundation_Color);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_32_19();
                sub_1B944B0D4();
                if (v1)
                {
                  goto LABEL_34;
                }
              }

              OUTLINED_FUNCTION_1();
              if (!v19 || (OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
              {
                if (!*(*(v2 + 96) + 16) || (type metadata accessor for Searchfoundation_ButtonItem(0), OUTLINED_FUNCTION_30_26(), sub_1B8CD3068(v20, v21, protocol conformance descriptor for Searchfoundation_ButtonItem), OUTLINED_FUNCTION_694_1(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(v22, v23, v24, v25, v26), !v1))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v27 || (OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
                  {
                    OUTLINED_FUNCTION_163_6();
                    sub_1B964C290();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_ButtonListCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_Color(v4);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_106_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_163_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_1329();
  if ((v9 & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_892();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_822_0();
  v15 = v12 && v13 == v14;
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_891();
  if (!v12)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v12)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_890();
  if (!v12)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_823_0();
  v18 = v12 && v16 == v17;
  if (!v18 && (sub_1B964C9F0() & 1) == 0 || !OUTLINED_FUNCTION_889())
  {
    goto LABEL_34;
  }

  type metadata accessor for Searchfoundation_ButtonListCardSection(0);
  v19 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_75_9();
  if (!v12)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v19);
    if (!v20)
    {
      OUTLINED_FUNCTION_5_36();
      OUTLINED_FUNCTION_1275();
      OUTLINED_FUNCTION_494_0();
      if (v24 || (, , OUTLINED_FUNCTION_616(), sub_1B947FDE4(), OUTLINED_FUNCTION_813(), , (&unk_1B96B7BD0 & 1) != 0))
      {
        v25 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v26, v27, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_654_0();
        OUTLINED_FUNCTION_78_7();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_531_0();
        sub_1B944B0D4();
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v25 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_39;
      }

      OUTLINED_FUNCTION_336_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v21 = &qword_1EBACB050;
      v22 = &unk_1B96B7BD0;
LABEL_33:
      sub_1B8D9207C(v2, v21, v22);
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_32_19();
    sub_1B944B0D4();
LABEL_32:
    v21 = &qword_1EBACB058;
    v22 = &unk_1B96CA9D0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_37_0(v2 + v19);
  if (!v12)
  {
    goto LABEL_32;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_39:
  v28 = v1[10] == v0[10] && v1[11] == v0[11];
  if (v28 || (sub_1B964C9F0() & 1) != 0)
  {
    sub_1B8D6B7F8(v1[12], v0[12]);
    if (v29)
    {
      v30 = v1[13] == v0[13] && v1[14] == v0[14];
      if (v30 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        v33 = sub_1B8CD3068(v31, v32, MEMORY[0x1E69AAC10]);
        v23 = OUTLINED_FUNCTION_199_0(v33);
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v23 = 0;
LABEL_35:
  OUTLINED_FUNCTION_264(v23);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93AECFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDEB8, type metadata accessor for Searchfoundation_ButtonListCardSection, protocol conformance descriptor for Searchfoundation_ButtonListCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93AED7C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD018, type metadata accessor for Searchfoundation_ButtonListCardSection, protocol conformance descriptor for Searchfoundation_ButtonListCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93AEDEC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD018, type metadata accessor for Searchfoundation_ButtonListCardSection, protocol conformance descriptor for Searchfoundation_ButtonListCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93AEE78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB5F8);
  __swift_project_value_buffer(v0, qword_1EBACB5F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
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
  *v26 = "cardSections";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B93AF29C()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    v2 = sub_1B964C3C0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_44_5();
        sub_1B944A84C();
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
        v4 = OUTLINED_FUNCTION_44_5();
        v1(v4);
        break;
      case 9:
        OUTLINED_FUNCTION_44_5();
        sub_1B93B8EAC();
        break;
      default:
        if (v2 == 51)
        {
          OUTLINED_FUNCTION_44_5();
          sub_1B93C4AC4();
        }

        break;
    }
  }

  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B93AF51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDEB0, type metadata accessor for Searchfoundation_CombinedCardSection, protocol conformance descriptor for Searchfoundation_CombinedCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93AF59C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD030, type metadata accessor for Searchfoundation_CombinedCardSection, protocol conformance descriptor for Searchfoundation_CombinedCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93AF60C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD030, type metadata accessor for Searchfoundation_CombinedCardSection, protocol conformance descriptor for Searchfoundation_CombinedCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93AF698()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB610);
  __swift_project_value_buffer(v0, qword_1EBACB610);
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
  *v24 = "cardSections";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "numberOfRows";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_HorizontalScrollCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8D22150();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B93CC664();
        break;
      default:
        if (v1 == 51)
        {
          OUTLINED_FUNCTION_1001();
          OUTLINED_FUNCTION_9();
          sub_1B93C4AC4();
        }

        else if (v1 == 52)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C560();
        }

        break;
    }
  }
}

void Searchfoundation_HorizontalScrollCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_Color(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (v8)
  {
    OUTLINED_FUNCTION_868_0();
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v9, v10, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_200_6();
    OUTLINED_FUNCTION_5_34();
    sub_1B964C730();
    if (v1)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_834_0();
  }

  else
  {
    v1 = v0;
  }

  OUTLINED_FUNCTION_1();
  if (!v11 || (OUTLINED_FUNCTION_860(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (OUTLINED_FUNCTION_877(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1212();
      if (!v13 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
      {
        OUTLINED_FUNCTION_1209();
        if (!v13 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
        {
          OUTLINED_FUNCTION_1261();
          if (!v13 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v14 || (OUTLINED_FUNCTION_1171(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
            {
              v15 = v1;
              v16 = v2[8];
              if (v16)
              {
                OUTLINED_FUNCTION_540_0(v16);
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_687();
                sub_1B964C680();
                if (v1)
                {
                  goto LABEL_32;
                }

                v15 = 0;
              }

              v26 = type metadata accessor for Searchfoundation_HorizontalScrollCardSection(0);
              OUTLINED_FUNCTION_285_1(*(v26 + 60));
              sub_1B8D92024();
              OUTLINED_FUNCTION_243_1();
              if (v13)
              {
                sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v15;
              }

              else
              {
                OUTLINED_FUNCTION_5_36();
                OUTLINED_FUNCTION_1277();
                OUTLINED_FUNCTION_70_10();
                sub_1B8CD3068(v17, v18, protocol conformance descriptor for Searchfoundation_Color);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_32_19();
                sub_1B944B0D4();
                if (v1)
                {
                  goto LABEL_32;
                }
              }

              if (!*(v2[10] + 16) || (type metadata accessor for Searchfoundation_CardSection(0), OUTLINED_FUNCTION_335_0(), sub_1B8CD3068(v19, v20, protocol conformance descriptor for Searchfoundation_CardSection), OUTLINED_FUNCTION_694_1(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(v21, v22, v23, v24, v25), !v1))
              {
                if (!v2[11] || (OUTLINED_FUNCTION_454_1(), sub_1B964C720(), !v1))
                {
                  OUTLINED_FUNCTION_163_6();
                  sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B93B0018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDEA8, type metadata accessor for Searchfoundation_HorizontalScrollCardSection, protocol conformance descriptor for Searchfoundation_HorizontalScrollCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93B0098(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD048, type metadata accessor for Searchfoundation_HorizontalScrollCardSection, protocol conformance descriptor for Searchfoundation_HorizontalScrollCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93B0108(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD048, type metadata accessor for Searchfoundation_HorizontalScrollCardSection, protocol conformance descriptor for Searchfoundation_HorizontalScrollCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93B0194()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4680);
  __swift_project_value_buffer(v0, qword_1EBAB4680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1B9656CF0;
  v4 = v66 + v3 + v1[14];
  *(v66 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v66 + v3 + v2 + v1[14];
  *(v66 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v66 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v66 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v66 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v66 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v66 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v66 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v66 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v66 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "thumbnail";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v66 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "preventThumbnailImageScaling";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v7();
  v27 = (v66 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "title";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v66 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "secondaryTitle";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v7();
  v31 = (v66 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "secondaryTitleImage";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v7();
  v33 = (v66 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 56;
  *v34 = "isSecondaryTitleDetached";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v7();
  v35 = (v66 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 57;
  *v36 = "descriptions";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v7();
  v37 = (v66 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 58;
  *v38 = "footnote";
  *(v38 + 1) = 8;
  v38[16] = 2;
  v7();
  v39 = (v66 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 59;
  *v40 = "trailingTopText";
  *(v40 + 1) = 15;
  v40[16] = 2;
  v7();
  v41 = (v66 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 60;
  *v42 = "trailingMiddleText";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v7();
  v43 = (v66 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 61;
  *v44 = "trailingBottomText";
  *(v44 + 1) = 18;
  v44[16] = 2;
  v7();
  v45 = (v66 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 62;
  *v46 = "action";
  *(v46 + 1) = 6;
  v46[16] = 2;
  v7();
  v47 = (v66 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 63;
  *v48 = "button";
  *(v48 + 1) = 6;
  v48[16] = 2;
  v7();
  v49 = (v66 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 64;
  *v50 = "shouldUseCompactDisplay";
  *(v50 + 1) = 23;
  v50[16] = 2;
  v7();
  v51 = (v66 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 65;
  *v52 = "buttonItems";
  *(v52 + 1) = 11;
  v52[16] = 2;
  v7();
  v53 = (v66 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 66;
  *v54 = "trailingThumbnail";
  *(v54 + 1) = 17;
  v54[16] = 2;
  v7();
  v55 = (v66 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 67;
  *v56 = "buttonItemsAreTrailing";
  *(v56 + 1) = 22;
  v56[16] = 2;
  v7();
  v57 = (v66 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 68;
  *v58 = "topText";
  *(v58 + 1) = 7;
  v58[16] = 2;
  v7();
  v59 = (v66 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 69;
  *v60 = "richTrailingTopText";
  *(v60 + 1) = 19;
  v60[16] = 2;
  v7();
  v61 = (v66 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 70;
  *v62 = "richTrailingMiddleText";
  *(v62 + 1) = 22;
  v62[16] = 2;
  v7();
  v63 = (v66 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 71;
  *v64 = "richTrailingBottomText";
  *(v64 + 1) = 22;
  v64[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B93B0A7C()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v5 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__preventThumbnailImageScaling) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v7 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitle;
  v9 = type metadata accessor for Searchfoundation_FormattedText(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitleImage, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isSecondaryTitleDetached) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptions) = v1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingTopText, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingMiddleText, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingBottomText, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__action;
  v11 = type metadata accessor for Searchfoundation_ActionItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button;
  v13 = type metadata accessor for Searchfoundation_Button(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldUseCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = v1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingThumbnail, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreTrailing) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__topText, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingTopText, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingMiddleText, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingBottomText, 1, 1, v7);
  return v0;
}

uint64_t sub_1B93B0D20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC560, &unk_1B96B9888);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC558, &qword_1B96B9878);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v55 - v14;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  v55 = (v1 + 56);
  *(v1 + 58) = 0;
  v56 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v57 = (v1 + 64);
  v58 = (v1 + 80);
  *(v1 + 88) = 1;
  v15 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v59 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v16 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v60 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v18 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v62 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__preventThumbnailImageScaling;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__preventThumbnailImageScaling) = 0;
  v19 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v63 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v20 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitle;
  v64 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitle;
  v22 = type metadata accessor for Searchfoundation_FormattedText(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v66 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitleImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitleImage, 1, 1, v18);
  v67 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isSecondaryTitleDetached;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isSecondaryTitleDetached) = 0;
  v68 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptions;
  v23 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptions) = MEMORY[0x1E69E7CC0];
  v70 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote, 1, 1, v20);
  v71 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingTopText;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingTopText, 1, 1, v22);
  v73 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingMiddleText;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingMiddleText, 1, 1, v22);
  v74 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingBottomText;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingBottomText, 1, 1, v22);
  v24 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__action;
  v75 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__action;
  v25 = type metadata accessor for Searchfoundation_ActionItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button;
  v76 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button;
  v27 = type metadata accessor for Searchfoundation_Button(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v77 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldUseCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldUseCompactDisplay) = 0;
  v78 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = v23;
  v79 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingThumbnail;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingThumbnail, 1, 1, v18);
  v80 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreTrailing;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreTrailing) = 0;
  v81 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__topText;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__topText, 1, 1, v20);
  v82 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingTopText;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingTopText, 1, 1, v20);
  v83 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingMiddleText;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingMiddleText, 1, 1, v20);
  v84 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingBottomText;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingBottomText, 1, 1, v20);
  swift_beginAccess();
  v28 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v28;
  swift_beginAccess();
  v30 = *(a1 + 24);
  v29 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v30;
  *(v1 + 32) = v29;

  swift_beginAccess();
  v32 = *(a1 + 40);
  v31 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v32;
  *(v1 + 48) = v31;

  swift_beginAccess();
  LOBYTE(v31) = *(a1 + 56);
  v33 = v55;
  swift_beginAccess();
  *v33 = v31;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v31;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + 58);
  v34 = v56;
  swift_beginAccess();
  *v34 = v31;
  swift_beginAccess();
  v36 = *(a1 + 64);
  v35 = *(a1 + 72);
  v37 = v57;
  swift_beginAccess();
  *v37 = v36;
  *(v1 + 72) = v35;

  swift_beginAccess();
  v38 = *(a1 + 80);
  LOBYTE(v34) = *(a1 + 88);
  v39 = v58;
  swift_beginAccess();
  *v39 = v38;
  *(v1 + 88) = v34;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__preventThumbnailImageScaling;
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + v40);
  v41 = v62;
  swift_beginAccess();
  *(v1 + v41) = v40;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isSecondaryTitleDetached;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v67;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptions;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = v68;
  swift_beginAccess();
  *(v1 + v46) = v45;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldUseCompactDisplay;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + v47);
  v48 = v77;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v78;
  swift_beginAccess();
  *(v1 + v51) = v50;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreTrailing;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v80;
  swift_beginAccess();
  *(v1 + v53) = v52;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B93B1CD4()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitle, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__secondaryTitleImage, &qword_1EBAB8EA8, &unk_1B96B77D0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingTopText, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingMiddleText, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingBottomText, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__action, &qword_1EBACAFA8, &qword_1B96B9880);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button, &qword_1EBACC560, &unk_1B96B9888);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingThumbnail, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__topText, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingTopText, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingMiddleText, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richTrailingBottomText, &qword_1EBACB1D0, &qword_1B96B9870);
  return v0;
}

void sub_1B93B1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93B2314(a2, a1, a3, a4);
        break;
      case 51:
        sub_1B93B23F0(a2, a1, a3, a4);
        break;
      case 52:
      case 56:
      case 64:
      case 67:
        sub_1B9442234();
        break;
      case 53:
        sub_1B93B24CC(a2, a1, a3, a4);
        break;
      case 54:
        sub_1B93B25A8(a2, a1, a3, a4);
        break;
      case 55:
        sub_1B93B2684(a2, a1, a3, a4);
        break;
      case 57:
        sub_1B93B2760(a2, a1, a3, a4);
        break;
      case 58:
        sub_1B93B283C(a2, a1, a3, a4);
        break;
      case 59:
        sub_1B93B2918(a2, a1, a3, a4);
        break;
      case 60:
        sub_1B93B29F4(a2, a1, a3, a4);
        break;
      case 61:
        sub_1B93B2AD0(a2, a1, a3, a4);
        break;
      case 62:
        sub_1B93B2BAC(a2, a1, a3, a4);
        break;
      case 63:
        sub_1B93B2C88(a2, a1, a3, a4);
        break;
      case 65:
        sub_1B93B2D64(a2, a1, a3, a4);
        break;
      case 66:
        sub_1B93B2E40(a2, a1, a3, a4);
        break;
      case 68:
        sub_1B93B2F1C(a2, a1, a3, a4);
        break;
      case 69:
        sub_1B93B2FF8(a2, a1, a3, a4);
        break;
      case 70:
        sub_1B93B30D4(a2, a1, a3, a4);
        break;
      case 71:
        sub_1B93B31B0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B93B2314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B23F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B24CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B25A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FormattedText(0);
  sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93B283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FormattedText(0);
  sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B29F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FormattedText(0);
  sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FormattedText(0);
  sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ActionItem(0);
  sub_1B8CD3068(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem, protocol conformance descriptor for Searchfoundation_ActionItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Button(0);
  sub_1B8CD3068(&qword_1EBACB2E0, type metadata accessor for Searchfoundation_Button, protocol conformance descriptor for Searchfoundation_Button);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93B2E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B2FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B30D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B31B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93B32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC560, &unk_1B96B9888);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v114 = &v102 - v9;
  v115 = type metadata accessor for Searchfoundation_Button(0);
  MEMORY[0x1EEE9AC00](v115);
  v111 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v102 - v12;
  v119 = type metadata accessor for Searchfoundation_ActionItem(0);
  MEMORY[0x1EEE9AC00](v119);
  v113 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC558, &qword_1B96B9878);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v120 = &v102 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v123 = &v102 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v102 - v21;
  v131 = type metadata accessor for Searchfoundation_FormattedText(0);
  v22 = MEMORY[0x1EEE9AC00](v131);
  v116 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v121 = &v102 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v124 = &v102 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v127 = &v102 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v106 = &v102 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v108 = &v102 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v109 = &v102 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v125 = &v102 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v132 = &v102 - v41;
  v134 = type metadata accessor for Searchfoundation_RichText(0);
  v42 = MEMORY[0x1EEE9AC00](v134);
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v104 = &v102 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v105 = &v102 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v107 = &v102 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v122 = &v102 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v129 = &v102 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v55 = MEMORY[0x1EEE9AC00](v54 - 8);
  v112 = &v102 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v128 = &v102 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v136 = &v102 - v59;
  v141 = type metadata accessor for Searchfoundation_Image(0);
  v60 = MEMORY[0x1EEE9AC00](v141);
  v110 = &v102 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v126 = &v102 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v133 = &v102 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v137 = &v102 - v66;
  v138 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v102 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v103 = v44;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    v5 = v4;
    if (v4)
    {
    }

    v44 = v103;
  }

  swift_beginAccess();
  v68 = *(a1 + 32);
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v70 = *(a1 + 48);
  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v5))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v5))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v5))
      {
        swift_beginAccess();
        v73 = *(a1 + 72);
        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {

          sub_1B964C700();
          if (v5)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 80) || (v75 = *(a1 + 88), v139 = *(a1 + 80), v140 = v75, sub_1B92C8A2C(), result = sub_1B964C680(), !v5))
        {
          v102 = a2;
          swift_beginAccess();
          v76 = v137;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v76, 1, v138) == 1)
          {
            sub_1B8D9207C(v76, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
            sub_1B964C740();
            if (v5)
            {
              return sub_1B944B0D4();
            }

            sub_1B944B0D4();
          }

          swift_beginAccess();
          v77 = v136;
          sub_1B8D92024();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v141);
          v79 = v102;
          if (EnumTagSinglePayload == 1)
          {
            sub_1B8D9207C(v77, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
            sub_1B964C740();
            if (v5)
            {
              return sub_1B944B0D4();
            }

            sub_1B944B0D4();
          }

          v80 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__preventThumbnailImageScaling;
          swift_beginAccess();
          v81 = *(a1 + v80);
          v102 = v79;
          if (v81 != 1 || (result = sub_1B964C670(), !v5))
          {
            swift_beginAccess();
            v82 = v132;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v82, 1, v134) == 1)
            {
              sub_1B8D9207C(v82, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              if (v5)
              {
                return sub_1B944B0D4();
              }

              sub_1B944B0D4();
            }

            swift_beginAccess();
            v83 = v130;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v83, 1, v131) == 1)
            {
              sub_1B8D9207C(v83, &dword_1EBACC558, &qword_1B96B9878);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
              sub_1B964C740();
              if (v5)
              {
                return sub_1B944B0D4();
              }

              sub_1B944B0D4();
            }

            swift_beginAccess();
            v84 = v128;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v84, 1, v141) == 1)
            {
              sub_1B8D9207C(v84, &qword_1EBAB8EA8, &unk_1B96B77D0);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
              sub_1B964C740();
              if (v5)
              {
                return sub_1B944B0D4();
              }

              sub_1B944B0D4();
            }

            v85 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isSecondaryTitleDetached;
            swift_beginAccess();
            if (*(a1 + v85) != 1 || (result = sub_1B964C670(), !v5))
            {
              v86 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptions;
              swift_beginAccess();
              if (*(*(a1 + v86) + 16))
              {
                sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);

                sub_1B964C730();
                if (v5)
                {
                }
              }

              swift_beginAccess();
              v87 = v125;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v87, 1, v134) == 1)
              {
                sub_1B8D9207C(v87, &qword_1EBACB1D0, &qword_1B96B9870);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
                sub_1B964C740();
                if (v5)
                {
                  return sub_1B944B0D4();
                }

                sub_1B944B0D4();
              }

              swift_beginAccess();
              v88 = v123;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v88, 1, v131) == 1)
              {
                sub_1B8D9207C(v88, &dword_1EBACC558, &qword_1B96B9878);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
                sub_1B964C740();
                if (v5)
                {
                  return sub_1B944B0D4();
                }

                sub_1B944B0D4();
              }

              swift_beginAccess();
              v89 = v120;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v89, 1, v131) == 1)
              {
                sub_1B8D9207C(v89, &dword_1EBACC558, &qword_1B96B9878);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
                sub_1B964C740();
                if (v5)
                {
                  return sub_1B944B0D4();
                }

                sub_1B944B0D4();
              }

              swift_beginAccess();
              v90 = v118;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v90, 1, v131) == 1)
              {
                sub_1B8D9207C(v90, &dword_1EBACC558, &qword_1B96B9878);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText, protocol conformance descriptor for Searchfoundation_FormattedText);
                sub_1B964C740();
                if (v5)
                {
                  return sub_1B944B0D4();
                }

                sub_1B944B0D4();
              }

              swift_beginAccess();
              v91 = v117;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v91, 1, v119) == 1)
              {
                v138 = v32;
                sub_1B8D9207C(v91, &qword_1EBACAFA8, &qword_1B96B9880);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem, protocol conformance descriptor for Searchfoundation_ActionItem);
                sub_1B964C740();
                if (v5)
                {
                  return sub_1B944B0D4();
                }

                v138 = v32;
                sub_1B944B0D4();
              }

              swift_beginAccess();
              v92 = v114;
              sub_1B8D92024();
              v93 = __swift_getEnumTagSinglePayload(v92, 1, v115);
              v103 = v44;
              if (v93 == 1)
              {
                sub_1B8D9207C(v92, &qword_1EBACC560, &unk_1B96B9888);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1EBACB2E0, type metadata accessor for Searchfoundation_Button, protocol conformance descriptor for Searchfoundation_Button);
                sub_1B964C740();
                if (v5)
                {
                  return sub_1B944B0D4();
                }

                sub_1B944B0D4();
              }

              v94 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldUseCompactDisplay;
              swift_beginAccess();
              if (*(a1 + v94) != 1 || (result = sub_1B964C670(), !v5))
              {
                v95 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
                swift_beginAccess();
                if (*(*(a1 + v95) + 16))
                {
                  type metadata accessor for Searchfoundation_ButtonItem(0);
                  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);

                  sub_1B964C730();
                  if (v5)
                  {
                  }
                }

                swift_beginAccess();
                v96 = v112;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v96, 1, v141) == 1)
                {
                  sub_1B8D9207C(v112, &qword_1EBAB8EA8, &unk_1B96B77D0);
                }

                else
                {
                  sub_1B944B02C();
                  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
                  sub_1B964C740();
                  if (v5)
                  {
                    return sub_1B944B0D4();
                  }

                  sub_1B944B0D4();
                }

                v97 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreTrailing;
                swift_beginAccess();
                if (*(a1 + v97) != 1 || (result = sub_1B964C670(), !v5))
                {
                  swift_beginAccess();
                  v98 = v109;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v98, 1, v134) == 1)
                  {
                    sub_1B8D9207C(v109, &qword_1EBACB1D0, &qword_1B96B9870);
                  }

                  else
                  {
                    sub_1B944B02C();
                    sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
                    sub_1B964C740();
                    if (v5)
                    {
                      return sub_1B944B0D4();
                    }

                    sub_1B944B0D4();
                  }

                  swift_beginAccess();
                  v99 = v108;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v99, 1, v134) == 1)
                  {
                    sub_1B8D9207C(v108, &qword_1EBACB1D0, &qword_1B96B9870);
                  }

                  else
                  {
                    sub_1B944B02C();
                    sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
                    sub_1B964C740();
                    if (v5)
                    {
                      return sub_1B944B0D4();
                    }

                    sub_1B944B0D4();
                  }

                  swift_beginAccess();
                  v100 = v106;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v100, 1, v134) == 1)
                  {
                    sub_1B8D9207C(v106, &qword_1EBACB1D0, &qword_1B96B9870);
                  }

                  else
                  {
                    sub_1B944B02C();
                    sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
                    sub_1B964C740();
                    if (v5)
                    {
                      return sub_1B944B0D4();
                    }

                    sub_1B944B0D4();
                  }

                  swift_beginAccess();
                  v101 = v138;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v101, 1, v134) == 1)
                  {
                    return sub_1B8D9207C(v101, &qword_1EBACB1D0, &qword_1B96B9870);
                  }

                  sub_1B944B02C();
                  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
                  sub_1B964C740();
                  return sub_1B944B0D4();
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

BOOL sub_1B93B519C(uint64_t a1, uint64_t a2)
{
  v282 = type metadata accessor for Searchfoundation_Button(0);
  MEMORY[0x1EEE9AC00](v282);
  v283 = &v271 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1D8, &qword_1B96CA388);
  MEMORY[0x1EEE9AC00](v279);
  v284 = &v271 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC560, &unk_1B96B9888);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v281 = &v271 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v280 = &v271 - v9;
  v300 = type metadata accessor for Searchfoundation_ActionItem(0);
  MEMORY[0x1EEE9AC00](v300);
  v274 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFC0, &qword_1B96CA0E0);
  MEMORY[0x1EEE9AC00](v297);
  v302 = &v271 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v298 = &v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v299 = &v271 - v15;
  v323 = type metadata accessor for Searchfoundation_FormattedText(0);
  MEMORY[0x1EEE9AC00](v323);
  v315 = &v271 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1E0, &qword_1B96CA390);
  v17 = MEMORY[0x1EEE9AC00](v322);
  v305 = &v271 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v308 = &v271 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v311 = &v271 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v321 = &v271 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBACC558, &qword_1B96B9878);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v301 = &v271 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v303 = &v271 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v304 = &v271 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v306 = &v271 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v307 = &v271 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v309 = &v271 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v317 = &v271 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v325 = &v271 - v39;
  v328 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v328);
  v319 = &v271 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v41 = MEMORY[0x1EEE9AC00](v327);
  v296 = &v271 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v293 = &v271 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v290 = &v271 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v287 = &v271 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v313 = &v271 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v326 = &v271 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v53 = MEMORY[0x1EEE9AC00](v52 - 8);
  v295 = (&v271 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = MEMORY[0x1EEE9AC00](v53);
  v294 = &v271 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v292 = (&v271 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v291 = &v271 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v289 = (&v271 - v62);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v288 = &v271 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v286 = (&v271 - v66);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v285 = &v271 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v310 = (&v271 - v70);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v312 = &v271 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v324 = &v271 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v337 = &v271 - v75;
  v334 = type metadata accessor for Searchfoundation_Image(0);
  v76 = MEMORY[0x1EEE9AC00](v334);
  v277 = &v271 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v314 = &v271 - v79;
  MEMORY[0x1EEE9AC00](v78);
  v329 = &v271 - v80;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v81 = MEMORY[0x1EEE9AC00](v333);
  v278 = &v271 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v318 = &v271 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v332 = &v271 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v87 = MEMORY[0x1EEE9AC00](v86 - 8);
  v276 = &v271 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v275 = &v271 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v316 = &v271 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v320 = &v271 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v331 = &v271 - v96;
  MEMORY[0x1EEE9AC00](v95);
  v335 = &v271 - v97;
  v98 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v98);
  v330 = &v271 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v100);
  v336 = &v271 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v103 = MEMORY[0x1EEE9AC00](v102 - 8);
  v105 = &v271 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v107 = &v271 - v106;
  swift_beginAccess();
  v108 = *(a1 + 16);
  swift_beginAccess();
  v109 = *(a2 + 16);

  sub_1B8D67B1C(v108, v109);
  v111 = v110;

  if ((v111 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v113 = *(a1 + 24);
  v112 = *(a1 + 32);
  swift_beginAccess();
  v114 = v113 == *(a2 + 24) && v112 == *(a2 + 32);
  if (!v114 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v115 = *(a1 + 40);
  v116 = *(a1 + 48);
  swift_beginAccess();
  v117 = v115 == *(a2 + 40) && v116 == *(a2 + 48);
  if (!v117 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v118 = *(a1 + 56);
  swift_beginAccess();
  if (v118 != *(a2 + 56))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v119 = *(a1 + 57);
  swift_beginAccess();
  if (v119 != *(a2 + 57))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v120 = *(a1 + 58);
  swift_beginAccess();
  if (v120 != *(a2 + 58))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v121 = *(a1 + 64);
  v122 = *(a1 + 72);
  swift_beginAccess();
  v123 = v121 == *(a2 + 64) && v122 == *(a2 + 72);
  if (!v123 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v124 = *(a1 + 80);
  v125 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v124, v125, *(a2 + 80)))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v272 = a1;
  sub_1B8D92024();
  swift_beginAccess();
  v126 = *(v100 + 48);
  v127 = v336;
  sub_1B8D92024();
  v273 = a2;
  v128 = v127;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v127, 1, v98) == 1)
  {
    sub_1B8D9207C(v107, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v127 + v126, 1, v98);
    v130 = v337;
    v131 = v335;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v128, &qword_1EBACB050, &unk_1B96B7BD0);
      v133 = v272;
      v132 = v273;
      goto LABEL_34;
    }

LABEL_28:
    v136 = &qword_1EBACB058;
    v137 = &unk_1B96CA9D0;
    v138 = v128;
LABEL_29:
    sub_1B8D9207C(v138, v136, v137);
    goto LABEL_24;
  }

  sub_1B8D92024();
  v135 = __swift_getEnumTagSinglePayload(v127 + v126, 1, v98);
  v130 = v337;
  if (v135 == 1)
  {
    sub_1B8D9207C(v107, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_28;
  }

  v139 = v330;
  sub_1B944B02C();
  if (*&v105[*(v98 + 20)] != *&v139[*(v98 + 20)])
  {

    sub_1B947FDE4();
    v141 = v140;

    if ((v141 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v107, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      sub_1B8D9207C(v128, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_24;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v142 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v107, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v128, &qword_1EBACB050, &unk_1B96B7BD0);
  v133 = v272;
  v132 = v273;
  v131 = v335;
  if ((v142 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_34:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v143 = v332;
  v144 = *(v333 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v145 = v334;
  if (__swift_getEnumTagSinglePayload(v143, 1, v334) == 1)
  {
    sub_1B8D9207C(v131, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v143 + v144, 1, v145) == 1)
    {
      sub_1B8D9207C(v143, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_45;
    }

LABEL_39:
    v147 = &qword_1EBAB8EB0;
    v148 = &qword_1B964D6B0;
LABEL_40:
    v149 = v143;
LABEL_41:
    sub_1B8D9207C(v149, v147, v148);
    goto LABEL_24;
  }

  v146 = v331;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v143 + v144, 1, v145) == 1)
  {
    sub_1B8D9207C(v131, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B944B0D4();
    goto LABEL_39;
  }

  v150 = v329;
  sub_1B944B02C();
  if (*&v146[*(v145 + 20)] != *&v150[*(v145 + 20)])
  {

    sub_1B94C6890();
    v152 = v151;

    if ((v152 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v131, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B944B0D4();
      v149 = v143;
      v147 = &qword_1EBAB8EA8;
      v148 = &unk_1B96B77D0;
      goto LABEL_41;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  LODWORD(v336) = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v131, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B944B0D4();
  sub_1B8D9207C(v143, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v336 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_45:
  v153 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__preventThumbnailImageScaling;
  swift_beginAccess();
  LODWORD(v153) = *(v133 + v153);
  v154 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__preventThumbnailImageScaling;
  swift_beginAccess();
  if (v153 != *(v132 + v154))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v155 = *(v327 + 48);
  v156 = v130;
  v157 = v326;
  sub_1B8D92024();
  sub_1B8D92024();
  v158 = v328;
  if (__swift_getEnumTagSinglePayload(v157, 1, v328) == 1)
  {
    sub_1B8D9207C(v156, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v157 + v155, 1, v158) == 1)
    {
      sub_1B8D9207C(v157, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_56;
    }

LABEL_53:
    v147 = &qword_1EBACB230;
    v148 = &unk_1B96B8870;
    v149 = v157;
    goto LABEL_41;
  }

  v159 = v324;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v157 + v155, 1, v158) == 1)
  {
    sub_1B8D9207C(v337, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    goto LABEL_53;
  }

  v160 = v319;
  sub_1B944B02C();
  v161 = static Searchfoundation_RichText.== infix(_:_:)(v159, v160);
  sub_1B944B0D4();
  sub_1B8D9207C(v337, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v157, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v161 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_56:
  swift_beginAccess();
  v162 = v325;
  sub_1B8D92024();
  swift_beginAccess();
  v143 = v321;
  v163 = *(v322 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v164 = v323;
  if (__swift_getEnumTagSinglePayload(v143, 1, v323) == 1)
  {
    sub_1B8D9207C(v162, &dword_1EBACC558, &qword_1B96B9878);
    if (__swift_getEnumTagSinglePayload(v143 + v163, 1, v164) == 1)
    {
      sub_1B8D9207C(v143, &dword_1EBACC558, &qword_1B96B9878);
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  v165 = v317;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v143 + v163, 1, v164) == 1)
  {
    sub_1B8D9207C(v325, &dword_1EBACC558, &qword_1B96B9878);
    sub_1B944B0D4();
LABEL_61:
    v147 = &qword_1EBACE1E0;
    v148 = &qword_1B96CA390;
    goto LABEL_40;
  }

  v166 = v315;
  sub_1B944B02C();
  v167 = static Searchfoundation_FormattedText.== infix(_:_:)(v165, v166);
  sub_1B944B0D4();
  sub_1B8D9207C(v325, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B944B0D4();
  sub_1B8D9207C(v143, &dword_1EBACC558, &qword_1B96B9878);
  if ((v167 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_63:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v168 = *(v333 + 48);
  v169 = v318;
  sub_1B8D92024();
  sub_1B8D92024();
  v170 = v334;
  if (__swift_getEnumTagSinglePayload(v169, 1, v334) == 1)
  {
    sub_1B8D9207C(v320, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v169 + v168, 1, v170) == 1)
    {
      sub_1B8D9207C(v169, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v169 + v168, 1, v170) == 1)
  {
    sub_1B8D9207C(v320, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B944B0D4();
    v169 = v318;
LABEL_68:
    v136 = &qword_1EBAB8EB0;
    v137 = &qword_1B964D6B0;
    v138 = v169;
    goto LABEL_29;
  }

  v171 = v314;
  sub_1B944B02C();
  if (*&v316[*(v334 + 20)] != *&v171[*(v334 + 20)])
  {

    sub_1B94C6890();
    v173 = v172;

    if ((v173 & 1) == 0)
    {
      sub_1B944B0D4();
      v188 = &qword_1EBAB8EA8;
      v189 = &unk_1B96B77D0;
      sub_1B8D9207C(v320, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B944B0D4();
      v138 = v318;
LABEL_78:
      v136 = v188;
      v137 = v189;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v174 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v320, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B944B0D4();
  sub_1B8D9207C(v318, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v174 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_72:
  v175 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isSecondaryTitleDetached;
  v176 = v272;
  swift_beginAccess();
  LODWORD(v175) = *(v176 + v175);
  v177 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isSecondaryTitleDetached;
  v178 = v273;
  swift_beginAccess();
  if (v175 != *(v178 + v177))
  {
    goto LABEL_24;
  }

  v179 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptions;
  v180 = v272;
  swift_beginAccess();
  v181 = *(v180 + v179);
  v182 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptions;
  v183 = v273;
  swift_beginAccess();
  v184 = *(v183 + v182);

  sub_1B8D912C0(v181, v184);
  LOBYTE(v183) = v185;

  if ((v183 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v186 = *(v327 + 48);
  v187 = v313;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v187, 1, v328) == 1)
  {
    sub_1B8D9207C(v312, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v313 + v186, 1, v328) == 1)
    {
      sub_1B8D9207C(v313, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_83;
    }

LABEL_81:
    v136 = &qword_1EBACB230;
    v137 = &unk_1B96B8870;
    v138 = v313;
    goto LABEL_29;
  }

  v190 = v313;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v190 + v186, 1, v328) == 1)
  {
    sub_1B8D9207C(v312, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    goto LABEL_81;
  }

  v191 = v313;
  v192 = v319;
  sub_1B944B02C();
  v193 = static Searchfoundation_RichText.== infix(_:_:)(v310, v192);
  sub_1B944B0D4();
  sub_1B8D9207C(v312, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v191, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v193 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_83:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v194 = *(v322 + 48);
  v195 = v311;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v195, 1, v323) == 1)
  {
    sub_1B8D9207C(v309, &dword_1EBACC558, &qword_1B96B9878);
    if (__swift_getEnumTagSinglePayload(v311 + v194, 1, v323) == 1)
    {
      sub_1B8D9207C(v311, &dword_1EBACC558, &qword_1B96B9878);
      goto LABEL_90;
    }

LABEL_88:
    v136 = &qword_1EBACE1E0;
    v137 = &qword_1B96CA390;
    v138 = v311;
    goto LABEL_29;
  }

  v196 = v311;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v196 + v194, 1, v323) == 1)
  {
    sub_1B8D9207C(v309, &dword_1EBACC558, &qword_1B96B9878);
    sub_1B944B0D4();
    goto LABEL_88;
  }

  v197 = v311;
  v198 = v315;
  sub_1B944B02C();
  v199 = static Searchfoundation_FormattedText.== infix(_:_:)(v307, v198);
  sub_1B944B0D4();
  sub_1B8D9207C(v309, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B944B0D4();
  sub_1B8D9207C(v197, &dword_1EBACC558, &qword_1B96B9878);
  if ((v199 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_90:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v200 = *(v322 + 48);
  v201 = v308;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v201, 1, v323) == 1)
  {
    sub_1B8D9207C(v306, &dword_1EBACC558, &qword_1B96B9878);
    if (__swift_getEnumTagSinglePayload(v308 + v200, 1, v323) == 1)
    {
      sub_1B8D9207C(v308, &dword_1EBACC558, &qword_1B96B9878);
      goto LABEL_97;
    }

LABEL_95:
    v136 = &qword_1EBACE1E0;
    v137 = &qword_1B96CA390;
    v138 = v308;
    goto LABEL_29;
  }

  v202 = v308;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v202 + v200, 1, v323) == 1)
  {
    sub_1B8D9207C(v306, &dword_1EBACC558, &qword_1B96B9878);
    sub_1B944B0D4();
    goto LABEL_95;
  }

  v203 = v308;
  v204 = v315;
  sub_1B944B02C();
  v205 = static Searchfoundation_FormattedText.== infix(_:_:)(v304, v204);
  sub_1B944B0D4();
  sub_1B8D9207C(v306, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B944B0D4();
  sub_1B8D9207C(v203, &dword_1EBACC558, &qword_1B96B9878);
  if ((v205 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_97:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v206 = *(v322 + 48);
  v207 = v305;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v207, 1, v323) == 1)
  {
    sub_1B8D9207C(v303, &dword_1EBACC558, &qword_1B96B9878);
    if (__swift_getEnumTagSinglePayload(v305 + v206, 1, v323) == 1)
    {
      sub_1B8D9207C(v305, &dword_1EBACC558, &qword_1B96B9878);
      goto LABEL_104;
    }

LABEL_102:
    v136 = &qword_1EBACE1E0;
    v137 = &qword_1B96CA390;
    v138 = v305;
    goto LABEL_29;
  }

  v208 = v305;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v208 + v206, 1, v323) == 1)
  {
    sub_1B8D9207C(v303, &dword_1EBACC558, &qword_1B96B9878);
    sub_1B944B0D4();
    goto LABEL_102;
  }

  v209 = v305;
  v210 = v315;
  sub_1B944B02C();
  v211 = static Searchfoundation_FormattedText.== infix(_:_:)(v301, v210);
  sub_1B944B0D4();
  sub_1B8D9207C(v303, &dword_1EBACC558, &qword_1B96B9878);
  sub_1B944B0D4();
  sub_1B8D9207C(v209, &dword_1EBACC558, &qword_1B96B9878);
  if ((v211 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_104:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v212 = *(v297 + 48);
  v213 = v302;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v213, 1, v300) == 1)
  {
    sub_1B8D9207C(v299, &qword_1EBACAFA8, &qword_1B96B9880);
    if (__swift_getEnumTagSinglePayload(v302 + v212, 1, v300) == 1)
    {
      sub_1B8D9207C(v302, &qword_1EBACAFA8, &qword_1B96B9880);
      goto LABEL_113;
    }

LABEL_109:
    v136 = &qword_1EBACAFC0;
    v137 = &qword_1B96CA0E0;
    v138 = v302;
    goto LABEL_29;
  }

  v214 = v302;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v214 + v212, 1, v300) == 1)
  {
    sub_1B8D9207C(v299, &qword_1EBACAFA8, &qword_1B96B9880);
    sub_1B944B0D4();
    goto LABEL_109;
  }

  v215 = v274;
  sub_1B944B02C();
  if (*&v298[*(v300 + 20)] != *&v215[*(v300 + 20)])
  {

    sub_1B92C3040();
    v217 = v216;

    if ((v217 & 1) == 0)
    {
      sub_1B944B0D4();
      v188 = &qword_1EBACAFA8;
      v189 = &qword_1B96B9880;
      sub_1B8D9207C(v299, &qword_1EBACAFA8, &qword_1B96B9880);
      sub_1B944B0D4();
      v138 = v302;
      goto LABEL_78;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v218 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v299, &qword_1EBACAFA8, &qword_1B96B9880);
  sub_1B944B0D4();
  sub_1B8D9207C(v302, &qword_1EBACAFA8, &qword_1B96B9880);
  if ((v218 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_113:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v219 = *(v279 + 48);
  v220 = v284;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v220, 1, v282) == 1)
  {
    sub_1B8D9207C(v280, &qword_1EBACC560, &unk_1B96B9888);
    if (__swift_getEnumTagSinglePayload(v284 + v219, 1, v282) == 1)
    {
      sub_1B8D9207C(v284, &qword_1EBACC560, &unk_1B96B9888);
      goto LABEL_120;
    }

LABEL_118:
    v136 = &qword_1EBACE1D8;
    v137 = &qword_1B96CA388;
    v138 = v284;
    goto LABEL_29;
  }

  v221 = v284;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v221 + v219, 1, v282) == 1)
  {
    sub_1B8D9207C(v280, &qword_1EBACC560, &unk_1B96B9888);
    sub_1B944B0D4();
    goto LABEL_118;
  }

  v222 = v284;
  v223 = v283;
  sub_1B944B02C();
  v224 = static Searchfoundation_Button.== infix(_:_:)(v281, v223);
  sub_1B944B0D4();
  sub_1B8D9207C(v280, &qword_1EBACC560, &unk_1B96B9888);
  sub_1B944B0D4();
  sub_1B8D9207C(v222, &qword_1EBACC560, &unk_1B96B9888);
  if ((v224 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_120:
  v225 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldUseCompactDisplay;
  v226 = v272;
  swift_beginAccess();
  LODWORD(v225) = *(v226 + v225);
  v227 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldUseCompactDisplay;
  v228 = v273;
  swift_beginAccess();
  if (v225 != *(v228 + v227))
  {
    goto LABEL_24;
  }

  v229 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  v230 = v272;
  swift_beginAccess();
  v231 = *(v230 + v229);
  v232 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  v233 = v273;
  swift_beginAccess();
  v234 = *(v233 + v232);

  sub_1B8D6B7F8(v231, v234);
  LOBYTE(v233) = v235;

  if ((v233 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v236 = *(v333 + 48);
  v237 = v278;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v237, 1, v334) == 1)
  {
    sub_1B8D9207C(v275, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v278 + v236, 1, v334) == 1)
    {
      sub_1B8D9207C(v278, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_132;
    }

    goto LABEL_128;
  }

  v238 = v278;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v238 + v236, 1, v334) == 1)
  {
    sub_1B8D9207C(v275, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B944B0D4();
LABEL_128:
    v136 = &qword_1EBAB8EB0;
    v137 = &qword_1B964D6B0;
    v138 = v278;
    goto LABEL_29;
  }

  v239 = v277;
  sub_1B944B02C();
  if (*&v276[*(v334 + 20)] != *&v239[*(v334 + 20)])
  {

    sub_1B94C6890();
    v241 = v240;

    if ((v241 & 1) == 0)
    {
      sub_1B944B0D4();
      v188 = &qword_1EBAB8EA8;
      v189 = &unk_1B96B77D0;
      sub_1B8D9207C(v275, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B944B0D4();
      v138 = v278;
      goto LABEL_78;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v242 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v275, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B944B0D4();
  sub_1B8D9207C(v278, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v242 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_132:
  v243 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreTrailing;
  v244 = v272;
  swift_beginAccess();
  LODWORD(v243) = *(v244 + v243);
  v245 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreTrailing;
  v246 = v273;
  swift_beginAccess();
  if (v243 != *(v246 + v245))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v247 = *(v327 + 48);
  v248 = v287;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v248, 1, v328) == 1)
  {
    sub_1B8D9207C(v285, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v287 + v247, 1, v328) == 1)
    {
      sub_1B8D9207C(v287, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_141;
    }

    goto LABEL_138;
  }

  v249 = v287;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v249 + v247, 1, v328) == 1)
  {
    sub_1B8D9207C(v285, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_138:
    v136 = &qword_1EBACB230;
    v137 = &unk_1B96B8870;
    v138 = v287;
    goto LABEL_29;
  }

  v250 = v287;
  v251 = v319;
  sub_1B944B02C();
  v252 = static Searchfoundation_RichText.== infix(_:_:)(v286, v251);
  sub_1B944B0D4();
  sub_1B8D9207C(v285, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v250, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v252 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_141:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v253 = *(v327 + 48);
  v254 = v290;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v254, 1, v328) == 1)
  {
    sub_1B8D9207C(v288, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v290 + v253, 1, v328) == 1)
    {
      sub_1B8D9207C(v290, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_148;
    }

    goto LABEL_146;
  }

  v255 = v290;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v255 + v253, 1, v328) == 1)
  {
    sub_1B8D9207C(v288, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_146:
    v136 = &qword_1EBACB230;
    v137 = &unk_1B96B8870;
    v138 = v290;
    goto LABEL_29;
  }

  v256 = v290;
  v257 = v319;
  sub_1B944B02C();
  v258 = static Searchfoundation_RichText.== infix(_:_:)(v289, v257);
  sub_1B944B0D4();
  sub_1B8D9207C(v288, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v256, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v258 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_148:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v259 = *(v327 + 48);
  v260 = v293;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v260, 1, v328) == 1)
  {
    sub_1B8D9207C(v291, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v293 + v259, 1, v328) == 1)
    {
      sub_1B8D9207C(v293, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v261 = v293;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v261 + v259, 1, v328) == 1)
  {
    sub_1B8D9207C(v291, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_153:
    v136 = &qword_1EBACB230;
    v137 = &unk_1B96B8870;
    v138 = v293;
    goto LABEL_29;
  }

  v262 = v293;
  v263 = v319;
  sub_1B944B02C();
  v264 = static Searchfoundation_RichText.== infix(_:_:)(v292, v263);
  sub_1B944B0D4();
  sub_1B8D9207C(v291, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v262, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v264 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_155:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v265 = *(v327 + 48);
  v266 = v296;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v266, 1, v328) != 1)
  {
    v267 = v296;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v267 + v265, 1, v328) == 1)
    {

      sub_1B8D9207C(v294, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B944B0D4();
      goto LABEL_160;
    }

    v268 = v296;
    v269 = v319;
    sub_1B944B02C();
    v270 = static Searchfoundation_RichText.== infix(_:_:)(v295, v269);

    sub_1B944B0D4();
    sub_1B8D9207C(v294, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    sub_1B8D9207C(v268, &qword_1EBACB1D0, &qword_1B96B9870);
    return (v270 & 1) != 0;
  }

  sub_1B8D9207C(v294, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v296 + v265, 1, v328) != 1)
  {
LABEL_160:
    sub_1B8D9207C(v296, &qword_1EBACB230, &unk_1B96B8870);
    return 0;
  }

  sub_1B8D9207C(v296, &qword_1EBACB1D0, &qword_1B96B9870);
  return 1;
}

uint64_t sub_1B93B890C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDEA0, type metadata accessor for Searchfoundation_DetailedRowCardSection, protocol conformance descriptor for Searchfoundation_DetailedRowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93B898C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9CA2C8, type metadata accessor for Searchfoundation_DetailedRowCardSection, protocol conformance descriptor for Searchfoundation_DetailedRowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93B89FC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1ED9CA2C8, type metadata accessor for Searchfoundation_DetailedRowCardSection, protocol conformance descriptor for Searchfoundation_DetailedRowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93B8A88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB630);
  __swift_project_value_buffer(v0, qword_1EBACB630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
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
  *v26 = "cardSections";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B93B8EAC()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_70_10();
  sub_1B8CD3068(v1, v2, protocol conformance descriptor for Searchfoundation_Color);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B93B8F60()
{
  OUTLINED_FUNCTION_273_0();
  v20 = v3;
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_Color(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (!v8 || (type metadata accessor for Searchfoundation_Punchout(0), OUTLINED_FUNCTION_14_24(), OUTLINED_FUNCTION_71_9(), sub_1B8CD3068(v9, v10, protocol conformance descriptor for Searchfoundation_Punchout), OUTLINED_FUNCTION_200_6(), OUTLINED_FUNCTION_5_34(), sub_1B964C730(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1212();
        if (!v13 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
        {
          OUTLINED_FUNCTION_1209();
          if (!v13 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
          {
            OUTLINED_FUNCTION_1261();
            if (!v13 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
              {
                v15 = *(v1 + 64);
                if (!v15 || (OUTLINED_FUNCTION_540_0(v15), sub_1B92C8A2C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
                {
                  v21 = v20(0);
                  OUTLINED_FUNCTION_285_1(*(v21 + 56));
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_243_1();
                  if (v13)
                  {
                    sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_1277();
                    OUTLINED_FUNCTION_70_10();
                    sub_1B8CD3068(v16, v17, protocol conformance descriptor for Searchfoundation_Color);
                    OUTLINED_FUNCTION_597_0();
                    OUTLINED_FUNCTION_687();
                    sub_1B964C740();
                    OUTLINED_FUNCTION_32_19();
                    sub_1B944B0D4();
                    if (v0)
                    {
                      goto LABEL_27;
                    }
                  }

                  if (!*(*(v1 + 80) + 16) || (type metadata accessor for Searchfoundation_CardSection(0), OUTLINED_FUNCTION_14_24(), OUTLINED_FUNCTION_335_0(), sub_1B8CD3068(v18, v19, protocol conformance descriptor for Searchfoundation_CardSection), OUTLINED_FUNCTION_694_1(), OUTLINED_FUNCTION_5_34(), sub_1B964C730(), !v0))
                  {
                    OUTLINED_FUNCTION_163_6();
                    sub_1B964C290();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B93B92AC()
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_Color(v6);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_106_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_163_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_1329();
  if ((v11 & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_892();
  v14 = v14 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_822_0();
  v17 = v14 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_891();
  if (!v14)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v14)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_890();
  if (!v14)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_823_0();
  v20 = v14 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0 || !OUTLINED_FUNCTION_889())
  {
    goto LABEL_39;
  }

  v5(0);
  v21 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_75_9();
  if (v14)
  {
    OUTLINED_FUNCTION_37_0(v2 + v21);
    if (v14)
    {
      sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v21);
  if (v22)
  {
    sub_1B944B0D4();
LABEL_32:
    v23 = &qword_1EBACB058;
    v24 = &unk_1B96CA9D0;
LABEL_33:
    sub_1B8D9207C(v2, v23, v24);
LABEL_39:
    v32 = 0;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_1275();
  OUTLINED_FUNCTION_494_0();
  if (!v25)
  {

    OUTLINED_FUNCTION_616();
    sub_1B947FDE4();
    OUTLINED_FUNCTION_813();

    if ((&unk_1B96B7BD0 & 1) == 0)
    {
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v23 = &qword_1EBACB050;
      v24 = &unk_1B96B7BD0;
      goto LABEL_33;
    }
  }

  v26 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v27, v28, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_654_0();
  OUTLINED_FUNCTION_78_7();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_531_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_37:
  if ((sub_1B8D684DC(*(v1 + 80), *(v0 + 80)) & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v31 = sub_1B8CD3068(v29, v30, MEMORY[0x1E69AAC10]);
  v32 = OUTLINED_FUNCTION_199_0(v31);
LABEL_40:
  OUTLINED_FUNCTION_264(v32);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93B96A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE98, type metadata accessor for Searchfoundation_GridCardSection, protocol conformance descriptor for Searchfoundation_GridCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93B9728(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD068, type metadata accessor for Searchfoundation_GridCardSection, protocol conformance descriptor for Searchfoundation_GridCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93B9798(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD068, type metadata accessor for Searchfoundation_GridCardSection, protocol conformance descriptor for Searchfoundation_GridCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93B9824()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB648);
  __swift_project_value_buffer(v0, qword_1EBACB648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B9656D00;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "buttonItems";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "image";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "imageAlign";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B93B9D28()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v5 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = v1;
  v6 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign[0];
  *v8 = 0;
  *(v8 + 8) = 1;
  return v0;
}

uint64_t sub_1B93B9E34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v36 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v36 = (v1 + 64);
  v37 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v38 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v39 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v12 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v41 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v12);
  v42 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v44 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v14 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign[0];
  v45 = v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign[0];
  *v15 = 0;
  *(v15 + 8) = 1;
  swift_beginAccess();
  v16 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v16;
  swift_beginAccess();
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v17;
  *(v1 + 32) = v18;

  swift_beginAccess();
  v20 = *(a1 + 40);
  v19 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v20;
  *(v1 + 48) = v19;

  swift_beginAccess();
  v21 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  v22 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v22;
  swift_beginAccess();
  v23 = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v23;
  swift_beginAccess();
  v25 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = v36;
  swift_beginAccess();
  *v26 = v25;
  *(v1 + 72) = v24;

  swift_beginAccess();
  v27 = *(a1 + 80);
  LOBYTE(v19) = *(a1 + 88);
  v28 = v37;
  swift_beginAccess();
  *v28 = v27;
  *(v1 + 88) = v19;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = v42;
  swift_beginAccess();
  *(v1 + v31) = v30;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign[0]);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);

  v34 = v45;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  return v1;
}

void *sub_1B93BA4E8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return v0;
}

void sub_1B93BA630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93BA888(a2, a1, a3, a4);
        break;
      default:
        switch(v9)
        {
          case '3':
            sub_1B93BA964(a2, a1, a3, a4);
            break;
          case '4':
            sub_1B93BAA40(a2, a1, a3, a4);
            break;
          case '5':
            sub_1B93BAB1C(a2, a1, a3, a4);
            break;
          case '6':
            sub_1B93BABF8(a2, a1, a3, a4);
            break;
          case '7':
            sub_1B9441F68(a2, a1, a3, a4, OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign, sub_1B92CDA04, &type metadata for Searchfoundation_ImageAlignment);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B93BA888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BA964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93BABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BAD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for Searchfoundation_Image(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v36 - v14;
  v49 = type metadata accessor for Searchfoundation_RichText(0);
  v15 = MEMORY[0x1EEE9AC00](v49);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v36 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v43 = &v36 - v19;
  v44 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v36 = a1;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    a1 = v36;
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_9;
  }

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_9:
  swift_beginAccess();
  v23 = *(a1 + 48);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v26 = *(a1 + 72);
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 80) || (v28 = *(a1 + 88), v47 = *(a1 + 80), v48 = v28, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          v29 = v43;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v29, 1, v44) == 1)
          {
            sub_1B8D9207C(v29, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v30 = v42;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
          {
            sub_1B8D9207C(v30, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v31 = v40;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v31, 1, v49) == 1)
          {
            v49 = v10;
            sub_1B8D9207C(v31, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v4)
            {
              return result;
            }

            v49 = v10;
          }

          v32 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
          swift_beginAccess();
          if (!*(*(a1 + v32) + 16) || (type metadata accessor for Searchfoundation_ButtonItem(0), sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem), , sub_1B964C730(), result = , !v4))
          {
            swift_beginAccess();
            v33 = v37;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v33, 1, v8) == 1)
            {
              sub_1B8D9207C(v33, &qword_1EBAB8EA8, &unk_1B96B77D0);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v4)
              {
                return result;
              }
            }

            v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign[0]);
            result = swift_beginAccess();
            if (*v34)
            {
              v35 = *(v34 + 8);
              v45 = *v34;
              v46 = v35;
              sub_1B92CDA04();
              return sub_1B964C680();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B93BB810(uint64_t a1, uint64_t a2)
{
  v100 = type metadata accessor for Searchfoundation_Image(0);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v95 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v95 - v9;
  v109 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v11 = MEMORY[0x1EEE9AC00](v110);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v103 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v107 = &v95 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v95 - v21;
  v22 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v22);
  v111 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v95 - v30;
  swift_beginAccess();
  v32 = *(a1 + 16);
  swift_beginAccess();
  v33 = *(a2 + 16);

  sub_1B8D67B1C(v32, v33);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v36 = *(a1 + 24);
  v37 = *(a1 + 32);
  swift_beginAccess();
  v38 = v36 == *(a2 + 24) && v37 == *(a2 + 32);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = v39 == *(a2 + 40) && v40 == *(a2 + 48);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v42 = *(a1 + 56);
  swift_beginAccess();
  if (v42 != *(a2 + 56))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v43 = *(a1 + 57);
  swift_beginAccess();
  if (v43 != *(a2 + 57))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v44 = *(a1 + 58);
  swift_beginAccess();
  if (v44 != *(a2 + 58))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  swift_beginAccess();
  v47 = v45 == *(a2 + 64) && v46 == *(a2 + 72);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v48 = *(a1 + 80);
  v49 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v48, v49, *(a2 + 80)))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v50 = *(v24 + 48);
  v51 = v112;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51, 1, v22) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51 + v50, 1, v22);
    v53 = v113;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_31;
    }

LABEL_26:
    v55 = &qword_1EBACB058;
    v56 = &unk_1B96CA9D0;
LABEL_27:
    v57 = v51;
LABEL_42:
    sub_1B8D9207C(v57, v55, v56);
    goto LABEL_43;
  }

  sub_1B8D92024();
  v54 = __swift_getEnumTagSinglePayload(v51 + v50, 1, v22);
  v53 = v113;
  if (v54 == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_26;
  }

  v58 = v111;
  sub_1B944B02C();
  if (*&v29[*(v22 + 20)] != *&v58[*(v22 + 20)])
  {

    sub_1B947FDE4();
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v57 = v51;
      v55 = &qword_1EBACB050;
      v56 = &unk_1B96B7BD0;
      goto LABEL_42;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  HIDWORD(v96) = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v96 & 0x100000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_31:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v61 = *(v110 + 48);
  v62 = v53;
  v63 = v108;
  sub_1B8D92024();
  sub_1B8D92024();
  v64 = v109;
  if (__swift_getEnumTagSinglePayload(v63, 1, v109) == 1)
  {
    sub_1B8D9207C(v62, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v63 + v61, 1, v64) == 1)
    {
      sub_1B8D9207C(v63, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_38;
    }

LABEL_36:
    v55 = &qword_1EBACB230;
    v56 = &unk_1B96B8870;
    v57 = v63;
    goto LABEL_42;
  }

  v65 = v106;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63 + v61, 1, v64) == 1)
  {
    sub_1B8D9207C(v113, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    goto LABEL_36;
  }

  v66 = v104;
  sub_1B944B02C();
  LODWORD(v112) = static Searchfoundation_RichText.== infix(_:_:)(v65, v66);
  sub_1B944B0D4();
  sub_1B8D9207C(v113, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v63, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v112 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  swift_beginAccess();
  v67 = v107;
  sub_1B8D92024();
  swift_beginAccess();
  v68 = *(v110 + 48);
  v51 = v105;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51, 1, v64) != 1)
  {
    v71 = v103;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v51 + v68, 1, v64) != 1)
    {
      v72 = v104;
      sub_1B944B02C();
      v73 = static Searchfoundation_RichText.== infix(_:_:)(v71, v72);
      sub_1B944B0D4();
      sub_1B8D9207C(v107, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B944B0D4();
      sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
      if ((v73 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }

    sub_1B8D9207C(v107, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    goto LABEL_47;
  }

  sub_1B8D9207C(v67, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v51 + v68, 1, v64) != 1)
  {
LABEL_47:
    v55 = &qword_1EBACB230;
    v56 = &unk_1B96B8870;
    goto LABEL_27;
  }

  sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_49:
  v74 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v75 = *(a1 + v74);
  v76 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v77 = *(a2 + v76);

  sub_1B8D6B7F8(v75, v77);
  v79 = v78;

  if ((v79 & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v80 = v102;
  sub_1B8D92024();
  swift_beginAccess();
  v81 = *(v99 + 48);
  v82 = v101;
  sub_1B8D92024();
  v83 = v82;
  sub_1B8D92024();
  v84 = v100;
  if (__swift_getEnumTagSinglePayload(v82, 1, v100) == 1)
  {
    sub_1B8D9207C(v80, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v82 + v81, 1, v84) == 1)
    {
      sub_1B8D9207C(v82, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_59:
      v90 = a1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign[0];
      swift_beginAccess();
      v91 = *v90;
      v92 = *(v90 + 8);

      v93 = (a2 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_HeroCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageAlign[0]);
      swift_beginAccess();
      v94 = *v93;

      return sub_1B8D92198(v91, v92, v94);
    }

    goto LABEL_55;
  }

  v85 = v98;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v83 + v81, 1, v84) == 1)
  {
    sub_1B8D9207C(v102, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B944B0D4();
LABEL_55:
    v55 = &qword_1EBAB8EB0;
    v56 = &qword_1B964D6B0;
    v57 = v83;
    goto LABEL_42;
  }

  v86 = v97;
  sub_1B944B02C();
  if (*&v85[*(v84 + 20)] != *&v86[*(v84 + 20)])
  {

    sub_1B94C6890();
    v88 = v87;

    if ((v88 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v102, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B944B0D4();
      v57 = v101;
      v55 = &qword_1EBAB8EA8;
      v56 = &unk_1B96B77D0;
      goto LABEL_42;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v89 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v102, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B944B0D4();
  sub_1B8D9207C(v101, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v89)
  {
    goto LABEL_59;
  }

LABEL_43:

  return 0;
}

uint64_t sub_1B93BCA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE90, type metadata accessor for Searchfoundation_HeroCardSection, protocol conformance descriptor for Searchfoundation_HeroCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93BCABC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD080, type metadata accessor for Searchfoundation_HeroCardSection, protocol conformance descriptor for Searchfoundation_HeroCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93BCB2C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD080, type metadata accessor for Searchfoundation_HeroCardSection, protocol conformance descriptor for Searchfoundation_HeroCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93BCBB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB668);
  __swift_project_value_buffer(v0, qword_1EBACB668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "buttonItems";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "maxVisibleButtonItems";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B93BD080()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v5 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems) = 0;
  return v0;
}

uint64_t sub_1B93BD158(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - v6;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v33 = (v1 + 64);
  v34 = (v1 + 80);
  *(v1 + 88) = 1;
  v7 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v35 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v8 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v36 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v10 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v38 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v10);
  v39 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = MEMORY[0x1E69E7CC0];
  v41 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems) = 0;
  swift_beginAccess();
  v11 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v11;
  swift_beginAccess();
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v13;
  *(v1 + 32) = v12;

  swift_beginAccess();
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;

  swift_beginAccess();
  v16 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v16;
  swift_beginAccess();
  v17 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v17;
  swift_beginAccess();
  v18 = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v18;
  swift_beginAccess();
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = v33;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 72) = v19;

  swift_beginAccess();
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  v24 = v34;
  swift_beginAccess();
  *v24 = v22;
  *(v1 + 88) = v23;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v39;
  swift_beginAccess();
  *(v1 + v27) = v26;

  v28 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
  swift_beginAccess();
  v29 = *(a1 + v28);

  v30 = v41;
  swift_beginAccess();
  *(v1 + v30) = v29;
  return v1;
}

void *sub_1B93BD704()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);

  return v0;
}

void sub_1B93BD82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93BDA5C(a2, a1, a3, a4);
        break;
      default:
        switch(v9)
        {
          case '3':
            sub_1B93BDB38(a2, a1, a3, a4);
            break;
          case '4':
            sub_1B93BDC14(a2, a1, a3, a4);
            break;
          case '5':
            sub_1B93BDCF0(a2, a1, a3, a4);
            break;
          case '6':
            sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems, MEMORY[0x1E69AAD00]);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B93BDA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BDB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BDC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BDCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93BDDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = v31 - v9;
  v10 = type metadata accessor for Searchfoundation_RichText(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31[1] = v31 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v35 = v31 - v16;
  v38 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v38);
  v33 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v31[0] = a1;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    a1 = v31[0];
  }

  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v20 = *(a1 + 48);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v23 = *(a1 + 72);
        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (!v24 || (, sub_1B964C700(), result = , !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 80) || (v25 = *(a1 + 88), v36 = *(a1 + 80), v37 = v25, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
          {
            swift_beginAccess();
            v26 = v35;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v26, 1, v38) == 1)
            {
              v38 = v13;
              sub_1B8D9207C(v26, &qword_1EBACB050, &unk_1B96B7BD0);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v4)
              {
                return result;
              }

              v38 = v13;
            }

            swift_beginAccess();
            v27 = v34;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v27, 1, v10) == 1)
            {
              sub_1B8D9207C(v27, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v4)
              {
                return result;
              }
            }

            swift_beginAccess();
            v28 = v32;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v28, 1, v10) == 1)
            {
              sub_1B8D9207C(v28, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v4)
              {
                return result;
              }
            }

            v29 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
            swift_beginAccess();
            if (!*(*(a1 + v29) + 16) || (type metadata accessor for Searchfoundation_ButtonItem(0), sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem, protocol conformance descriptor for Searchfoundation_ButtonItem), , sub_1B964C730(), result = , !v4))
            {
              v30 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
              swift_beginAccess();
              result = *(a1 + v30);
              if (result)
              {
                return sub_1B964C720();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B93BE71C(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v5 = MEMORY[0x1EEE9AC00](v85);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v83 = &v78 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v81 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v78 - v15;
  v16 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v78 - v24;
  swift_beginAccess();
  v26 = *(a1 + 16);
  swift_beginAccess();
  v27 = *(a2 + 16);

  sub_1B8D67B1C(v26, v27);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  swift_beginAccess();
  v32 = v30 == *(a2 + 24) && v31 == *(a2 + 32);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  swift_beginAccess();
  v35 = v33 == *(a2 + 40) && v34 == *(a2 + 48);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v36 = *(a1 + 56);
  swift_beginAccess();
  if (v36 != *(a2 + 56))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v37 = *(a1 + 57);
  swift_beginAccess();
  if (v37 != *(a2 + 57))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v38 = *(a1 + 58);
  swift_beginAccess();
  if (v38 != *(a2 + 58))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v39 = *(a1 + 64);
  v40 = *(a1 + 72);
  swift_beginAccess();
  v41 = v39 == *(a2 + 64) && v40 == *(a2 + 72);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v42 = *(a1 + 80);
  v43 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v42, v43, *(a2 + 80)))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v44 = *(v18 + 48);
  v45 = v88;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v45, 1, v16) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45 + v44, 1, v16);
    v47 = v87;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v45 + v44, 1, v16) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
LABEL_26:
    v48 = &qword_1EBACB058;
    v49 = &unk_1B96CA9D0;
    v50 = v45;
LABEL_44:
    sub_1B8D9207C(v50, v48, v49);
    goto LABEL_45;
  }

  v51 = v82;
  sub_1B944B02C();
  if (*&v23[*(v16 + 20)] != *&v51[*(v16 + 20)])
  {

    sub_1B947FDE4();
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v50 = v45;
      v48 = &qword_1EBACB050;
      v49 = &unk_1B96B7BD0;
      goto LABEL_44;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v54 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
  v47 = v87;
  if ((v54 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_30:
  swift_beginAccess();
  v55 = v86;
  sub_1B8D92024();
  swift_beginAccess();
  v56 = *(v85 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v57 = v84;
  if (__swift_getEnumTagSinglePayload(v47, 1, v84) == 1)
  {
    sub_1B8D9207C(v55, &qword_1EBACB1D0, &qword_1B96B9870);
    v58 = __swift_getEnumTagSinglePayload(v47 + v56, 1, v57);
    v59 = v83;
    if (v58 != 1)
    {
LABEL_43:
      v48 = &qword_1EBACB230;
      v49 = &unk_1B96B8870;
      v50 = v47;
      goto LABEL_44;
    }

    sub_1B8D9207C(v47, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  else
  {
    v60 = v81;
    sub_1B8D92024();
    v61 = __swift_getEnumTagSinglePayload(v47 + v56, 1, v57);
    v59 = v83;
    if (v61 == 1)
    {
      sub_1B8D9207C(v86, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_42:
      sub_1B944B0D4();
      goto LABEL_43;
    }

    v62 = v79;
    sub_1B944B02C();
    LODWORD(v88) = static Searchfoundation_RichText.== infix(_:_:)(v60, v62);
    sub_1B944B0D4();
    sub_1B8D9207C(v86, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    sub_1B8D9207C(v47, &qword_1EBACB1D0, &qword_1B96B9870);
    if ((v88 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v63 = *(v85 + 48);
  v47 = v80;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v47, 1, v57) != 1)
  {
    v64 = v78;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v47 + v63, 1, v57) != 1)
    {
      v66 = v79;
      sub_1B944B02C();
      v67 = static Searchfoundation_RichText.== infix(_:_:)(v64, v66);
      sub_1B944B0D4();
      sub_1B8D9207C(v59, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B944B0D4();
      sub_1B8D9207C(v47, &qword_1EBACB1D0, &qword_1B96B9870);
      if ((v67 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    sub_1B8D9207C(v59, &qword_1EBACB1D0, &qword_1B96B9870);
    goto LABEL_42;
  }

  sub_1B8D9207C(v59, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v47 + v63, 1, v57) != 1)
  {
    goto LABEL_43;
  }

  sub_1B8D9207C(v47, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_48:
  v68 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v71 = *(a2 + v70);

  sub_1B8D6B7F8(v69, v71);
  v73 = v72;

  if (v73)
  {
    v74 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
    swift_beginAccess();
    v75 = *(a1 + v74);

    v76 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
    swift_beginAccess();
    v77 = *(a2 + v76);

    return v75 == v77;
  }

LABEL_45:

  return 0;
}

uint64_t sub_1B93BF4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE88, type metadata accessor for Searchfoundation_HeroTitleCardSection, protocol conformance descriptor for Searchfoundation_HeroTitleCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93BF568(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD098, type metadata accessor for Searchfoundation_HeroTitleCardSection, protocol conformance descriptor for Searchfoundation_HeroTitleCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93BF5D8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD098, type metadata accessor for Searchfoundation_HeroTitleCardSection, protocol conformance descriptor for Searchfoundation_HeroTitleCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93BF670()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB688);
  __swift_project_value_buffer(v0, qword_1EBACB688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "initiallyVisibleValues";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "showMoreString";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_InfoTuple.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B941F188();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

void Searchfoundation_InfoTuple.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Searchfoundation_CommandButtonItem(0), OUTLINED_FUNCTION_997(), sub_1B8CD3068(v3, v4, protocol conformance descriptor for Searchfoundation_CommandButtonItem), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
        {
          type metadata accessor for Searchfoundation_InfoTuple(0);
          OUTLINED_FUNCTION_163_6();
          sub_1B964C290();
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Searchfoundation_InfoTuple.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7BB24(*(v2 + 16), *(v1 + 16));
  if ((v6 & 1) == 0 || *(v2 + 24) != *(v1 + 24))
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v9 = v5 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_InfoTuple(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_84();
  v12 = sub_1B8CD3068(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B93BFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE80, type metadata accessor for Searchfoundation_InfoTuple, protocol conformance descriptor for Searchfoundation_InfoTuple);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93BFC98(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACC7A0, type metadata accessor for Searchfoundation_InfoTuple, protocol conformance descriptor for Searchfoundation_InfoTuple);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93BFD08(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACC7A0, type metadata accessor for Searchfoundation_InfoTuple, protocol conformance descriptor for Searchfoundation_InfoTuple);

  return sub_1B964C5D0();
}

uint64_t sub_1B93BFD94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB6A0);
  __swift_project_value_buffer(v0, qword_1EBACB6A0);
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
  *v24 = "infoTuples";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "initiallyVisibleTuples";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_InfoCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8D22150();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B93CC664();
        break;
      default:
        if (v1 == 51)
        {
          OUTLINED_FUNCTION_9();
          sub_1B93C4AC4();
        }

        else if (v1 == 52)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C560();
        }

        break;
    }
  }
}

void Searchfoundation_InfoCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_Color(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (v8)
  {
    OUTLINED_FUNCTION_868_0();
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v9, v10, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_200_6();
    OUTLINED_FUNCTION_5_34();
    sub_1B964C730();
    if (v1)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_834_0();
  }

  else
  {
    v1 = v0;
  }

  OUTLINED_FUNCTION_1();
  if (!v11 || (OUTLINED_FUNCTION_860(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (OUTLINED_FUNCTION_877(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1212();
      if (!v13 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
      {
        OUTLINED_FUNCTION_1209();
        if (!v13 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
        {
          OUTLINED_FUNCTION_1261();
          if (!v13 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v14 || (OUTLINED_FUNCTION_1171(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
            {
              v15 = v1;
              v16 = v2[8];
              if (v16)
              {
                OUTLINED_FUNCTION_540_0(v16);
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_687();
                sub_1B964C680();
                if (v1)
                {
                  goto LABEL_32;
                }

                v15 = 0;
              }

              v24 = type metadata accessor for Searchfoundation_InfoCardSection(0);
              OUTLINED_FUNCTION_285_1(*(v24 + 60));
              sub_1B8D92024();
              OUTLINED_FUNCTION_243_1();
              if (v13)
              {
                sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v15;
              }

              else
              {
                OUTLINED_FUNCTION_5_36();
                OUTLINED_FUNCTION_1277();
                OUTLINED_FUNCTION_70_10();
                sub_1B8CD3068(v17, v18, protocol conformance descriptor for Searchfoundation_Color);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_32_19();
                sub_1B944B0D4();
                if (v1)
                {
                  goto LABEL_32;
                }
              }

              if (!*(v2[10] + 16) || (type metadata accessor for Searchfoundation_InfoTuple(0), sub_1B8CD3068(&qword_1EBACC7A0, type metadata accessor for Searchfoundation_InfoTuple, protocol conformance descriptor for Searchfoundation_InfoTuple), OUTLINED_FUNCTION_694_1(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(v19, v20, v21, v22, v23), !v1))
              {
                if (!v2[11] || (OUTLINED_FUNCTION_454_1(), sub_1B964C720(), !v1))
                {
                  OUTLINED_FUNCTION_163_6();
                  sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_272_0();
}

void sub_1B93C0690()
{
  OUTLINED_FUNCTION_284();
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_Color(v10);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v15);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_1329();
  if ((v18 & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_892();
  v21 = v21 && v19 == v20;
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_822_0();
  v24 = v21 && v22 == v23;
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_891();
  if (!v21)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v21)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_890();
  if (!v21)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_823_0();
  v27 = v21 && v25 == v26;
  if (!v27 && (sub_1B964C9F0() & 1) == 0 || !OUTLINED_FUNCTION_889())
  {
    goto LABEL_40;
  }

  v9(0);
  v28 = *(v5 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (!v21)
  {
    OUTLINED_FUNCTION_467();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v3 + v28);
    if (!v29)
    {
      sub_1B944B02C();
      if (*(v4 + *(v1 + 20)) == *(v14 + *(v1 + 20)) || (, , OUTLINED_FUNCTION_542(), sub_1B947FDE4(), v33 = v32, , , (v33 & 1) != 0))
      {
        v34 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v35, v36, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_272_2();
        OUTLINED_FUNCTION_396_0();
        sub_1B964C850();
        OUTLINED_FUNCTION_78_7();
        sub_1B944B0D4();
        sub_1B944B0D4();
        sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
        if (v34)
        {
          goto LABEL_37;
        }

LABEL_40:
        v40 = 0;
        goto LABEL_41;
      }

      sub_1B944B0D4();
      OUTLINED_FUNCTION_197();
      sub_1B944B0D4();
      v30 = &qword_1EBACB050;
      v31 = &unk_1B96B7BD0;
LABEL_33:
      sub_1B8D9207C(v3, v30, v31);
      goto LABEL_40;
    }

    sub_1B944B0D4();
LABEL_32:
    v30 = &qword_1EBACB058;
    v31 = &unk_1B96CA9D0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_37_0(v3 + v28);
  if (!v21)
  {
    goto LABEL_32;
  }

  sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_37:
  if ((v7(*(v2 + 80), *(v0 + 80)) & 1) == 0 || *(v2 + 88) != *(v0 + 88))
  {
    goto LABEL_40;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v39 = sub_1B8CD3068(v37, v38, MEMORY[0x1E69AAC10]);
  v40 = OUTLINED_FUNCTION_199_0(v39);
LABEL_41:
  OUTLINED_FUNCTION_264(v40);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93C0AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE78, type metadata accessor for Searchfoundation_InfoCardSection, protocol conformance descriptor for Searchfoundation_InfoCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C0B70(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD0C0, type metadata accessor for Searchfoundation_InfoCardSection, protocol conformance descriptor for Searchfoundation_InfoCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C0BE0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD0C0, type metadata accessor for Searchfoundation_InfoCardSection, protocol conformance descriptor for Searchfoundation_InfoCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C0C6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4748);
  __swift_project_value_buffer(v0, qword_1EBAB4748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B9656D00;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "punchoutOptions";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "punchoutPickerTitle";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "punchoutPickerDismissText";
  *(v11 + 1) = 25;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "canBeHidden";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "hasTopPadding";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "hasBottomPadding";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "type";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "separatorStyle";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "backgroundColor";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 51;
  *v25 = "cardSections";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 52;
  *v27 = "title";
  *(v27 + 1) = 5;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 53;
  *v29 = "buttonItem";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 54;
  *v31 = "collectionStyle";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 55;
  *v33 = "titleButtonItem";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B93C1174()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections) = v1;
  v4 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v5 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem;
  v7 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle;
  v9 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem, 1, 1, v7);
  return v0;
}

uint64_t sub_1B93C1288(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC568, &qword_1B96B9898);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v34 - v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v35 = (v1 + 64);
  v36 = (v1 + 80);
  *(v1 + 88) = 1;
  v12 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v37 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v38 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections) = v11;
  v14 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v40 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v15 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem;
  v41 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem;
  v17 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle;
  v42 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle;
  v19 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v44 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem, 1, 1, v17);
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v20;
  swift_beginAccess();
  v22 = *(a1 + 24);
  v21 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v22;
  *(v1 + 32) = v21;

  swift_beginAccess();
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v24;
  *(v1 + 48) = v23;

  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v23;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v23;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v23;
  swift_beginAccess();
  v26 = *(a1 + 64);
  v25 = *(a1 + 72);
  v27 = v35;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 72) = v25;

  swift_beginAccess();
  v28 = *(a1 + 80);
  LOBYTE(v20) = *(a1 + 88);
  v29 = v36;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 88) = v20;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = v38;
  swift_beginAccess();
  *(v1 + v32) = v31;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B93C19B8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem, &unk_1EBAC3D48, &qword_1B9689670);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle, &qword_1EBACC568, &qword_1B96B9898);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem, &unk_1EBAC3D48, &qword_1B9689670);
  return v0;
}

void sub_1B93C1B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93C1D44(a2, a1, a3, a4);
        break;
      default:
        switch(v9)
        {
          case '3':
            sub_1B93C1E20(a2, a1, a3, a4);
            break;
          case '4':
            sub_1B93C1EFC(a2, a1, a3, a4);
            break;
          case '5':
            sub_1B93C1FD8(a2, a1, a3, a4);
            break;
          case '6':
            sub_1B93C20B4(a2, a1, a3, a4);
            break;
          case '7':
            sub_1B93C2190(a2, a1, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B93C1D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CardSection(0);
  sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93C1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C1FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CollectionStyle(0);
  sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle, protocol conformance descriptor for Searchfoundation_CollectionStyle);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C2190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C229C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC568, &qword_1B96B9898);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v40 - v8;
  v45 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v40 - v13;
  v14 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v48 = &v40 - v20;
  v49 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v52 = &v40 - v23;
  v55 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v41 = a1;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    a1 = v41;
  }

  swift_beginAccess();
  v25 = *(a1 + 32);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_9;
  }

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_9:
  swift_beginAccess();
  v27 = *(a1 + 48);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v30 = *(a1 + 72);
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 80) || (v32 = *(a1 + 88), v53 = *(a1 + 80), v54 = v32, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          v33 = v52;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v33, 1, v55) == 1)
          {
            v55 = v17;
            v34 = a3;
            sub_1B8D9207C(v33, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v4)
            {
              return result;
            }

            v55 = v17;
            v34 = a3;
          }

          v35 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
          swift_beginAccess();
          if (!*(*(a1 + v35) + 16) || (type metadata accessor for Searchfoundation_CardSection(0), sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection), , sub_1B964C730(), result = , !v4))
          {
            swift_beginAccess();
            v36 = v48;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v36, 1, v49) == 1)
            {
              sub_1B8D9207C(v36, &qword_1EBACB1D0, &qword_1B96B9870);
              v37 = v50;
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B944B0D4();
              v37 = v50;
              if (v4)
              {
                return result;
              }
            }

            swift_beginAccess();
            v38 = v47;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v38, 1, v14) == 1)
            {
              v52 = v34;
              sub_1B8D9207C(v38, &unk_1EBAC3D48, &qword_1B9689670);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v4)
              {
                return result;
              }

              v52 = v34;
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v37, 1, v45) == 1)
            {
              sub_1B8D9207C(v37, &qword_1EBACC568, &qword_1B96B9898);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle, protocol conformance descriptor for Searchfoundation_CollectionStyle);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v4)
              {
                return result;
              }
            }

            swift_beginAccess();
            v39 = v43;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v39, 1, v14) == 1)
            {
              return sub_1B8D9207C(v39, &unk_1EBAC3D48, &qword_1B9689670);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem, protocol conformance descriptor for Searchfoundation_CommandButtonItem);
              sub_1B964C740();
              return sub_1B944B0D4();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B93C2F18(uint64_t a1, uint64_t a2)
{
  v102 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  MEMORY[0x1EEE9AC00](v102);
  v96[0] = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1D0, &qword_1B96CA380);
  MEMORY[0x1EEE9AC00](v100);
  v103 = v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC568, &qword_1B96B9898);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v96[2] = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = v96 - v9;
  v108 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  MEMORY[0x1EEE9AC00](v108);
  v99 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3E68, &qword_1B968A570);
  v11 = MEMORY[0x1EEE9AC00](v107);
  v97 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v106 = v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v96[1] = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v98 = v96 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v104 = v96 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v115 = v96 - v21;
  v112 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v112);
  v105 = v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  MEMORY[0x1EEE9AC00](v110);
  v113 = v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v109 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v111 = v96 - v27;
  v28 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v28);
  v114 = v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v30);
  v116 = v96 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v96 - v36;
  swift_beginAccess();
  v38 = *(a1 + 16);
  swift_beginAccess();
  v39 = *(a2 + 16);

  sub_1B8D67B1C(v38, v39);
  v41 = v40;

  if ((v41 & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v42 = *(a1 + 24);
  v43 = *(a1 + 32);
  swift_beginAccess();
  v44 = v42 == *(a2 + 24) && v43 == *(a2 + 32);
  if (!v44 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v45 = *(a1 + 40);
  v46 = *(a1 + 48);
  swift_beginAccess();
  v47 = v45 == *(a2 + 40) && v46 == *(a2 + 48);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v48 = *(a1 + 56);
  swift_beginAccess();
  if (v48 != *(a2 + 56))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v49 = *(a1 + 57);
  swift_beginAccess();
  if (v49 != *(a2 + 57))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v50 = *(a1 + 58);
  swift_beginAccess();
  if (v50 != *(a2 + 58))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v51 = *(a1 + 64);
  v52 = *(a1 + 72);
  swift_beginAccess();
  v53 = v51 == *(a2 + 64) && v52 == *(a2 + 72);
  if (!v53 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v54 = *(a1 + 80);
  v55 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v54, v55, *(a2 + 80)))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v56 = *(v30 + 48);
  v57 = v116;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v57, 1, v28) == 1)
  {
    sub_1B8D9207C(v37, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57 + v56, 1, v28);
    v59 = v115;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v57, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_35;
    }

LABEL_26:
    v60 = &qword_1EBACB058;
    v61 = &unk_1B96CA9D0;
LABEL_27:
    v62 = v57;
LABEL_28:
    sub_1B8D9207C(v62, v60, v61);
    goto LABEL_29;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v28) == 1)
  {
    sub_1B8D9207C(v37, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_26;
  }

  v64 = v114;
  sub_1B944B02C();
  if (*&v35[*(v28 + 20)] != *&v64[*(v28 + 20)])
  {

    sub_1B947FDE4();
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v37, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v62 = v57;
      v60 = &qword_1EBACB050;
      v61 = &unk_1B96B7BD0;
      goto LABEL_28;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v67 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v37, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v57, &qword_1EBACB050, &unk_1B96B7BD0);
  v59 = v115;
  if ((v67 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_35:
  v68 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  swift_beginAccess();
  v71 = *(a2 + v70);

  v72 = sub_1B8D684DC(v69, v71);

  if ((v72 & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v73 = v111;
  sub_1B8D92024();
  swift_beginAccess();
  v74 = *(v110 + 48);
  v57 = v113;
  sub_1B8D92024();
  sub_1B8D92024();
  v75 = v112;
  if (__swift_getEnumTagSinglePayload(v57, 1, v112) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v57 + v74, 1, v75) == 1)
    {
      sub_1B8D9207C(v57, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v76 = v109;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v57 + v74, 1, v75) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_41:
    v60 = &qword_1EBACB230;
    v61 = &unk_1B96B8870;
    goto LABEL_27;
  }

  v77 = v105;
  sub_1B944B02C();
  v78 = static Searchfoundation_RichText.== infix(_:_:)(v76, v77);
  sub_1B944B0D4();
  sub_1B8D9207C(v73, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v57, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v78 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_44:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v79 = *(v107 + 48);
  v80 = v59;
  v81 = v106;
  sub_1B8D92024();
  sub_1B8D92024();
  v82 = v108;
  if (__swift_getEnumTagSinglePayload(v81, 1, v108) == 1)
  {
    sub_1B8D9207C(v80, &unk_1EBAC3D48, &qword_1B9689670);
    if (__swift_getEnumTagSinglePayload(v81 + v79, 1, v82) == 1)
    {
      sub_1B8D9207C(v81, &unk_1EBAC3D48, &qword_1B9689670);
      goto LABEL_51;
    }

LABEL_49:
    v60 = &qword_1EBAC3E68;
    v61 = &qword_1B968A570;
LABEL_57:
    v62 = v81;
    goto LABEL_28;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v81 + v79, 1, v82) == 1)
  {
    sub_1B8D9207C(v115, &unk_1EBAC3D48, &qword_1B9689670);
    sub_1B944B0D4();
    goto LABEL_49;
  }

  sub_1B944B02C();
  static Searchfoundation_CommandButtonItem.== infix(_:_:)();
  v84 = v83;
  sub_1B944B0D4();
  sub_1B8D9207C(v115, &unk_1EBAC3D48, &qword_1B9689670);
  sub_1B944B0D4();
  sub_1B8D9207C(v81, &unk_1EBAC3D48, &qword_1B9689670);
  if ((v84 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_51:
  swift_beginAccess();
  v85 = v101;
  sub_1B8D92024();
  swift_beginAccess();
  v86 = *(v100 + 48);
  v81 = v103;
  sub_1B8D92024();
  sub_1B8D92024();
  v87 = v102;
  if (__swift_getEnumTagSinglePayload(v81, 1, v102) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v81 + v86, 1, v87) != 1)
    {
      sub_1B944B02C();
      static Searchfoundation_CollectionStyle.== infix(_:_:)();
      v89 = v88;
      sub_1B944B0D4();
      sub_1B8D9207C(v85, &qword_1EBACC568, &qword_1B96B9898);
      sub_1B944B0D4();
      sub_1B8D9207C(v81, &qword_1EBACC568, &qword_1B96B9898);
      if (v89)
      {
        goto LABEL_59;
      }

LABEL_29:

      return 0;
    }

    sub_1B8D9207C(v85, &qword_1EBACC568, &qword_1B96B9898);
    sub_1B944B0D4();
    goto LABEL_56;
  }

  sub_1B8D9207C(v85, &qword_1EBACC568, &qword_1B96B9898);
  if (__swift_getEnumTagSinglePayload(v81 + v86, 1, v87) != 1)
  {
LABEL_56:
    v60 = &qword_1EBACE1D0;
    v61 = &qword_1B96CA380;
    goto LABEL_57;
  }

  sub_1B8D9207C(v81, &qword_1EBACC568, &qword_1B96B9898);
LABEL_59:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v90 = *(v107 + 48);
  v91 = v97;
  sub_1B8D92024();
  sub_1B8D92024();
  v92 = v108;
  if (__swift_getEnumTagSinglePayload(v91, 1, v108) == 1)
  {

    sub_1B8D9207C(v98, &unk_1EBAC3D48, &qword_1B9689670);
    if (__swift_getEnumTagSinglePayload(v91 + v90, 1, v92) == 1)
    {
      sub_1B8D9207C(v91, &unk_1EBAC3D48, &qword_1B9689670);
      return 1;
    }

    goto LABEL_64;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v91 + v90, 1, v92) == 1)
  {

    sub_1B8D9207C(v98, &unk_1EBAC3D48, &qword_1B9689670);
    sub_1B944B0D4();
    v91 = v97;
LABEL_64:
    sub_1B8D9207C(v91, &qword_1EBAC3E68, &qword_1B968A570);
    return 0;
  }

  v93 = v97;
  sub_1B944B02C();
  static Searchfoundation_CommandButtonItem.== infix(_:_:)();
  v95 = v94;

  sub_1B944B0D4();
  sub_1B8D9207C(v98, &unk_1EBAC3D48, &qword_1B9689670);
  sub_1B944B0D4();
  sub_1B8D9207C(v93, &unk_1EBAC3D48, &qword_1B9689670);
  return (v95 & 1) != 0;
}

uint64_t sub_1B93C4340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE70, type metadata accessor for Searchfoundation_CollectionCardSection, protocol conformance descriptor for Searchfoundation_CollectionCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C43C0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9CA440, type metadata accessor for Searchfoundation_CollectionCardSection, protocol conformance descriptor for Searchfoundation_CollectionCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C4430(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1ED9CA440, type metadata accessor for Searchfoundation_CollectionCardSection, protocol conformance descriptor for Searchfoundation_CollectionCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C44BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB6B8);
  __swift_project_value_buffer(v0, qword_1EBACB6B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "leadingCardSections";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "trailingCardSections";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "leadingToTrailingRatio";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_LeadingTrailingCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8D22150();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B93CC664();
        break;
      default:
        switch(v1)
        {
          case '3':
            OUTLINED_FUNCTION_1001();
            OUTLINED_FUNCTION_9();
            sub_1B93C4AC4();
            break;
          case '4':
            v7 = OUTLINED_FUNCTION_9();
            sub_1B93C4B18(v7, v8, v9, v10);
            break;
          case '5':
            v3 = OUTLINED_FUNCTION_9();
            sub_1B93C4BB8(v3, v4, v5, v6);
            break;
        }

        break;
    }
  }
}

void sub_1B93C4AC4()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD3068(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 80, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B93C4B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_CardSection(0);
  sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection);
  return sub_1B964C570();
}

uint64_t sub_1B93C4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B8CD3068(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
  return sub_1B964C580();
}

void Searchfoundation_LeadingTrailingCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_640_0(v5);
  type metadata accessor for Searchfoundation_GraphicalFloat(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_Color(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_835();
  if (v14)
  {
    type metadata accessor for Searchfoundation_Punchout(0);
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v15, v16, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_200_6();
    sub_1B964C730();
    if (v1)
    {
      goto LABEL_34;
    }

    v2 = v0;
  }

  OUTLINED_FUNCTION_1();
  if (!v17 || (OUTLINED_FUNCTION_860(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_877(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
    {
      if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
      {
        if (*(v2 + 41) != 1 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
        {
          if (*(v2 + 42) != 1 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (v19)
            {
              OUTLINED_FUNCTION_1171();
              OUTLINED_FUNCTION_127_2();
              sub_1B964C700();
              if (v1)
              {
                goto LABEL_34;
              }

              v38 = 0;
            }

            else
            {
              v38 = v1;
            }

            v20 = *(v2 + 64);
            if (v20)
            {
              OUTLINED_FUNCTION_540_0(v20);
              sub_1B92C8A2C();
              OUTLINED_FUNCTION_1350();
              sub_1B964C680();
              if (v1)
              {
                goto LABEL_34;
              }

              v38 = 0;
            }

            type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
            sub_1B8D92024();
            OUTLINED_FUNCTION_37_0(v11);
            if (v21)
            {
              sub_1B8D9207C(v11, &qword_1EBACB050, &unk_1B96B7BD0);
              v1 = v38;
            }

            else
            {
              OUTLINED_FUNCTION_5_36();
              sub_1B944B02C();
              OUTLINED_FUNCTION_70_10();
              sub_1B8CD3068(v22, v23, protocol conformance descriptor for Searchfoundation_Color);
              OUTLINED_FUNCTION_129();
              OUTLINED_FUNCTION_1350();
              sub_1B964C740();
              OUTLINED_FUNCTION_32_19();
              sub_1B944B0D4();
              if (v1)
              {
                goto LABEL_34;
              }
            }

            if (!*(*(v2 + 80) + 16) || (type metadata accessor for Searchfoundation_CardSection(0), OUTLINED_FUNCTION_335_0(), sub_1B8CD3068(v24, v25, protocol conformance descriptor for Searchfoundation_CardSection), OUTLINED_FUNCTION_694_1(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(v26, v27, v28, v29, v30), !v1))
            {
              if (!*(*(v2 + 88) + 16) || (type metadata accessor for Searchfoundation_CardSection(0), OUTLINED_FUNCTION_335_0(), sub_1B8CD3068(v31, v32, protocol conformance descriptor for Searchfoundation_CardSection), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(v33, v34, v35, v36, v37), !v1))
              {
                sub_1B8D92024();
                OUTLINED_FUNCTION_32(v39);
                if (v21)
                {
                  sub_1B8D9207C(v39, &qword_1EBACAF98, &qword_1B96B98A0);
LABEL_33:
                  OUTLINED_FUNCTION_12();
                  sub_1B964C290();
                  goto LABEL_34;
                }

                OUTLINED_FUNCTION_99_10();
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_505_2();
                sub_1B944B0D4();
                if (!v1)
                {
                  goto LABEL_33;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_LeadingTrailingCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_GraphicalFloat(v8);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v50 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB020, &unk_1B96B7BC0);
  OUTLINED_FUNCTION_163_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v51 = v14;
  v15 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_Color(v15);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_165_5();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_1329();
  if ((v21 & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_892();
  v24 = v24 && v22 == v23;
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_822_0();
  v27 = v24 && v25 == v26;
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_891();
  if (!v24)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v24)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_890();
  if (!v24)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_823_0();
  v30 = v24 && v28 == v29;
  if (!v30 && (sub_1B964C9F0() & 1) == 0 || !OUTLINED_FUNCTION_889())
  {
    goto LABEL_54;
  }

  type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  v31 = *(v19 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v7);
  if (v24)
  {
    OUTLINED_FUNCTION_37_0(v7 + v31);
    if (v24)
    {
      sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v7 + v31);
  if (v32)
  {
    OUTLINED_FUNCTION_32_19();
    sub_1B944B0D4();
LABEL_32:
    v33 = &qword_1EBACB058;
    v34 = &unk_1B96CA9D0;
LABEL_33:
    v35 = v7;
LABEL_34:
    sub_1B8D9207C(v35, v33, v34);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_5_36();
  sub_1B944B02C();
  if (*(v3 + *(v1 + 20)) != *(v6 + *(v1 + 20)))
  {

    OUTLINED_FUNCTION_696();
    sub_1B947FDE4();
    v49 = v36;

    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_336_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_182();
      sub_1B944B0D4();
      v33 = &qword_1EBACB050;
      v34 = &unk_1B96B7BD0;
      goto LABEL_33;
    }
  }

  v37 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v38, v39, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_709_0();
  sub_1B964C850();
  OUTLINED_FUNCTION_78_7();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_177_1();
  sub_1B944B0D4();
  sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_38:
  if ((sub_1B8D684DC(*(v2 + 80), *(v0 + 80)) & 1) == 0 || (sub_1B8D684DC(*(v2 + 88), *(v0 + 88)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v40 = *(v5 + 48);
  OUTLINED_FUNCTION_89_10();
  sub_1B8D92024();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v51);
  if (!v24)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v51 + v40);
    if (!v41)
    {
      OUTLINED_FUNCTION_99_10();
      sub_1B944B02C();
      if (*v4 == *v50)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v42, v43, MEMORY[0x1E69AAC10]);
        v44 = sub_1B964C850();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_541_0();
        sub_1B944B0D4();
        sub_1B8D9207C(v51, &qword_1EBACAF98, &qword_1B96B98A0);
        if (v44)
        {
          goto LABEL_53;
        }

LABEL_54:
        v48 = 0;
        goto LABEL_55;
      }

      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v33 = &qword_1EBACAF98;
      v34 = &qword_1B96B98A0;
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_505_2();
    sub_1B944B0D4();
LABEL_49:
    v33 = &qword_1EBACB020;
    v34 = &unk_1B96B7BC0;
LABEL_50:
    v35 = v51;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_99_0(v51 + v40);
  if (!v24)
  {
    goto LABEL_49;
  }

  sub_1B8D9207C(v51, &qword_1EBACAF98, &qword_1B96B98A0);
LABEL_53:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v47 = sub_1B8CD3068(v45, v46, MEMORY[0x1E69AAC10]);
  v48 = OUTLINED_FUNCTION_199_0(v47);
LABEL_55:
  OUTLINED_FUNCTION_264(v48);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93C5808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE68, type metadata accessor for Searchfoundation_LeadingTrailingCardSection, protocol conformance descriptor for Searchfoundation_LeadingTrailingCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C5888(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD0E0, type metadata accessor for Searchfoundation_LeadingTrailingCardSection, protocol conformance descriptor for Searchfoundation_LeadingTrailingCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C58F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD0E0, type metadata accessor for Searchfoundation_LeadingTrailingCardSection, protocol conformance descriptor for Searchfoundation_LeadingTrailingCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C5984()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4F28);
  __swift_project_value_buffer(v0, qword_1EBAB4F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "collectionStyleRow";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionStyleGrid";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "collectionStyleScrolling";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "initiallyVisibleCardSectionCount";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CollectionStyle.decodeMessage<A>(decoder:)()
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
      case 100:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B93C6B68(v15, v16, v17, v18);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B93C6178(v7, v8, v9, v10);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B93C6670(v11, v12, v13, v14);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B93C5C80(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B93C5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_CollectionStyleRow(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1B8, &qword_1B96CA368);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBACE1B8, &qword_1B96CA368);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow, protocol conformance descriptor for Searchfoundation_CollectionStyleRow);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACE1B8, &qword_1B96CA368);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACE1B8, &qword_1B96CA368);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACE1B8, &qword_1B96CA368);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACE1B8, &qword_1B96CA368);
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBACC570, &qword_1B96B98A8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B93C6178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_CollectionStyleGrid(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1C0, &qword_1B96CA370);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBACE1C0, &qword_1B96CA370);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid, protocol conformance descriptor for Searchfoundation_CollectionStyleGrid);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACE1C0, &qword_1B96CA370);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACE1C0, &qword_1B96CA370);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACE1C0, &qword_1B96CA370);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACE1C0, &qword_1B96CA370);
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBACC570, &qword_1B96B98A8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B93C6670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1C8, &qword_1B96CA378);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBACE1C8, &qword_1B96CA378);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling, protocol conformance descriptor for Searchfoundation_CollectionStyleHorizontallyScrolling);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACE1C8, &qword_1B96CA378);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACE1C8, &qword_1B96CA378);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACE1C8, &qword_1B96CA378);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACE1C8, &qword_1B96CA378);
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBACC570, &qword_1B96B98A8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void Searchfoundation_CollectionStyle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_614();
  v3 = OUTLINED_FUNCTION_190_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  OUTLINED_FUNCTION_90(v0);
  if (v7)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_616();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = OUTLINED_FUNCTION_100_5();
      sub_1B93C6EFC(v9, v10, v11, v12);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_100_5();
      sub_1B93C7110(v17, v18, v19, v20);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_100_5();
    sub_1B93C6CEC(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_334_1();
  sub_1B944B0D4();
  if (!v1)
  {
LABEL_14:
    if (!*(v2 + *(type metadata accessor for Searchfoundation_CollectionStyle(0) + 20)) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v1))
    {
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B93C6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_CollectionStyleRow(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow, protocol conformance descriptor for Searchfoundation_CollectionStyleRow);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B93C6EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_CollectionStyleGrid(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid, protocol conformance descriptor for Searchfoundation_CollectionStyleGrid);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B93C7110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling, protocol conformance descriptor for Searchfoundation_CollectionStyleHorizontallyScrolling);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_CollectionStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(v3);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_8();
  v5 = OUTLINED_FUNCTION_686();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC7C0, &qword_1B96B9A98);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  v12 = *(v11 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_50(v2 + v12);
    if (v13)
    {
      sub_1B8D9207C(v2, &unk_1EBACC570, &qword_1B96B98A8);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBACC7C0, &qword_1B96B9A98);
LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2 + v12);
  if (v13)
  {
    OUTLINED_FUNCTION_334_1();
    sub_1B944B0D4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_882();
  sub_1B944B02C();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_CollectionStyle.OneOf_Value.== infix(_:_:)();
  v15 = v14;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v2, &unk_1EBACC570, &qword_1B96B98A8);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v16 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  if (*(v1 + *(v16 + 20)) != *(v0 + *(v16 + 20)))
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_84();
  v19 = sub_1B8CD3068(v17, v18, MEMORY[0x1E69AAC10]);
  v20 = OUTLINED_FUNCTION_634(v19);
LABEL_14:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93C7604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE60, type metadata accessor for Searchfoundation_CollectionStyle, protocol conformance descriptor for Searchfoundation_CollectionStyle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C7684(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle, protocol conformance descriptor for Searchfoundation_CollectionStyle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C76F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle, protocol conformance descriptor for Searchfoundation_CollectionStyle);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C7780()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4BE8);
  __swift_project_value_buffer(v0, qword_1EBAB4BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "drawPlattersIfNecessary";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isInsetGrouped";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rowStyle";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CollectionStyleRow.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B93C7A24(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

void Searchfoundation_CollectionStyleRow.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1351();
  if (!v2 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
  {
    if (*(v1 + 1) != 1 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
    {
      if (!*(v1 + 8) || (OUTLINED_FUNCTION_94_4(), sub_1B944C528(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        type metadata accessor for Searchfoundation_CollectionStyleRow(0);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B93C7BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE58, type metadata accessor for Searchfoundation_CollectionStyleRow, protocol conformance descriptor for Searchfoundation_CollectionStyleRow);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C7C78(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow, protocol conformance descriptor for Searchfoundation_CollectionStyleRow);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C7CE8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow, protocol conformance descriptor for Searchfoundation_CollectionStyleRow);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C7D74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB6D0);
  __swift_project_value_buffer(v0, qword_1EBACB6D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "numberOfColumns";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gridStyle";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CollectionStyleGrid.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_9();
      sub_1B93C7FC4(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t sub_1B93C8170(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE50, type metadata accessor for Searchfoundation_CollectionStyleGrid, protocol conformance descriptor for Searchfoundation_CollectionStyleGrid);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C81F0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid, protocol conformance descriptor for Searchfoundation_CollectionStyleGrid);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C8260(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid, protocol conformance descriptor for Searchfoundation_CollectionStyleGrid);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C83F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE48, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling, protocol conformance descriptor for Searchfoundation_CollectionStyleHorizontallyScrolling);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C8474(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling, protocol conformance descriptor for Searchfoundation_CollectionStyleHorizontallyScrolling);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C84E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling, protocol conformance descriptor for Searchfoundation_CollectionStyleHorizontallyScrolling);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C8570()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB700);
  __swift_project_value_buffer(v0, qword_1EBACB700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B9656D00;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "image";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "toggledImage";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "title";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "toggledTitle";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "subtitle";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B93C8A74()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v4 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v6 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v6);
  return v0;
}

uint64_t sub_1B93C8B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v29 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v30 = (v1 + 64);
  v31 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v32 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v33 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v12 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v35 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v36 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v14 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v38 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle, 1, 1, v14);
  v39 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v14);
  swift_beginAccess();
  v15 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v15;
  swift_beginAccess();
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v17;
  *(v1 + 32) = v16;

  swift_beginAccess();
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v19;
  *(v1 + 48) = v18;

  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v18;
  swift_beginAccess();
  v20 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v20;
  swift_beginAccess();
  v21 = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v21;
  swift_beginAccess();
  v23 = *(a1 + 64);
  v22 = *(a1 + 72);
  v24 = v30;
  swift_beginAccess();
  *v24 = v23;
  *(v1 + 72) = v22;

  swift_beginAccess();
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = v31;
  swift_beginAccess();
  *v27 = v25;
  *(v1 + 88) = v26;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B93C9288()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  return v0;
}

void sub_1B93C93F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93C961C(a2, a1, a3, a4);
        break;
      default:
        switch(v9)
        {
          case '3':
            sub_1B93C96F8(a2, a1, a3, a4);
            break;
          case '4':
            sub_1B93C97D4(a2, a1, a3, a4);
            break;
          case '5':
            sub_1B93C98B0(a2, a1, a3, a4);
            break;
          case '6':
            sub_1B93C998C(a2, a1, a3, a4);
            break;
          case '7':
            sub_1B93C9A68(a2, a1, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B93C961C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C97D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C98B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C9A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C9B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v55 = v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v57 = v54 - v14;
  v15 = type metadata accessor for Searchfoundation_RichText(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v54[1] = v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v54[2] = v54 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v63 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v62 = v54 - v25;
  v64 = type metadata accessor for Searchfoundation_Image(0);
  v26 = MEMORY[0x1EEE9AC00](v64);
  v56 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v58 = v54 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v60 = v54 - v30;
  v61 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v67 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v54[0] = v15;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    v15 = v54[0];
  }

  v32 = v67;
  swift_beginAccess();
  v33 = *(v32 + 24);
  v34 = *(v32 + 32);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  v36 = v67;
  swift_beginAccess();
  v37 = *(v36 + 40);
  v38 = *(v36 + 48);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v41 = v67;
  swift_beginAccess();
  if (*(v41 + 56) != 1 || (result = sub_1B964C670(), !v5))
  {
    swift_beginAccess();
    if (*(v41 + 57) != 1 || (result = sub_1B964C670(), !v5))
    {
      swift_beginAccess();
      if (*(v41 + 58) != 1 || (result = sub_1B964C670(), !v5))
      {
        swift_beginAccess();
        v42 = *(v41 + 64);
        v43 = *(v41 + 72);
        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {

          sub_1B964C700();
          if (v5)
          {
          }
        }

        v45 = v67;
        swift_beginAccess();
        if (!*(v45 + 80) || (v46 = *(v45 + 88), v65 = *(v45 + 80), v66 = v46, sub_1B92C8A2C(), result = sub_1B964C680(), !v5))
        {
          v47 = a4;
          v54[0] = v11;
          swift_beginAccess();
          v48 = v60;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v48, 1, v61) == 1)
          {
            v59 = v18;
            sub_1B8D9207C(v48, &qword_1EBACB050, &unk_1B96B7BD0);
            v61 = a4;
            v49 = v62;
            v50 = v63;
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
            sub_1B964C740();
            result = sub_1B944B0D4();
            v49 = v62;
            v50 = v63;
            if (v5)
            {
              return result;
            }

            v61 = v47;
            v59 = v18;
          }

          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v49, 1, v64) == 1)
          {
            sub_1B8D9207C(v49, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v50, 1, v64) == 1)
          {
            sub_1B8D9207C(v50, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          v51 = v57;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v51, 1, v15) == 1)
          {
            sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          v52 = v55;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v52, 1, v15) == 1)
          {
            sub_1B8D9207C(v52, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          v53 = v54[0];
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v53, 1, v15) == 1)
          {
            return sub_1B8D9207C(v53, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
            sub_1B964C740();
            return sub_1B944B0D4();
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B93CA848(uint64_t a1, uint64_t a2)
{
  v126 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v126);
  v119 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v5 = MEMORY[0x1EEE9AC00](v125);
  v117 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v118 = &v113 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v114 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v116 = &v113 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v113 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v122 = &v113 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v120 = &v113 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v113 - v21;
  v134 = type metadata accessor for Searchfoundation_Image(0);
  v22 = MEMORY[0x1EEE9AC00](v134);
  v121 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v127 = &v113 - v24;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v25 = MEMORY[0x1EEE9AC00](v133);
  v129 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v132 = &v113 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v128 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v136 = &v113 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v131 = &v113 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v135 = &v113 - v35;
  v36 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v36);
  v130 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v38);
  v137 = &v113 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v113 - v44;
  swift_beginAccess();
  v46 = *(a1 + 16);
  swift_beginAccess();
  v47 = *(a2 + 16);

  sub_1B8D67B1C(v46, v47);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v50 = *(a1 + 24);
  v51 = *(a1 + 32);
  swift_beginAccess();
  v52 = v50 == *(a2 + 24) && v51 == *(a2 + 32);
  if (!v52 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v53 = *(a1 + 40);
  v54 = *(a1 + 48);
  swift_beginAccess();
  v55 = v53 == *(a2 + 40) && v54 == *(a2 + 48);
  if (!v55 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v56 = *(a1 + 56);
  swift_beginAccess();
  if (v56 != *(a2 + 56))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v57 = *(a1 + 57);
  swift_beginAccess();
  if (v57 != *(a2 + 57))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v58 = *(a1 + 58);
  swift_beginAccess();
  if (v58 != *(a2 + 58))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v59 = *(a1 + 64);
  v60 = *(a1 + 72);
  swift_beginAccess();
  v61 = v59 == *(a2 + 64) && v60 == *(a2 + 72);
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v62 = *(a1 + 80);
  v63 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v62, v63, *(a2 + 80)))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v64 = *(v38 + 48);
  v65 = v137;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v65, 1, v36) == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65 + v64, 1, v36);
    v68 = v135;
    v67 = v136;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v65, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v65 + v64, 1, v36) == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
LABEL_26:
    v69 = &qword_1EBACB058;
    v70 = &unk_1B96CA9D0;
    v71 = v65;
LABEL_46:
    sub_1B8D9207C(v71, v69, v70);
    goto LABEL_47;
  }

  v72 = v130;
  sub_1B944B02C();
  if (*&v43[*(v36 + 20)] != *&v72[*(v36 + 20)])
  {

    sub_1B947FDE4();
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v71 = v65;
      v69 = &qword_1EBACB050;
      v70 = &unk_1B96B7BD0;
      goto LABEL_46;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v75 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v65, &qword_1EBACB050, &unk_1B96B7BD0);
  v68 = v135;
  v67 = v136;
  if ((v75 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_30:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v76 = v132;
  v77 = *(v133 + 48);
  sub_1B8D92024();
  v78 = v76;
  sub_1B8D92024();
  v79 = v134;
  if (__swift_getEnumTagSinglePayload(v76, 1, v134) == 1)
  {
    sub_1B8D9207C(v68, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v76 + v77, 1, v79) != 1)
    {
LABEL_45:
      v69 = &qword_1EBAB8EB0;
      v70 = &qword_1B964D6B0;
      v71 = v78;
      goto LABEL_46;
    }

    sub_1B8D9207C(v76, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    v80 = v131;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v76 + v77, 1, v79) == 1)
    {
      sub_1B8D9207C(v68, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_44:
      sub_1B944B0D4();
      goto LABEL_45;
    }

    v81 = v127;
    sub_1B944B02C();
    if (*&v80[*(v79 + 20)] != *&v81[*(v79 + 20)])
    {

      sub_1B94C6890();
      v83 = v82;

      if ((v83 & 1) == 0)
      {
        sub_1B944B0D4();
        sub_1B8D9207C(v68, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_64:
        sub_1B944B0D4();
        v71 = v78;
        v69 = &qword_1EBAB8EA8;
        v70 = &unk_1B96B77D0;
        goto LABEL_46;
      }
    }

    sub_1B964C2B0();
    sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    LODWORD(v137) = sub_1B964C850();
    sub_1B944B0D4();
    sub_1B8D9207C(v68, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B944B0D4();
    sub_1B8D9207C(v78, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if ((v137 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v84 = *(v133 + 48);
  v85 = v67;
  v86 = v129;
  sub_1B8D92024();
  v78 = v86;
  sub_1B8D92024();
  v87 = v134;
  if (__swift_getEnumTagSinglePayload(v86, 1, v134) == 1)
  {
    sub_1B8D9207C(v85, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v86 + v84, 1, v87) == 1)
    {
      sub_1B8D9207C(v86, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_53;
    }

    goto LABEL_45;
  }

  v88 = v128;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v86 + v84, 1, v87) == 1)
  {
    sub_1B8D9207C(v136, &qword_1EBAB8EA8, &unk_1B96B77D0);
    goto LABEL_44;
  }

  v90 = v121;
  sub_1B944B02C();
  if (*&v88[*(v87 + 20)] != *&v90[*(v87 + 20)])
  {

    sub_1B94C6890();
    v92 = v91;

    if ((v92 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v136, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_64;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v93 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v136, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B944B0D4();
  sub_1B8D9207C(v78, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v93 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_53:
  swift_beginAccess();
  v94 = v124;
  sub_1B8D92024();
  swift_beginAccess();
  v95 = *(v125 + 48);
  v96 = v123;
  sub_1B8D92024();
  sub_1B8D92024();
  v97 = v126;
  if (__swift_getEnumTagSinglePayload(v96, 1, v126) == 1)
  {
    sub_1B8D9207C(v94, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v97) != 1)
    {
LABEL_68:
      v69 = &qword_1EBACB230;
      v70 = &unk_1B96B8870;
      v71 = v96;
      goto LABEL_46;
    }

    sub_1B8D9207C(v96, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  else
  {
    v98 = v120;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v97) == 1)
    {
      v99 = v124;
LABEL_67:
      sub_1B8D9207C(v99, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B944B0D4();
      goto LABEL_68;
    }

    v100 = v119;
    sub_1B944B02C();
    v101 = static Searchfoundation_RichText.== infix(_:_:)(v98, v100);
    sub_1B944B0D4();
    sub_1B8D9207C(v124, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    sub_1B8D9207C(v96, &qword_1EBACB1D0, &qword_1B96B9870);
    if ((v101 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v102 = *(v125 + 48);
  v96 = v118;
  sub_1B8D92024();
  sub_1B8D92024();
  v103 = v126;
  if (__swift_getEnumTagSinglePayload(v96, 1, v126) != 1)
  {
    v104 = v115;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v96 + v102, 1, v103) == 1)
    {
      v99 = v122;
      goto LABEL_67;
    }

    v105 = v119;
    sub_1B944B02C();
    v106 = static Searchfoundation_RichText.== infix(_:_:)(v104, v105);
    sub_1B944B0D4();
    sub_1B8D9207C(v122, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    sub_1B8D9207C(v96, &qword_1EBACB1D0, &qword_1B96B9870);
    if (v106)
    {
      goto LABEL_70;
    }

LABEL_47:

    return 0;
  }

  sub_1B8D9207C(v122, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v96 + v102, 1, v103) != 1)
  {
    goto LABEL_68;
  }

  sub_1B8D9207C(v96, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_70:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v107 = *(v125 + 48);
  v108 = v117;
  sub_1B8D92024();
  sub_1B8D92024();
  v109 = v126;
  if (__swift_getEnumTagSinglePayload(v108, 1, v126) == 1)
  {

    sub_1B8D9207C(v116, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v108 + v107, 1, v109) == 1)
    {
      sub_1B8D9207C(v117, &qword_1EBACB1D0, &qword_1B96B9870);
      return 1;
    }

    goto LABEL_75;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v108 + v107, 1, v109) == 1)
  {

    sub_1B8D9207C(v116, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_75:
    sub_1B8D9207C(v117, &qword_1EBACB230, &unk_1B96B8870);
    return 0;
  }

  v110 = v117;
  v111 = v119;
  sub_1B944B02C();
  v112 = static Searchfoundation_RichText.== infix(_:_:)(v114, v111);

  sub_1B944B0D4();
  sub_1B8D9207C(v116, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v110, &qword_1EBACB1D0, &qword_1B96B9870);
  return (v112 & 1) != 0;
}

uint64_t sub_1B93CBF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE40, type metadata accessor for Searchfoundation_CommandRowCardSection, protocol conformance descriptor for Searchfoundation_CommandRowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93CC000(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD138, type metadata accessor for Searchfoundation_CommandRowCardSection, protocol conformance descriptor for Searchfoundation_CommandRowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93CC070(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3068(&qword_1EBACD138, type metadata accessor for Searchfoundation_CommandRowCardSection, protocol conformance descriptor for Searchfoundation_CommandRowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93CC0FC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB720);
  __swift_project_value_buffer(v0, qword_1EBACB720);
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
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "applicationBundleIdentifier";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_AppIconCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 2:
      case 3:
      case 7:
        goto LABEL_12;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8D22150();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B93CC664();
        break;
      default:
        if (v1 == 51 || v1 == 52)
        {
LABEL_12:
          OUTLINED_FUNCTION_12();
          sub_1B964C530();
        }

        break;
    }
  }
}

void sub_1B93CC664()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_70_10();
  sub_1B8CD3068(v1, v2, protocol conformance descriptor for Searchfoundation_Color);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_AppIconCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_Color(v5);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (v7)
  {
    OUTLINED_FUNCTION_868_0();
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v8, v9, protocol conformance descriptor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_200_6();
    OUTLINED_FUNCTION_5_34();
    sub_1B964C730();
    if (v0)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_834_0();
  }

  OUTLINED_FUNCTION_1();
  if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1212();
      if (!v12 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
      {
        OUTLINED_FUNCTION_1209();
        if (!v12 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
        {
          OUTLINED_FUNCTION_1261();
          if (!v12 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v13 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
            {
              v14 = *(v1 + 64);
              if (!v14 || (OUTLINED_FUNCTION_540_0(v14), sub_1B92C8A2C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
              {
                v19 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
                OUTLINED_FUNCTION_285_1(*(v19 + 60));
                sub_1B8D92024();
                OUTLINED_FUNCTION_243_1();
                if (v12)
                {
                  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  OUTLINED_FUNCTION_5_36();
                  OUTLINED_FUNCTION_1277();
                  OUTLINED_FUNCTION_70_10();
                  sub_1B8CD3068(v15, v16, protocol conformance descriptor for Searchfoundation_Color);
                  OUTLINED_FUNCTION_597_0();
                  OUTLINED_FUNCTION_687();
                  sub_1B964C740();
                  OUTLINED_FUNCTION_32_19();
                  sub_1B944B0D4();
                  if (v0)
                  {
                    goto LABEL_30;
                  }
                }

                OUTLINED_FUNCTION_1();
                if (!v17 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v18 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
                  {
                    OUTLINED_FUNCTION_163_6();
                    sub_1B964C290();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}