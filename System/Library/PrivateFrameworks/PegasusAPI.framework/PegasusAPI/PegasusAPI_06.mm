void sub_1B8D668C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_165();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_300(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53(v11, v26);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB8, &qword_1B96AA8F0);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_91();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails(v14);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_55();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_273();
  if (v22 && v5 && v4 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_157(v17);
    while (1)
    {
      v18 = OUTLINED_FUNCTION_292();
      sub_1B8D745A4(v18);
      v19 = OUTLINED_FUNCTION_371();
      sub_1B8D745A4(v19);
      OUTLINED_FUNCTION_111();
      sub_1B8D92024();
      OUTLINED_FUNCTION_270();
      OUTLINED_FUNCTION_42(v3);
      if (v22)
      {
        OUTLINED_FUNCTION_42(v3 + v2);
        if (!v22)
        {
          OUTLINED_FUNCTION_382();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_197();
LABEL_19:
          sub_1B8D745F8();
          sub_1B8D9207C(v3, &qword_1EBAB8FB8, &qword_1B96AA8F0);
          break;
        }

        v20 = OUTLINED_FUNCTION_236();
        sub_1B8D9207C(v20, v21, &unk_1B964D7A0);
      }

      else
      {
        OUTLINED_FUNCTION_193();
        sub_1B8D92024();
        OUTLINED_FUNCTION_42(v3 + v2);
        if (v22)
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_287();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_297();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_282();
        OUTLINED_FUNCTION_488();
        static Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.== infix(_:_:)();
        v24 = v23;
        sub_1B8D745F8();
        OUTLINED_FUNCTION_221();
        sub_1B8D745F8();
        sub_1B8D9207C(v3, &qword_1EBAB8FB0, &unk_1B964D7A0);
        if ((v24 & 1) == 0)
        {
          OUTLINED_FUNCTION_382();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_197();
          sub_1B8D745F8();
          break;
        }
      }

      OUTLINED_FUNCTION_496();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v25, MEMORY[0x1E69AAC10]);
      v2 = OUTLINED_FUNCTION_276();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_220();
      sub_1B8D745F8();
      if (v2)
      {
        OUTLINED_FUNCTION_85_0();
        if (!v22)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D66C48(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_1();
  if (v13 && v5 && v4 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v9);
      v10 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v10);
      OUTLINED_FUNCTION_74_0();
      v13 = v13 && v11 == v12;
      if (!v13 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_618();
      if (*(v3 + 24) == 1)
      {
        switch(v15)
        {
          case 1:
            if (v14 != 1)
            {
              goto LABEL_25;
            }

            goto LABEL_16;
          case 2:
            if (v14 != 2)
            {
              goto LABEL_25;
            }

            goto LABEL_16;
          case 3:
            if (v14 != 3)
            {
              goto LABEL_25;
            }

            goto LABEL_16;
          default:
            if (v14)
            {
              goto LABEL_25;
            }

            goto LABEL_16;
        }
      }

      if (v14 != v15)
      {
        break;
      }

LABEL_16:
      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v17)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_26:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D66EA4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_191_0();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_164();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE8, &qword_1B964D7D8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_104(v12, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FF0, &unk_1B964D7E0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = OUTLINED_FUNCTION_87(v14, v57);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(v15);
  v17 = OUTLINED_FUNCTION_49(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FF8, &unk_1B96AA7D0);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_136(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9000, &unk_1B964D7F0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_103();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(v23);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_249();
  v26 = *(v2 + 16);
  if (v26 == *(v3 + 16) && v26 && v2 != v3)
  {
    OUTLINED_FUNCTION_60_0();
    v28 = v2 + v27;
    OUTLINED_FUNCTION_431();
    v59 = v29;
    v60 = v7;
    v30 = v7;
    v58 = v4;
    v32 = v31;
    while (1)
    {
      v33 = OUTLINED_FUNCTION_617();
      sub_1B8D745A4(v33);
      if (!v32)
      {
        break;
      }

      v64 = v32;
      v34 = OUTLINED_FUNCTION_243_0();
      sub_1B8D745A4(v34);
      OUTLINED_FUNCTION_500();
      OUTLINED_FUNCTION_353();
      sub_1B8D92024();
      sub_1B8D92024();
      v35 = OUTLINED_FUNCTION_602();
      OUTLINED_FUNCTION_77(v35, v36);
      if (v37)
      {
        OUTLINED_FUNCTION_32(v4 + v3);
        if (!v37)
        {
          goto LABEL_30;
        }

        sub_1B8D9207C(v4, &qword_1EBAB8FF8, &unk_1B96AA7D0);
      }

      else
      {
        sub_1B8D92024();
        OUTLINED_FUNCTION_32(v4 + v3);
        if (v37)
        {
          OUTLINED_FUNCTION_523();
LABEL_30:
          sub_1B8D9207C(v4, &qword_1EBAB9000, &unk_1B964D7F0);
          goto LABEL_34;
        }

        sub_1B8D920D4(v4 + v3);
        sub_1B8D745A4(v62);
        v38 = OUTLINED_FUNCTION_606();
        sub_1B8D745A4(v38);
        v39 = *(v61 + 48);
        sub_1B8D92024();
        OUTLINED_FUNCTION_549();
        v40 = OUTLINED_FUNCTION_256();
        OUTLINED_FUNCTION_178(v40, v41, v30);
        if (v37)
        {
          v42 = OUTLINED_FUNCTION_535();
          OUTLINED_FUNCTION_32(v42);
          if (!v37)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_466();
          sub_1B8D9207C(v43, v44, v45);
        }

        else
        {
          OUTLINED_FUNCTION_549();
          OUTLINED_FUNCTION_118(v63 + v39);
          if (v46)
          {
            OUTLINED_FUNCTION_463();
            sub_1B8D745F8();
LABEL_32:
            sub_1B8D9207C(v63, &qword_1EBAB8FE8, &qword_1B964D7D8);
LABEL_33:
            sub_1B8D745F8();
            OUTLINED_FUNCTION_721();
            sub_1B8D745F8();
            sub_1B8D745F8();
            sub_1B8D9207C(v4, &qword_1EBAB8FF8, &unk_1B96AA7D0);
LABEL_34:
            sub_1B8D745F8();
            OUTLINED_FUNCTION_425();
            sub_1B8D745F8();
            goto LABEL_35;
          }

          v47 = OUTLINED_FUNCTION_412();
          sub_1B8D920D4(v47);
          OUTLINED_FUNCTION_677();
          static Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent.== infix(_:_:)();
          v49 = v48;
          sub_1B8D745F8();
          OUTLINED_FUNCTION_537();
          sub_1B8D745F8();
          sub_1B8D9207C(v63, &qword_1EBAB8FE0, &qword_1B964D7D0);
          if ((v49 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
        OUTLINED_FUNCTION_598();
        if (v37)
        {
          v52 = v50 == v51;
        }

        else
        {
          v52 = 0;
        }

        if (!v52 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_33;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v53, MEMORY[0x1E69AAC10]);
        v54 = sub_1B964C850();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_186();
        sub_1B8D745F8();
        sub_1B8D745F8();
        sub_1B8D745F8();
        sub_1B8D9207C(v4, &qword_1EBAB8FF8, &unk_1B96AA7D0);
        if ((v54 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v55, MEMORY[0x1E69AAC10]);
      v3 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_486();
      sub_1B8D745F8();
      if (v3)
      {
        --v32;
        v30 = v60;
        v5 += v59;
        v28 += v59;
        v4 = v58;
        if (v64 != 1)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

uint64_t sub_1B8D67648(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_229();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1B8D6769C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_94();
  v5 = sub_1B964C1E0();
  OUTLINED_FUNCTION_30_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_171(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F90, &qword_1B964D788);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_35();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(v14);
  OUTLINED_FUNCTION_19_0();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31_0(v16, v17, v18, v19, v20, v21, v22, v23, v48);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_97();
  v25 = *(v3 + 16);
  OUTLINED_FUNCTION_411();
  if (v35 && v25 && v3 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    v27 = v3 + v26;
    v28 = v2 + v26;
    v49 = (v7 + 8);
    v30 = *(v29 + 72);
    while (1)
    {
      v31 = OUTLINED_FUNCTION_424();
      sub_1B8D745A4(v31);
      v32 = OUTLINED_FUNCTION_572();
      sub_1B8D745A4(v32);
      OUTLINED_FUNCTION_268();
      v35 = v35 && v33 == v34;
      if (!v35 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_272();
      sub_1B8D92024();
      OUTLINED_FUNCTION_501();
      sub_1B8D92024();
      OUTLINED_FUNCTION_48(v4);
      if (v35)
      {
        OUTLINED_FUNCTION_48(v4 + v2);
        if (!v35)
        {
          goto LABEL_24;
        }

        v36 = OUTLINED_FUNCTION_246();
        sub_1B8D9207C(v36, v37, &qword_1B964D780);
      }

      else
      {
        sub_1B8D92024();
        OUTLINED_FUNCTION_48(v4 + v2);
        if (v38)
        {
          v46 = OUTLINED_FUNCTION_662();
          v47(v46);
LABEL_24:
          sub_1B8D9207C(v4, &qword_1EBAB8F90, &qword_1B964D788);
          break;
        }

        OUTLINED_FUNCTION_674();
        v2 = v5;
        v5 = v51;
        v39();
        OUTLINED_FUNCTION_379();
        sub_1B8D5C8D0(&qword_1EBAB8F98, v40, MEMORY[0x1E69AAB48]);
        OUTLINED_FUNCTION_485();
        v50 = sub_1B964C850();
        v41 = *v49;
        v42 = OUTLINED_FUNCTION_678();
        v41(v42);
        v43 = OUTLINED_FUNCTION_375();
        v41(v43);
        sub_1B8D9207C(v4, &qword_1EBAB8F88, &qword_1B964D780);
        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_551();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v44, MEMORY[0x1E69AAC10]);
      v45 = OUTLINED_FUNCTION_395();
      OUTLINED_FUNCTION_722(v45);
      OUTLINED_FUNCTION_306();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_243_0();
      sub_1B8D745F8();
      if (v2)
      {
        v28 += v30;
        v27 += v30;
        OUTLINED_FUNCTION_423();
        if (!v35)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_378();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_218();
    sub_1B8D745F8();
  }

LABEL_26:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D67B70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_0();
  if (v14 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_11_1(v9);
    while (1)
    {
      v10 = v3 * v5;
      v11 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v11);
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_586_0(), !v14) || (OUTLINED_FUNCTION_95_0(), !v14))
      {
LABEL_34:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_35;
      }

      if (v10)
      {
        v17 = v16 == v15;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        OUTLINED_FUNCTION_299();
        while (v10)
        {
          OUTLINED_FUNCTION_109();
          v20 = v14 && v18 == v19;
          if (!v20 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_34;
          }

          OUTLINED_FUNCTION_108();
          if (v14)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }

LABEL_29:
      OUTLINED_FUNCTION_636();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v21, MEMORY[0x1E69AAC10]);
      v22 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v22)
      {
        OUTLINED_FUNCTION_262();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D67E68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_94();
  type metadata accessor for Searchfoundation_CardSection(v6);
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_68();
  LOBYTE(v10) = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(v9);
  OUTLINED_FUNCTION_19_0();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_0(v12, v13, v14, v15, v16, v17, v18, v19, v42);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_570();
  if (v27 && v4 && v3 != v2)
  {
    v43 = v4;
    v21 = 0;
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_506();
    v44 = v10;
    OUTLINED_FUNCTION_681(v22);
    while (1)
    {
      OUTLINED_FUNCTION_373();
      OUTLINED_FUNCTION_626(v23);
      if (v21 == v4)
      {
        break;
      }

      v46 = v21;
      OUTLINED_FUNCTION_373();
      OUTLINED_FUNCTION_604();
      sub_1B8D745A4(v24);
      OUTLINED_FUNCTION_428();
      v27 = v27 && v25 == v26;
      if (!v27 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_357();
      v30 = v27 && v28 == v29;
      if (!v30 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_42;
      }

      v31 = v5[4] == v47[4] && v5[5] == v47[5];
      if (!v31 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_190();
      if (!v27)
      {
        goto LABEL_42;
      }

      if (v45 * v21 && v33 != v32)
      {
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_456();
        while (1)
        {
          OUTLINED_FUNCTION_372();
          v34 = OUTLINED_FUNCTION_227();
          sub_1B8D745A4(v34);
          OUTLINED_FUNCTION_372();
          v35 = OUTLINED_FUNCTION_303();
          sub_1B8D745A4(v35);
          OUTLINED_FUNCTION_226();
          if (!v27)
          {

            OUTLINED_FUNCTION_542();
            sub_1B9376F2C();
            OUTLINED_FUNCTION_647();

            if ((v10 & 1) == 0)
            {
              break;
            }
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v36, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_186();
          v37 = sub_1B964C850();
          v10 = type metadata accessor for Searchfoundation_CardSection;
          sub_1B8D745F8();
          OUTLINED_FUNCTION_253();
          sub_1B8D745F8();
          if ((v37 & 1) == 0)
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_455();
          if (v27)
          {
            goto LABEL_32;
          }
        }

        sub_1B8D745F8();
        OUTLINED_FUNCTION_202();
        sub_1B8D745F8();
LABEL_42:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_197();
        sub_1B8D745F8();
        goto LABEL_43;
      }

LABEL_32:
      v38 = v5[7] == v47[7] && v5[8] == v47[8];
      if (!v38 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_42;
      }

      LOBYTE(v10) = v44;
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v39, MEMORY[0x1E69AAC10]);
      v40 = OUTLINED_FUNCTION_310();
      v41 = OUTLINED_FUNCTION_525(v40);
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      if (v41)
      {
        ++v21;
        v4 = v43;
        if (v46 + 1 != v43)
        {
          continue;
        }
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D68234(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_Person(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_0();
  if (v16 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_45();
    v39 = v2 + v9;
    v11 = *(v10 + 72);
    while (1)
    {
      v12 = v11 * v5;
      v13 = OUTLINED_FUNCTION_471();
      sub_1B8D745A4(v13);
      if (v5 == v4)
      {
        break;
      }

      sub_1B8D745A4(v39 + v12);
      OUTLINED_FUNCTION_74_0();
      v16 = v16 && v14 == v15;
      if (!v16 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_83_0();
      v19 = v16 && v17 == v18;
      if (!v19 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_89();
      v22 = v16 && v20 == v21;
      if (!v22 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_95_0();
      if (!v16)
      {
        goto LABEL_59;
      }

      if (v12 && v24 != v23)
      {
        OUTLINED_FUNCTION_299();
        while (1)
        {
          OUTLINED_FUNCTION_109();
          v27 = v16 && v25 == v26;
          if (!v27 && (sub_1B964C9F0() & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_108();
          if (v16)
          {
            goto LABEL_34;
          }
        }

LABEL_59:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_60;
      }

LABEL_34:
      OUTLINED_FUNCTION_95_0();
      if (!v16)
      {
        goto LABEL_59;
      }

      if (v12)
      {
        v30 = v29 == v28;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        OUTLINED_FUNCTION_299();
        while (v12)
        {
          OUTLINED_FUNCTION_109();
          v33 = v16 && v31 == v32;
          if (!v33 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_108();
          if (v16)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
        break;
      }

LABEL_49:
      OUTLINED_FUNCTION_451();
      v36 = v16 && v34 == v35;
      if (!v36 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_59;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v37, MEMORY[0x1E69AAC10]);
      v38 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v38)
      {
        OUTLINED_FUNCTION_262();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_60;
    }

    __break(1u);
  }

  else
  {
LABEL_60:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D68584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v20 = v8;
  v9 = OUTLINED_FUNCTION_82_0();
  v10(v9);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_65();
  if (v17 && v7 && v6 != v3)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_607();
    while (1)
    {
      v13 = OUTLINED_FUNCTION_163();
      sub_1B8D745A4(v13);
      v14 = OUTLINED_FUNCTION_205();
      sub_1B8D745A4(v14);
      OUTLINED_FUNCTION_155();
      v17 = v17 && v15 == v16;
      if (!v17 && (sub_1B964C9F0() & 1) == 0 || (v20(*(v5 + 16), *(v4 + 16)) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_633();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v18, MEMORY[0x1E69AAC10]);
      v19 = OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v19)
      {
        OUTLINED_FUNCTION_112_0();
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_18:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D687DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_252();
  v7 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  type metadata accessor for Searchfoundation_PatternModel(v7);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43();
  if (!v15 || !v2 || v6 == v3)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_51_0(v10);
  while (2)
  {
    v11 = OUTLINED_FUNCTION_236();
    sub_1B8D745A4(v11);
    v12 = OUTLINED_FUNCTION_275();
    sub_1B8D745A4(v12);
    OUTLINED_FUNCTION_154();
    v15 = v15 && v13 == v14;
    if (!v15 && (sub_1B964C9F0() & 1) == 0)
    {
LABEL_95:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
LABEL_96:
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    }

    v17 = v4[2];
    v16 = v4[3];
    OUTLINED_FUNCTION_161();
    if (!v15)
    {
      switch(v20)
      {
        case 1:
          if (!__OFSUB__(v19, v18))
          {
            goto LABEL_26;
          }

          goto LABEL_100;
        case 2:
          OUTLINED_FUNCTION_250();
          if (!v24)
          {
            goto LABEL_26;
          }

          goto LABEL_99;
        default:
          goto LABEL_26;
      }
    }

    if (!v18)
    {
      OUTLINED_FUNCTION_421();
      v23 = v15 && v21 >= 3;
      if (v23 && !v17 && v16 == v22)
      {
        goto LABEL_80;
      }
    }

LABEL_26:
    OUTLINED_FUNCTION_160();
    switch(v30)
    {
      case 1:
        LODWORD(v31) = v27 - v17;
        if (__OFSUB__(v27, v17))
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
        }

        v31 = v31;
LABEL_35:
        if (v29 != v31)
        {
          goto LABEL_95;
        }

        if (v29 < 1)
        {
          goto LABEL_80;
        }

        break;
      case 2:
        OUTLINED_FUNCTION_420();
        if (!v24)
        {
          goto LABEL_35;
        }

        goto LABEL_98;
      case 3:
        if (v29)
        {
          goto LABEL_95;
        }

        goto LABEL_80;
      default:
        v31 = v25;
        goto LABEL_35;
    }

    v32 = v17 >> 32;
    switch(v28)
    {
      case 1:
        OUTLINED_FUNCTION_290();
        if (v60 != v24)
        {
          goto LABEL_101;
        }

        v61 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v61, v62);
        v63 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v63, v64);
        v65 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v65, v66);
        if (!sub_1B964C070())
        {
          goto LABEL_65;
        }

        sub_1B964C090();
        OUTLINED_FUNCTION_497();
        if (!v24)
        {
          goto LABEL_65;
        }

        goto LABEL_104;
      case 2:
        v46 = *(v26 + 16);
        v47 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v47, v48);
        v49 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v49, v50);
        v51 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v51, v52);
        if (sub_1B964C070() && __OFSUB__(v46, sub_1B964C090()))
        {
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_453();
        if (v24)
        {
          goto LABEL_102;
        }

LABEL_65:
        sub_1B964C080();
        OUTLINED_FUNCTION_22_2();
        v67 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v67, v68);
        v69 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v69, v70);
        v71 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v71, v72);
        if ((v93 & 1) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_80;
      case 3:
        OUTLINED_FUNCTION_434();
        if (!v53)
        {
          goto LABEL_63;
        }

        if (v53 == 2)
        {
          v54 = *(v17 + 16);
          v55 = *(v17 + 24);
          v56 = OUTLINED_FUNCTION_2();
          sub_1B8D91FCC(v56, v57);
          v58 = sub_1B964C070();
          if (v58)
          {
            v59 = sub_1B964C090();
            if (__OFSUB__(v54, v59))
            {
              goto LABEL_109;
            }

            v58 += v54 - v59;
          }

          if (__OFSUB__(v55, v54))
          {
            goto LABEL_108;
          }

          sub_1B964C080();
          if (!v58)
          {
            goto LABEL_115;
          }

LABEL_78:
          v77 = OUTLINED_FUNCTION_102_0();
          goto LABEL_79;
        }

        if (v32 < v17)
        {
          goto LABEL_105;
        }

        v73 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v73, v74);
        v75 = sub_1B964C070();
        if (v75)
        {
          v76 = sub_1B964C090();
          if (__OFSUB__(v17, v76))
          {
            goto LABEL_111;
          }

          v75 += v17 - v76;
        }

        sub_1B964C080();
        if (v75)
        {
LABEL_72:
          v77 = OUTLINED_FUNCTION_80_0();
LABEL_79:
          v86 = memcmp(v77, v78, v79);
          v87 = OUTLINED_FUNCTION_2();
          sub_1B8D538A0(v87, v88);
          if (v86)
          {
            goto LABEL_95;
          }

LABEL_80:
          v89 = v5[4] == v4[4] && v5[5] == v4[5];
          if (!v89 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_95;
          }

          v90 = v5[6] == v4[6] && v5[7] == v4[7];
          if (!v90 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_95;
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v91, MEMORY[0x1E69AAC10]);
          v92 = OUTLINED_FUNCTION_180();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_253();
          sub_1B8D745F8();
          if ((v92 & 1) == 0)
          {
            goto LABEL_96;
          }

          OUTLINED_FUNCTION_56();
          if (v15)
          {
            goto LABEL_96;
          }

          continue;
        }

        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        return;
      default:
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_291();
        if (!v41)
        {
LABEL_63:
          if (OUTLINED_FUNCTION_9_1(v33, v34, v35, v36, v37, v38, v39, v40))
          {
            goto LABEL_95;
          }

          goto LABEL_80;
        }

        if (v41 == 1)
        {
          if (v32 < v17)
          {
            goto LABEL_106;
          }

          v42 = OUTLINED_FUNCTION_2();
          sub_1B8D91FCC(v42, v43);
          v44 = sub_1B964C070();
          if (v44)
          {
            v45 = sub_1B964C090();
            if (__OFSUB__(v17, v45))
            {
              goto LABEL_112;
            }

            v44 += v17 - v45;
          }

          sub_1B964C080();
          if (!v44)
          {
            goto LABEL_116;
          }

          goto LABEL_72;
        }

        v80 = *(v17 + 16);
        v81 = *(v17 + 24);
        v82 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v82, v83);
        v84 = sub_1B964C070();
        if (v84)
        {
          v85 = sub_1B964C090();
          if (__OFSUB__(v80, v85))
          {
            goto LABEL_110;
          }

          v84 += v80 - v85;
        }

        if (__OFSUB__(v81, v80))
        {
          goto LABEL_107;
        }

        sub_1B964C080();
        if (!v84)
        {
          goto LABEL_114;
        }

        goto LABEL_78;
    }
  }
}

uint64_t sub_1B8D68E54(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_165();
  type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value(v5);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_187_0();
  v8 = *(v3 + 2);
  OUTLINED_FUNCTION_231_0();
  if (!v33)
  {
    goto LABEL_35;
  }

  if (!v8 || v3 == v1)
  {
    v63 = 1;
    return v63 & 1;
  }

  OUTLINED_FUNCTION_60_0();
  v10 = v3 + v9;
  OUTLINED_FUNCTION_157(v11);
  while (1)
  {
    v12 = OUTLINED_FUNCTION_246();
    sub_1B8D745A4(v12);
    OUTLINED_FUNCTION_653();
    sub_1B8D745A4(v13);
    v14 = *v2;
    v15 = *(v2 + 16);
    v16 = *v3;
    v17 = *(v3 + 1);
    v18 = *(v3 + 16);
    if (v15 == 255)
    {
      if (v18 != 255)
      {
LABEL_28:
        v64 = OUTLINED_FUNCTION_115_0();
        sub_1B8D52584(v64, v65, v66);
        v67 = OUTLINED_FUNCTION_216();
        sub_1B8D52584(v67, v68, v69);
        v70 = OUTLINED_FUNCTION_115_0();
        sub_1B8D525DC(v70, v71, v72);
        v73 = OUTLINED_FUNCTION_216();
        goto LABEL_33;
      }

      v29 = OUTLINED_FUNCTION_233();
      sub_1B8D52584(v29, v30, 255);
      v31 = OUTLINED_FUNCTION_261();
      sub_1B8D52584(v31, v32, 255);
      goto LABEL_22;
    }

    if (v18 == 255)
    {
      goto LABEL_28;
    }

    if (v15)
    {
      break;
    }

    if (v18)
    {
      v76 = OUTLINED_FUNCTION_115_0();
      sub_1B8D52584(v76, v77, v78);
      v79 = OUTLINED_FUNCTION_216();
      sub_1B8D52584(v79, v80, v81);
      v82 = OUTLINED_FUNCTION_115_0();
      goto LABEL_31;
    }

    v33 = v14 == v16 && *(v2 + 8) == v17;
    if (v33)
    {
      sub_1B8D52584(*v2, *(v2 + 8), *(v2 + 16));
      v50 = OUTLINED_FUNCTION_233();
      sub_1B8D52584(v50, v51, v18);
      v52 = OUTLINED_FUNCTION_115_0();
      sub_1B8D52584(v52, v53, v54);
      v55 = OUTLINED_FUNCTION_233();
      sub_1B8D52574(v55, v56, 0);
      v57 = OUTLINED_FUNCTION_233();
      sub_1B8D52574(v57, v58, 0);
LABEL_22:
      v59 = OUTLINED_FUNCTION_115_0();
      sub_1B8D525DC(v59, v60, v61);
      goto LABEL_23;
    }

    v95 = sub_1B964C9F0();
    v34 = OUTLINED_FUNCTION_115_0();
    sub_1B8D52584(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_216();
    sub_1B8D52584(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_115_0();
    sub_1B8D52584(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_233();
    sub_1B8D52574(v43, v44, 0);
    v45 = OUTLINED_FUNCTION_261();
    sub_1B8D52574(v45, v46, 0);
    v47 = OUTLINED_FUNCTION_115_0();
    sub_1B8D525DC(v47, v48, v49);
    if ((v95 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_23:
    OUTLINED_FUNCTION_630();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v62, MEMORY[0x1E69AAC10]);
    v63 = sub_1B964C850();
    v3 = type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_303();
    sub_1B8D745F8();
    if (v63)
    {
      v4 += v96;
      v10 += v96;
      OUTLINED_FUNCTION_237_0();
      if (!v33)
      {
        continue;
      }
    }

    return v63 & 1;
  }

  if (v18)
  {
    v19 = OUTLINED_FUNCTION_115_0();
    sub_1B8D52584(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_216();
    sub_1B8D52584(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_233();
    sub_1B8D52574(v25, v26, 1);
    v27 = OUTLINED_FUNCTION_261();
    sub_1B8D52574(v27, v28, 1);
    if (*&v14 != *&v16)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v85 = OUTLINED_FUNCTION_115_0();
  sub_1B8D52584(v85, v86, v87);
  v82 = OUTLINED_FUNCTION_216();
LABEL_31:
  sub_1B8D52584(v82, v83, v84);
  v88 = OUTLINED_FUNCTION_233();
  sub_1B8D52574(v88, v89, v90);
  v91 = OUTLINED_FUNCTION_261();
  sub_1B8D52574(v91, v92, v93);
LABEL_32:
  v73 = OUTLINED_FUNCTION_115_0();
LABEL_33:
  sub_1B8D525DC(v73, v74, v75);
LABEL_34:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_571();
LABEL_35:
  v63 = 0;
  return v63 & 1;
}

uint64_t sub_1B8D691E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_228();
            }
          }

          else if (v5 != 2)
          {
            return OUTLINED_FUNCTION_228();
          }
        }

        else if (v5)
        {
          return OUTLINED_FUNCTION_228();
        }
      }

      else if (v5 != v7)
      {
        return OUTLINED_FUNCTION_228();
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_229();
}

void sub_1B8D69270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  v22 = v21;
  v24 = v23;
  OUTLINED_FUNCTION_533(*MEMORY[0x1E69E9840]);
  v25 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21();
  v144 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v30);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_159();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_185();
  v33 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v33);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21();
  v149 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_183(v36);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_608(v38);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D8, &qword_1B964D8C8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_158(v40);
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_249();
  v153 = v43;
  v151 = *(v24 + 16);
  if (v151 != *(v22 + 16) || !v151 || v24 == v22)
  {
    goto LABEL_122;
  }

  OUTLINED_FUNCTION_60_0();
  v45 = v24 + v44;
  v150 = v22 + v44;
  OUTLINED_FUNCTION_666();
  v140 = (v27 + 8);
  v142 = *(v46 + 72);
  v143 = v25;
  v47 = v148;
  while (2)
  {
    sub_1B8D745A4(v45);
    if (!v151)
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
    }

    v147 = v45;
    OUTLINED_FUNCTION_132();
    sub_1B8D745A4(v150);
    v48 = *(v146 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v152);
    if (v50)
    {
      v49 = OUTLINED_FUNCTION_531();
      OUTLINED_FUNCTION_50(v49);
      if (!v50)
      {
        goto LABEL_116;
      }

      sub_1B8D9207C(v152, &qword_1EBAB90D0, &qword_1B964D8C0);
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_197();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v152 + v48);
    if (v50)
    {
      OUTLINED_FUNCTION_297();
      sub_1B8D745F8();
LABEL_116:
      v136 = &qword_1EBAB90D8;
      v137 = &qword_1B964D8C8;
LABEL_120:
      sub_1B8D9207C(v152, v136, v137);
LABEL_121:
      sub_1B8D745F8();
      sub_1B8D745F8();
LABEL_122:
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    }

    OUTLINED_FUNCTION_354();
    v51 = OUTLINED_FUNCTION_531();
    sub_1B8D920D4(v51);
    v48 = *(v145 + 48);
    OUTLINED_FUNCTION_683();
    sub_1B8D92024();
    OUTLINED_FUNCTION_720();
    OUTLINED_FUNCTION_32(v47);
    if (v50)
    {
      OUTLINED_FUNCTION_32(v47 + v48);
      if (!v50)
      {
        goto LABEL_118;
      }

      v52 = OUTLINED_FUNCTION_221();
      sub_1B8D9207C(v52, v53, &qword_1B964D720);
      v54 = v148;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_617();
    OUTLINED_FUNCTION_720();
    OUTLINED_FUNCTION_32(v47 + v48);
    if (v55)
    {
      OUTLINED_FUNCTION_422();
      v138 = OUTLINED_FUNCTION_2();
      v139(v138);
LABEL_118:
      sub_1B8D9207C(v47, &qword_1EBAB8F28, &unk_1B9683B20);
LABEL_119:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_288();
      sub_1B8D745F8();
      v136 = &qword_1EBAB90D0;
      v137 = &qword_1B964D8C0;
      goto LABEL_120;
    }

    OUTLINED_FUNCTION_422();
    v56(v144, v47 + v48, v25);
    OUTLINED_FUNCTION_25_1();
    sub_1B8D5C8D0(&qword_1EBAB8F40, v57, MEMORY[0x1E69AAB20]);
    OUTLINED_FUNCTION_353();
    LOBYTE(v48) = v25;
    v141 = sub_1B964C850();
    v58 = *v140;
    v59 = OUTLINED_FUNCTION_371();
    v58(v59);
    v60 = OUTLINED_FUNCTION_2();
    v58(v60);
    v61 = OUTLINED_FUNCTION_221();
    sub_1B8D9207C(v61, v62, &qword_1B964D720);
    v54 = v148;
    if ((v141 & 1) == 0)
    {
      goto LABEL_119;
    }

LABEL_19:
    v63 = *(v54 + 8);
    v65 = *v149;
    v64 = v149[1];
    OUTLINED_FUNCTION_558();
    if (v50)
    {
      v71 = 0;
      if (!v67 && v63 == 0xC000000000000000 && v66 >= 3)
      {
        v71 = 0;
        if (!v65 && v64 == 0xC000000000000000)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      v71 = 0;
      switch(v69)
      {
        case 1:
          if (__OFSUB__(v68, v67))
          {
            goto LABEL_126;
          }

          v71 = v68 - v67;
          break;
        case 2:
          OUTLINED_FUNCTION_250();
          if (!v72)
          {
            break;
          }

          goto LABEL_127;
        case 3:
          break;
        default:
          v71 = BYTE6(v63);
          break;
      }
    }

    switch(v66)
    {
      case 1uLL:
        LODWORD(v73) = HIDWORD(v65) - v65;
        if (__OFSUB__(HIDWORD(v65), v65))
        {
          goto LABEL_124;
        }

        v73 = v73;
LABEL_44:
        if (v71 != v73)
        {
          goto LABEL_119;
        }

        if (v71 < 1)
        {
          goto LABEL_94;
        }

        break;
      case 2uLL:
        v75 = *(v65 + 16);
        v74 = *(v65 + 24);
        v72 = __OFSUB__(v74, v75);
        v73 = v74 - v75;
        if (!v72)
        {
          goto LABEL_44;
        }

        goto LABEL_125;
      case 3uLL:
        if (v71)
        {
          goto LABEL_119;
        }

        goto LABEL_94;
      default:
        v73 = BYTE6(v64);
        goto LABEL_44;
    }

    v76 = v65 >> 32;
    switch(v69)
    {
      case 1:
        if (v67 >> 32 < v67)
        {
          goto LABEL_128;
        }

        v99 = v67;
        v100 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v100, v101);
        v102 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v102, v103);
        v104 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v104, v105);
        v106 = sub_1B964C070();
        if (v106)
        {
          v107 = v106;
          v108 = sub_1B964C090();
          if (__OFSUB__(v99, v108))
          {
            goto LABEL_131;
          }

          v91 = (v99 - v108 + v107);
        }

        else
        {
          v91 = 0;
        }

LABEL_77:
        LOBYTE(v48) = v63;
        sub_1B964C080();
        OUTLINED_FUNCTION_223();
        sub_1B8D91D0C(v154, v91, v65, v64);
        v110 = OUTLINED_FUNCTION_205();
        sub_1B8D538A0(v110, v111);
        v112 = OUTLINED_FUNCTION_205();
        sub_1B8D538A0(v112, v113);
        v114 = OUTLINED_FUNCTION_205();
        sub_1B8D538A0(v114, v115);
        if ((v154[0] & 1) == 0)
        {
          goto LABEL_119;
        }

        goto LABEL_94;
      case 2:
        v81 = *(v67 + 16);
        v82 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v82, v83);
        v84 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v84, v85);
        v86 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v86, v87);
        v88 = sub_1B964C070();
        if (v88)
        {
          v89 = v88;
          v90 = sub_1B964C090();
          if (__OFSUB__(v81, v90))
          {
            goto LABEL_130;
          }

          v91 = (v81 - v90 + v89);
        }

        else
        {
          v91 = 0;
        }

        OUTLINED_FUNCTION_530();
        if (!__OFSUB__(v109, v81))
        {
          goto LABEL_77;
        }

        goto LABEL_129;
      case 3:
        *&v154[6] = 0;
        *v154 = 0;
        if (!v66)
        {
          goto LABEL_70;
        }

        if (v66 == 2)
        {
          v92 = *(v65 + 16);
          v93 = *(v65 + 24);
          v94 = OUTLINED_FUNCTION_205();
          sub_1B8D91FCC(v94, v95);
          v79 = sub_1B964C070();
          if (v79)
          {
            v96 = sub_1B964C090();
            if (__OFSUB__(v92, v96))
            {
              goto LABEL_137;
            }

            v79 += v92 - v96;
          }

          v72 = __OFSUB__(v93, v92);
          v97 = v93 - v92;
          if (v72)
          {
            goto LABEL_134;
          }

          v98 = sub_1B964C080();
          if (!v79)
          {
            goto LABEL_141;
          }

LABEL_90:
          if (v98 >= v97)
          {
            v119 = v97;
          }

          else
          {
            v119 = v98;
          }

          goto LABEL_93;
        }

        if (v76 < v65)
        {
          goto LABEL_132;
        }

        v116 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v116, v117);
        v79 = sub_1B964C070();
        if (v79)
        {
          v118 = sub_1B964C090();
          if (__OFSUB__(v65, v118))
          {
            goto LABEL_138;
          }

          v79 += v65 - v118;
        }

        sub_1B964C080();
        if (v79)
        {
LABEL_84:
          OUTLINED_FUNCTION_241();
LABEL_93:
          LODWORD(v48) = memcmp(v154, v79, v119);
          v125 = OUTLINED_FUNCTION_205();
          sub_1B8D538A0(v125, v126);
          if (v48)
          {
            goto LABEL_119;
          }

LABEL_94:
          OUTLINED_FUNCTION_551();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v127, MEMORY[0x1E69AAC10]);
          v128 = OUTLINED_FUNCTION_689();
          OUTLINED_FUNCTION_713(v128);
          OUTLINED_FUNCTION_364();
          v47 = v148;
          sub_1B8D745F8();
          OUTLINED_FUNCTION_544();
          sub_1B8D745F8();
          sub_1B8D9207C(v152, &qword_1EBAB90D0, &qword_1B964D8C0);
          if ((v48 & 1) == 0)
          {
            goto LABEL_121;
          }

LABEL_95:
          v129 = *v153;
          v130 = *v20;
          if (*(v20 + 8) == 1)
          {
            switch(v130)
            {
              case 1:
                if (v129 != 1)
                {
                  goto LABEL_121;
                }

                goto LABEL_100;
              case 2:
                if (v129 != 2)
                {
                  goto LABEL_121;
                }

                goto LABEL_100;
              case 3:
                if (v129 != 3)
                {
                  goto LABEL_121;
                }

                goto LABEL_100;
              default:
                if (v129)
                {
                  goto LABEL_121;
                }

                goto LABEL_100;
            }
          }

          if (v129 != v130)
          {
            goto LABEL_121;
          }

LABEL_100:
          OUTLINED_FUNCTION_663();
          if (v50)
          {
            v133 = v131 == v132;
          }

          else
          {
            v133 = 0;
          }

          if (!v133 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_121;
          }

          OUTLINED_FUNCTION_546();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v134, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
          OUTLINED_FUNCTION_370();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_690();
          sub_1B8D745F8();
          if ((v48 & 1) == 0)
          {
            goto LABEL_122;
          }

          v135 = v151;
          v150 += v142;
          --v151;
          v45 = v147 + v142;
          v25 = v143;
          if (v135 == 1)
          {
            goto LABEL_122;
          }

          continue;
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        return;
      default:
        *v154 = v67;
        v154[2] = BYTE2(v67);
        v154[3] = BYTE3(v67);
        v154[4] = v68;
        v154[5] = BYTE5(v67);
        v154[6] = BYTE6(v67);
        v154[7] = HIBYTE(v67);
        *&v154[8] = v63;
        v154[10] = BYTE2(v63);
        v154[11] = BYTE3(v63);
        v154[12] = BYTE4(v63);
        v154[13] = BYTE5(v63);
        if (!v66)
        {
LABEL_70:
          if (OUTLINED_FUNCTION_152(SBYTE1(v64), SHIBYTE(v65), BYTE6(v64), SBYTE6(v65), SBYTE5(v65), SBYTE3(v65), SBYTE2(v65), SBYTE1(v65)))
          {
            goto LABEL_119;
          }

          goto LABEL_94;
        }

        if (v66 == 1)
        {
          if (v76 < v65)
          {
            goto LABEL_133;
          }

          v77 = OUTLINED_FUNCTION_205();
          sub_1B8D91FCC(v77, v78);
          v79 = sub_1B964C070();
          if (v79)
          {
            v80 = sub_1B964C090();
            if (__OFSUB__(v65, v80))
            {
              goto LABEL_139;
            }

            v79 += v65 - v80;
          }

          sub_1B964C080();
          if (!v79)
          {
            goto LABEL_143;
          }

          goto LABEL_84;
        }

        v120 = *(v65 + 16);
        v121 = *(v65 + 24);
        v122 = OUTLINED_FUNCTION_205();
        sub_1B8D91FCC(v122, v123);
        v79 = sub_1B964C070();
        if (v79)
        {
          v124 = sub_1B964C090();
          if (__OFSUB__(v120, v124))
          {
            goto LABEL_136;
          }

          v79 += v120 - v124;
        }

        v72 = __OFSUB__(v121, v120);
        v97 = v121 - v120;
        if (v72)
        {
          goto LABEL_135;
        }

        v98 = sub_1B964C080();
        if (!v79)
        {
          goto LABEL_142;
        }

        goto LABEL_90;
    }
  }
}

void sub_1B8D69EC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_214();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F00, &unk_1B964D700);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_104(v11, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F08, &qword_1B96B57B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  v14 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity(v13);
  v15 = OUTLINED_FUNCTION_18_0(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_86_0();
  if (v21 && v3 && v5 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_285();
    while (1)
    {
      v17 = OUTLINED_FUNCTION_424();
      sub_1B8D745A4(v17);
      v18 = OUTLINED_FUNCTION_491();
      sub_1B8D745A4(v18);
      OUTLINED_FUNCTION_210();
      v21 = v21 && v19 == v20;
      if (!v21 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_569();
      v24 = v21 && v22 == v23;
      if (!v24 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_272();
      sub_1B8D92024();
      OUTLINED_FUNCTION_501();
      sub_1B8D92024();
      OUTLINED_FUNCTION_48(v4);
      if (v21)
      {
        OUTLINED_FUNCTION_48(v4 + v2);
        if (!v21)
        {
          goto LABEL_29;
        }

        v25 = OUTLINED_FUNCTION_246();
        sub_1B8D9207C(v25, v26, &unk_1B964D700);
      }

      else
      {
        OUTLINED_FUNCTION_520();
        OUTLINED_FUNCTION_48(v4 + v2);
        if (v27)
        {
          OUTLINED_FUNCTION_348();
          sub_1B8D745F8();
LABEL_29:
          sub_1B8D9207C(v4, &qword_1EBAB8F08, &qword_1B96B57B0);
          break;
        }

        OUTLINED_FUNCTION_254();
        v2 = v4;
        OUTLINED_FUNCTION_661();
        sub_1B8D920D4(v28);
        OUTLINED_FUNCTION_427();
        static Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity.== infix(_:_:)();
        v32 = v29;
        OUTLINED_FUNCTION_347();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_376();
        sub_1B8D745F8();
        sub_1B8D9207C(v4, &qword_1EBAB8F00, &unk_1B964D700);
        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_642();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v30, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_304();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_243_0();
      sub_1B8D745F8();
      if (v2)
      {
        OUTLINED_FUNCTION_225();
        if (!v21)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_218();
    sub_1B8D745F8();
  }

LABEL_31:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6A254(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_295(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800);
  OUTLINED_FUNCTION_49(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v13);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_269();
  if (!v18 || !v2 || v5 == v3)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_439(v16);
  while (1)
  {
    v17 = OUTLINED_FUNCTION_198();
    sub_1B8D745A4(v17);
    sub_1B8D745A4(v39);
    OUTLINED_FUNCTION_450();
    OUTLINED_FUNCTION_576();
    OUTLINED_FUNCTION_501();
    sub_1B8D92024();
    OUTLINED_FUNCTION_32(v4);
    if (!v18)
    {
      break;
    }

    OUTLINED_FUNCTION_32(v4 + v3);
    if (!v18)
    {
      goto LABEL_43;
    }

    sub_1B8D9207C(v4, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_23:
    OUTLINED_FUNCTION_209_0();
    if (v32)
    {
      v29 = v31;
    }

    if (v30 == 1)
    {
      if (v28)
      {
        if (v29 != 1)
        {
          goto LABEL_46;
        }
      }

      else if (v29)
      {
        goto LABEL_46;
      }
    }

    else if (v29 != v28)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_156_1();
    if (v18)
    {
      v35 = v33 == v34;
    }

    else
    {
      v35 = 0;
    }

    if (!v35 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_46;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v36, MEMORY[0x1E69AAC10]);
    v3 = OUTLINED_FUNCTION_278();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_650();
    if (v3)
    {
      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_309();
      if (!v18)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_576();
  OUTLINED_FUNCTION_32(v4 + v3);
  if (v18)
  {
    OUTLINED_FUNCTION_121();
    sub_1B8D745F8();
LABEL_43:
    v37 = &qword_1EBAB9010;
    v38 = &unk_1B964D800;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_591();
  sub_1B8D920D4(v19);
  OUTLINED_FUNCTION_264_0();
  if (v18)
  {
    v22 = v20 == v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_357();
    v25 = v18 && v23 == v24;
    if (v25 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v26, MEMORY[0x1E69AAC10]);
      v27 = OUTLINED_FUNCTION_508();
      OUTLINED_FUNCTION_527(v27);
      OUTLINED_FUNCTION_114();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_449();
      sub_1B8D745F8();
      sub_1B8D9207C(v4, &qword_1EBAB9008, &qword_1B96A8600);
      if ((v3 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_23;
    }
  }

  sub_1B8D745F8();
  OUTLINED_FUNCTION_182();
  sub_1B8D745F8();
  v37 = &qword_1EBAB9008;
  v38 = &qword_1B96A8600;
LABEL_45:
  sub_1B8D9207C(v4, v37, v38);
LABEL_46:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_197();
  sub_1B8D745F8();
LABEL_47:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6A6A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_295(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800);
  OUTLINED_FUNCTION_49(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_139();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_556();
  if (!v21 || !v4 || v7 == v3)
  {
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_439(v17);
  while (1)
  {
    v18 = OUTLINED_FUNCTION_234();
    sub_1B8D745A4(v18);
    sub_1B8D745A4(v32);
    v19 = *v5;
    if (*(v5 + 8) == 1)
    {
      v19 = qword_1B964E118[v19];
    }

    v20 = *v6;
    if (*(v6 + 8))
    {
      switch(v20)
      {
        case 1:
          if (v19 != 1000)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 2:
          if (v19 != 1001)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 3:
          if (v19 != 1002)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 4:
          if (v19 != 1010)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 5:
          if (v19 != 1011)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 6:
          if (v19 != 1012)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 7:
          if (v19 != 1013)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 8:
          if (v19 != 1014)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 9:
          if (v19 != 1015)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 10:
          if (v19 != 2000)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 11:
          if (v19 != 3000)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 12:
          if (v19 != 3001)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 13:
          if (v19 != 3002)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 14:
          if (v19 != 3003)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 15:
          if (v19 != 3004)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        case 16:
          if (v19 != 4000)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
        default:
          if (v19)
          {
            goto LABEL_70;
          }

          goto LABEL_13;
      }
    }

    if (v19 != v20)
    {
      goto LABEL_70;
    }

LABEL_13:
    OUTLINED_FUNCTION_490();
    OUTLINED_FUNCTION_550();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_550();
    OUTLINED_FUNCTION_32(v2);
    if (v21)
    {
      OUTLINED_FUNCTION_32(v2 + v3);
      if (v21)
      {
        sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_350();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
LABEL_68:
      sub_1B8D745F8();
      sub_1B8D9207C(v2, &qword_1EBAB9010, &unk_1B964D800);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_466();
    sub_1B8D92024();
    OUTLINED_FUNCTION_32(v2 + v3);
    if (v21)
    {
      OUTLINED_FUNCTION_350();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_121();
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_123();
    OUTLINED_FUNCTION_591();
    sub_1B8D920D4(v22);
    OUTLINED_FUNCTION_264_0();
    v25 = v21 && v23 == v24;
    if (!v25 && (sub_1B964C9F0() & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_357();
    v28 = v21 && v26 == v27;
    if (!v28 && (sub_1B964C9F0() & 1) == 0)
    {
      break;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v29, MEMORY[0x1E69AAC10]);
    v30 = OUTLINED_FUNCTION_508();
    OUTLINED_FUNCTION_527(v30);
    OUTLINED_FUNCTION_114();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_492();
    sub_1B8D745F8();
    sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
    if ((v3 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_30:
    OUTLINED_FUNCTION_639();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v31, MEMORY[0x1E69AAC10]);
    v3 = OUTLINED_FUNCTION_705();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_371();
    sub_1B8D745F8();
    if (v3)
    {
      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_659();
      if (!v21)
      {
        continue;
      }
    }

    goto LABEL_71;
  }

  OUTLINED_FUNCTION_318();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_526();
  sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_70:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_195();
  sub_1B8D745F8();
LABEL_71:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6AC34(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_201();
  v7 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(v6);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA0, &unk_1B964D5A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_87(v11, v46);
  v13 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(v12);
  v14 = OUTLINED_FUNCTION_49(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v51 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_300(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_169(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB0, &unk_1B964D5B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53(v23, v47);
  type metadata accessor for Searchfoundation_RFTableColumnDefinition(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_675();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_575();
  v26 = *(v3 + 16);
  OUTLINED_FUNCTION_312();
  if (!v35 || !v26 || v3 == v2)
  {
    goto LABEL_45;
  }

  v48 = v9;
  OUTLINED_FUNCTION_60_0();
  v28 = v3 + v27;
  OUTLINED_FUNCTION_324();
  v49 = v29;
  v30 = v50;
  while (1)
  {
    v31 = OUTLINED_FUNCTION_182();
    sub_1B8D745A4(v31);
    v52 = v28;
    v32 = OUTLINED_FUNCTION_507();
    sub_1B8D745A4(v32);
    OUTLINED_FUNCTION_500();
    v33 = v53;
    OUTLINED_FUNCTION_397();
    sub_1B8D92024();
    OUTLINED_FUNCTION_701();
    OUTLINED_FUNCTION_50(v53);
    if (!v35)
    {
      break;
    }

    OUTLINED_FUNCTION_50(v53 + v2);
    v34 = v53;
    if (!v35)
    {
      goto LABEL_40;
    }

LABEL_29:
    sub_1B8D9207C(v34, &qword_1EBAB8DA8, &qword_1B96DFD10);
    OUTLINED_FUNCTION_551();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v43, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_689();
    v2 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_514();
    sub_1B8D745F8();
    if (v2)
    {
      v9 += v49;
      v28 = v52 + v49;
      if (--v26)
      {
        continue;
      }
    }

    goto LABEL_45;
  }

  OUTLINED_FUNCTION_240();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v53 + v2);
  if (v35)
  {
    OUTLINED_FUNCTION_69();
    sub_1B8D745F8();
    v34 = v53;
LABEL_40:
    v44 = &qword_1EBAB8DB0;
    v45 = &unk_1B964D5B0;
    goto LABEL_44;
  }

  v36 = OUTLINED_FUNCTION_615();
  sub_1B8D920D4(v36);
  v37 = *(v48 + 48);
  sub_1B8D745A4(v30);
  OUTLINED_FUNCTION_702();
  OUTLINED_FUNCTION_544();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_344();
    sub_1B8D745A4(v54);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_637();
    v33 = v50;
    if (*v51 != *v37)
    {
      goto LABEL_37;
    }

    v38 = *(v51 + 8);
    v39 = *(v37 + 8);
    if (*(v37 + 16) == 1)
    {
      switch(v39)
      {
        case 1:
          if (v38 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_22;
        case 2:
          if (v38 != 2)
          {
            goto LABEL_37;
          }

          goto LABEL_22;
        case 3:
          if (v38 != 3)
          {
            goto LABEL_37;
          }

          goto LABEL_22;
        default:
          if (v38)
          {
            goto LABEL_37;
          }

          goto LABEL_22;
      }
    }

    if (v38 != v39)
    {
LABEL_37:
      OUTLINED_FUNCTION_342();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_311();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_69();
      sub_1B8D745F8();
      goto LABEL_43;
    }

LABEL_22:
    if (*(v51 + 20) != *(v37 + 20))
    {
      goto LABEL_37;
    }

    if (*(v51 + 24) != *(v37 + 24))
    {
      goto LABEL_37;
    }

    if (*(v51 + 28) != *(v37 + 28))
    {
      goto LABEL_37;
    }

    if (*(v51 + 29) != *(v37 + 29))
    {
      goto LABEL_37;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v42, MEMORY[0x1E69AAC10]);
    if ((OUTLINED_FUNCTION_588() & 1) == 0)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_342();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_311();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_69();
    sub_1B8D745F8();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_344();
  sub_1B8D745A4(v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_638();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v40, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_353();
    v41 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_69();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_658();
    if ((v41 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_28:
    OUTLINED_FUNCTION_343();
    sub_1B8D745F8();
    v30 = v33;
    OUTLINED_FUNCTION_526();
    v34 = v53;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_510();
LABEL_42:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_658();
  sub_1B8D9207C(v54, &qword_1EBAB8DA0, &unk_1B964D5A0);
LABEL_43:
  OUTLINED_FUNCTION_343();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_526();
  v44 = &qword_1EBAB8DA8;
  v45 = &qword_1B96DFD10;
  v34 = v53;
LABEL_44:
  sub_1B8D9207C(v34, v44, v45);
  sub_1B8D745F8();
  OUTLINED_FUNCTION_432();
  sub_1B8D745F8();
LABEL_45:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6B3B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_214();
  type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_54();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_458();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D98, &qword_1B964D598);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  v30 = type metadata accessor for Searchfoundation_RFTableCell(v13);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_86_0();
  if (!v20 || !v3 || v5 == v2)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_285();
  while (1)
  {
    v16 = OUTLINED_FUNCTION_424();
    sub_1B8D745A4(v16);
    v17 = OUTLINED_FUNCTION_491();
    sub_1B8D745A4(v17);
    v18 = *(v31 + 48);
    OUTLINED_FUNCTION_242_0();
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_57(v4);
    if (!v20)
    {
      break;
    }

    OUTLINED_FUNCTION_57(v4 + v18);
    v19 = v30;
    if (!v20)
    {
      goto LABEL_32;
    }

    sub_1B8D9207C(v4, &qword_1EBAB8D90, &qword_1B964D590);
LABEL_13:
    if (*(v7 + v19[5]) != *(v6 + v19[5]))
    {
      goto LABEL_33;
    }

    v24 = v19[6];
    v25 = *(v7 + v24);
    v26 = (v6 + v24);
    v27 = *v26;
    if (*(v26 + 8) == 1)
    {
      switch(v27)
      {
        case 1:
          if (v25 != 1)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        case 2:
          if (v25 != 2)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        case 3:
          if (v25 != 3)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        default:
          if (v25)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
      }
    }

    if (v25 != v27)
    {
      goto LABEL_33;
    }

LABEL_19:
    if (*(v7 + v19[7]) != *(v6 + v19[7]))
    {
      goto LABEL_33;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v28, MEMORY[0x1E69AAC10]);
    v29 = OUTLINED_FUNCTION_232();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_243_0();
    sub_1B8D745F8();
    if (v29)
    {
      OUTLINED_FUNCTION_225();
      if (!v20)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v4 + v18);
  if (!v20)
  {
    v21 = OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_714(v21);
    OUTLINED_FUNCTION_427();
    static Searchfoundation_RFTableCell.OneOf_Content.== infix(_:_:)();
    v23 = v22;
    v19 = v30;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_376();
    sub_1B8D745F8();
    sub_1B8D9207C(v4, &qword_1EBAB8D90, &qword_1B964D590);
    if ((v23 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_463();
  sub_1B8D745F8();
LABEL_32:
  sub_1B8D9207C(v4, &qword_1EBAB8D98, &qword_1B964D598);
LABEL_33:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_218();
  sub_1B8D745F8();
LABEL_34:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6B84C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v11);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_84(v16, v91);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v19 = *(v10 + 16);
  if (v19 == *(v8 + 16) && v19 && v10 != v8)
  {
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_620();
    v95 = v21;
    while (1)
    {
      v97 = v20;
      sub_1B8D745A4(v20);
      if (!v19)
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
      }

      v96 = v19;
      OUTLINED_FUNCTION_130();
      v22 = OUTLINED_FUNCTION_292();
      sub_1B8D745A4(v22);
      OUTLINED_FUNCTION_210();
      v25 = v25 && v23 == v24;
      if (!v25 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v26 = v99;
      v27 = *(v98 + 48);
      OUTLINED_FUNCTION_645();
      OUTLINED_FUNCTION_645();
      OUTLINED_FUNCTION_98(v99, 1);
      if (v25)
      {
        OUTLINED_FUNCTION_57(v99 + v27);
        v28 = v99;
        if (!v25)
        {
          goto LABEL_130;
        }

        sub_1B8D9207C(v99, &qword_1EBAB9038, &qword_1B9694780);
      }

      else
      {
        OUTLINED_FUNCTION_696();
        OUTLINED_FUNCTION_645();
        OUTLINED_FUNCTION_57(v99 + v27);
        if (v29)
        {
          OUTLINED_FUNCTION_433();
          v28 = v99;
LABEL_130:
          v89 = &qword_1EBAB9040;
          v90 = &unk_1B964D830;
          goto LABEL_131;
        }

        v30 = OUTLINED_FUNCTION_302();
        sub_1B8D920D4(v30);
        OUTLINED_FUNCTION_154();
        v33 = v25 && v31 == v32;
        if (!v33 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_128;
        }

        OUTLINED_FUNCTION_582();
        if (!v25)
        {
          goto LABEL_128;
        }

        OUTLINED_FUNCTION_581();
        if (!v25)
        {
          goto LABEL_128;
        }

        OUTLINED_FUNCTION_580();
        if (!v25)
        {
          goto LABEL_128;
        }

        OUTLINED_FUNCTION_579();
        if (!v25)
        {
          goto LABEL_128;
        }

        v34 = v3[6];
        v35 = *(v2 + 48);
        if (*(v2 + 56) == 1)
        {
          switch(v35)
          {
            case 1:
              if (v34 != 1)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 2:
              if (v34 != 2)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 3:
              if (v34 != 3)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 4:
              if (v34 != 4)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 5:
              if (v34 != 5)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 6:
              if (v34 != 6)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 7:
              if (v34 != 7)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 8:
              if (v34 != 8)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 9:
              if (v34 != 9)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 10:
              if (v34 != 10)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 11:
              if (v34 != 11)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            case 12:
              if (v34 != 12)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
            default:
              if (v34)
              {
                goto LABEL_128;
              }

              goto LABEL_35;
          }
        }

        if (v34 != v35)
        {
LABEL_128:
          OUTLINED_FUNCTION_143();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_202();
          sub_1B8D745F8();
          v89 = &qword_1EBAB9038;
          v90 = &qword_1B9694780;
          v28 = v26;
LABEL_131:
          sub_1B8D9207C(v28, v89, v90);
          break;
        }

LABEL_35:
        OUTLINED_FUNCTION_578();
        if (!v25)
        {
          goto LABEL_128;
        }

        v36 = v3[8];
        v37 = *(v2 + 64);
        v38 = *(v2 + 72);
        v39 = v38 == 1;
        if (v38 == 1)
        {
          switch(v37)
          {
            case 1:
              v39 = v36 == 1;
              if (v36 != 1)
              {
                goto LABEL_128;
              }

              goto LABEL_42;
            case 2:
              v39 = v36 == 2;
              if (v36 != 2)
              {
                goto LABEL_128;
              }

              goto LABEL_42;
            case 3:
              v39 = v36 == 3;
              if (v36 != 3)
              {
                goto LABEL_128;
              }

              goto LABEL_42;
            case 4:
              v39 = v36 == 4;
              if (v36 != 4)
              {
                goto LABEL_128;
              }

              goto LABEL_42;
            case 5:
              v39 = v36 == 5;
              if (v36 != 5)
              {
                goto LABEL_128;
              }

              goto LABEL_42;
            case 6:
              v39 = v36 == 6;
              if (v36 != 6)
              {
                goto LABEL_128;
              }

              goto LABEL_42;
            default:
              if (v36)
              {
                goto LABEL_128;
              }

              goto LABEL_42;
          }
        }

        v39 = v36 == v37;
        if (v36 != v37)
        {
          goto LABEL_128;
        }

LABEL_42:
        v40 = v3[10];
        v41 = v3[11];
        v42 = v41 >> 62;
        v44 = *(v2 + 80);
        v43 = *(v2 + 88);
        if (!v39)
        {
          v46 = 0;
          switch(v42)
          {
            case 0uLL:
              v46 = BYTE6(v41);
              break;
            case 1uLL:
              LODWORD(v46) = HIDWORD(v40) - v40;
              if (__OFSUB__(HIDWORD(v40), v40))
              {
                goto LABEL_138;
              }

              v46 = v46;
              break;
            case 2uLL:
              v48 = *(v40 + 16);
              v47 = *(v40 + 24);
              v49 = __OFSUB__(v47, v48);
              v46 = v47 - v48;
              if (!v49)
              {
                break;
              }

              goto LABEL_137;
            case 3uLL:
              break;
            default:
              JUMPOUT(0);
          }

LABEL_58:
          switch(v43 >> 62)
          {
            case 1uLL:
              LODWORD(v50) = HIDWORD(v44) - v44;
              if (__OFSUB__(HIDWORD(v44), v44))
              {
                goto LABEL_136;
              }

              v50 = v50;
LABEL_67:
              if (v46 != v50)
              {
                goto LABEL_128;
              }

              if (v46 < 1)
              {
                goto LABEL_122;
              }

              break;
            case 2uLL:
              v52 = *(v44 + 16);
              v51 = *(v44 + 24);
              v49 = __OFSUB__(v51, v52);
              v50 = v51 - v52;
              if (!v49)
              {
                goto LABEL_67;
              }

              goto LABEL_135;
            case 3uLL:
              if (v46)
              {
                goto LABEL_128;
              }

              goto LABEL_122;
            default:
              v50 = BYTE6(v43);
              goto LABEL_67;
          }

          switch(v42)
          {
            case 1:
              if (v40 >> 32 < v40)
              {
                goto LABEL_139;
              }

              v93 = v40;
              v73 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v73, v74);
              v75 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v75, v76);
              v77 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v77, v78);
              if (!sub_1B964C070() || !__OFSUB__(v93, sub_1B964C090()))
              {
                goto LABEL_121;
              }

              goto LABEL_142;
            case 2:
              v92 = *(v40 + 24);
              v94 = *(v40 + 16);
              v57 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v57, v58);
              v59 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v59, v60);
              v61 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v61, v62);
              if (sub_1B964C070())
              {
                v63 = sub_1B964C090();
                v64 = v94;
                if (__OFSUB__(v94, v63))
                {
                  goto LABEL_141;
                }
              }

              else
              {
                v64 = v94;
              }

              if (__OFSUB__(v92, v64))
              {
                goto LABEL_140;
              }

LABEL_121:
              sub_1B964C080();
              OUTLINED_FUNCTION_223();
              OUTLINED_FUNCTION_460();
              sub_1B8D91D0C((&v100 + 1), v79, v44, v43);
              v80 = OUTLINED_FUNCTION_195();
              sub_1B8D538A0(v80, v81);
              v82 = OUTLINED_FUNCTION_195();
              sub_1B8D538A0(v82, v83);
              v84 = OUTLINED_FUNCTION_195();
              sub_1B8D538A0(v84, v85);
              v26 = v99;
              if ((v100 & 0x100) != 0)
              {
                goto LABEL_122;
              }

              goto LABEL_128;
            case 3:
              OUTLINED_FUNCTION_434();
              v65 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v65, v66);
              v67 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v67, v68);
              goto LABEL_75;
            default:
              *(&v100 + 1) = v3[10];
              BYTE3(v100) = BYTE2(v40);
              BYTE4(v100) = BYTE3(v40);
              BYTE5(v100) = BYTE4(v40);
              BYTE6(v100) = BYTE5(v40);
              HIBYTE(v100) = BYTE6(v40);
              v101 = HIBYTE(v40);
              v102 = v41;
              v103 = BYTE2(v41);
              v104 = BYTE3(v41);
              v105 = BYTE4(v41);
              v106 = BYTE5(v41);
              v53 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v53, v54);
              v55 = OUTLINED_FUNCTION_195();
              sub_1B8D91FCC(v55, v56);
              v26 = v99;
LABEL_75:
              sub_1B8D91D0C(&v100, &v100 + 1, v44, v43);
              v69 = OUTLINED_FUNCTION_195();
              sub_1B8D538A0(v69, v70);
              v71 = OUTLINED_FUNCTION_195();
              sub_1B8D538A0(v71, v72);
              if ((v100 & 1) == 0)
              {
                goto LABEL_128;
              }

              goto LABEL_122;
          }
        }

        v46 = 0;
        if (v40)
        {
          goto LABEL_58;
        }

        if (v41 != 0xC000000000000000 || v43 >> 62 != 3)
        {
          goto LABEL_58;
        }

        v46 = 0;
        if (v44 || v43 != 0xC000000000000000)
        {
          goto LABEL_58;
        }

LABEL_122:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v86, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_180();
        OUTLINED_FUNCTION_360();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_246();
        sub_1B8D745F8();
        sub_1B8D9207C(v26, &qword_1EBAB9038, &qword_1B9694780);
        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      if (*(v5 + 16) != *(v4 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_546();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v87, MEMORY[0x1E69AAC10]);
      v88 = OUTLINED_FUNCTION_232();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_243_0();
      sub_1B8D745F8();
      if (v88)
      {
        v19 = v96 - 1;
        v6 += v95;
        v20 = v97 + v95;
        if (v96 != 1)
        {
          continue;
        }
      }

      goto LABEL_133;
    }

    OUTLINED_FUNCTION_335();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_218();
    sub_1B8D745F8();
  }

LABEL_133:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D6C1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 7:
            if (v5 != 7)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 8:
            if (v5 != 8)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 9:
            if (v5 != 9)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 10:
            if (v5 != 10)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 11:
            if (v5 != 11)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 12:
            if (v5 != 12)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 13:
            if (v5 != 13)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 14:
            if (v5 != 14)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 15:
            if (v5 != 15)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 16:
            if (v5 != 16)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 17:
            if (v5 != 17)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 18:
            if (v5 != 18)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 19:
            if (v5 != 19)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 20:
            if (v5 != 20)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 21:
            if (v5 != 21)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          case 22:
            if (v5 != 22)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_8;
          default:
            break;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_8:
      if (!--v2)
      {
        return OUTLINED_FUNCTION_229();
      }
    }

    return OUTLINED_FUNCTION_228();
  }

  return OUTLINED_FUNCTION_229();
}

void sub_1B8D6C2F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v8);
      v9 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v9);
      OUTLINED_FUNCTION_74_0();
      v12 = v12 && v10 == v11;
      if (!v12 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_560();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_562();
      v15 = v12 && v13 == v14;
      if (!v15 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_561();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v17)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_24:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6C500(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Searchfoundation_StringDictionary(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8E50, &qword_1B964D650);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_139();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E58, &qword_1B964D658);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  type metadata accessor for Searchfoundation_ImageOption(v13);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v16 = *(v6 + 16);
  OUTLINED_FUNCTION_411();
  if (v21 && v16 && v6 != v3)
  {
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_215();
    v35 = v5;
    while (1)
    {
      v17 = OUTLINED_FUNCTION_292();
      sub_1B8D745A4(v17);
      v18 = OUTLINED_FUNCTION_234();
      sub_1B8D745A4(v18);
      OUTLINED_FUNCTION_155();
      v21 = v21 && v19 == v20;
      if (!v21 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_156_1();
      v24 = v21 && v22 == v23;
      if (!v24 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_573();
      sub_1B8D92024();
      OUTLINED_FUNCTION_501();
      sub_1B8D92024();
      OUTLINED_FUNCTION_42(v5);
      if (v21)
      {
        OUTLINED_FUNCTION_42(v5 + v3);
        if (!v21)
        {
          goto LABEL_30;
        }

        v25 = OUTLINED_FUNCTION_246();
        sub_1B8D9207C(v25, v26, &qword_1B964D650);
      }

      else
      {
        OUTLINED_FUNCTION_459();
        sub_1B8D92024();
        OUTLINED_FUNCTION_42(v5 + v3);
        if (v27)
        {
          OUTLINED_FUNCTION_297();
          sub_1B8D745F8();
LABEL_30:
          v33 = &qword_1EBAB8E58;
          v34 = &qword_1B964D658;
LABEL_32:
          sub_1B8D9207C(v5, v33, v34);
          break;
        }

        v28 = OUTLINED_FUNCTION_254();
        sub_1B8D920D4(v28);
        sub_1B8D7DBBC(*v2, *v4, type metadata accessor for Searchfoundation_KeyValueTuple);
        if ((v29 & 1) == 0)
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_432();
          sub_1B8D745F8();
          v33 = &dword_1EBAB8E50;
          v34 = &qword_1B964D650;
          goto LABEL_32;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v30, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_689();
        v31 = sub_1B964C850();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_514();
        sub_1B8D745F8();
        sub_1B8D9207C(v35, &dword_1EBAB8E50, &qword_1B964D650);
        v5 = v35;
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_546();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v32, MEMORY[0x1E69AAC10]);
      v3 = OUTLINED_FUNCTION_429();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      if (v3)
      {
        OUTLINED_FUNCTION_528();
        OUTLINED_FUNCTION_423();
        if (!v21)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_34:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_94();
  v28 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_21();
  v175 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v34 = OUTLINED_FUNCTION_183(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_438();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_266_0();
  v174 = v36;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44_0();
  v176 = v38;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_266_0();
  v177 = v40;
  v41 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(v41);
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44_0();
  v187 = v43;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_266_0();
  v189 = v45;
  v46 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(v46);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9100, &unk_1B964D8F0);
  OUTLINED_FUNCTION_183(v48);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_654(v50);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9108, &qword_1B9681980);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_185();
  v183 = v52;
  v53 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v53);
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_441();
  v181 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_21();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
  OUTLINED_FUNCTION_183(v57);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_608(v59);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9118, &unk_1B9681970);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_158(v61);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_33_1();
  v188 = v63;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_249();
  v186 = v65;
  OUTLINED_FUNCTION_189_0();
  if (v85 && v66 && v21 != v20)
  {
    OUTLINED_FUNCTION_60_0();
    v67 = 0;
    v167 = (v30 + 8);
    v69 = *(v68 + 72);
    v171 = v28;
    v173 = v22;
    v172 = v70;
    v163 = v69;
    while (1)
    {
      v71 = v25;
      v72 = v69 * v67;
      OUTLINED_FUNCTION_326();
      v75 = v74;
      sub_1B8D745A4(v73 + v72);
      v170 = v75;
      if (v75 == v172)
      {
        break;
      }

      OUTLINED_FUNCTION_326();
      v76 = OUTLINED_FUNCTION_244(&a10);
      v77 = v188;
      sub_1B8D745A4(v76);
      v78 = *(v180 + 48);
      v79 = v185;
      v80 = &qword_1B964D900;
      sub_1B8D92024();
      OUTLINED_FUNCTION_631();
      v81 = OUTLINED_FUNCTION_454();
      v82 = v181;
      OUTLINED_FUNCTION_81(v81, v83);
      if (v85)
      {
        OUTLINED_FUNCTION_37_0(v185 + v78);
        v84 = v185;
        if (!v85)
        {
          goto LABEL_240;
        }

        v25 = v71;
        sub_1B8D9207C(v185, &qword_1EBAB9110, &qword_1B964D900);
        OUTLINED_FUNCTION_529();
      }

      else
      {
        v77 = v179;
        OUTLINED_FUNCTION_631();
        OUTLINED_FUNCTION_37_0(v185 + v78);
        if (v85)
        {
          sub_1B8D745F8();
          v84 = v185;
LABEL_240:
          v158 = &qword_1EBAB9118;
          v159 = &unk_1B9681970;
          goto LABEL_241;
        }

        v25 = v71;
        sub_1B8D920D4(v185 + v78);
        OUTLINED_FUNCTION_428();
        if (v85)
        {
          v88 = v86 == v87;
        }

        else
        {
          v88 = 0;
        }

        if (!v88 && (sub_1B964C9F0() & 1) == 0)
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_202();
          sub_1B8D745F8();
          v158 = &qword_1EBAB9110;
          v159 = &qword_1B964D900;
          v84 = v185;
LABEL_241:
          sub_1B8D9207C(v84, v158, v159);
LABEL_237:
          sub_1B8D745F8();
          OUTLINED_FUNCTION_288();
          sub_1B8D745F8();
          goto LABEL_238;
        }

        OUTLINED_FUNCTION_711();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v89, MEMORY[0x1E69AAC10]);
        v90 = OUTLINED_FUNCTION_509();
        v91 = OUTLINED_FUNCTION_627(v90);
        v82 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID;
        sub_1B8D745F8();
        sub_1B8D745F8();
        sub_1B8D9207C(v185, &qword_1EBAB9110, &qword_1B964D900);
        OUTLINED_FUNCTION_529();
        if ((v91 & 1) == 0)
        {
          goto LABEL_237;
        }
      }

      v92 = *v82;
      v93 = *v188;
      if (*(v188 + 8) == 1)
      {
        switch(v93)
        {
          case 1:
            if (v92 != 1)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 2:
            if (v92 != 2)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 3:
            if (v92 != 3)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 4:
            if (v92 != 4)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 5:
            if (v92 != 5)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 6:
            if (v92 != 6)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 7:
            if (v92 != 7)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 8:
            if (v92 != 8)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 9:
            if (v92 != 9)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 10:
            if (v92 != 10)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 11:
            if (v92 != 11)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 12:
            if (v92 != 12)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 13:
            if (v92 != 13)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 14:
            if (v92 != 14)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 15:
            if (v92 != 15)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 16:
            if (v92 != 16)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 17:
            if (v92 != 17)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 18:
            if (v92 != 18)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          case 19:
            if (v92 != 19)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
          default:
            if (v92)
            {
              goto LABEL_237;
            }

            goto LABEL_24;
        }
      }

      if (v92 != v93)
      {
        goto LABEL_237;
      }

LABEL_24:
      v94 = *(v82 + 2);
      v95 = *(v188 + 16);
      v96 = *(v94 + 16);
      if (v96 != *(v95 + 16))
      {
        goto LABEL_237;
      }

      if (v96 && v94 != v95)
      {
        v97 = 0;
        OUTLINED_FUNCTION_96();
        v99 = *(v98 + 72);
        v165 = v96;
        v169 = v24;
        v168 = v23;
        v166 = v25;
        v164 = v99;
        do
        {
          v100 = v99 * v97;
          OUTLINED_FUNCTION_322();
          sub_1B8D745A4(v101 + v100);
          if (v97 == v96)
          {
            goto LABEL_252;
          }

          OUTLINED_FUNCTION_322();
          v102 = OUTLINED_FUNCTION_244(&v190);
          sub_1B8D745A4(v102);
          v103 = *v80;
          v104 = *v25;
          if (*(v25 + 8) == 1)
          {
            switch(v104)
            {
              case 3:
                if (v103 != 3)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 4:
                if (v103 != 4)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 5:
                if (v103 != 5)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 6:
                if (v103 != 6)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 7:
                if (v103 != 7)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 8:
                if (v103 != 8)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 9:
                if (v103 != 9)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 10:
                if (v103 != 10)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 11:
                if (v103 != 11)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 12:
                if (v103 != 12)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 13:
                if (v103 != 13)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 14:
                if (v103 != 14)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 15:
                if (v103 != 15)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 16:
                if (v103 != 16)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 17:
                if (v103 != 17)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 18:
                if (v103 != 18)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 19:
                if (v103 != 19)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 20:
                if (v103 != 20)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 21:
                if (v103 != 21)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              case 22:
                if (v103 != 22)
                {
                  goto LABEL_236;
                }

                goto LABEL_32;
              default:
                break;
            }
          }

          if (v103 != v104)
          {
            goto LABEL_236;
          }

LABEL_32:
          v105 = v80[2] == v25[2] && v80[3] == v25[3];
          if (!v105 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_236;
          }

          v106 = *(v178 + 48);
          sub_1B8D92024();
          sub_1B8D92024();
          OUTLINED_FUNCTION_32(v183);
          if (v85)
          {
            OUTLINED_FUNCTION_32(v183 + v106);
            if (!v85)
            {
              goto LABEL_243;
            }

            v107 = OUTLINED_FUNCTION_616();
            sub_1B8D9207C(v107, v108, &unk_1B964D8F0);
          }

          else
          {
            sub_1B8D92024();
            OUTLINED_FUNCTION_32(v183 + v106);
            if (v109)
            {
              OUTLINED_FUNCTION_523();
LABEL_243:
              v156 = &qword_1EBAB9108;
              v157 = &qword_1B9681980;
              v139 = v183;
              goto LABEL_235;
            }

            sub_1B8D920D4(v183 + v106);
            v110 = *v182;
            v111 = *v23;
            if (*(v23 + 8) == 1)
            {
              switch(v111)
              {
                case 2:
                  if (v110 != 2)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 3:
                  if (v110 != 3)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 4:
                  if (v110 != 4)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 5:
                  if (v110 != 5)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 6:
                  if (v110 != 6)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 7:
                  if (v110 != 7)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 8:
                  if (v110 != 8)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 9:
                  if (v110 != 9)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 10:
                  if (v110 != 10)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 11:
                  if (v110 != 11)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 12:
                  if (v110 != 12)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 13:
                  if (v110 != 13)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 14:
                  if (v110 != 14)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 15:
                  if (v110 != 15)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 16:
                  if (v110 != 16)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 17:
                  if (v110 != 17)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 18:
                  if (v110 != 18)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                case 19:
                  if (v110 != 19)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_46;
                default:
                  break;
              }
            }

            if (v110 != v111)
            {
LABEL_234:
              sub_1B8D745F8();
              sub_1B8D745F8();
              v156 = &qword_1EBAB9100;
              v157 = &unk_1B964D8F0;
              v139 = v183;
              goto LABEL_235;
            }

LABEL_46:
            v112 = v182[2];
            v113 = v168[2];
            v114 = *(v112 + 16);
            if (v114 != *(v113 + 16))
            {
              goto LABEL_234;
            }

            if (v114 && v112 != v113)
            {
              v115 = 0;
              OUTLINED_FUNCTION_93();
              while (v115 < *(v112 + 16))
              {
                OUTLINED_FUNCTION_320();
                v116 = OUTLINED_FUNCTION_244(&a14);
                sub_1B8D745A4(v116);
                if (v115 >= *(v113 + 16))
                {
                  goto LABEL_250;
                }

                OUTLINED_FUNCTION_320();
                v117 = OUTLINED_FUNCTION_244(&a13);
                sub_1B8D745A4(v117);
                v118 = *v189;
                v119 = *v187;
                if (*(v187 + 8) == 1)
                {
                  switch(v119)
                  {
                    case 7:
                      if (v118 != 7)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 8:
                      if (v118 != 8)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 9:
                      if (v118 != 9)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 10:
                      if (v118 != 10)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 11:
                      if (v118 != 11)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 12:
                      if (v118 != 12)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 13:
                      if (v118 != 13)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 14:
                      if (v118 != 14)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 15:
                      if (v118 != 15)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 16:
                      if (v118 != 16)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 17:
                      if (v118 != 17)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 18:
                      if (v118 != 18)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 19:
                      if (v118 != 19)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 20:
                      if (v118 != 20)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 21:
                      if (v118 != 21)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    case 22:
                      if (v118 != 22)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_55;
                    default:
                      break;
                  }
                }

                if (v118 != v119)
                {
LABEL_233:
                  OUTLINED_FUNCTION_319();
                  sub_1B8D745F8();
                  OUTLINED_FUNCTION_488();
                  sub_1B8D745F8();
                  goto LABEL_234;
                }

LABEL_55:
                OUTLINED_FUNCTION_357();
                if (v85)
                {
                  v122 = v120 == v121;
                }

                else
                {
                  v122 = 0;
                }

                if (!v122 && (sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_233;
                }

                OUTLINED_FUNCTION_524();
                OUTLINED_FUNCTION_0_2();
                sub_1B8D5C8D0(&qword_1EBAB3B38, v123, MEMORY[0x1E69AAC10]);
                v124 = OUTLINED_FUNCTION_712(v187 + v189);
                sub_1B8D745F8();
                sub_1B8D745F8();
                if ((v124 & 1) == 0)
                {
                  goto LABEL_234;
                }

                if (v114 == ++v115)
                {
                  goto LABEL_95;
                }
              }

              __break(1u);
LABEL_250:
              __break(1u);
              goto LABEL_251;
            }

LABEL_95:
            v79 = v185;
            v125 = *(v185 + 24);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_2();
            sub_1B8D5C8D0(&qword_1EBAB3B38, v126, MEMORY[0x1E69AAC10]);
            v23 = v168;
            LOBYTE(v125) = OUTLINED_FUNCTION_525(v182 + v125);
            sub_1B8D745F8();
            OUTLINED_FUNCTION_571();
            sub_1B8D9207C(v183, &qword_1EBAB9100, &unk_1B964D8F0);
            v77 = v171;
            if ((v125 & 1) == 0)
            {
              goto LABEL_236;
            }
          }

          v127 = *(v184 + 48);
          v80 = v77;
          OUTLINED_FUNCTION_515();
          OUTLINED_FUNCTION_515();
          OUTLINED_FUNCTION_75(v177);
          if (v85)
          {
            OUTLINED_FUNCTION_166(v177 + v127, 1);
            if (!v85)
            {
              goto LABEL_245;
            }

            v128 = OUTLINED_FUNCTION_376();
            sub_1B8D9207C(v128, v129, &unk_1B964D8E0);
            OUTLINED_FUNCTION_539();
            v25 = v166;
          }

          else
          {
            OUTLINED_FUNCTION_515();
            OUTLINED_FUNCTION_117(v177 + v127);
            if (v130)
            {
              OUTLINED_FUNCTION_422();
              v160(v174, v77);
LABEL_245:
              sub_1B8D9207C(v177, &qword_1EBAB90F8, &qword_1B9687990);
              OUTLINED_FUNCTION_539();
              goto LABEL_236;
            }

            OUTLINED_FUNCTION_422();
            v131(v175, v177 + v127, v77);
            OUTLINED_FUNCTION_122();
            sub_1B8D5C8D0(&qword_1EBAB9120, v132, MEMORY[0x1E69AA908]);
            OUTLINED_FUNCTION_696();
            v133 = sub_1B964C850();
            v134 = *v167;
            v135 = OUTLINED_FUNCTION_186();
            v134(v135);
            (v134)(v174, v77);
            v136 = OUTLINED_FUNCTION_376();
            sub_1B8D9207C(v136, v137, &unk_1B964D8E0);
            v25 = v166;
            v80 = v173;
            if ((v133 & 1) == 0)
            {
              goto LABEL_236;
            }
          }

          v138 = *(v184 + 48);
          OUTLINED_FUNCTION_515();
          OUTLINED_FUNCTION_515();
          OUTLINED_FUNCTION_75(v176);
          if (v85)
          {
            OUTLINED_FUNCTION_75(v176 + v138);
            v139 = v176;
            if (!v85)
            {
              goto LABEL_247;
            }

            sub_1B8D9207C(v176, &off_1EBAB90F0, &unk_1B964D8E0);
          }

          else
          {
            v140 = v77;
            v80 = v79;
            OUTLINED_FUNCTION_599();
            OUTLINED_FUNCTION_515();
            OUTLINED_FUNCTION_75(v176 + v138);
            if (v141)
            {
              OUTLINED_FUNCTION_422();
              v161 = OUTLINED_FUNCTION_375();
              v162(v161);
              OUTLINED_FUNCTION_539();
              v139 = v176;
LABEL_247:
              v156 = &qword_1EBAB90F8;
              v157 = &qword_1B9687990;
LABEL_235:
              sub_1B8D9207C(v139, v156, v157);
LABEL_236:
              sub_1B8D745F8();
              OUTLINED_FUNCTION_182();
              sub_1B8D745F8();
              goto LABEL_237;
            }

            OUTLINED_FUNCTION_422();
            v142 = OUTLINED_FUNCTION_685();
            v143(v142);
            OUTLINED_FUNCTION_122();
            sub_1B8D5C8D0(&qword_1EBAB9120, v144, MEMORY[0x1E69AA908]);
            OUTLINED_FUNCTION_481();
            v145 = sub_1B964C850();
            OUTLINED_FUNCTION_593();
            v146 = v25;
            v147 = v23;
            v148 = off_1EBAB90F0;
            off_1EBAB90F0(v175, v140);
            v149 = OUTLINED_FUNCTION_375();
            v148(v149);
            v23 = v147;
            v25 = v146;
            sub_1B8D9207C(v176, &off_1EBAB90F0, &unk_1B964D8E0);
            OUTLINED_FUNCTION_539();
            v77 = v140;
            if ((v145 & 1) == 0)
            {
              goto LABEL_236;
            }
          }

          OUTLINED_FUNCTION_524();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v150, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_296();
          v151 = sub_1B964C850();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_526();
          v82 = v186;
          v24 = v169;
          v96 = v165;
          if ((v151 & 1) == 0)
          {
            goto LABEL_237;
          }

          OUTLINED_FUNCTION_660();
          v97 = &unk_1B964D8E1;
          v99 = v164;
        }

        while (&unk_1B964D8E1 != v165);
      }

      sub_1B8D8DD6C(*(v82 + 3), *(v188 + 24), type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);
      if ((v152 & 1) == 0)
      {
        goto LABEL_237;
      }

      sub_1B8D787AC(*(v82 + 4), *(v188 + 32));
      if ((v153 & 1) == 0)
      {
        goto LABEL_237;
      }

      OUTLINED_FUNCTION_530();
      OUTLINED_FUNCTION_621();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v154, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_612();
      OUTLINED_FUNCTION_435();
      v155 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
      sub_1B8D745F8();
      if (v155)
      {
        v67 = v170 + 1;
        v69 = v163;
        if (v170 + 1 != v172)
        {
          continue;
        }
      }

      goto LABEL_238;
    }

LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
  }

  else
  {
LABEL_238:
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D6DF94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_TextColumnSection(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_0();
  if (v16 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_11_1(v11);
    while (1)
    {
      v12 = v5 * v7;
      v13 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v13);
      if (v7 == v6)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_95_0();
      if (!v16)
      {
        goto LABEL_30;
      }

      if (v12)
      {
        v16 = v15 == v14;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        OUTLINED_FUNCTION_299();
        while (v12)
        {
          OUTLINED_FUNCTION_109();
          v19 = v16 && v17 == v18;
          if (!v19 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_108();
          if (v16)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        break;
      }

LABEL_22:
      if (*(v4 + 8) != *(v3 + 8) || (OUTLINED_FUNCTION_553(), !v16))
      {
LABEL_30:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_636();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v20, MEMORY[0x1E69AAC10]);
      v21 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v21)
      {
        OUTLINED_FUNCTION_262();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D6E230(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction(v8);
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_68();
  v12 = type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(v11);
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_473();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_211();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_457(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_84(v19, v80);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F50, &unk_1B96B40A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_171(v21);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33_1();
  v94 = v23;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v24);
  v25 = *(v7 + 16);
  if (v25 != *(v2 + 16) || !v25 || v7 == v2)
  {
LABEL_60:
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_283();
    return;
  }

  OUTLINED_FUNCTION_60_0();
  v87 = v2 + v26;
  v27 = 0;
  v29 = *(v28 + 72);
  v30 = v94;
  v84 = v12;
  v96 = v31;
  v88 = v32;
  v83 = v29;
  while (1)
  {
    v33 = v29 * v27;
    OUTLINED_FUNCTION_315();
    sub_1B8D745A4(v34 + v33);
    if (v27 == v88)
    {
      __break(1u);
      goto LABEL_62;
    }

    v86 = v27;
    OUTLINED_FUNCTION_315();
    sub_1B8D745A4(v87 + v33);
    v35 = *(v93 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_435();
    sub_1B8D92024();
    OUTLINED_FUNCTION_118(v95);
    if (v38)
    {
      OUTLINED_FUNCTION_118(v95 + v35);
      if (!v38)
      {
        goto LABEL_57;
      }

      v36 = OUTLINED_FUNCTION_287();
      sub_1B8D9207C(v36, v37, &unk_1B964D740);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_685();
    sub_1B8D92024();
    OUTLINED_FUNCTION_118(v95 + v35);
    if (v38)
    {
      OUTLINED_FUNCTION_17_0();
      sub_1B8D745F8();
LABEL_57:
      v77 = &qword_1EBAB8F50;
      v78 = &unk_1B96B40A0;
      v79 = v95;
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_146();
    sub_1B8D920D4(v95 + v35);
    if (*v92 != *v91 || *(v92 + 4) != *(v91 + 4) || *(v92 + 8) != *(v91 + 8) || *(v92 + 12) != *(v91 + 12) || (*(v92 + 16) == *(v91 + 16) ? (v39 = *(v92 + 24) == *(v91 + 24)) : (v39 = 0), !v39 && (sub_1B964C9F0() & 1) == 0))
    {
      OUTLINED_FUNCTION_145();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_288();
      sub_1B8D745F8();
      v77 = &qword_1EBAB8F48;
      v78 = &unk_1B964D740;
      v79 = v95;
LABEL_58:
      sub_1B8D9207C(v79, v77, v78);
LABEL_59:
      sub_1B8D745F8();
      sub_1B8D745F8();
      goto LABEL_60;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v40, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_435();
    v35 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_444();
    sub_1B8D745F8();
    sub_1B8D9207C(v95, &qword_1EBAB8F48, &unk_1B964D740);
    if ((v35 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_22:
    sub_1B8D6EE80(*v96, *v30);
    if ((v41 & 1) == 0)
    {
      goto LABEL_59;
    }

    v42 = v96[1];
    v43 = v30[1];
    v44 = *(v42 + 16);
    if (v44 != *(v43 + 16))
    {
      goto LABEL_59;
    }

    if (v44 && v42 != v43)
    {
      break;
    }

LABEL_47:
    sub_1B8D6F6D8(v96[2], v30[2]);
    if ((v73 & 1) == 0)
    {
      goto LABEL_59;
    }

    sub_1B8D6FB5C(v96[3], v30[3]);
    if ((v74 & 1) == 0)
    {
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_621();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v75, MEMORY[0x1E69AAC10]);
    v76 = OUTLINED_FUNCTION_627(v96 + v35);
    sub_1B8D745F8();
    OUTLINED_FUNCTION_287();
    sub_1B8D745F8();
    if (v76)
    {
      v27 = v86 + 1;
      v29 = v83;
      if (v86 + 1 != v88)
      {
        continue;
      }
    }

    goto LABEL_60;
  }

  v45 = 0;
  OUTLINED_FUNCTION_96();
  v48 = v46 + v47;
  v85 = v49 + v47;
  v51 = *(v50 + 72);
  v89 = v6;
  v90 = v3;
  v81 = v51;
  v82 = v48;
  while (1)
  {
    v52 = v51 * v45;
    OUTLINED_FUNCTION_419();
    sub_1B8D745A4(v48 + v52);
    if (v45 == v44)
    {
      break;
    }

    OUTLINED_FUNCTION_419();
    sub_1B8D745A4(v85 + v52);
    v53 = *v6 == *v3 && v6[1] == v3[1];
    if (!v53 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }

    v54 = v89[2];
    v55 = v90[2];
    v56 = *(v54 + 16);
    if (v56 != *(v55 + 16))
    {
      goto LABEL_54;
    }

    if (v56 && v54 != v55)
    {
      OUTLINED_FUNCTION_96();
      v59 = v57 + v58;
      v61 = v60 + v58;
      v63 = *(v62 + 72);
      while (1)
      {
        OUTLINED_FUNCTION_418();
        v64 = OUTLINED_FUNCTION_242_0();
        sub_1B8D745A4(v64);
        OUTLINED_FUNCTION_418();
        v65 = OUTLINED_FUNCTION_472();
        sub_1B8D745A4(v65);
        OUTLINED_FUNCTION_154();
        v68 = v38 && v66 == v67;
        if (!v68 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 16) != *(v4 + 16))
        {
          break;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v69, MEMORY[0x1E69AAC10]);
        v70 = sub_1B964C850();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_690();
        sub_1B8D745F8();
        if ((v70 & 1) == 0)
        {
          goto LABEL_54;
        }

        v61 += v63;
        v59 += v63;
        if (!--v56)
        {
          goto LABEL_45;
        }
      }

      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
LABEL_54:
      OUTLINED_FUNCTION_417();
      sub_1B8D745F8();
      sub_1B8D745F8();
      goto LABEL_59;
    }

LABEL_45:
    v71 = *(v84 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v72, MEMORY[0x1E69AAC10]);
    v6 = v89;
    v3 = v90;
    v35 = OUTLINED_FUNCTION_518(v89 + v71);
    sub_1B8D745F8();
    OUTLINED_FUNCTION_200();
    sub_1B8D745F8();
    v30 = v94;
    if ((v35 & 1) == 0)
    {
      goto LABEL_59;
    }

    ++v45;
    v51 = v81;
    v48 = v82;
    if (v45 == v44)
    {
      goto LABEL_47;
    }
  }

LABEL_62:
  __break(1u);
}

void sub_1B8D6EA80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_54();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_88();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F50, &unk_1B96B40A0);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_35();
  v15 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(v14);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_52();
  if (v25 && v7 && v6 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    v19 = v6 + v18;
    OUTLINED_FUNCTION_431();
    v42 = v20;
    while (1)
    {
      v21 = OUTLINED_FUNCTION_261();
      sub_1B8D745A4(v21);
      v22 = OUTLINED_FUNCTION_234();
      sub_1B8D745A4(v22);
      OUTLINED_FUNCTION_155();
      v25 = v25 && v23 == v24;
      if (!v25 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_224();
      sub_1B8D92024();
      OUTLINED_FUNCTION_452();
      sub_1B8D92024();
      v26 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_81(v26, v27);
      if (v25)
      {
        OUTLINED_FUNCTION_37_0(v3 + v19);
        if (!v25)
        {
          goto LABEL_45;
        }
      }

      else
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_576();
        OUTLINED_FUNCTION_37_0(v3 + v19);
        if (v28)
        {
          OUTLINED_FUNCTION_17_0();
          sub_1B8D745F8();
LABEL_45:
          v40 = &qword_1EBAB8F50;
          v41 = &unk_1B96B40A0;
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_489();
        sub_1B8D920D4(v29);
        OUTLINED_FUNCTION_175();
        if (!v25 || (OUTLINED_FUNCTION_217(), !v25) || (OUTLINED_FUNCTION_469(), !v25) || (OUTLINED_FUNCTION_188_0(), !v25) || ((OUTLINED_FUNCTION_83_0(), v25) ? (v32 = v30 == v31) : (v32 = 0), !v32 && (sub_1B964C9F0() & 1) == 0))
        {
          OUTLINED_FUNCTION_17_0();
          sub_1B8D745F8();
LABEL_43:
          OUTLINED_FUNCTION_17_0();
          sub_1B8D745F8();
          v40 = &qword_1EBAB8F48;
          v41 = &unk_1B964D740;
LABEL_46:
          sub_1B8D9207C(v3, v40, v41);
          break;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v33, MEMORY[0x1E69AAC10]);
        v34 = OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_17_0();
        sub_1B8D745F8();
        if ((v34 & 1) == 0)
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_17_0();
        sub_1B8D745F8();
      }

      sub_1B8D9207C(v3, &qword_1EBAB8F48, &unk_1B964D740);
      OUTLINED_FUNCTION_156_1();
      v37 = v25 && v35 == v36;
      if (!v37 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 32) != *(v4 + 32))
      {
        break;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v38, MEMORY[0x1E69AAC10]);
      v39 = OUTLINED_FUNCTION_279_0();
      OUTLINED_FUNCTION_416();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v39)
      {
        v6 += v42;
        v19 += v42;
        OUTLINED_FUNCTION_194();
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

    OUTLINED_FUNCTION_416();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_48:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6EE80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_252();
  v6 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding(v6);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_138();
  v9 = *(v3 + 16);
  OUTLINED_FUNCTION_231_0();
  if (!v16 || !v9 || v3 == v2)
  {
    goto LABEL_101;
  }

  v10 = 0;
  v103 = 0;
  OUTLINED_FUNCTION_60_0();
  v104 = *(v11 + 72);
  v105 = v3 + v12;
  while (1)
  {
    sub_1B8D745A4(v105 + v104 * v10);
    if (v10 == v9)
    {
      goto LABEL_103;
    }

    v13 = OUTLINED_FUNCTION_531();
    sub_1B8D745A4(v13);
    OUTLINED_FUNCTION_154();
    v16 = v16 && v14 == v15;
    if (!v16 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_125(), !v16))
    {
LABEL_100:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
LABEL_101:
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    }

    if (v17)
    {
      v20 = v18 == v19;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      OUTLINED_FUNCTION_480();
      while (v21)
      {
        OUTLINED_FUNCTION_475();
        if (!v16)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_474();
        if (v16)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
    }

LABEL_24:
    OUTLINED_FUNCTION_545();
    if (!v16)
    {
      switch(v24)
      {
        case 1:
          if (!__OFSUB__(v23, v22))
          {
            goto LABEL_39;
          }

          goto LABEL_106;
        case 2:
          OUTLINED_FUNCTION_250();
          if (!v28)
          {
            goto LABEL_39;
          }

          goto LABEL_107;
        default:
          goto LABEL_39;
      }
    }

    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_421();
    v27 = v16 && v25 >= 3;
    if (!v27 || v5 || v4 != v26)
    {
      break;
    }

LABEL_96:
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v99, MEMORY[0x1E69AAC10]);
    v100 = OUTLINED_FUNCTION_180();
    v4 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_467();
    sub_1B8D745F8();
    if ((v100 & 1) != 0 && ++v10 != v9)
    {
      continue;
    }

    goto LABEL_101;
  }

LABEL_39:
  OUTLINED_FUNCTION_585();
  switch(v34)
  {
    case 1:
      LODWORD(v35) = v31 - v5;
      if (__OFSUB__(v31, v5))
      {
        goto LABEL_104;
      }

      v35 = v35;
LABEL_48:
      if (v33 != v35)
      {
        goto LABEL_100;
      }

      if (v33 < 1)
      {
        goto LABEL_96;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_698();
      if (!v28)
      {
        goto LABEL_48;
      }

      goto LABEL_105;
    case 3:
      if (v33)
      {
        goto LABEL_100;
      }

      goto LABEL_96;
    default:
      v35 = v29;
      goto LABEL_48;
  }

  v36 = v5 >> 32;
  switch(v32)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      if (v66 != v28)
      {
        goto LABEL_108;
      }

      v102 = v65;
      v67 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v67, v68);
      v69 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v69, v70);
      v71 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v71, v72);
      if (sub_1B964C070())
      {
        v73 = sub_1B964C090();
        v74 = v102;
        if (__OFSUB__(v102, v73))
        {
          goto LABEL_111;
        }
      }

      else
      {
        v74 = v102;
      }

      v57 = v5 - v74;
LABEL_80:
      sub_1B964C080();
      OUTLINED_FUNCTION_184();
      v78 = OUTLINED_FUNCTION_198();
      sub_1B8D538A0(v78, v79);
      v80 = OUTLINED_FUNCTION_198();
      sub_1B8D538A0(v80, v81);
      v82 = OUTLINED_FUNCTION_198();
      sub_1B8D538A0(v82, v83);
      v103 = v57;
      if (v57)
      {
        goto LABEL_124;
      }

      if ((v106 & 1) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_96;
    case 2:
      v50 = *(v30 + 16);
      v101 = *(v30 + 24);
      v51 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v51, v52);
      v53 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v53, v54);
      v55 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v55, v56);
      if (sub_1B964C070() && __OFSUB__(v50, sub_1B964C090()))
      {
        goto LABEL_110;
      }

      v28 = __OFSUB__(v101, v50);
      v57 = v101 - v50;
      if (!v28)
      {
        goto LABEL_80;
      }

      goto LABEL_109;
    case 3:
      OUTLINED_FUNCTION_434();
      if (!v58)
      {
        goto LABEL_76;
      }

      if (v58 == 2)
      {
        v59 = *(v5 + 16);
        v60 = *(v5 + 24);
        v61 = OUTLINED_FUNCTION_198();
        sub_1B8D91FCC(v61, v62);
        v63 = sub_1B964C070();
        if (v63)
        {
          v64 = sub_1B964C090();
          if (__OFSUB__(v59, v64))
          {
            goto LABEL_117;
          }

          v63 += v59 - v64;
        }

        if (__OFSUB__(v60, v59))
        {
          goto LABEL_115;
        }

        sub_1B964C080();
        if (!v63)
        {
          goto LABEL_121;
        }

LABEL_94:
        v88 = OUTLINED_FUNCTION_119();
        v89 = v63;
        goto LABEL_95;
      }

      if (v36 < v5)
      {
        goto LABEL_112;
      }

      v84 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v84, v85);
      v86 = sub_1B964C070();
      if (v86)
      {
        v87 = sub_1B964C090();
        if (__OFSUB__(v5, v87))
        {
          goto LABEL_118;
        }

        v86 += v5 - v87;
      }

      sub_1B964C080();
      if (v86)
      {
LABEL_88:
        v88 = OUTLINED_FUNCTION_80_0();
LABEL_95:
        v96 = memcmp(v88, v89, v90);
        v97 = OUTLINED_FUNCTION_198();
        sub_1B8D538A0(v97, v98);
        if (v96)
        {
          goto LABEL_100;
        }

        goto LABEL_96;
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      MEMORY[0x1BFADCCF0](v103);
      __break(1u);
      return;
    default:
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_291();
      if (!v45)
      {
LABEL_76:
        OUTLINED_FUNCTION_10_1(v37, v38, v39, v40, v41, v42, v43, v44);
        if (OUTLINED_FUNCTION_47_0(v75, v76, v77))
        {
          goto LABEL_100;
        }

        goto LABEL_96;
      }

      if (v45 == 1)
      {
        if (v36 < v5)
        {
          goto LABEL_113;
        }

        v46 = OUTLINED_FUNCTION_198();
        sub_1B8D91FCC(v46, v47);
        v48 = sub_1B964C070();
        if (v48)
        {
          v49 = sub_1B964C090();
          if (__OFSUB__(v5, v49))
          {
            goto LABEL_119;
          }

          v48 += v5 - v49;
        }

        sub_1B964C080();
        if (!v48)
        {
          goto LABEL_123;
        }

        goto LABEL_88;
      }

      v91 = *(v5 + 16);
      v92 = *(v5 + 24);
      v93 = OUTLINED_FUNCTION_198();
      sub_1B8D91FCC(v93, v94);
      v63 = sub_1B964C070();
      if (v63)
      {
        v95 = sub_1B964C090();
        if (__OFSUB__(v91, v95))
        {
          goto LABEL_116;
        }

        v63 += v91 - v95;
      }

      if (__OFSUB__(v92, v91))
      {
        goto LABEL_114;
      }

      sub_1B964C080();
      if (!v63)
      {
        goto LABEL_122;
      }

      goto LABEL_94;
  }
}

void sub_1B8D6F4F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v8);
      v9 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v9);
      OUTLINED_FUNCTION_74_0();
      v12 = v12 && v10 == v11;
      if (!v12 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v13 = OUTLINED_FUNCTION_532();
      sub_1B8D861C0(v13, v14, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction);
      if ((v15 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v17)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_417();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_18:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6F6D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v9 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(v9);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_295(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F58, &qword_1B964D750);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_84(v14, v34);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F60, &qword_1B964D758);
  OUTLINED_FUNCTION_49(v15);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(v17);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33_1();
  v37 = v19;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_269();
  if (!v21 || !v2 || v6 == v3)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_215();
  v35 = v7;
  while (1)
  {
    sub_1B8D745A4(v8);
    OUTLINED_FUNCTION_717(v6);
    OUTLINED_FUNCTION_490();
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_32(v5);
    if (v21)
    {
      OUTLINED_FUNCTION_32(v5 + v3);
      if (!v21)
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_489();
    sub_1B8D92024();
    OUTLINED_FUNCTION_32(v5 + v3);
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_591();
    sub_1B8D920D4(v22);
    OUTLINED_FUNCTION_268();
    if (v21)
    {
      v25 = v23 == v24;
    }

    else
    {
      v25 = 0;
    }

    if (!v25 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_36;
    }

    v26 = *(v4 + 16);
    v27 = *(v36 + 16);
    if (*(v36 + 24) == 1)
    {
      switch(v27)
      {
        case 1:
          if (v26 != 1)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 2:
          if (v26 != 2)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 3:
          if (v26 != 3)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 4:
          if (v26 != 4)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 5:
          if (v26 != 5)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        default:
          if (v26)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
      }
    }

    if (v26 != v27)
    {
LABEL_36:
      OUTLINED_FUNCTION_41_0();
      sub_1B8D745F8();
LABEL_37:
      OUTLINED_FUNCTION_41_0();
      sub_1B8D745F8();
      v32 = &qword_1EBAB8F58;
      v33 = &qword_1B964D750;
      goto LABEL_41;
    }

LABEL_21:
    v28 = *(v35 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v29, MEMORY[0x1E69AAC10]);
    v30 = OUTLINED_FUNCTION_527(v4 + v28);
    OUTLINED_FUNCTION_41_0();
    sub_1B8D745F8();
    if ((v30 & 1) == 0)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_41_0();
    sub_1B8D745F8();
LABEL_23:
    sub_1B8D9207C(v5, &qword_1EBAB8F58, &qword_1B964D750);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v31, MEMORY[0x1E69AAC10]);
    v4 = v37;
    OUTLINED_FUNCTION_245();
    v3 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_650();
    if (v3)
    {
      OUTLINED_FUNCTION_528();
      OUTLINED_FUNCTION_309();
      if (!v21)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  OUTLINED_FUNCTION_41_0();
  sub_1B8D745F8();
LABEL_40:
  v32 = &qword_1EBAB8F60;
  v33 = &qword_1B964D758;
LABEL_41:
  sub_1B8D9207C(v5, v32, v33);
  sub_1B8D745F8();
  OUTLINED_FUNCTION_721();
LABEL_42:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D6FB5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_0();
  if (v14 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_11_1(v9);
    while (1)
    {
      v10 = v3 * v5;
      v11 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v11);
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0 || ((OUTLINED_FUNCTION_83_0(), v14) ? (v17 = v15 == v16) : (v17 = 0), !v17 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_95_0(), !v14)))
      {
LABEL_37:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_38;
      }

      if (v10)
      {
        v20 = v19 == v18;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        OUTLINED_FUNCTION_299();
        while (v10)
        {
          OUTLINED_FUNCTION_109();
          v23 = v14 && v21 == v22;
          if (!v23 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_108();
          if (v14)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
        break;
      }

LABEL_32:
      OUTLINED_FUNCTION_636();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v24, MEMORY[0x1E69AAC10]);
      v25 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v25)
      {
        OUTLINED_FUNCTION_262();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

uint64_t sub_1B8D6FD68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 4:
            if (v5 != 4)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 5:
            if (v5 != 5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 6:
            if (v5 != 6)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 7:
            if (v5 != 7)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 8:
            if (v5 != 8)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 9:
            if (v5 != 9)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 10:
            if (v5 != 10)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 11:
            if (v5 != 11)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 12:
            if (v5 != 12)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return OUTLINED_FUNCTION_229();
      }
    }

    return OUTLINED_FUNCTION_228();
  }

  return OUTLINED_FUNCTION_229();
}

void sub_1B8D6FED0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v8 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v9);
      v10 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v10);
      OUTLINED_FUNCTION_150();
      if (v8)
      {
        switch(v11)
        {
          case 5:
            if (v12 != 5)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 6:
            if (v12 != 6)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 7:
            if (v12 != 7)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 8:
            if (v12 != 8)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 9:
            if (v12 != 9)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 10:
            if (v12 != 10)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 11:
            if (v12 != 11)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 12:
            if (v12 != 12)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 13:
            if (v12 != 13)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 14:
            if (v12 != 14)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 15:
            if (v12 != 15)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 16:
            if (v12 != 16)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 17:
            if (v12 != 17)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 18:
            if (v12 != 18)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 19:
            if (v12 != 19)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          case 20:
            if (v12 != 20)
            {
              goto LABEL_47;
            }

            goto LABEL_10;
          default:
            break;
        }
      }

      if (v12 != v11)
      {
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_188_0();
      if (!v8)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v13, MEMORY[0x1E69AAC10]);
      v14 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v14)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

LABEL_47:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_48:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D70158(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v8);
      v9 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v9);
      OUTLINED_FUNCTION_150();
      if (v14)
      {
        switch(v10)
        {
          case 5:
            if (v11 != 5)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 6:
            if (v11 != 6)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 7:
            if (v11 != 7)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 8:
            if (v11 != 8)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 9:
            if (v11 != 9)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 10:
            if (v11 != 10)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 11:
            if (v11 != 11)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 12:
            if (v11 != 12)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 13:
            if (v11 != 13)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 14:
            if (v11 != 14)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 15:
            if (v11 != 15)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 16:
            if (v11 != 16)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 17:
            if (v11 != 17)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 18:
            if (v11 != 18)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 19:
            if (v11 != 19)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          case 20:
            if (v11 != 20)
            {
              goto LABEL_52;
            }

            goto LABEL_10;
          default:
            break;
        }
      }

      if (v11 != v10)
      {
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_83_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_587();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_561();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

LABEL_52:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_53:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D703F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_82_0();
  v109 = type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(v8);
  OUTLINED_FUNCTION_30_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_68();
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(v13);
  OUTLINED_FUNCTION_30_1();
  v102 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v88 - v21);
  v23 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v24 = OUTLINED_FUNCTION_49(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_457(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v26);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_84(v28, v88[0]);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C8, &unk_1B9683B30);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_103();
  type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v30);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33_1();
  v108 = v32;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_675();
  OUTLINED_FUNCTION_260();
  if (!v50 || !v35 || v6 == v2)
  {
LABEL_59:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
    return;
  }

  v100 = v34;
  v88[1] = v10;
  OUTLINED_FUNCTION_60_0();
  v37 = v6 + v36;
  v38 = 0;
  v96 = v2 + v36;
  v97 = v5;
  v40 = *(v39 + 72);
  v105 = v19;
  v93 = v37;
  v94 = v14;
  v99 = v41;
  v92 = v40;
  while (1)
  {
    v42 = v40 * v38;
    OUTLINED_FUNCTION_410();
    sub_1B8D745A4(v43 + v42);
    if (v38 == v99)
    {
      __break(1u);
      goto LABEL_61;
    }

    v98 = v38;
    OUTLINED_FUNCTION_410();
    sub_1B8D745A4(v96 + v42);
    v44 = *(v106 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_515();
    v45 = OUTLINED_FUNCTION_602();
    v46 = v107;
    OUTLINED_FUNCTION_81(v45, v47);
    if (v50)
    {
      OUTLINED_FUNCTION_37_0(v5 + v44);
      if (!v50)
      {
        goto LABEL_56;
      }

      goto LABEL_23;
    }

    v48 = v5;
    v49 = v104;
    OUTLINED_FUNCTION_271();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v48 + v44);
    if (v50)
    {
      OUTLINED_FUNCTION_28_0();
      sub_1B8D745F8();
      v5 = v48;
LABEL_56:
      v85 = &qword_1EBAB90C8;
      v86 = &unk_1B9683B30;
      v87 = v5;
LABEL_57:
      sub_1B8D9207C(v87, v85, v86);
LABEL_58:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_425();
      sub_1B8D745F8();
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_408();
    v51 = v48 + v44;
    v52 = v103;
    sub_1B8D920D4(v51);
    if (*v49 != *v52 || *(v49 + 4) != *(v52 + 4) || *(v49 + 8) != *(v52 + 8) || *(v49 + 12) != *(v52 + 12) || (*(v49 + 16) == *(v52 + 16) ? (v53 = *(v49 + 24) == *(v52 + 24)) : (v53 = 0), !v53 && (sub_1B964C9F0() & 1) == 0))
    {
      OUTLINED_FUNCTION_28_0();
      sub_1B8D745F8();
LABEL_54:
      OUTLINED_FUNCTION_28_0();
      sub_1B8D745F8();
      v85 = &qword_1EBAB90C0;
      v86 = &unk_1B964D8B0;
      v87 = v97;
      goto LABEL_57;
    }

    v44 = *(v46 + 36);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v54, MEMORY[0x1E69AAC10]);
    v55 = OUTLINED_FUNCTION_612();
    v56 = OUTLINED_FUNCTION_627(v55);
    OUTLINED_FUNCTION_28_0();
    sub_1B8D745F8();
    if ((v56 & 1) == 0)
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_28_0();
    sub_1B8D745F8();
    v5 = v97;
LABEL_23:
    sub_1B8D9207C(v5, &qword_1EBAB90C0, &unk_1B964D8B0);
    v57 = *(*v7 + 16);
    v58 = v105;
    if (v57 != *(*v108 + 16))
    {
      goto LABEL_58;
    }

    if (v57 && *v7 != *v108)
    {
      break;
    }

LABEL_47:
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v83, MEMORY[0x1E69AAC10]);
    v84 = OUTLINED_FUNCTION_518(v7 + v44);
    sub_1B8D745F8();
    OUTLINED_FUNCTION_424();
    sub_1B8D745F8();
    if (v84)
    {
      v38 = v98 + 1;
      v5 = v97;
      v40 = v92;
      if (v98 + 1 != v99)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  v59 = 0;
  OUTLINED_FUNCTION_96();
  v62 = v60 + v61;
  v95 = v63 + v61;
  v65 = *(v64 + 72);
  v101 = v22;
  v90 = v60 + v61;
  v91 = v57;
  v89 = v65;
  while (1)
  {
    v44 = v65 * v59;
    OUTLINED_FUNCTION_407();
    sub_1B8D745A4(v62 + v65 * v59);
    if (v59 == v57)
    {
      break;
    }

    OUTLINED_FUNCTION_407();
    OUTLINED_FUNCTION_626(v95);
    v66 = *v22 == *v58 && v22[1] == v58[1];
    if (!v66 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_52;
    }

    v67 = v101[2];
    v68 = v105[2];
    v69 = *(v67 + 16);
    if (v69 != *(v68 + 16))
    {
      goto LABEL_52;
    }

    if (v69 && v67 != v68)
    {
      OUTLINED_FUNCTION_96();
      v72 = v70 + v71;
      v74 = v73 + v71;
      v44 = *(v75 + 72);
      while (1)
      {
        OUTLINED_FUNCTION_405();
        v76 = OUTLINED_FUNCTION_242_0();
        sub_1B8D745A4(v76);
        OUTLINED_FUNCTION_405();
        v77 = OUTLINED_FUNCTION_537();
        sub_1B8D745A4(v77);
        OUTLINED_FUNCTION_154();
        v80 = v50 && v78 == v79;
        if (!v80 && (sub_1B964C9F0() & 1) == 0 || *(v4 + 16) != *(v3 + 16))
        {
          break;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v81, MEMORY[0x1E69AAC10]);
        LOBYTE(v62) = OUTLINED_FUNCTION_706();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_511();
        sub_1B8D745F8();
        if ((v62 & 1) == 0)
        {
          goto LABEL_52;
        }

        v74 += v44;
        v72 += v44;
        if (!--v69)
        {
          goto LABEL_45;
        }
      }

      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
LABEL_52:
      OUTLINED_FUNCTION_404();
      sub_1B8D745F8();
      sub_1B8D745F8();
      goto LABEL_58;
    }

LABEL_45:
    OUTLINED_FUNCTION_524();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v82, MEMORY[0x1E69AAC10]);
    v22 = v101;
    v58 = v105;
    OUTLINED_FUNCTION_435();
    sub_1B964C850();
    OUTLINED_FUNCTION_305();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_233();
    sub_1B8D745F8();
    v57 = v91;
    if ((v62 & 1) == 0)
    {
      goto LABEL_58;
    }

    ++v59;
    v65 = v89;
    v62 = v90;
    if (v59 == v91)
    {
      goto LABEL_47;
    }
  }

LABEL_61:
  __break(1u);
}

void sub_1B8D70BB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v8);
      v9 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v9);
      OUTLINED_FUNCTION_74_0();
      v12 = v12 && v10 == v11;
      if (!v12 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v13 = OUTLINED_FUNCTION_532();
      sub_1B8D861C0(v13, v14, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);
      if ((v15 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_305();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v2)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_404();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_18:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D70D84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_165();
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_171(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E8, &qword_1B964D8D8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = OUTLINED_FUNCTION_87(v15, v54);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(v16);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_295(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_139();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9130, &unk_1B9681960);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(v22);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_260();
  if (v33 && v25 && v4 != v2)
  {
    v56 = v5;
    OUTLINED_FUNCTION_45();
    v57 = v2 + v26;
    v58 = *(v27 + 72);
    v59 = v4 + v26;
    v60 = v28;
    while (1)
    {
      sub_1B8D745A4(v59 + v58 * v8);
      if (v8 == v60)
      {
        break;
      }

      v29 = OUTLINED_FUNCTION_505(v57);
      sub_1B8D745A4(v29);
      v30 = *(v61 + 48);
      sub_1B8D92024();
      sub_1B8D92024();
      OUTLINED_FUNCTION_32(v6);
      if (v33)
      {
        OUTLINED_FUNCTION_32(v6 + v30);
        if (!v33)
        {
          goto LABEL_67;
        }

        v31 = OUTLINED_FUNCTION_486();
        sub_1B8D9207C(v31, v32, &qword_1B964D910);
      }

      else
      {
        OUTLINED_FUNCTION_425();
        sub_1B8D92024();
        OUTLINED_FUNCTION_32(v6 + v30);
        if (v33)
        {
          OUTLINED_FUNCTION_297();
          sub_1B8D745F8();
LABEL_67:
          v52 = &qword_1EBAB9130;
          v53 = &unk_1B9681960;
LABEL_71:
          sub_1B8D9207C(v6, v52, v53);
LABEL_72:
          sub_1B8D745F8();
          OUTLINED_FUNCTION_294();
          sub_1B8D745F8();
          goto LABEL_73;
        }

        OUTLINED_FUNCTION_471();
        OUTLINED_FUNCTION_653();
        sub_1B8D920D4(v34);
        OUTLINED_FUNCTION_500();
        sub_1B8D92024();
        OUTLINED_FUNCTION_651();
        v35 = OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_166(v35, v36);
        if (v33)
        {
          OUTLINED_FUNCTION_117(v62 + v30);
          v5 = v56;
          if (!v33)
          {
            goto LABEL_69;
          }

          sub_1B8D9207C(v62, &qword_1EBAB90E0, &qword_1B964D8D0);
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_117(v62 + v30);
          if (v37)
          {
            sub_1B8D745F8();
LABEL_69:
            sub_1B8D9207C(v62, &qword_1EBAB90E8, &qword_1B964D8D8);
LABEL_70:
            sub_1B8D745F8();
            OUTLINED_FUNCTION_288();
            sub_1B8D745F8();
            v52 = &qword_1EBAB9128;
            v53 = &qword_1B964D910;
            goto LABEL_71;
          }

          v38 = OUTLINED_FUNCTION_147();
          v30 = v39;
          OUTLINED_FUNCTION_714(v38);
          OUTLINED_FUNCTION_427();
          static Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID.== infix(_:_:)();
          v55 = v40;
          sub_1B8D745F8();
          sub_1B8D745F8();
          sub_1B8D9207C(v30, &qword_1EBAB90E0, &qword_1B964D8D0);
          v5 = v56;
          if ((v55 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v41, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
        OUTLINED_FUNCTION_368();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_472();
        sub_1B8D745F8();
        sub_1B8D9207C(v6, &qword_1EBAB9128, &qword_1B964D910);
        if ((v30 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      v42 = *v3;
      v43 = *v5;
      v44 = *(*v3 + 16);
      if (v44 != *(*v5 + 16))
      {
        goto LABEL_72;
      }

      if (v44 && v42 != v43)
      {
        v45 = (v42 + 32);
        v46 = (v43 + 40);
        do
        {
          v48 = *v45;
          v45 += 2;
          v47 = v48;
          v49 = *(v46 - 1);
          if (*v46 == 1)
          {
            switch(v49)
            {
              case 7:
                if (v47 != 7)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 8:
                if (v47 != 8)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 9:
                if (v47 != 9)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 10:
                if (v47 != 10)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 11:
                if (v47 != 11)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 12:
                if (v47 != 12)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 13:
                if (v47 != 13)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 14:
                if (v47 != 14)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 15:
                if (v47 != 15)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 16:
                if (v47 != 16)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 17:
                if (v47 != 17)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 18:
                if (v47 != 18)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 19:
                if (v47 != 19)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 20:
                if (v47 != 20)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 21:
                if (v47 != 21)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              case 22:
                if (v47 != 22)
                {
                  goto LABEL_72;
                }

                goto LABEL_28;
              default:
                break;
            }
          }

          if (v47 != v49)
          {
            goto LABEL_72;
          }

LABEL_28:
          v46 += 16;
        }

        while (--v44);
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v50, MEMORY[0x1E69AAC10]);
      v51 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_303();
      sub_1B8D745F8();
      if ((v51 & 1) != 0 && ++v8 != v60)
      {
        continue;
      }

      goto LABEL_73;
    }

    __break(1u);
  }

  else
  {
LABEL_73:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D71540(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_54();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_88();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92B0, &unk_1B964DA90);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_35();
  v15 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v14);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_52();
  if (v25 && v7 && v6 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    v19 = v6 + v18;
    OUTLINED_FUNCTION_431();
    v38 = v20;
    while (1)
    {
      v21 = OUTLINED_FUNCTION_261();
      sub_1B8D745A4(v21);
      v22 = OUTLINED_FUNCTION_234();
      sub_1B8D745A4(v22);
      OUTLINED_FUNCTION_155();
      v25 = v25 && v23 == v24;
      if (!v25 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_224();
      sub_1B8D92024();
      OUTLINED_FUNCTION_452();
      sub_1B8D92024();
      v26 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_81(v26, v27);
      if (v25)
      {
        OUTLINED_FUNCTION_37_0(v3 + v19);
        if (!v25)
        {
          goto LABEL_39;
        }

        sub_1B8D9207C(v3, &qword_1EBAB92A8, &qword_1B9653B40);
      }

      else
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_625();
        OUTLINED_FUNCTION_37_0(v3 + v19);
        if (v28)
        {
          OUTLINED_FUNCTION_222();
          sub_1B8D745F8();
LABEL_39:
          v36 = &qword_1EBAB92B0;
          v37 = &unk_1B964DA90;
LABEL_40:
          sub_1B8D9207C(v3, v36, v37);
          break;
        }

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_175();
        if (!v25 || (OUTLINED_FUNCTION_217(), !v25) || (OUTLINED_FUNCTION_469(), !v25) || (OUTLINED_FUNCTION_188_0(), !v25))
        {
          OUTLINED_FUNCTION_394();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v36 = &qword_1EBAB92A8;
          v37 = &qword_1B9653B40;
          goto LABEL_40;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v29, MEMORY[0x1E69AAC10]);
        v30 = OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_394();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        sub_1B8D9207C(v3, &qword_1EBAB92A8, &qword_1B9653B40);
        if ((v30 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_156_1();
      v33 = v25 && v31 == v32;
      if (!v33 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 32) != *(v4 + 32))
      {
        break;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v34, MEMORY[0x1E69AAC10]);
      v35 = OUTLINED_FUNCTION_279_0();
      OUTLINED_FUNCTION_393();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v35)
      {
        v6 += v38;
        v19 += v38;
        OUTLINED_FUNCTION_194();
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_393();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_42:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D719A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v9 = OUTLINED_FUNCTION_82_0();
  v10 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D8, &qword_1B9651200);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_35();
  v16 = type metadata accessor for Argos_Protos_Productdatapb_Product(v15);
  v17 = OUTLINED_FUNCTION_18_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_52();
  if (!v23 || !v8 || v7 == v2)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_215();
  v32 = v10;
  while (1)
  {
    v19 = OUTLINED_FUNCTION_292();
    sub_1B8D745A4(v19);
    v20 = OUTLINED_FUNCTION_234();
    sub_1B8D745A4(v20);
    OUTLINED_FUNCTION_573();
    sub_1B8D92024();
    OUTLINED_FUNCTION_501();
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v4);
    if (!v23)
    {
      break;
    }

    OUTLINED_FUNCTION_48(v4 + v2);
    if (!v23)
    {
      goto LABEL_27;
    }

    v21 = OUTLINED_FUNCTION_246();
    sub_1B8D9207C(v21, v22, &unk_1B964DAB0);
LABEL_15:
    sub_1B8D7BC20(*v6, *v5);
    if ((v27 & 1) == 0)
    {
      goto LABEL_30;
    }

    v28 = v6[1] == v5[1] && v6[2] == v5[2];
    if (!v28 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_546();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v29, MEMORY[0x1E69AAC10]);
    v2 = OUTLINED_FUNCTION_429();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_245();
    sub_1B8D745F8();
    if (v2)
    {
      OUTLINED_FUNCTION_528();
      OUTLINED_FUNCTION_194();
      if (!v23)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v4 + v2);
  if (v23)
  {
    OUTLINED_FUNCTION_523();
LABEL_27:
    v30 = &qword_1EBAB92D8;
    v31 = &qword_1B9651200;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_676();
  sub_1B8D920D4(v24);
  if (*(v3 + *(v10 + 20)) == *(&unk_1B964DAB0 + *(v10 + 20)) || (, , OUTLINED_FUNCTION_543(), sub_1B8DC5BD0(), OUTLINED_FUNCTION_649(), , (&unk_1B964DAB0 & 1) != 0))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v25, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_472();
    v26 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_514();
    sub_1B8D745F8();
    sub_1B8D9207C(v4, &qword_1EBAB92D0, &unk_1B964DAB0);
    v10 = v32;
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  sub_1B8D745F8();
  sub_1B8D745F8();
  v30 = &qword_1EBAB92D0;
  v31 = &unk_1B964DAB0;
LABEL_29:
  sub_1B8D9207C(v4, v30, v31);
LABEL_30:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_197();
  sub_1B8D745F8();
LABEL_31:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D71E14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_105();
  v40 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_139();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_567();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_100();
  v19 = *(v5 + 16);
  OUTLINED_FUNCTION_695();
  if (!v30 || !v19 || v5 == v2)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_60_0();
  v21 = v5 + v20;
  v22 = v2 + v20;
  v36 = (v8 + 32);
  v37 = (v8 + 8);
  v39 = *(v23 + 72);
  while (1)
  {
    v24 = OUTLINED_FUNCTION_353();
    sub_1B8D745A4(v24);
    v25 = OUTLINED_FUNCTION_686();
    sub_1B8D745A4(v25);
    v26 = *v4;
    v27 = *v6;
    if (*(v6 + 8) == 1)
    {
      switch(v27)
      {
        case 1:
          if (v26 != 1)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 2:
          if (v26 != 2)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 3:
          if (v26 != 3)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 4:
          if (v26 != 4)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 5:
          if (v26 != 5)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 6:
          if (v26 != 6)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 7:
          if (v26 != 7)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 8:
          if (v26 != 8)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 9:
          if (v26 != 9)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 10:
          if (v26 != 10)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 11:
          if (v26 != 11)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 12:
          if (v26 != 12)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 13:
          if (v26 != 13)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        case 14:
          if (v26 != 14)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
        default:
          if (v26)
          {
            goto LABEL_59;
          }

          goto LABEL_11;
      }
    }

    if (v26 != v27)
    {
LABEL_59:
      OUTLINED_FUNCTION_389();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      goto LABEL_63;
    }

LABEL_11:
    OUTLINED_FUNCTION_286();
    sub_1B8D92024();
    OUTLINED_FUNCTION_648();
    v28 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_77(v28, v29);
    if (!v30)
    {
      break;
    }

    OUTLINED_FUNCTION_32(v3 + v2);
    if (!v30)
    {
      OUTLINED_FUNCTION_389();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      goto LABEL_62;
    }

    sub_1B8D9207C(v3, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_18:
    v33 = v4[2];
    v34 = v6[2];
    if (*(v6 + 24) == 1)
    {
      if (v34)
      {
        if (v34 == 1)
        {
          if (v33 != 1)
          {
            goto LABEL_59;
          }
        }

        else if (v33 != 2)
        {
          goto LABEL_59;
        }
      }

      else if (v33)
      {
        goto LABEL_59;
      }
    }

    else if (v33 != v34)
    {
      goto LABEL_59;
    }

    if (*(v4 + 25) != *(v6 + 25))
    {
      goto LABEL_59;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v35, MEMORY[0x1E69AAC10]);
    v2 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_196();
    sub_1B8D745F8();
    if (v2)
    {
      v22 += v39;
      v21 += v39;
      if (--v19)
      {
        continue;
      }
    }

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_459();
  sub_1B8D92024();
  OUTLINED_FUNCTION_32(v3 + v2);
  if (!v30)
  {
    (*v36)(v12, v3 + v2, v40);
    OUTLINED_FUNCTION_25_1();
    sub_1B8D5C8D0(&qword_1EBAB8F40, v31, MEMORY[0x1E69AAB20]);
    v38 = sub_1B964C850();
    v32 = *v37;
    (*v37)(v12, v40);
    v32(&qword_1EBAB8F20, v40);
    sub_1B8D9207C(v3, &qword_1EBAB8F20, &qword_1B964D720);
    if ((v38 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_18;
  }

  sub_1B8D745F8();
  OUTLINED_FUNCTION_200();
  sub_1B8D745F8();
  (*v37)(&qword_1EBAB8F20, v40);
LABEL_62:
  sub_1B8D9207C(v3, &qword_1EBAB8F28, &unk_1B9683B20);
LABEL_63:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D72448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_105();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_1();
  if (v13 && v7 && v6 != v3)
  {
    OUTLINED_FUNCTION_26_0();
    while (1)
    {
      OUTLINED_FUNCTION_255();
      v14 = OUTLINED_FUNCTION_113();
      sub_1B8D745A4(v14);
      if (*v5 != *v4 || *(v5 + 4) != *(v4 + 4))
      {
        break;
      }

      v15 = *(v5 + 8);
      v16 = *(v4 + 8);
      if (*(v4 + 16) == 1)
      {
        switch(v16)
        {
          case 1:
            if (v15 != 1)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          case 2:
            if (v15 != 2)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          case 3:
            if (v15 != 3)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          case 4:
            if (v15 != 4)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          case 5:
            if (v15 != 5)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          case 6:
            if (v15 != 6)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          case 7:
            if (v15 != 7)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          case 8:
            if (v15 != 8)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
          default:
            if (v15)
            {
              goto LABEL_32;
            }

            goto LABEL_13;
        }
      }

      if (v15 != v16)
      {
        break;
      }

LABEL_13:
      OUTLINED_FUNCTION_628();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v17, MEMORY[0x1E69AAC10]);
      v18 = OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      if (v18)
      {
        OUTLINED_FUNCTION_39_0();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

LABEL_32:
    OUTLINED_FUNCTION_202();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
  }

LABEL_33:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D72648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_533(*MEMORY[0x1E69E9840]);
  v29 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v28);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_484(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v32);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_170(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_185();
  v138 = v37;
  v38 = OUTLINED_FUNCTION_201();
  v139 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v38);
  OUTLINED_FUNCTION_30_1();
  v134 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44_0();
  v142 = v41;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_381(v43);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9080, &unk_1B964D870);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  v45 = OUTLINED_FUNCTION_103();
  v137 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(v45);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_21();
  v135 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9088, &unk_1B9692400);
  OUTLINED_FUNCTION_183(v48);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_164();
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9090, &unk_1B964D880);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_185();
  v140 = v51;
  v52 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(v52);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_33_1();
  v141 = v54;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_249();
  v133 = v56;
  OUTLINED_FUNCTION_189_0();
  if (!v73 || !v58 || v27 == v25)
  {
    goto LABEL_89;
  }

  v126 = v57;
  v127 = v21;
  v125 = v35;
  v119 = 0;
  OUTLINED_FUNCTION_60_0();
  v129 = v27 + v59;
  OUTLINED_FUNCTION_666();
  v128 = *(v61 + 72);
  v62 = v133;
  v132 = v63;
  while (1)
  {
    v64 = v60;
    OUTLINED_FUNCTION_385();
    v65 = OUTLINED_FUNCTION_244(&a17);
    sub_1B8D745A4(v65);
    v131 = v64;
    if (v64 == v132)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
    }

    OUTLINED_FUNCTION_385();
    v66 = OUTLINED_FUNCTION_244(&a15);
    sub_1B8D745A4(v66);
    v67 = *(v136 + 48);
    v68 = v140;
    sub_1B8D92024();
    OUTLINED_FUNCTION_651();
    v69 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_81(v69, v70);
    if (!v73)
    {
      break;
    }

    OUTLINED_FUNCTION_37_0(v68 + v67);
    if (!v73)
    {
      OUTLINED_FUNCTION_72();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_294();
LABEL_82:
      sub_1B8D745F8();
      sub_1B8D9207C(v140, &qword_1EBAB9090, &unk_1B964D880);
      goto LABEL_89;
    }

    v71 = v68;
    v72 = v29;
    sub_1B8D9207C(v71, &qword_1EBAB9088, &unk_1B9692400);
LABEL_76:
    v29 = v72;
    OUTLINED_FUNCTION_536();
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v114, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_435();
    v115 = sub_1B964C850();
    OUTLINED_FUNCTION_72();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_294();
    sub_1B8D745F8();
    if (v115)
    {
      v60 = v131 + 1;
      if (v131 + 1 != v132)
      {
        continue;
      }
    }

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_513();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_37_0(v68 + v67);
  if (v73)
  {
    OUTLINED_FUNCTION_72();
    sub_1B8D745F8();
    sub_1B8D745F8();
    goto LABEL_82;
  }

  v74 = v68;
  v72 = v29;
  OUTLINED_FUNCTION_470(v74);
  OUTLINED_FUNCTION_683();
  sub_1B8D920D4(v75);
  v76 = v20 + *(v130 + 48);
  sub_1B8D745A4(v62);
  OUTLINED_FUNCTION_485();
  sub_1B8D745A4(v77);
  OUTLINED_FUNCTION_670();
  if (v73)
  {
    v80 = v78 == v79;
  }

  else
  {
    v80 = 0;
  }

  if (!v80 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_87;
  }

  v81 = *(v20 + 16);
  v82 = *(v76 + 16);
  v83 = *(v81 + 16);
  if (v83 != *(v82 + 16))
  {
    goto LABEL_87;
  }

  if (!v83 || v81 == v82)
  {
LABEL_75:
    type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v112, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_612();
    OUTLINED_FUNCTION_594();
    v113 = sub_1B964C850();
    sub_1B8D745F8();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
    sub_1B8D745F8();
    sub_1B8D9207C(v140, &qword_1EBAB9088, &unk_1B9692400);
    v62 = v133;
    if ((v113 & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_76;
  }

  v84 = 0;
  OUTLINED_FUNCTION_93();
  v123 = v81 + v85;
  v122 = v82 + v85;
  v124 = v20;
  v121 = v82;
  v120 = v86;
  while (1)
  {
    if (v84 >= *(v81 + 16))
    {
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_142();
    v87 = OUTLINED_FUNCTION_448(&a10);
    sub_1B8D745A4(v87);
    if (v84 >= *(v82 + 16))
    {
      goto LABEL_92;
    }

    OUTLINED_FUNCTION_142();
    v88 = OUTLINED_FUNCTION_448(&a9);
    sub_1B8D745A4(v88);
    OUTLINED_FUNCTION_268();
    if (v73)
    {
      v91 = v89 == v90;
    }

    else
    {
      v91 = 0;
    }

    if (!v91 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_86;
    }

    v92 = v138;
    v93 = *(v125 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v92);
    if (v73)
    {
      OUTLINED_FUNCTION_90(v92 + v93);
      v20 = v124;
      if (!v73)
      {
        goto LABEL_84;
      }

      v94 = OUTLINED_FUNCTION_601();
      sub_1B8D9207C(v94, v95, &qword_1B964D860);
      goto LABEL_72;
    }

    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v92 + v93);
    if (v96)
    {
      break;
    }

    v97 = OUTLINED_FUNCTION_412();
    v98 = v143;
    sub_1B8D920D4(v97);
    v20 = v124;
    if (*v145 != *v98)
    {
      goto LABEL_80;
    }

    v99 = *(v145 + 8) == *(v143 + 8) && *(v145 + 16) == *(v143 + 16);
    if (!v99 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_80;
    }

    v100 = *(v145 + 24) == *(v143 + 24) && *(v145 + 32) == *(v143 + 32);
    if (!v100 && (sub_1B964C9F0() & 1) == 0 || *(v145 + 40) != *(v143 + 40) || *(v145 + 48) != *(v143 + 48))
    {
      goto LABEL_80;
    }

    v102 = *(v143 + 56);
    v101 = *(v143 + 64);
    if (*(v145 + 56) || (*(v145 + 64) == 0xC000000000000000 ? (v103 = v101 >> 62 == 3) : (v103 = 0), !v103 || v102 || v101 != 0xC000000000000000))
    {
      switch(v101 >> 62)
      {
        case 1uLL:
          LODWORD(v104) = HIDWORD(v102) - v102;
          if (__OFSUB__(HIDWORD(v102), v102))
          {
            goto LABEL_93;
          }

          v104 = v104;
LABEL_63:
          if (!v104)
          {
            break;
          }

          goto LABEL_80;
        case 2uLL:
          v106 = *(v102 + 16);
          v105 = *(v102 + 24);
          v107 = __OFSUB__(v105, v106);
          v104 = v105 - v106;
          if (!v107)
          {
            goto LABEL_63;
          }

          goto LABEL_94;
        case 3uLL:
          break;
        default:
          v104 = BYTE6(v101);
          goto LABEL_63;
      }
    }

    v108 = *(v145 + 72) == *(v143 + 72) && *(v145 + 80) == *(v143 + 80);
    if (!v108 && (sub_1B964C9F0() & 1) == 0 || *(v145 + 88) != *(v143 + 88) || *(v145 + 96) != *(v143 + 96))
    {
LABEL_80:
      OUTLINED_FUNCTION_377();
      sub_1B8D745F8();
      sub_1B8D745F8();
      v116 = &qword_1EBAB9070;
      v117 = &qword_1B964D860;
      v118 = v138;
      goto LABEL_85;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v109, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
    OUTLINED_FUNCTION_369();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_246();
    sub_1B8D745F8();
    sub_1B8D9207C(v138, &qword_1EBAB9070, &qword_1B964D860);
    if ((v98 & 1) == 0)
    {
      goto LABEL_86;
    }

LABEL_72:
    if (*(v144 + 16) != *(v142 + 16))
    {
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_546();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v110, MEMORY[0x1E69AAC10]);
    v111 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_245();
    sub_1B8D745F8();
    v82 = v121;
    if ((v111 & 1) == 0)
    {
      goto LABEL_87;
    }

    if (v120 == ++v84)
    {
      goto LABEL_75;
    }
  }

  sub_1B8D745F8();
LABEL_84:
  v116 = &qword_1EBAB9078;
  v117 = &qword_1B964D868;
  v118 = v92;
LABEL_85:
  sub_1B8D9207C(v118, v116, v117);
LABEL_86:
  OUTLINED_FUNCTION_374();
  sub_1B8D745F8();
  sub_1B8D745F8();
LABEL_87:
  sub_1B8D745F8();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_200();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_718();
  sub_1B8D9207C(v140, &qword_1EBAB9088, &unk_1B9692400);
LABEL_88:
  OUTLINED_FUNCTION_72();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_294();
  sub_1B8D745F8();
LABEL_89:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7391C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v8 = OUTLINED_FUNCTION_533(*MEMORY[0x1E69E9840]);
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_654(v16);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_103();
  type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(v18);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_584();
  if (v26 && v7 && v3 != v2)
  {
    v50 = v5;
    OUTLINED_FUNCTION_60_0();
    v22 = v3 + v21;
    v23 = v2 + v21;
    v46 = *(v24 + 72);
    v47 = v6;
    v48 = v4;
    while (1)
    {
      sub_1B8D745A4(v22);
      if (!v7)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
      }

      OUTLINED_FUNCTION_142();
      v25 = OUTLINED_FUNCTION_292();
      sub_1B8D745A4(v25);
      v26 = *v4 == *v6 && *(v4 + 8) == *(v6 + 8);
      if (!v26 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v27 = *(v51 + 48);
      sub_1B8D92024();
      OUTLINED_FUNCTION_594();
      sub_1B8D92024();
      OUTLINED_FUNCTION_117(v50);
      if (v26)
      {
        OUTLINED_FUNCTION_57(v50 + v27);
        if (!v26)
        {
          goto LABEL_62;
        }

        v28 = OUTLINED_FUNCTION_444();
        sub_1B8D9207C(v28, v29, &qword_1B964D860);
        v30 = v7;
        v6 = v47;
        v4 = v48;
      }

      else
      {
        OUTLINED_FUNCTION_485();
        sub_1B8D92024();
        OUTLINED_FUNCTION_57(v50 + v27);
        if (v31)
        {
          sub_1B8D745F8();
LABEL_62:
          sub_1B8D9207C(v50, &qword_1EBAB9078, &qword_1B964D868);
          break;
        }

        sub_1B8D920D4(v50 + v27);
        v30 = v7;
        v6 = v47;
        v4 = v48;
        if (*v49 != *v13)
        {
          goto LABEL_60;
        }

        v32 = *(v49 + 8) == *(v13 + 8) && *(v49 + 16) == *(v13 + 16);
        if (!v32 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_60;
        }

        v33 = *(v49 + 24) == *(v13 + 24) && *(v49 + 32) == *(v13 + 32);
        if (!v33 && (sub_1B964C9F0() & 1) == 0 || *(v49 + 40) != *(v13 + 40) || *(v49 + 48) != *(v13 + 48))
        {
          goto LABEL_60;
        }

        v34 = *(v13 + 56);
        v35 = *(v13 + 64);
        if (*(v49 + 56) || (*(v49 + 64) == 0xC000000000000000 ? (v36 = v35 >> 62 == 3) : (v36 = 0), !v36 || v34 || v35 != 0xC000000000000000))
        {
          switch(v35 >> 62)
          {
            case 1uLL:
              LODWORD(v37) = HIDWORD(v34) - v34;
              if (__OFSUB__(HIDWORD(v34), v34))
              {
                goto LABEL_67;
              }

              v37 = v37;
LABEL_46:
              if (!v37)
              {
                break;
              }

              goto LABEL_60;
            case 2uLL:
              v39 = *(v34 + 16);
              v38 = *(v34 + 24);
              v40 = __OFSUB__(v38, v39);
              v37 = v38 - v39;
              if (!v40)
              {
                goto LABEL_46;
              }

              goto LABEL_66;
            case 3uLL:
              break;
            default:
              v37 = BYTE6(v35);
              goto LABEL_46;
          }
        }

        v41 = *(v49 + 72) == *(v13 + 72) && *(v49 + 80) == *(v13 + 80);
        if (!v41 && (sub_1B964C9F0() & 1) == 0 || *(v49 + 88) != *(v13 + 88) || *(v49 + 96) != *(v13 + 96))
        {
LABEL_60:
          sub_1B8D745F8();
          OUTLINED_FUNCTION_427();
          sub_1B8D745F8();
          sub_1B8D9207C(v50, &qword_1EBAB9070, &qword_1B964D860);
          break;
        }

        v42 = *(v9 + 52);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v43, MEMORY[0x1E69AAC10]);
        LOBYTE(v42) = OUTLINED_FUNCTION_627(v49 + v42);
        OUTLINED_FUNCTION_377();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_375();
        sub_1B8D745F8();
        sub_1B8D9207C(v50, &qword_1EBAB9070, &qword_1B964D860);
        if ((v42 & 1) == 0)
        {
          break;
        }
      }

      if (*(v4 + 16) != *(v6 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_524();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v44, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_296();
      OUTLINED_FUNCTION_435();
      v45 = sub_1B964C850();
      OUTLINED_FUNCTION_374();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_526();
      if (v45)
      {
        v7 = v30 - 1;
        v23 += v46;
        v22 += v46;
        if (v30 != 1)
        {
          continue;
        }
      }

      goto LABEL_64;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_64:
  OUTLINED_FUNCTION_498();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D74338(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v10);
      v11 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_445();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_174();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_568();
      if (!v14 || *(v4 + 28) != *(v3 + 28) || *(v4 + 32) != *(v3 + 32))
      {
        break;
      }

      OUTLINED_FUNCTION_716();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_23:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D745A4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_280();
  v3(v2);
  OUTLINED_FUNCTION_59_1();
  v4 = OUTLINED_FUNCTION_432();
  v5(v4);
  return v1;
}

uint64_t sub_1B8D745F8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1B8D7464C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_TableColumnAlignment(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v10 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v11);
      v12 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v12);
      OUTLINED_FUNCTION_665();
      if (v10)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            if (v13 != 1)
            {
              break;
            }
          }

          else if (v13 != 2)
          {
            break;
          }
        }

        else if (v13)
        {
          break;
        }
      }

      else if (v13 != v14)
      {
        break;
      }

      OUTLINED_FUNCTION_476();
      if (v10)
      {
        if (v16)
        {
          if (v16 == 1)
          {
            if (v15 != 1)
            {
              break;
            }
          }

          else if (v15 != 2)
          {
            break;
          }
        }

        else if (v15)
        {
          break;
        }
      }

      else if (v15 != v16)
      {
        break;
      }

      if (*(v4 + 25) != *(v3 + 25))
      {
        break;
      }

      OUTLINED_FUNCTION_561();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v17, MEMORY[0x1E69AAC10]);
      v18 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v18)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_35:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D748F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_252();
  v7 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v7);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43();
  if (!v13 || !v2 || v6 == v3)
  {
    goto LABEL_101;
  }

  OUTLINED_FUNCTION_51_0(v10);
  while (1)
  {
    v11 = OUTLINED_FUNCTION_236();
    sub_1B8D745A4(v11);
    v12 = OUTLINED_FUNCTION_275();
    sub_1B8D745A4(v12);
    if (*v5 != *v4 || (*(v5 + 8) == *(v4 + 8) ? (v13 = *(v5 + 16) == *(v4 + 16)) : (v13 = 0), !v13 && (sub_1B964C9F0() & 1) == 0 || (*(v5 + 24) == *(v4 + 24) ? (v14 = *(v5 + 32) == *(v4 + 32)) : (v14 = 0), !v14 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 40) != *(v4 + 40) || *(v5 + 48) != *(v4 + 48))))
    {
LABEL_100:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
LABEL_101:
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    }

    v15 = *(v5 + 64);
    v17 = *(v4 + 56);
    v16 = *(v4 + 64);
    OUTLINED_FUNCTION_161();
    if (!v13)
    {
      switch(v20)
      {
        case 1:
          if (!__OFSUB__(v19, v18))
          {
            goto LABEL_34;
          }

LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          break;
        case 2:
          OUTLINED_FUNCTION_250();
          if (!v24)
          {
            goto LABEL_34;
          }

          goto LABEL_104;
        default:
          goto LABEL_34;
      }

LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
    }

    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_421();
    v23 = v13 && v21 >= 3;
    if (!v23 || v17 || v16 != v22)
    {
      break;
    }

LABEL_88:
    v88 = *(v5 + 72) == *(v4 + 72) && *(v5 + 80) == *(v4 + 80);
    if (!v88 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 88) != *(v4 + 88) || *(v5 + 96) != *(v4 + 96))
    {
      goto LABEL_100;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v89, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_369();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_253();
    sub_1B8D745F8();
    if (v3)
    {
      OUTLINED_FUNCTION_56();
      if (!v13)
      {
        continue;
      }
    }

    goto LABEL_101;
  }

LABEL_34:
  OUTLINED_FUNCTION_160();
  switch(v30)
  {
    case 1:
      LODWORD(v31) = v27 - v17;
      if (__OFSUB__(v27, v17))
      {
        goto LABEL_102;
      }

      v31 = v31;
LABEL_43:
      if (v29 != v31)
      {
        goto LABEL_100;
      }

      if (v29 < 1)
      {
        goto LABEL_88;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_420();
      if (!v24)
      {
        goto LABEL_43;
      }

      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    case 3:
      if (v29)
      {
        goto LABEL_100;
      }

      goto LABEL_88;
    default:
      v31 = v25;
      goto LABEL_43;
  }

  v32 = v17 >> 32;
  switch(v28)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      if (v60 != v24)
      {
        goto LABEL_105;
      }

      v61 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v61, v62);
      v63 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v63, v64);
      v65 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v65, v66);
      if (!sub_1B964C070())
      {
        goto LABEL_73;
      }

      sub_1B964C090();
      OUTLINED_FUNCTION_497();
      if (!v24)
      {
        goto LABEL_73;
      }

      goto LABEL_108;
    case 2:
      v46 = *(v26 + 16);
      v47 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v47, v48);
      v49 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v49, v50);
      v51 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v51, v52);
      if (sub_1B964C070() && __OFSUB__(v46, sub_1B964C090()))
      {
        goto LABEL_107;
      }

      OUTLINED_FUNCTION_453();
      if (v24)
      {
        goto LABEL_106;
      }

LABEL_73:
      LOBYTE(v3) = v15;
      sub_1B964C080();
      OUTLINED_FUNCTION_22_2();
      v67 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v67, v68);
      v69 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v69, v70);
      v71 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v71, v72);
      if ((v90 & 1) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_88;
    case 3:
      OUTLINED_FUNCTION_434();
      if (!v53)
      {
        goto LABEL_71;
      }

      if (v53 == 2)
      {
        v54 = *(v17 + 16);
        v55 = *(v17 + 24);
        v56 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v56, v57);
        v58 = sub_1B964C070();
        if (v58)
        {
          v59 = sub_1B964C090();
          if (__OFSUB__(v54, v59))
          {
            goto LABEL_113;
          }

          v58 += v54 - v59;
        }

        if (__OFSUB__(v55, v54))
        {
          goto LABEL_112;
        }

        sub_1B964C080();
        if (!v58)
        {
          goto LABEL_120;
        }

        goto LABEL_86;
      }

      if (v32 < v17)
      {
        goto LABEL_109;
      }

      v73 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v73, v74);
      v75 = sub_1B964C070();
      if (v75)
      {
        v76 = sub_1B964C090();
        if (__OFSUB__(v17, v76))
        {
          goto LABEL_115;
        }

        v75 += v17 - v76;
      }

      sub_1B964C080();
      if (!v75)
      {
        goto LABEL_119;
      }

      goto LABEL_80;
    default:
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_291();
      if (!v41)
      {
LABEL_71:
        if (OUTLINED_FUNCTION_9_1(v33, v34, v35, v36, v37, v38, v39, v40))
        {
          goto LABEL_100;
        }

        goto LABEL_88;
      }

      if (v41 == 1)
      {
        if (v32 < v17)
        {
          goto LABEL_110;
        }

        v42 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v42, v43);
        v44 = sub_1B964C070();
        if (v44)
        {
          v45 = sub_1B964C090();
          if (__OFSUB__(v17, v45))
          {
            goto LABEL_116;
          }

          v44 += v17 - v45;
        }

        sub_1B964C080();
        if (!v44)
        {
          goto LABEL_118;
        }

LABEL_80:
        v77 = OUTLINED_FUNCTION_80_0();
        goto LABEL_87;
      }

      v80 = *(v17 + 16);
      v81 = *(v17 + 24);
      v82 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v82, v83);
      v84 = sub_1B964C070();
      if (v84)
      {
        v85 = sub_1B964C090();
        if (__OFSUB__(v80, v85))
        {
          goto LABEL_114;
        }

        v84 += v80 - v85;
      }

      if (__OFSUB__(v81, v80))
      {
        goto LABEL_111;
      }

      sub_1B964C080();
      if (v84)
      {
LABEL_86:
        v77 = OUTLINED_FUNCTION_102_0();
LABEL_87:
        LODWORD(v3) = memcmp(v77, v78, v79);
        v86 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v86, v87);
        if (v3)
        {
          goto LABEL_100;
        }

        goto LABEL_88;
      }

      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      return;
  }
}