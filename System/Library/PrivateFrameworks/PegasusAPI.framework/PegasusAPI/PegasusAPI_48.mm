uint64_t sub_1B91A3B64(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7240, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A3BFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7010);
  __swift_project_value_buffer(v0, qword_1EBAC7010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "disable_client_library_search";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_ranking_overrides";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "internal_signals";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "library_search_terms";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "music_ranking_influence_impact_info";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.decodeMessage<A>(decoder:)()
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
        sub_1B964C400();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91A3F5C(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91A4010(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91A40B0(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A3F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);
  return sub_1B964C580();
}

uint64_t sub_1B91A4010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0);
  sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);
  return sub_1B964C570();
}

uint64_t sub_1B91A40B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  sub_1B8CD2AC8(&qword_1EBAB8D50, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo, protocol conformance descriptor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v26 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v25 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  if (*v3 != 1 || (result = sub_1B964C670(), !v4))
  {
    v23 = v9;
    v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1B8D9207C(v16, &qword_1EBAC71C0, "R#\v");
    }

    else
    {
      sub_1B91A7968();
      sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);
      sub_1B964C740();
      result = sub_1B91A7A10();
      if (v4)
      {
        return result;
      }
    }

    if (!*(*(v3 + 8) + 16) || (result = sub_1B964C6E0(), !v4))
    {
      v20 = v23;
      if (!*(*(v3 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0), sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm), OUTLINED_FUNCTION_204_4(), result = sub_1B964C730(), !v4))
      {
        v21 = v26;
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v21, 1, v20) == 1)
        {
          sub_1B8D9207C(v21, &qword_1EBAC71C8, "R#\v");
        }

        else
        {
          sub_1B91A7968();
          sub_1B8CD2AC8(&qword_1EBAB8D50, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo, protocol conformance descriptor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo);
          OUTLINED_FUNCTION_204_4();
          sub_1B964C740();
          result = sub_1B91A7A10();
          if (v4)
          {
            return result;
          }
        }

        return sub_1B964C290();
      }
    }
  }

  return result;
}

void static Apple_Parsec_Siri_V2alpha_ClientSignals.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v52 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v51 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7220, "R#\v");
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_79();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7228, "V#\v");
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v49 - v23;
  if (*v1 != *v0)
  {
    goto LABEL_28;
  }

  v49[0] = v6;
  v50 = v13;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  v53 = v0;
  v49[1] = v25;
  v26 = *(v21 + 48);
  sub_1B8F1B8B8();
  v27 = v53;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v24, 1, v14);
  if (!v28)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_178(&v24[v26], 1, v14);
    if (!v28)
    {
      sub_1B91A7968();
      v32 = static Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.== infix(_:_:)(v2, v18);
      sub_1B91A7A10();
      OUTLINED_FUNCTION_186();
      sub_1B91A7A10();
      sub_1B8D9207C(v24, &qword_1EBAC71C0, "R#\v");
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_13;
    }

    sub_1B91A7A10();
LABEL_10:
    v29 = &qword_1EBAC7228;
    v30 = "V#\v";
    v31 = v24;
LABEL_11:
    sub_1B8D9207C(v31, v29, v30);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_178(&v24[v26], 1, v14);
  if (!v28)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v24, &qword_1EBAC71C0, "R#\v");
LABEL_13:
  if (sub_1B8D6123C(*(v1 + 1), *(v27 + 1)))
  {
    sub_1B8D70158(*(v1 + 2), *(v27 + 2));
    if (v33)
    {
      v34 = v50;
      v35 = *(v10 + 48);
      sub_1B8F1B8B8();
      v36 = v34;
      sub_1B8F1B8B8();
      v37 = OUTLINED_FUNCTION_602();
      v38 = v52;
      OUTLINED_FUNCTION_178(v37, v39, v52);
      if (v28)
      {
        OUTLINED_FUNCTION_178(v34 + v35, 1, v38);
        if (v28)
        {
          sub_1B8D9207C(v34, &qword_1EBAC71C8, "R#\v");
LABEL_20:
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_67();
          sub_1B8CD2AC8(v40, v41, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
          goto LABEL_28;
        }
      }

      else
      {
        v42 = v51;
        sub_1B8F1B8B8();
        OUTLINED_FUNCTION_178(v36 + v35, 1, v38);
        if (!v43)
        {
          OUTLINED_FUNCTION_26_16();
          v44 = v49[0];
          sub_1B91A7968();
          sub_1B8D5C668(*v42, *v44);
          if (v45)
          {
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_67();
            sub_1B8CD2AC8(v46, v47, MEMORY[0x1E69AAC10]);
            v48 = sub_1B964C850();
            sub_1B91A7A10();
            OUTLINED_FUNCTION_541_0();
            sub_1B91A7A10();
            sub_1B8D9207C(v36, &qword_1EBAC71C8, "R#\v");
            if ((v48 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_20;
          }

          sub_1B91A7A10();
          sub_1B91A7A10();
          v29 = &qword_1EBAC71C8;
          v30 = "R#\v";
          goto LABEL_25;
        }

        sub_1B91A7A10();
      }

      v29 = &qword_1EBAC7220;
      v30 = "R#\v";
LABEL_25:
      v31 = v36;
      goto LABEL_11;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91A4BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A4C60(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A4CD0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientSignals);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A4D68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7028);
  __swift_project_value_buffer(v0, qword_1EBAC7028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "item_type";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_str";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ranking_only";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8D10390();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B91AC3DC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if (!sub_1B8D92198(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  v10 = sub_1B8CD2AC8(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B91A523C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A52BC(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A532C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A53C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7040);
  __swift_project_value_buffer(v0, qword_1EBAC7040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "library_result_text_match_min_score";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "library_result_universal_score_multiplier";
  *(v10 + 8) = 41;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "library_result_typed_score_multipliers";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pims_recommendation_score_multiplier";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.decodeMessage<A>(decoder:)()
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
        sub_1B964C490();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91AF790(v3, v4, v5, v6, v7, &qword_1EBAC7240, v8, v9);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0), sub_1B8CD2AC8(&qword_1EBAC7240, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4))
  {
    return 0;
  }

  sub_1B8D6FED0(*(v3 + 8), *(v2 + 8));
  if ((v6 & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  v9 = sub_1B8CD2AC8(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B91A5998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A5A18(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A5A88(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A5B20()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7058);
  __swift_project_value_buffer(v0, qword_1EBAC7058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shared_user_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_error_code";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_67();
  v8 = sub_1B8CD2AC8(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B91A5F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A5FB4(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A6024(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A60BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7070);
  __swift_project_value_buffer(v0, qword_1EBAC7070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dynamite_client_state_errors";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_prioritize_classical_playback";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nls_container_id";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "did_server_infer_app_bundle_id";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "should_shuffle_classical";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "search_box_string";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91A6454(v3, v4, v5, v6);
        break;
      case 2:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0);
  sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0), sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (v2[8] != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        if (v2[32] != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          if (v2[33] != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioIntentDetails.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  sub_1B8D68748(v3, *v4);
  if ((v5 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 32) != *(v1 + 32) || *(v2 + 33) != *(v1 + 33))
  {
    return 0;
  }

  v10 = *(v2 + 40) == *(v1 + 40) && *(v2 + 48) == *(v1 + 48);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  v13 = sub_1B8CD2AC8(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B91A67EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A686C(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A68DC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A6974()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7088);
  __swift_project_value_buffer(v0, qword_1EBAC7088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_playable_in_apple_music_classical";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siri_explanation_text";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nls_id";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioItemDetails.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*(v2 + 8), *(v3 + 8)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  v9 = sub_1B8CD2AC8(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B91A6E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A6EA8(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A6F18(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A6FB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70A0);
  __swift_project_value_buffer(v0, qword_1EBAC70A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1B964EE90;
  v4 = v68 + v3 + v1[14];
  *(v68 + v3) = 1;
  *v4 = "verb";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v68 + v3 + v2 + v1[14];
  *(v68 + v3 + v2) = 2;
  *v8 = "requested_media_type";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v68 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "entity";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v68 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "artist";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v68 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "album";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v68 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "simple_3p_play_music";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v68 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "noun";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v68 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "attributes";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v68 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "music_title";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v68 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "playlist_title";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v68 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "activities";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v68 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "moods";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v68 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "audiobook_author";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v7();
  v31 = (v68 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "audiobook_title";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v7();
  v33 = (v68 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "app_name";
  *(v34 + 1) = 8;
  v34[16] = 2;
  v7();
  v35 = (v68 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "show_title";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v68 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "podcast_title";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v7();
  v39 = (v68 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "radio_station_name";
  *(v40 + 1) = 18;
  v40[16] = 2;
  v7();
  v41 = (v68 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 20;
  *v42 = "decade";
  *(v42 + 1) = 6;
  v42[16] = 2;
  v7();
  v43 = (v68 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 21;
  *v44 = "genres";
  *(v44 + 1) = 6;
  v44[16] = 2;
  v7();
  v45 = (v68 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 22;
  *v46 = "sort";
  *(v46 + 1) = 4;
  v46[16] = 2;
  v7();
  v47 = (v68 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 23;
  *v48 = "reference";
  *(v48 + 1) = 9;
  v48[16] = 2;
  v7();
  v49 = (v68 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 24;
  *v50 = "audio_radio_type";
  *(v50 + 1) = 16;
  v50[16] = 2;
  v7();
  v51 = (v68 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 25;
  *v52 = "radio_station_frequency";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v68 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 26;
  *v54 = "home_automation_entity";
  *(v54 + 1) = 22;
  v54[16] = 2;
  v7();
  v55 = (v68 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 27;
  *v56 = "activity";
  *(v56 + 1) = 8;
  v56[16] = 2;
  v7();
  v57 = (v68 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 28;
  *v58 = "mood";
  *(v58 + 1) = 4;
  v58[16] = 2;
  v7();
  v59 = (v68 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 29;
  *v60 = "genre";
  *(v60 + 1) = 5;
  v60[16] = 2;
  v7();
  v61 = (v68 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 30;
  *v62 = "modifier";
  *(v62 + 1) = 8;
  v62[16] = 2;
  v7();
  v63 = (v68 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 31;
  *v64 = "entity_original_value";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v7();
  v65 = (v68 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 32;
  *v66 = "playlist_title_original_value";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B91A78D8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B91A7968()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B91A79BC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B91A7A10()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B91A7B64()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = v1;
  *(v0 + 168) = v1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;
  *(v0 + 272) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = v1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = 0;
  *(v0 + 320) = 1;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  v2 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre) = v1;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B91A7C90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v81 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v82 = (v1 + 64);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v83 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v84 = (v1 + 96);
  *(v1 + 104) = 0;
  v85 = (v1 + 104);
  *(v1 + 112) = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 120) = MEMORY[0x1E69E7CC0];
  v86 = (v1 + 120);
  *(v1 + 128) = 0;
  v87 = (v1 + 128);
  *(v1 + 144) = 0;
  v88 = (v1 + 144);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = v5;
  v89 = (v1 + 160);
  *(v1 + 168) = v5;
  v90 = (v1 + 168);
  *(v1 + 176) = 0;
  v91 = (v1 + 176);
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 192) = 0;
  v92 = (v1 + 192);
  *(v1 + 208) = 0;
  v93 = (v1 + 208);
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  v94 = (v1 + 224);
  *(v1 + 232) = 0xE000000000000000;
  *(v1 + 240) = 0;
  v95 = (v1 + 240);
  *(v1 + 248) = 0xE000000000000000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0xE000000000000000;
  *(v1 + 272) = 0;
  *(v1 + 280) = 1;
  *(v1 + 288) = v5;
  *(v1 + 296) = 0;
  *(v1 + 304) = 1;
  *(v1 + 312) = 0;
  *(v1 + 320) = 1;
  *(v1 + 328) = 0;
  *(v1 + 336) = 1;
  *(v1 + 344) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity;
  v96 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v97 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity) = v5;
  v98 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood) = v5;
  v100 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre) = v5;
  v8 = v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  v101 = v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  v102 = (v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v12;
  swift_beginAccess();
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v13;
  *(v1 + 40) = v14;
  swift_beginAccess();
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v16;
  *(v1 + 56) = v15;
  swift_beginAccess();
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v19 = v82;
  swift_beginAccess();
  *v19 = v17;
  *(v1 + 72) = v18;

  swift_beginAccess();
  v21 = *(a1 + 80);
  v20 = *(a1 + 88);
  v22 = v83;
  swift_beginAccess();
  *v22 = v21;
  *(v1 + 88) = v20;

  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 96);
  v23 = v84;
  swift_beginAccess();
  *v23 = v20;
  swift_beginAccess();
  v24 = *(a1 + 104);
  LOBYTE(v23) = *(a1 + 112);
  v25 = v85;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 112) = v23;
  swift_beginAccess();
  v26 = *(a1 + 120);
  v27 = v86;
  swift_beginAccess();
  *v27 = v26;

  swift_beginAccess();
  v29 = *(a1 + 128);
  v28 = *(a1 + 136);
  v30 = v87;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 136) = v28;

  swift_beginAccess();
  v32 = *(a1 + 144);
  v31 = *(a1 + 152);
  v33 = v88;
  swift_beginAccess();
  *v33 = v32;
  *(v1 + 152) = v31;

  swift_beginAccess();
  v34 = *(a1 + 160);
  v35 = v89;
  swift_beginAccess();
  *v35 = v34;

  swift_beginAccess();
  v36 = *(a1 + 168);
  v37 = v90;
  swift_beginAccess();
  *v37 = v36;

  swift_beginAccess();
  v39 = *(a1 + 176);
  v38 = *(a1 + 184);
  v40 = v91;
  swift_beginAccess();
  *v40 = v39;
  *(v1 + 184) = v38;

  swift_beginAccess();
  v42 = *(a1 + 192);
  v41 = *(a1 + 200);
  v43 = v92;
  swift_beginAccess();
  *v43 = v42;
  *(v1 + 200) = v41;

  swift_beginAccess();
  v45 = *(a1 + 208);
  v44 = *(a1 + 216);
  v46 = v93;
  swift_beginAccess();
  *v46 = v45;
  *(v1 + 216) = v44;

  swift_beginAccess();
  v48 = *(a1 + 224);
  v47 = *(a1 + 232);
  v49 = v94;
  swift_beginAccess();
  *v49 = v48;
  *(v1 + 232) = v47;

  swift_beginAccess();
  v51 = *(a1 + 240);
  v50 = *(a1 + 248);
  v52 = v95;
  swift_beginAccess();
  *v52 = v51;
  *(v1 + 248) = v50;

  swift_beginAccess();
  v54 = *(a1 + 256);
  v53 = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 256) = v54;
  *(v1 + 264) = v53;

  swift_beginAccess();
  v55 = *(a1 + 272);
  LOBYTE(v23) = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 272) = v55;
  *(v1 + 280) = v23;
  swift_beginAccess();
  v56 = *(a1 + 288);
  swift_beginAccess();
  *(v1 + 288) = v56;

  swift_beginAccess();
  v57 = *(a1 + 296);
  LOBYTE(v23) = *(a1 + 304);
  swift_beginAccess();
  *(v1 + 296) = v57;
  *(v1 + 304) = v23;
  swift_beginAccess();
  v58 = *(a1 + 312);
  LOBYTE(v23) = *(a1 + 320);
  swift_beginAccess();
  *(v1 + 312) = v58;
  *(v1 + 320) = v23;
  swift_beginAccess();
  v59 = *(a1 + 328);
  LOBYTE(v23) = *(a1 + 336);
  swift_beginAccess();
  *(v1 + 328) = v59;
  *(v1 + 336) = v23;
  swift_beginAccess();
  v60 = *(a1 + 344);
  swift_beginAccess();
  *(v1 + 344) = v60;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  swift_beginAccess();
  v62 = *(a1 + v61);
  v63 = v97;
  swift_beginAccess();
  *(v1 + v63) = v62;

  v64 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = v98;
  swift_beginAccess();
  *(v1 + v66) = v65;

  v67 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  swift_beginAccess();
  v68 = *(a1 + v67);
  v69 = v100;
  swift_beginAccess();
  *(v1 + v69) = v68;

  v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier);
  swift_beginAccess();
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 8);
  v72 = v101;
  swift_beginAccess();
  *v72 = v71;
  *(v72 + 8) = v70;
  v73 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v102;
  swift_beginAccess();
  *v76 = v75;
  v76[1] = v74;

  v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];

  swift_beginAccess();
  *v10 = v79;
  v10[1] = v78;

  return v1;
}

void *sub_1B91A87D8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity, &qword_1EBAC71D0, "R#\v");

  return v0;
}

uint64_t sub_1B91A8950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

void sub_1B91A8A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B91A8DC8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B91A8E5C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B91AC85C();
        break;
      case 4:
        sub_1B8E16ACC(a2, a1);
        break;
      case 5:
        sub_1B91AC944();
        break;
      case 6:
        sub_1B8ED5CB4(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B91A8EF0(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B91A8F84(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B91ACA1C();
        break;
      case 10:
        sub_1B91ACA70();
        break;
      case 11:
        sub_1B91A9018(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B91A90AC(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8E71A68(a2, a1);
        break;
      case 15:
        sub_1B91ACC50();
        break;
      case 16:
        sub_1B91ACCA4();
        break;
      case 17:
        sub_1B91ACCF8();
        break;
      case 18:
        sub_1B8E2FF18(a2, a1);
        break;
      case 19:
        sub_1B91A9140(a2, a1);
        break;
      case 20:
        sub_1B91A91C4(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B91A9258(a2, a1, a3, a4);
        break;
      case 22:
        sub_1B91A92EC(a2, a1, a3, a4);
        break;
      case 23:
        sub_1B91A9380(a2, a1, a3, a4);
        break;
      case 24:
        sub_1B91A9414(a2, a1, a3, a4);
        break;
      case 25:
        sub_1B91A94A8(a2, a1, a3, a4);
        break;
      case 26:
        sub_1B91A952C(a2, a1, a3, a4);
        break;
      case 27:
      case 28:
      case 29:
        sub_1B91A9608();
        break;
      case 30:
        sub_1B91A9668(a2, a1, a3, a4);
        break;
      case 31:
      case 32:
        sub_1B91A9704();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A8DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B527C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A8E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B5228();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A8EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B51D4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A8F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B4F34();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A9018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B5180();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A90AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B512C();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A9140(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B91A91C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B4FDC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B50D8();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A92EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B4F88();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B5030();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B4E8C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A94A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C510();
  return swift_endAccess();
}

uint64_t sub_1B91A952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A9608()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C4D0();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B91A9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B5084();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9704()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  return OUTLINED_FUNCTION_199_1(v0);
}

uint64_t sub_1B91A9794(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91A980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v54 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v11 = *(a1 + 24);
    v68 = *(a1 + 16);
    v69 = v11;
    sub_1B91B527C();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (!sub_1B8D92198(*(a1 + 32), *(a1 + 40), 0))
  {
    v13 = *(a1 + 40);
    v66 = *(a1 + 32);
    v67 = v13;
    sub_1B91B5228();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  v70 = v10;
  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 72);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v18 = *(a1 + 88);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 96) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 104))
  {
    v20 = *(a1 + 112);
    v64 = *(a1 + 104);
    v65 = v20;
    sub_1B91B51D4();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 120) + 16))
  {
    sub_1B91B4F34();

    sub_1B964C600();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 136);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 152);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 160) + 16))
  {
    sub_1B91B5180();

    sub_1B964C600();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 168) + 16))
  {
    sub_1B91B512C();

    sub_1B964C600();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 184);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 200);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 216);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 232);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 224) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 248);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 240) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 264);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 256) & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    goto LABEL_73;
  }

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_73:
  swift_beginAccess();
  if (!*(a1 + 272) || (v37 = *(a1 + 280), v62 = *(a1 + 272), v63 = v37, sub_1B91B4FDC(), result = sub_1B964C680(), !v4))
  {
    swift_beginAccess();
    if (*(*(a1 + 288) + 16))
    {
      sub_1B91B50D8();

      sub_1B964C600();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (!*(a1 + 296) || (v38 = *(a1 + 304), v60 = *(a1 + 296), v61 = v38, sub_1B91B4F88(), result = sub_1B964C680(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 312) || (v39 = *(a1 + 320), v58 = *(a1 + 312), v59 = v39, sub_1B91B5030(), result = sub_1B964C680(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 328) || (v40 = *(a1 + 336), v56 = *(a1 + 328), v57 = v40, sub_1B91B4E8C(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 344) == 0.0 || (result = sub_1B964C6F0(), !v4))
          {
            swift_beginAccess();
            sub_1B8F1B8B8();
            if (__swift_getEnumTagSinglePayload(v9, 1, v70) == 1)
            {
              sub_1B8D9207C(v9, &qword_1EBAC71D0, "R#\v");
            }

            else
            {
              sub_1B91A7968();
              sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);
              sub_1B964C740();
              result = sub_1B91A7A10();
              if (v4)
              {
                return result;
              }
            }

            v41 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
            swift_beginAccess();
            if (!*(*(a1 + v41) + 16) || (, sub_1B964C6E0(), result = , !v4))
            {
              v42 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
              swift_beginAccess();
              if (!*(*(a1 + v42) + 16) || (, sub_1B964C6E0(), result = , !v4))
              {
                v43 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
                swift_beginAccess();
                if (!*(*(a1 + v43) + 16) || (, sub_1B964C6E0(), result = , !v4))
                {
                  v44 = a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
                  swift_beginAccess();
                  if (!*v44 || (v45 = *(v44 + 8), v54[3] = *v44, v55 = v45, sub_1B91B5084(), result = sub_1B964C680(), !v4))
                  {
                    v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
                    swift_beginAccess();
                    v47 = *v46;
                    v48 = v46[1];
                    v49 = HIBYTE(v48) & 0xF;
                    if ((v48 & 0x2000000000000000) == 0)
                    {
                      v49 = v47 & 0xFFFFFFFFFFFFLL;
                    }

                    if (!v49 || (, sub_1B964C700(), result = , !v5))
                    {
                      v50 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
                      result = swift_beginAccess();
                      v51 = *v50;
                      v52 = v50[1];
                      v53 = HIBYTE(v52) & 0xF;
                      if ((v52 & 0x2000000000000000) == 0)
                      {
                        v53 = v51 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v53)
                      {

                        sub_1B964C700();
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

  return result;
}

uint64_t sub_1B91AA504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7860, &qword_1B96A16E0);
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v95 - v11;
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  if (!sub_1B8D92198(v13, v14, *(a2 + 16)))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  if (!sub_1B8D92198(v15, v16, *(a2 + 32)))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 48);
  v17 = *(a1 + 56);
  swift_beginAccess();
  v19 = v18 == *(a2 + 48) && v17 == *(a2 + 56);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  swift_beginAccess();
  v22 = v20 == *(a2 + 64) && v21 == *(a2 + 72);
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  swift_beginAccess();
  v25 = v23 == *(a2 + 80) && v24 == *(a2 + 88);
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 96);
  swift_beginAccess();
  if (v26 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v27 = *(a1 + 104);
  v28 = *(a1 + 112);
  swift_beginAccess();
  if (!sub_1B8D92198(v27, v28, *(a2 + 104)))
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 120);
  swift_beginAccess();
  if ((sub_1B8D8DBB0(v29, *(a2 + 120)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 128);
  v31 = *(a1 + 136);
  swift_beginAccess();
  v32 = v30 == *(a2 + 128) && v31 == *(a2 + 136);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 144);
  v34 = *(a1 + 152);
  swift_beginAccess();
  v35 = v33 == *(a2 + 144) && v34 == *(a2 + 152);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  swift_beginAccess();
  if ((sub_1B8D921B0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  swift_beginAccess();
  if ((sub_1B8D921B0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 176);
  v37 = *(a1 + 184);
  swift_beginAccess();
  v38 = v36 == *(a2 + 176) && v37 == *(a2 + 184);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 192);
  v40 = *(a1 + 200);
  swift_beginAccess();
  v41 = v39 == *(a2 + 192) && v40 == *(a2 + 200);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 208);
  v43 = *(a1 + 216);
  swift_beginAccess();
  v44 = v42 == *(a2 + 208) && v43 == *(a2 + 216);
  if (!v44 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 224);
  v46 = *(a1 + 232);
  swift_beginAccess();
  v47 = v45 == *(a2 + 224) && v46 == *(a2 + 232);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 240);
  v49 = *(a1 + 248);
  swift_beginAccess();
  v50 = v48 == *(a2 + 240) && v49 == *(a2 + 248);
  if (!v50 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v51 = *(a1 + 256);
  v52 = *(a1 + 264);
  swift_beginAccess();
  v53 = v51 == *(a2 + 256) && v52 == *(a2 + 264);
  if (!v53 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v54 = *(a1 + 272);
  v55 = *(a1 + 280);
  swift_beginAccess();
  if (!sub_1B8D92198(v54, v55, *(a2 + 272)))
  {
    return 0;
  }

  swift_beginAccess();
  swift_beginAccess();
  if ((sub_1B8D921B0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 296);
  v57 = *(a1 + 304);
  swift_beginAccess();
  if (!sub_1B8D92198(v56, v57, *(a2 + 296)))
  {
    return 0;
  }

  swift_beginAccess();
  v58 = *(a1 + 312);
  v59 = *(a1 + 320);
  swift_beginAccess();
  if (!sub_1B8D92198(v58, v59, *(a2 + 312)))
  {
    return 0;
  }

  swift_beginAccess();
  v60 = *(a1 + 328);
  v61 = *(a1 + 336);
  swift_beginAccess();
  if (!sub_1B8D92198(v60, v61, *(a2 + 328)))
  {
    return 0;
  }

  swift_beginAccess();
  v62 = *(a1 + 344);
  swift_beginAccess();
  if (v62 != *(a2 + 344))
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v63 = *(v5 + 48);
  v64 = v97;
  sub_1B8F1B8B8();
  v96 = v63;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v64, 1, v4) == 1)
  {

    sub_1B8D9207C(v12, &qword_1EBAC71D0, "R#\v");
    if (__swift_getEnumTagSinglePayload(v97 + v96, 1, v4) == 1)
    {
      sub_1B8D9207C(v97, &qword_1EBAC71D0, "R#\v");
      goto LABEL_76;
    }

LABEL_74:
    sub_1B8D9207C(v97, &qword_1EBAC7860, &qword_1B96A16E0);
    goto LABEL_99;
  }

  v65 = v97;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v65 + v96, 1, v4) == 1)
  {

    sub_1B8D9207C(v12, &qword_1EBAC71D0, "R#\v");
    sub_1B91A7A10();
    goto LABEL_74;
  }

  v66 = v97;
  sub_1B91A7968();

  v67 = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.== infix(_:_:)(v10);
  sub_1B91A7A10();
  sub_1B8D9207C(v12, &qword_1EBAC71D0, "R#\v");
  sub_1B91A7A10();
  sub_1B8D9207C(v66, &qword_1EBAC71D0, "R#\v");
  if ((v67 & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_76:
  v68 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  swift_beginAccess();
  if ((sub_1B8D6123C(v69, *(a2 + v70)) & 1) == 0)
  {
    goto LABEL_99;
  }

  v71 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  swift_beginAccess();
  v72 = *(a1 + v71);
  v73 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  swift_beginAccess();
  if ((sub_1B8D6123C(v72, *(a2 + v73)) & 1) == 0)
  {
    goto LABEL_99;
  }

  v74 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  swift_beginAccess();
  v75 = *(a1 + v74);
  v76 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  swift_beginAccess();
  if ((sub_1B8D6123C(v75, *(a2 + v76)) & 1) == 0)
  {
    goto LABEL_99;
  }

  v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier);
  swift_beginAccess();
  v78 = *v77;
  v79 = *(v77 + 8);
  v80 = (a2 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier);
  swift_beginAccess();
  v81 = *v80;
  v82 = v78 != 0;
  if (!v79)
  {
    v82 = v78;
  }

  if (*(v80 + 8) != 1)
  {
    if (v82 != v81)
    {
      goto LABEL_99;
    }

    goto LABEL_88;
  }

  if (!v81)
  {
    if (!v82)
    {
      goto LABEL_88;
    }

LABEL_99:

    return 0;
  }

  if (v82 != 1)
  {
    goto LABEL_99;
  }

LABEL_88:
  v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  swift_beginAccess();
  v84 = *v83;
  v85 = v83[1];
  v86 = (a2 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  swift_beginAccess();
  v87 = v84 == *v86 && v85 == v86[1];
  if (!v87 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_99;
  }

  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = (a2 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  swift_beginAccess();
  if (v89 == *v91 && v90 == v91[1])
  {
  }

  else
  {
    v93 = sub_1B964C9F0();

    if ((v93 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B91AB278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AB2F8(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AB368(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AB400()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70C0);
  __swift_project_value_buffer(v0, qword_1EBAC70C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1B9652FF0;
  v4 = v49 + v3;
  v5 = v49 + v3 + v1[14];
  *(v49 + v3) = 1;
  *v5 = "artist";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "identifier";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "type";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "asset_info";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "recommendation_id";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "amp_confidence_score";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "internal_signals";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "shared_user_id_from_playable_music_account";
  *(v23 + 1) = 42;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "punchout_uri";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "requires_subscription";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "provider";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "is_available";
  *(v31 + 1) = 12;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "is_hard_ban";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "bundle_id";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "universal_resource_link";
  *(v37 + 1) = 23;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "provider_app_name";
  *(v39 + 1) = 17;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "amp_confidence_level";
  *(v41 + 1) = 20;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "audio_sub_items";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "images";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "details";
  *(v47 + 1) = 7;
  v47[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B91ABAB8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  *(v0 + 240) = 0;
  *(v0 + 248) = 1;
  *(v0 + 256) = v1;
  *(v0 + 264) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  return v0;
}

uint64_t sub_1B91ABB5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v50 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v51 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  v52 = (v1 + 112);
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 120) = MEMORY[0x1E69E7CC0];
  v53 = (v1 + 120);
  *(v1 + 128) = 0;
  v54 = (v1 + 128);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 144) = 0;
  v55 = (v1 + 144);
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = 0;
  v56 = (v1 + 160);
  *(v1 + 168) = 0;
  v57 = (v1 + 168);
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 184) = 0;
  v58 = (v1 + 184);
  *(v1 + 192) = 0;
  v59 = (v1 + 192);
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 208) = 0;
  v60 = (v1 + 208);
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0xE000000000000000;
  *(v1 + 240) = 0;
  v61 = (v1 + 224);
  v62 = (v1 + 240);
  *(v1 + 72) = 1;
  *(v1 + 248) = 1;
  *(v1 + 256) = v5;
  *(v1 + 264) = v5;
  v6 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details;
  v63 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v10;
  *(v1 + 40) = v11;

  swift_beginAccess();
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v13;
  *(v1 + 56) = v12;

  swift_beginAccess();
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v14;
  *(v1 + 72) = v15;
  swift_beginAccess();
  v17 = *(a1 + 80);
  v16 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v17;
  *(v1 + 88) = v16;

  swift_beginAccess();
  v19 = *(a1 + 96);
  v18 = *(a1 + 104);
  v20 = v51;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 104) = v18;

  swift_beginAccess();
  v21 = *(a1 + 112);
  v22 = v52;
  swift_beginAccess();
  *v22 = v21;
  swift_beginAccess();
  v23 = *(a1 + 120);
  v24 = v53;
  swift_beginAccess();
  *v24 = v23;

  swift_beginAccess();
  v26 = *(a1 + 128);
  v25 = *(a1 + 136);
  v27 = v54;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 136) = v25;

  swift_beginAccess();
  v29 = *(a1 + 144);
  v28 = *(a1 + 152);
  v30 = v55;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 152) = v28;

  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 160);
  v31 = v56;
  swift_beginAccess();
  *v31 = v28;
  swift_beginAccess();
  v33 = *(a1 + 168);
  v32 = *(a1 + 176);
  v34 = v57;
  swift_beginAccess();
  *v34 = v33;
  *(v1 + 176) = v32;

  swift_beginAccess();
  LOBYTE(v32) = *(a1 + 184);
  v35 = v58;
  swift_beginAccess();
  *v35 = v32;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + 185);
  swift_beginAccess();
  *(v1 + 185) = v32;
  swift_beginAccess();
  v37 = *(a1 + 192);
  v36 = *(a1 + 200);
  v38 = v59;
  swift_beginAccess();
  *v38 = v37;
  *(v1 + 200) = v36;

  swift_beginAccess();
  v40 = *(a1 + 208);
  v39 = *(a1 + 216);
  v41 = v60;
  swift_beginAccess();
  *v41 = v40;
  *(v1 + 216) = v39;

  swift_beginAccess();
  v43 = *(a1 + 224);
  v42 = *(a1 + 232);
  v44 = v61;
  swift_beginAccess();
  *v44 = v43;
  *(v1 + 232) = v42;

  swift_beginAccess();
  v45 = *(a1 + 240);
  LOBYTE(v35) = *(a1 + 248);
  v46 = v62;
  swift_beginAccess();
  *v46 = v45;
  *(v1 + 248) = v35;
  swift_beginAccess();
  v47 = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = v47;

  swift_beginAccess();
  v48 = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 264) = v48;

  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

unint64_t sub_1B91AC334()
{
  result = qword_1EBAC71E8;
  if (!qword_1EBAC71E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, v0, v1);
    atomic_store(result, &qword_1EBAC71E8);
  }

  return result;
}

unint64_t sub_1B91AC388()
{
  result = qword_1EBAC71F0;
  if (!qword_1EBAC71F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, v0, v1);
    atomic_store(result, &qword_1EBAC71F0);
  }

  return result;
}

unint64_t sub_1B91AC3DC()
{
  result = qword_1EBAC7200;
  if (!qword_1EBAC7200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioItemType, v0, v1);
    atomic_store(result, &qword_1EBAC7200);
  }

  return result;
}

void *sub_1B91AC430()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details, &qword_1EBAC71D8, "R#\v");
  return v0;
}

uint64_t sub_1B91AC4F0(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B91AC5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C(a2, a1);
        break;
      case 2:
        sub_1B8DC46F4(a2, a1);
        break;
      case 3:
        sub_1B91AC85C();
        break;
      case 4:
        sub_1B91AC8B0(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B91AC944();
        break;
      case 6:
        sub_1B8E16BD4(a2, a1);
        break;
      case 7:
        sub_1B91AC998(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B910DA00(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B91ACA1C();
        break;
      case 10:
        sub_1B91ACA70();
        break;
      case 11:
        sub_1B91ACAC4(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8F3C308(a2, a1);
        break;
      case 13:
        sub_1B91ACB48(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B91ACBCC(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B91ACC50();
        break;
      case 16:
        sub_1B91ACCA4();
        break;
      case 17:
        sub_1B91ACCF8();
        break;
      case 18:
        sub_1B91ACD4C(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B91ACDE0(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B91ACEAC(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B91ACF78(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

void sub_1B91AC85C()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v0);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91AC8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91AC3DC();
  sub_1B964C420();
  return swift_endAccess();
}

void sub_1B91AC944()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v0);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91AC998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

void sub_1B91ACA1C()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v0);
  OUTLINED_FUNCTION_795();
}

void sub_1B91ACA70()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v0);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91ACAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B91ACB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B91ACBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

void sub_1B91ACC50()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v0);
  OUTLINED_FUNCTION_795();
}

void sub_1B91ACCA4()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v0);
  OUTLINED_FUNCTION_795();
}

void sub_1B91ACCF8()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v0 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v0);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91ACD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B91B4EE0();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91ACDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0);
  sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSubItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91ACEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0);
  sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Image);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91ACF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91AD084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  MEMORY[0x1EEE9AC00](v40);
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 40);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 56);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    v15 = *(a1 + 72);
    v38 = *(a1 + 64);
    v39 = v15;
    sub_1B91AC3DC();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = *(a1 + 88);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 104);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 112) != 0.0)
  {
    result = sub_1B964C6B0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 120) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 136);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 152);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_42;
    }
  }

LABEL_42:
  swift_beginAccess();
  if (*(a1 + 160) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    v25 = *(a1 + 176);
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      sub_1B964C700();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (*(a1 + 184) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 185) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v27 = *(a1 + 200);
        v28 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v28 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
        }

        if (!v28 || (, sub_1B964C700(), result = , !v4))
        {
          swift_beginAccess();
          v29 = *(a1 + 216);
          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
          }

          if (!v30 || (, sub_1B964C700(), result = , !v4))
          {
            swift_beginAccess();
            v31 = *(a1 + 232);
            v32 = HIBYTE(v31) & 0xF;
            if ((v31 & 0x2000000000000000) == 0)
            {
              v32 = *(a1 + 224) & 0xFFFFFFFFFFFFLL;
            }

            if (!v32 || (, sub_1B964C700(), result = , !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 240) || (v33 = *(a1 + 248), v36 = *(a1 + 240), v37 = v33, sub_1B91B4EE0(), result = sub_1B964C680(), !v4))
              {
                swift_beginAccess();
                if (!*(*(a1 + 256) + 16) || (v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0), sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSubItem), , sub_1B964C730(), result = , !v4))
                {
                  swift_beginAccess();
                  if (!*(*(a1 + 264) + 16) || (v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0), sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Image), , sub_1B964C730(), result = , !v4))
                  {
                    swift_beginAccess();
                    sub_1B8F1B8B8();
                    if (__swift_getEnumTagSinglePayload(v8, 1, v40) == 1)
                    {
                      return sub_1B8D9207C(v8, &qword_1EBAC71D8, "R#\v");
                    }

                    else
                    {
                      sub_1B91A7968();
                      sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);
                      sub_1B964C740();
                      return sub_1B91A7A10();
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

  return result;
}

uint64_t sub_1B91ADA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = *(v7(0) + 20);
  v9 = *(v5 + v8);
  v10 = *(v4 + v8);
  if (v9 != v10)
  {

    v11 = a4(v9, v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v12, v13, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_231();
  return sub_1B964C850() & 1;
}

BOOL sub_1B91ADADC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7858, &qword_1B96A16D8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v80 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_66();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  OUTLINED_FUNCTION_521(a1 + 16, v122);
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  OUTLINED_FUNCTION_521(a2 + 16, v121);
  v21 = v20 == *(a2 + 16) && v19 == *(a2 + 24);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v120);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  OUTLINED_FUNCTION_521(a2 + 32, v119);
  v24 = v22 == *(a2 + 32) && v23 == *(a2 + 40);
  if (!v24 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 48, v118);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  OUTLINED_FUNCTION_521(a2 + 48, v117);
  v27 = v25 == *(a2 + 48) && v26 == *(a2 + 56);
  if (!v27 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 64, &v116);
  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  OUTLINED_FUNCTION_521(a2 + 64, &v115);
  if (!sub_1B8D92198(v28, v29, *(a2 + 64)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 80, &v114);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  OUTLINED_FUNCTION_521(a2 + 80, &v113);
  v32 = v30 == *(a2 + 80) && v31 == *(a2 + 88);
  if (!v32 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 96, &v112);
  v33 = *(a1 + 96);
  v34 = *(a1 + 104);
  OUTLINED_FUNCTION_521(a2 + 96, &v111);
  v35 = v33 == *(a2 + 96) && v34 == *(a2 + 104);
  if (!v35 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 112, &v110);
  v36 = *(a1 + 112);
  OUTLINED_FUNCTION_521(a2 + 112, &v109);
  if (v36 != *(a2 + 112))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 120, &v108);
  v37 = *(a1 + 120);
  OUTLINED_FUNCTION_521(a2 + 120, &v107);
  if ((sub_1B8D6123C(v37, *(a2 + 120)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 128, &v106);
  v38 = *(a1 + 128);
  v39 = *(a1 + 136);
  OUTLINED_FUNCTION_521(a2 + 128, &v105);
  v40 = v38 == *(a2 + 128) && v39 == *(a2 + 136);
  if (!v40 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 144, &v104);
  v41 = *(a1 + 144);
  v42 = *(a1 + 152);
  OUTLINED_FUNCTION_521(a2 + 144, &v103);
  v43 = v41 == *(a2 + 144) && v42 == *(a2 + 152);
  if (!v43 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 160, &v102);
  v44 = *(a1 + 160);
  OUTLINED_FUNCTION_521(a2 + 160, &v101);
  if (v44 != *(a2 + 160))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 168, &v100);
  v45 = *(a1 + 168);
  v46 = *(a1 + 176);
  OUTLINED_FUNCTION_521(a2 + 168, &v99);
  v47 = v45 == *(a2 + 168) && v46 == *(a2 + 176);
  if (!v47 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 184, &v98);
  v48 = *(a1 + 184);
  OUTLINED_FUNCTION_521(a2 + 184, &v97);
  if (v48 != *(a2 + 184))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 185, &v96);
  v49 = *(a1 + 185);
  OUTLINED_FUNCTION_521(a2 + 185, &v95);
  if (v49 != *(a2 + 185))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 192, &v94);
  v51 = *(a1 + 192);
  v52 = *(a1 + 200);
  OUTLINED_FUNCTION_521(a2 + 192, &v93);
  v53 = v51 == *(a2 + 192) && v52 == *(a2 + 200);
  if (!v53 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 208, &v92);
  v54 = *(a1 + 208);
  v55 = *(a1 + 216);
  OUTLINED_FUNCTION_521(a2 + 208, &v91);
  v56 = v54 == *(a2 + 208) && v55 == *(a2 + 216);
  if (!v56 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 224, &v90);
  v57 = *(a1 + 224);
  v58 = *(a1 + 232);
  OUTLINED_FUNCTION_521(a2 + 224, &v89);
  v59 = v57 == *(a2 + 224) && v58 == *(a2 + 232);
  if (!v59 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 240, &v88);
  v60 = *(a1 + 240);
  v61 = *(a1 + 248);
  OUTLINED_FUNCTION_521(a2 + 240, &v87);
  if (!sub_1B8D580CC(v60, v61, *(a2 + 240), *(a2 + 248)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 256, &v86);
  v62 = *(a1 + 256);
  OUTLINED_FUNCTION_521(a2 + 256, &v85);
  v63 = *(a2 + 256);

  sub_1B8D8DD2C(v62, v63);
  v79 = v64;

  if ((v79 & 1) == 0 || (OUTLINED_FUNCTION_521(a1 + 264, &v84), v65 = *(a1 + 264), OUTLINED_FUNCTION_521(a2 + 264, &v83), v66 = *(a2 + 264), , , sub_1B8D8DED4(v65, v66), v79 = v67, , , (v79 & 1) == 0))
  {

    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details, &v82);
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details, &v81);
  v68 = *(v8 + 48);
  v69 = v80;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v69);
  if (!v21)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v69 + v68);
    if (!v70)
    {
      OUTLINED_FUNCTION_23_12();
      sub_1B91A7968();
      if (*v15 == *v7 && (sub_1B8D6123C(v15[1], v7[1]) & 1) != 0)
      {
        v74 = v15[2] == v7[2] && v15[3] == v7[3];
        if (v74 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_67();
          sub_1B8CD2AC8(v75, v76, MEMORY[0x1E69AAC10]);
          v77 = sub_1B964C850();

          sub_1B8D9207C(v18, &qword_1EBAC71D8, "R#\v");
          sub_1B91A7A10();
          OUTLINED_FUNCTION_491();
          sub_1B91A7A10();
          sub_1B8D9207C(v80, &qword_1EBAC71D8, "R#\v");
          return (v77 & 1) != 0;
        }
      }

      sub_1B8D9207C(v18, &qword_1EBAC71D8, "R#\v");
      sub_1B91A7A10();
      OUTLINED_FUNCTION_541_0();
      sub_1B91A7A10();
      v73 = v80;
      v71 = &qword_1EBAC71D8;
      v72 = "R#\v";
LABEL_87:
      sub_1B8D9207C(v73, v71, v72);
      return 0;
    }

    sub_1B8D9207C(v18, &qword_1EBAC71D8, "R#\v");
    sub_1B91A7A10();
    v69 = v80;
LABEL_76:
    v71 = &qword_1EBAC7858;
    v72 = &qword_1B96A16D8;
    v73 = v69;
    goto LABEL_87;
  }

  sub_1B8D9207C(v18, &qword_1EBAC71D8, "R#\v");
  OUTLINED_FUNCTION_37_0(v69 + v68);
  if (!v21)
  {
    goto LABEL_76;
  }

  sub_1B8D9207C(v69, &qword_1EBAC71D8, "R#\v");
  return 1;
}

uint64_t sub_1B91AE400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7798, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AE480(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AE4F0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AE588()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70E0);
  __swift_project_value_buffer(v0, qword_1EBAC70E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "asset_info";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioSubItem.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_67();
  v9 = sub_1B8CD2AC8(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B91AE9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7790, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSubItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AEA28(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSubItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AEA98(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSubItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AEB30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70F8);
  __swift_project_value_buffer(v0, qword_1EBAC70F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uri_format_string";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91AEE40(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6F0(), !v0))
    {
      if (*(v1 + 24) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6F0(), !v0))
      {
        if (!*(v1 + 32) || (OUTLINED_FUNCTION_94_4(), sub_1B91B11E0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Image.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 24) != *(v1 + 24))
  {
    return 0;
  }

  v6 = *(v2 + 32);
  v7 = *(v1 + 32);
  if (*(v2 + 40))
  {
    v6 = v6 != 0;
  }

  if (*(v1 + 40) == 1)
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

  type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  v11 = sub_1B8CD2AC8(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B91AF134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7788, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AF1B4(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AF224(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Image);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AF2BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7110);
  __swift_project_value_buffer(v0, qword_1EBAC7110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "service_names";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intent_from_entities";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "intent_device_quantifier";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "intent_device_type";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "intent_place_hint";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "intent_reference";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "intent_device_quantifier_enum";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "intent_device_type_enum";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "intent_place_hint_enum";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.decodeMessage<A>(decoder:)()
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
        sub_1B964C4D0();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91AF790(v7, v8, v9, v10, v11, &qword_1EBAC7298, v12, v13);
        break;
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B91AF828(v14, v15, v16, v17);
        break;
      case 8:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91AF890(v3, v4, v5, v6);
        break;
      case 9:
        v18 = OUTLINED_FUNCTION_9();
        sub_1B91AF8F8(v18, v19, v20, v21);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91AF790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, const char *a8)
{
  a5(0);
  v9 = OUTLINED_FUNCTION_128();
  sub_1B8CD2AC8(v9, v10, a8);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(v2[1] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0), sub_1B8CD2AC8(&qword_1EBAC7298, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
        {
          OUTLINED_FUNCTION_1();
          if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v7 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
            {
              if (!v2[10] || (OUTLINED_FUNCTION_94_4(), sub_1B91B1234(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
              {
                if (!v2[12] || (OUTLINED_FUNCTION_94_4(), sub_1B91B1288(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
                {
                  if (!v2[14] || (OUTLINED_FUNCTION_94_4(), sub_1B91B12DC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
                  {
                    type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
                    return OUTLINED_FUNCTION_8_1();
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

uint64_t static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if ((sub_1B8D6123C(v3, *v4) & 1) == 0)
  {
    return 0;
  }

  sub_1B8D66C48(*(v2 + 8), v1[1]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 32) == v1[4] && *(v2 + 40) == v1[5];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 48) == v1[6] && *(v2 + 56) == v1[7];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v2 + 64) == v1[8] && *(v2 + 72) == v1[9];
  if (!v11 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v2 + 80), *(v2 + 88), v1[10]) || !sub_1B8D92198(*(v2 + 96), *(v2 + 104), v1[12]) || !sub_1B8D92198(*(v2 + 112), *(v2 + 120), v1[14]))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  v14 = sub_1B8CD2AC8(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t sub_1B91AFD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7780, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AFDEC(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AFE5C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AFEDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7128);
  __swift_project_value_buffer(v0, qword_1EBAC7128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEVICE_QUANTIFIER_UNKNOWN";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DEVICE_QUANTIFIER_ONE";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DEVICE_QUANTIFIER_BOTH";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DEVICE_QUANTIFIER_SOME";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DEVICE_QUANTIFIER_ALL";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DEVICE_QUANTIFIER_EXCEPT";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B01C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7140);
  __swift_project_value_buffer(v0, qword_1EBAC7140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEVICE_TYPE_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DEVICE_TYPE_BLUETOOTH_SPEAKER";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DEVICE_TYPE_AIRPLAY_SPEAKER";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DEVICE_TYPE_APPLE_TV";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DEVICE_TYPE_AIRPORT_EXPRESS";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DEVICE_TYPE_HOMEPOD";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DEVICE_TYPE_HOMEPOD_MINI";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "DEVICE_TYPE_IPAD";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "DEVICE_TYPE_IPHONE";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "DEVICE_TYPE_SPEAKER";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "DEVICE_TYPE_TELEVISION";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B05D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7158);
  __swift_project_value_buffer(v0, qword_1EBAC7158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLACE_HINT_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLACE_HINT_HOUSE_HINT";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLACE_HINT_ROOM_HINT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLACE_HINT_IN_HERE";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PLACE_HINT_THIS";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B0898()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7170);
  __swift_project_value_buffer(v0, qword_1EBAC7170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.decodeMessage<A>(decoder:)()
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
      sub_1B91B0AEC(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_94_4(), sub_1B91B1330(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.== infix(_:_:)(uint64_t a1)
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
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_67();
  v11 = sub_1B8CD2AC8(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B91B0D2C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2AC8(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91B0E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7778, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91B0E8C(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7298, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91B0EFC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7298, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B91B0F7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7188);
  __swift_project_value_buffer(v0, qword_1EBAC7188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_HAENTITY_TYPE";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ACCESSORY";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ROOM";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ZONE";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B91B11E0()
{
  result = qword_1EBAC7288;
  if (!qword_1EBAC7288)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ImageType, &type metadata for Apple_Parsec_Siri_V2alpha_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7288);
  }

  return result;
}

unint64_t sub_1B91B1234()
{
  result = qword_1EBAC72A0;
  if (!qword_1EBAC72A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, v0, v1);
    atomic_store(result, &qword_1EBAC72A0);
  }

  return result;
}

unint64_t sub_1B91B1288()
{
  result = qword_1EBAC72A8;
  if (!qword_1EBAC72A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC72A8);
  }

  return result;
}

unint64_t sub_1B91B12DC()
{
  result = qword_1EBAC72B0;
  if (!qword_1EBAC72B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, v0, v1);
    atomic_store(result, &qword_1EBAC72B0);
  }

  return result;
}

unint64_t sub_1B91B1330()
{
  result = qword_1EBAC72C0;
  if (!qword_1EBAC72C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, v0, v1);
    atomic_store(result, &qword_1EBAC72C0);
  }

  return result;
}

unint64_t sub_1B91B1388()
{
  result = qword_1EBAC72D0;
  if (!qword_1EBAC72D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioVerb, &type metadata for Apple_Parsec_Siri_V2alpha_AudioVerb, v0, v1);
    atomic_store(result, &qword_1EBAC72D0);
  }

  return result;
}

unint64_t sub_1B91B13E0()
{
  result = qword_1EBAC72D8;
  if (!qword_1EBAC72D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioVerb, &type metadata for Apple_Parsec_Siri_V2alpha_AudioVerb, v0, v1);
    atomic_store(result, &qword_1EBAC72D8);
  }

  return result;
}

unint64_t sub_1B91B1438()
{
  result = qword_1EBAC72E0;
  if (!qword_1EBAC72E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioVerb, &type metadata for Apple_Parsec_Siri_V2alpha_AudioVerb, v0, v1);
    atomic_store(result, &qword_1EBAC72E0);
  }

  return result;
}

unint64_t sub_1B91B14C0()
{
  result = qword_1EBAC72F8;
  if (!qword_1EBAC72F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, v0, v1);
    atomic_store(result, &qword_1EBAC72F8);
  }

  return result;
}

unint64_t sub_1B91B1518()
{
  result = qword_1EBAC7300;
  if (!qword_1EBAC7300)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, v0, v1);
    atomic_store(result, &qword_1EBAC7300);
  }

  return result;
}

unint64_t sub_1B91B1570()
{
  result = qword_1EBAC7308;
  if (!qword_1EBAC7308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation, v0, v1);
    atomic_store(result, &qword_1EBAC7308);
  }

  return result;
}

unint64_t sub_1B91B15F8()
{
  result = qword_1EBAC7320;
  if (!qword_1EBAC7320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, v0, v1);
    atomic_store(result, &qword_1EBAC7320);
  }

  return result;
}

unint64_t sub_1B91B1650()
{
  result = qword_1EBAC7328;
  if (!qword_1EBAC7328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, v0, v1);
    atomic_store(result, &qword_1EBAC7328);
  }

  return result;
}

unint64_t sub_1B91B16A8()
{
  result = qword_1EBAC7330;
  if (!qword_1EBAC7330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, &type metadata for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode, v0, v1);
    atomic_store(result, &qword_1EBAC7330);
  }

  return result;
}

unint64_t sub_1B91B1730()
{
  result = qword_1EBAC7348;
  if (!qword_1EBAC7348)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioItemType, v0, v1);
    atomic_store(result, &qword_1EBAC7348);
  }

  return result;
}

unint64_t sub_1B91B1788()
{
  result = qword_1EBAC7350;
  if (!qword_1EBAC7350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioItemType, v0, v1);
    atomic_store(result, &qword_1EBAC7350);
  }

  return result;
}

unint64_t sub_1B91B17E0()
{
  result = qword_1EBAC7358;
  if (!qword_1EBAC7358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItemType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioItemType, v0, v1);
    atomic_store(result, &qword_1EBAC7358);
  }

  return result;
}

unint64_t sub_1B91B1868()
{
  result = qword_1EBAC7370;
  if (!qword_1EBAC7370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RequestedMediaType, &type metadata for Apple_Parsec_Siri_V2alpha_RequestedMediaType, v0, v1);
    atomic_store(result, &qword_1EBAC7370);
  }

  return result;
}

unint64_t sub_1B91B18C0()
{
  result = qword_1EBAC7378;
  if (!qword_1EBAC7378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RequestedMediaType, &type metadata for Apple_Parsec_Siri_V2alpha_RequestedMediaType, v0, v1);
    atomic_store(result, &qword_1EBAC7378);
  }

  return result;
}

unint64_t sub_1B91B1918()
{
  result = qword_1EBAC7380;
  if (!qword_1EBAC7380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RequestedMediaType, &type metadata for Apple_Parsec_Siri_V2alpha_RequestedMediaType, v0, v1);
    atomic_store(result, &qword_1EBAC7380);
  }

  return result;
}

unint64_t sub_1B91B19A0()
{
  result = qword_1EBAC7398;
  if (!qword_1EBAC7398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioNoun, &type metadata for Apple_Parsec_Siri_V2alpha_AudioNoun, v0, v1);
    atomic_store(result, &qword_1EBAC7398);
  }

  return result;
}

unint64_t sub_1B91B19F8()
{
  result = qword_1EBAC73A0;
  if (!qword_1EBAC73A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioNoun, &type metadata for Apple_Parsec_Siri_V2alpha_AudioNoun, v0, v1);
    atomic_store(result, &qword_1EBAC73A0);
  }

  return result;
}

unint64_t sub_1B91B1A50()
{
  result = qword_1EBAC73A8;
  if (!qword_1EBAC73A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioNoun, &type metadata for Apple_Parsec_Siri_V2alpha_AudioNoun, v0, v1);
    atomic_store(result, &qword_1EBAC73A8);
  }

  return result;
}

unint64_t sub_1B91B1AD8()
{
  result = qword_1EBAC73C0;
  if (!qword_1EBAC73C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioActivity, &type metadata for Apple_Parsec_Siri_V2alpha_AudioActivity, v0, v1);
    atomic_store(result, &qword_1EBAC73C0);
  }

  return result;
}

unint64_t sub_1B91B1B30()
{
  result = qword_1EBAC73C8;
  if (!qword_1EBAC73C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioActivity, &type metadata for Apple_Parsec_Siri_V2alpha_AudioActivity, v0, v1);
    atomic_store(result, &qword_1EBAC73C8);
  }

  return result;
}

unint64_t sub_1B91B1B88()
{
  result = qword_1EBAC73D0;
  if (!qword_1EBAC73D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioActivity, &type metadata for Apple_Parsec_Siri_V2alpha_AudioActivity, v0, v1);
    atomic_store(result, &qword_1EBAC73D0);
  }

  return result;
}

unint64_t sub_1B91B1C10()
{
  result = qword_1EBAC73E8;
  if (!qword_1EBAC73E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioMood, &type metadata for Apple_Parsec_Siri_V2alpha_AudioMood, v0, v1);
    atomic_store(result, &qword_1EBAC73E8);
  }

  return result;
}

unint64_t sub_1B91B1C68()
{
  result = qword_1EBAC73F0;
  if (!qword_1EBAC73F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioMood, &type metadata for Apple_Parsec_Siri_V2alpha_AudioMood, v0, v1);
    atomic_store(result, &qword_1EBAC73F0);
  }

  return result;
}

unint64_t sub_1B91B1CC0()
{
  result = qword_1EBAC73F8;
  if (!qword_1EBAC73F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioMood, &type metadata for Apple_Parsec_Siri_V2alpha_AudioMood, v0, v1);
    atomic_store(result, &qword_1EBAC73F8);
  }

  return result;
}

unint64_t sub_1B91B1D48()
{
  result = qword_1EBAC7410;
  if (!qword_1EBAC7410)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioGenre, &type metadata for Apple_Parsec_Siri_V2alpha_AudioGenre, v0, v1);
    atomic_store(result, &qword_1EBAC7410);
  }

  return result;
}

unint64_t sub_1B91B1DA0()
{
  result = qword_1EBAC7418;
  if (!qword_1EBAC7418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioGenre, &type metadata for Apple_Parsec_Siri_V2alpha_AudioGenre, v0, v1);
    atomic_store(result, &qword_1EBAC7418);
  }

  return result;
}

unint64_t sub_1B91B1DF8()
{
  result = qword_1EBAC7420;
  if (!qword_1EBAC7420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioGenre, &type metadata for Apple_Parsec_Siri_V2alpha_AudioGenre, v0, v1);
    atomic_store(result, &qword_1EBAC7420);
  }

  return result;
}

unint64_t sub_1B91B1E80()
{
  result = qword_1EBAC7438;
  if (!qword_1EBAC7438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioModifier, &type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier, v0, v1);
    atomic_store(result, &qword_1EBAC7438);
  }

  return result;
}

unint64_t sub_1B91B1ED8()
{
  result = qword_1EBAC7440;
  if (!qword_1EBAC7440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioModifier, &type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier, v0, v1);
    atomic_store(result, &qword_1EBAC7440);
  }

  return result;
}

unint64_t sub_1B91B1F30()
{
  result = qword_1EBAC7448;
  if (!qword_1EBAC7448)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioModifier, &type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier, v0, v1);
    atomic_store(result, &qword_1EBAC7448);
  }

  return result;
}

unint64_t sub_1B91B1FB8()
{
  result = qword_1EBAC7460;
  if (!qword_1EBAC7460)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioReference, &type metadata for Apple_Parsec_Siri_V2alpha_AudioReference, v0, v1);
    atomic_store(result, &qword_1EBAC7460);
  }

  return result;
}

unint64_t sub_1B91B2010()
{
  result = qword_1EBAC7468;
  if (!qword_1EBAC7468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioReference, &type metadata for Apple_Parsec_Siri_V2alpha_AudioReference, v0, v1);
    atomic_store(result, &qword_1EBAC7468);
  }

  return result;
}

unint64_t sub_1B91B2068()
{
  result = qword_1EBAC7470;
  if (!qword_1EBAC7470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioReference, &type metadata for Apple_Parsec_Siri_V2alpha_AudioReference, v0, v1);
    atomic_store(result, &qword_1EBAC7470);
  }

  return result;
}

unint64_t sub_1B91B20F0()
{
  result = qword_1EBAC7488;
  if (!qword_1EBAC7488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDecade, &type metadata for Apple_Parsec_Siri_V2alpha_AudioDecade, v0, v1);
    atomic_store(result, &qword_1EBAC7488);
  }

  return result;
}

unint64_t sub_1B91B2148()
{
  result = qword_1EBAC7490;
  if (!qword_1EBAC7490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDecade, &type metadata for Apple_Parsec_Siri_V2alpha_AudioDecade, v0, v1);
    atomic_store(result, &qword_1EBAC7490);
  }

  return result;
}

unint64_t sub_1B91B21A0()
{
  result = qword_1EBAC7498;
  if (!qword_1EBAC7498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDecade, &type metadata for Apple_Parsec_Siri_V2alpha_AudioDecade, v0, v1);
    atomic_store(result, &qword_1EBAC7498);
  }

  return result;
}

unint64_t sub_1B91B2228()
{
  result = qword_1EBAC74B0;
  if (!qword_1EBAC74B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSort, &type metadata for Apple_Parsec_Siri_V2alpha_AudioSort, v0, v1);
    atomic_store(result, &qword_1EBAC74B0);
  }

  return result;
}

unint64_t sub_1B91B2280()
{
  result = qword_1EBAC74B8;
  if (!qword_1EBAC74B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSort, &type metadata for Apple_Parsec_Siri_V2alpha_AudioSort, v0, v1);
    atomic_store(result, &qword_1EBAC74B8);
  }

  return result;
}

unint64_t sub_1B91B22D8()
{
  result = qword_1EBAC74C0;
  if (!qword_1EBAC74C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSort, &type metadata for Apple_Parsec_Siri_V2alpha_AudioSort, v0, v1);
    atomic_store(result, &qword_1EBAC74C0);
  }

  return result;
}

unint64_t sub_1B91B2360()
{
  result = qword_1EBAC74D8;
  if (!qword_1EBAC74D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioAttribute, &type metadata for Apple_Parsec_Siri_V2alpha_AudioAttribute, v0, v1);
    atomic_store(result, &qword_1EBAC74D8);
  }

  return result;
}

unint64_t sub_1B91B23B8()
{
  result = qword_1EBAC74E0;
  if (!qword_1EBAC74E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioAttribute, &type metadata for Apple_Parsec_Siri_V2alpha_AudioAttribute, v0, v1);
    atomic_store(result, &qword_1EBAC74E0);
  }

  return result;
}

unint64_t sub_1B91B2410()
{
  result = qword_1EBAC74E8;
  if (!qword_1EBAC74E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioAttribute, &type metadata for Apple_Parsec_Siri_V2alpha_AudioAttribute, v0, v1);
    atomic_store(result, &qword_1EBAC74E8);
  }

  return result;
}

unint64_t sub_1B91B2498()
{
  result = qword_1EBAC7500;
  if (!qword_1EBAC7500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, &type metadata for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, v0, v1);
    atomic_store(result, &qword_1EBAC7500);
  }

  return result;
}

unint64_t sub_1B91B24F0()
{
  result = qword_1EBAC7508;
  if (!qword_1EBAC7508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, &type metadata for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, v0, v1);
    atomic_store(result, &qword_1EBAC7508);
  }

  return result;
}

unint64_t sub_1B91B2548()
{
  result = qword_1EBAC7510;
  if (!qword_1EBAC7510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, &type metadata for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, v0, v1);
    atomic_store(result, &qword_1EBAC7510);
  }

  return result;
}

unint64_t sub_1B91B25D0()
{
  result = qword_1EBAC7528;
  if (!qword_1EBAC7528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioRadioType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioRadioType, v0, v1);
    atomic_store(result, &qword_1EBAC7528);
  }

  return result;
}

unint64_t sub_1B91B2628()
{
  result = qword_1EBAC7530;
  if (!qword_1EBAC7530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioRadioType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioRadioType, v0, v1);
    atomic_store(result, &qword_1EBAC7530);
  }

  return result;
}

unint64_t sub_1B91B2680()
{
  result = qword_1EBAC7538;
  if (!qword_1EBAC7538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioRadioType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioRadioType, v0, v1);
    atomic_store(result, &qword_1EBAC7538);
  }

  return result;
}

unint64_t sub_1B91B2708()
{
  result = qword_1EBAC7550;
  if (!qword_1EBAC7550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ImageType, &type metadata for Apple_Parsec_Siri_V2alpha_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7550);
  }

  return result;
}

unint64_t sub_1B91B2760()
{
  result = qword_1EBAC7558;
  if (!qword_1EBAC7558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ImageType, &type metadata for Apple_Parsec_Siri_V2alpha_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7558);
  }

  return result;
}

unint64_t sub_1B91B27B8()
{
  result = qword_1EBAC7560;
  if (!qword_1EBAC7560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ImageType, &type metadata for Apple_Parsec_Siri_V2alpha_ImageType, v0, v1);
    atomic_store(result, &qword_1EBAC7560);
  }

  return result;
}

unint64_t sub_1B91B2840()
{
  result = qword_1EBAC7578;
  if (!qword_1EBAC7578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, v0, v1);
    atomic_store(result, &qword_1EBAC7578);
  }

  return result;
}

unint64_t sub_1B91B2898()
{
  result = qword_1EBAC7580;
  if (!qword_1EBAC7580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, v0, v1);
    atomic_store(result, &qword_1EBAC7580);
  }

  return result;
}

unint64_t sub_1B91B28F0()
{
  result = qword_1EBAC7588;
  if (!qword_1EBAC7588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier, v0, v1);
    atomic_store(result, &qword_1EBAC7588);
  }

  return result;
}

unint64_t sub_1B91B2948()
{
  result = qword_1EBAC7590;
  if (!qword_1EBAC7590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC7590);
  }

  return result;
}

unint64_t sub_1B91B29A0()
{
  result = qword_1EBAC7598;
  if (!qword_1EBAC7598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC7598);
  }

  return result;
}

unint64_t sub_1B91B29F8()
{
  result = qword_1EBAC75A0;
  if (!qword_1EBAC75A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType, v0, v1);
    atomic_store(result, &qword_1EBAC75A0);
  }

  return result;
}

unint64_t sub_1B91B2A50()
{
  result = qword_1EBAC75A8;
  if (!qword_1EBAC75A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, v0, v1);
    atomic_store(result, &qword_1EBAC75A8);
  }

  return result;
}

unint64_t sub_1B91B2AA8()
{
  result = qword_1EBAC75B0;
  if (!qword_1EBAC75B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, v0, v1);
    atomic_store(result, &qword_1EBAC75B0);
  }

  return result;
}

unint64_t sub_1B91B2B00()
{
  result = qword_1EBAC75B8;
  if (!qword_1EBAC75B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint, v0, v1);
    atomic_store(result, &qword_1EBAC75B8);
  }

  return result;
}

unint64_t sub_1B91B2BE8()
{
  result = qword_1EBAC75F0;
  if (!qword_1EBAC75F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, v0, v1);
    atomic_store(result, &qword_1EBAC75F0);
  }

  return result;
}

unint64_t sub_1B91B2C40()
{
  result = qword_1EBAC75F8;
  if (!qword_1EBAC75F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, v0, v1);
    atomic_store(result, &qword_1EBAC75F8);
  }

  return result;
}

unint64_t sub_1B91B2C98()
{
  result = qword_1EBAC7600;
  if (!qword_1EBAC7600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, &type metadata for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType, v0, v1);
    atomic_store(result, &qword_1EBAC7600);
  }

  return result;
}

uint64_t sub_1B91B3F74(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4080(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B91B41EC(319, &qword_1ED9CF5F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B91B41EC(319, &qword_1ED9EB808, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B91B41EC(319, &qword_1ED9CF7E0, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B91B41EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B91B4278(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4334(uint64_t a1)
{
  sub_1B91B41EC(319, &qword_1ED9CF538, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91B445C(uint64_t a1)
{
  sub_1B91B41EC(319, &qword_1ED9CF560, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91B4554(uint64_t a1)
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

uint64_t sub_1B91B4630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B91B475C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4814(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B91B41EC(319, &qword_1ED9CF568, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B91B497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91B4A08(uint64_t a1)
{
  sub_1B91B41EC(319, &qword_1ED9EBDA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B91B41EC(319, &qword_1ED9EC550, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B91B41EC(319, &qword_1ED9EC7C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B91B41EC(319, qword_1ED9D10E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B91B4C38(uint64_t a1)
{
  sub_1B91B41EC(319, &qword_1ED9EB7F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B91B4D78(uint64_t a1)
{
  sub_1B91B41EC(319, &qword_1EBAB4558, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B91B4E8C()
{
  result = qword_1EBAC77F0;
  if (!qword_1EBAC77F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioRadioType, &type metadata for Apple_Parsec_Siri_V2alpha_AudioRadioType, v0, v1);
    atomic_store(result, &qword_1EBAC77F0);
  }

  return result;
}

unint64_t sub_1B91B4EE0()
{
  result = qword_1EBAC77F8;
  if (!qword_1EBAC77F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, &type metadata for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel, v0, v1);
    atomic_store(result, &qword_1EBAC77F8);
  }

  return result;
}

unint64_t sub_1B91B4F34()
{
  result = qword_1EBAC7800;
  if (!qword_1EBAC7800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioAttribute, &type metadata for Apple_Parsec_Siri_V2alpha_AudioAttribute, v0, v1);
    atomic_store(result, &qword_1EBAC7800);
  }

  return result;
}

unint64_t sub_1B91B4F88()
{
  result = qword_1EBAC7808;
  if (!qword_1EBAC7808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioSort, &type metadata for Apple_Parsec_Siri_V2alpha_AudioSort, v0, v1);
    atomic_store(result, &qword_1EBAC7808);
  }

  return result;
}

unint64_t sub_1B91B4FDC()
{
  result = qword_1EBAC7810;
  if (!qword_1EBAC7810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDecade, &type metadata for Apple_Parsec_Siri_V2alpha_AudioDecade, v0, v1);
    atomic_store(result, &qword_1EBAC7810);
  }

  return result;
}

unint64_t sub_1B91B5030()
{
  result = qword_1EBAC7818;
  if (!qword_1EBAC7818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioReference, &type metadata for Apple_Parsec_Siri_V2alpha_AudioReference, v0, v1);
    atomic_store(result, &qword_1EBAC7818);
  }

  return result;
}

unint64_t sub_1B91B5084()
{
  result = qword_1EBAC7820;
  if (!qword_1EBAC7820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioModifier, &type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier, v0, v1);
    atomic_store(result, &qword_1EBAC7820);
  }

  return result;
}

unint64_t sub_1B91B50D8()
{
  result = qword_1EBAC7828;
  if (!qword_1EBAC7828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioGenre, &type metadata for Apple_Parsec_Siri_V2alpha_AudioGenre, v0, v1);
    atomic_store(result, &qword_1EBAC7828);
  }

  return result;
}

unint64_t sub_1B91B512C()
{
  result = qword_1EBAC7830;
  if (!qword_1EBAC7830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioMood, &type metadata for Apple_Parsec_Siri_V2alpha_AudioMood, v0, v1);
    atomic_store(result, &qword_1EBAC7830);
  }

  return result;
}

unint64_t sub_1B91B5180()
{
  result = qword_1EBAC7838;
  if (!qword_1EBAC7838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioActivity, &type metadata for Apple_Parsec_Siri_V2alpha_AudioActivity, v0, v1);
    atomic_store(result, &qword_1EBAC7838);
  }

  return result;
}

unint64_t sub_1B91B51D4()
{
  result = qword_1EBAC7840;
  if (!qword_1EBAC7840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioNoun, &type metadata for Apple_Parsec_Siri_V2alpha_AudioNoun, v0, v1);
    atomic_store(result, &qword_1EBAC7840);
  }

  return result;
}

unint64_t sub_1B91B5228()
{
  result = qword_1EBAC7848;
  if (!qword_1EBAC7848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RequestedMediaType, &type metadata for Apple_Parsec_Siri_V2alpha_RequestedMediaType, v0, v1);
    atomic_store(result, &qword_1EBAC7848);
  }

  return result;
}

unint64_t sub_1B91B527C()
{
  result = qword_1EBAC7850;
  if (!qword_1EBAC7850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioVerb, &type metadata for Apple_Parsec_Siri_V2alpha_AudioVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7850);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_57(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_24(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_15()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_8()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_115_6(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_141_9(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_172_3(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_200_4()
{

  return sub_1B91A7968();
}

uint64_t sub_1B91B593C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1B8DD9078(v2, &v10 - v6, &qword_1EBAC7888, &qword_1B96A1710);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBAC7888, &qword_1B96A1710);
    *a1 = MEMORY[0x1E69E7CC0];
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_68();
    return sub_1B91B70E4();
  }
}

uint64_t sub_1B91B5AF0(uint64_t a1)
{
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B91B621C();
  return Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_432();
  sub_1B91B70E4();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void (*Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.resultsV0Alpha.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  *v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[1] = v7;
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v4[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v4[3] = v10;
  sub_1B8DD9078(v2, v7, &qword_1EBAC7888, &qword_1B96A1710);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  v4[4] = v11;
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBAC7888, &qword_1B96A1710);
    *v10 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_68();
    sub_1B91B70E4();
  }

  return sub_1B91B5D60;
}

void sub_1B91B5D60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    sub_1B91B621C();
    sub_1B8D9207C(v6, &qword_1EBAC7888, &qword_1B96A1710);
    sub_1B91B70E4();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_3_40();
    sub_1B91B5E60(v3, v7);
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAC7888, &qword_1B96A1710);
    OUTLINED_FUNCTION_0_68();
    sub_1B91B70E4();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_1B91B5E60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  OUTLINED_FUNCTION_59_1();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v17 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7890, &qword_1B96A1718);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B91B621C();
  sub_1B91B621C();
  sub_1B91B70E4();
  sub_1B91B70E4();
  sub_1B8D60FB8(*v7, *v5);
  if (v10)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_40();
    sub_1B8CD2B10(v11, v12, MEMORY[0x1E69AAC10]);
    v13 = sub_1B964C850();
    sub_1B91B5E60(v5, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    sub_1B91B5E60(v7, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    if (v13)
    {
      return 1;
    }
  }

  else
  {
    sub_1B91B5E60(v5, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    v15 = OUTLINED_FUNCTION_432();
    sub_1B91B5E60(v15, v16);
  }

  return 0;
}

uint64_t sub_1B91B621C()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91B62E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3C70);
  __swift_project_value_buffer(v0, qword_1EBAB3C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "results_v0alpha";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB3C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB3C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_432();
      sub_1B91B6558(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B91B6558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC78B8, &qword_1B96A1918);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8DD9078(a1, v10, &qword_1EBAC7888, &qword_1B96A1710);
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC7888, &qword_1B96A1710);
  }

  else
  {
    sub_1B91B70E4();
    sub_1B91B70E4();
    sub_1B8D9207C(v18, &qword_1EBAC78B8, &qword_1B96A1918);
    sub_1B91B70E4();
    sub_1B91B70E4();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B8CD2B10(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
  v20 = v27;
  sub_1B964C580();
  if (v20)
  {
    v21 = v18;
    return sub_1B8D9207C(v21, &qword_1EBAC78B8, &qword_1B96A1918);
  }

  sub_1B8DD9078(v18, v16, &qword_1EBAC78B8, &qword_1B96A1918);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC78B8, &qword_1B96A1918);
    v21 = v16;
    return sub_1B8D9207C(v21, &qword_1EBAC78B8, &qword_1B96A1918);
  }

  sub_1B91B70E4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBAC78B8, &qword_1B96A1918);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAC7888, &qword_1B96A1710);
  sub_1B91B70E4();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3;
  sub_1B8DD9078(v3, v8, &qword_1EBAC7888, &qword_1B96A1710);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAC7888, &qword_1B96A1710);
  }

  else
  {
    OUTLINED_FUNCTION_0_68();
    sub_1B91B70E4();
    sub_1B8CD2B10(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults, protocol conformance descriptor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);
    sub_1B964C740();
    OUTLINED_FUNCTION_3_40();
    result = sub_1B91B5E60(v11, v13);
    if (v4)
    {
      return result;
    }
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(v2);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7898, &qword_1B96A1720);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_1B8DD9078(v1, &v22 - v13, &qword_1EBAC7888, &qword_1B96A1710);
  sub_1B8DD9078(v0, &v14[v15], &qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_50(v14);
  if (v16)
  {
    OUTLINED_FUNCTION_50(&v14[v15]);
    if (v16)
    {
      sub_1B8D9207C(v14, &qword_1EBAC7888, &qword_1B96A1710);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_40();
      sub_1B8CD2B10(v19, v20, MEMORY[0x1E69AAC10]);
      v17 = sub_1B964C850();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_1B8DD9078(v14, v9, &qword_1EBAC7888, &qword_1B96A1710);
  OUTLINED_FUNCTION_50(&v14[v15]);
  if (v16)
  {
    sub_1B91B5E60(v9, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results);
LABEL_9:
    sub_1B8D9207C(v14, &qword_1EBAC7898, &qword_1B96A1720);
    goto LABEL_10;
  }

  sub_1B91B70E4();
  v18 = static Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results.== infix(_:_:)(v9, v5);
  sub_1B91B5E60(v5, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results);
  sub_1B91B5E60(v9, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results);
  sub_1B8D9207C(v14, &qword_1EBAC7888, &qword_1B96A1710);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  sub_1B8CD2B10(&qword_1EBAC78A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91B6F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B10(&qword_1EBAC78B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91B6FF4(uint64_t a1)
{
  v2 = sub_1B8CD2B10(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91B7064(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2B10(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91B70E4()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

void sub_1B91B7280(uint64_t a1)
{
  sub_1B91B7304(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91B7304(uint64_t a1)
{
  if (!qword_1ED9CF960)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent.OneOf_Results(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9CF960);
    }
  }
}

uint64_t sub_1B91B735C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B8D11E90);
}

uint64_t sub_1B91B73B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B8D11F14);
}

uint64_t sub_1B91B741C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1B91B753C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BBF38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B761C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchVerb.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91B7650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BBF8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchNoun.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91B7764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BBFE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7844@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91B7894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BC034();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91B79B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BC088();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7A98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ParkingLocationActionType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoExperienceType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B91B7B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA744();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91B7BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_GeoExperienceType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v5);
  OUTLINED_FUNCTION_115(*(v6 + 24));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    Apple_Parsec_Siri_V2alpha_LocationSearchNode.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC79C8, &qword_1B96A1920);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_41();
    OUTLINED_FUNCTION_182();
    return sub_1B91B8360();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_2_41();
  sub_1B91B8360();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0) + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v11)
  {
    *v10 = 0;
    v10[8] = 1;
    *(v10 + 2) = 0;
    v10[24] = 1;
    *(v10 + 4) = 0;
    v10[40] = 1;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0xE000000000000000;
    *(v10 + 8) = 0;
    *(v10 + 9) = 0xE000000000000000;
    *(v10 + 10) = 0;
    *(v10 + 11) = 0xE000000000000000;
    *(v10 + 12) = 0;
    v10[104] = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBAC79C8, &qword_1B96A1920);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_41();
    sub_1B91B8360();
  }

  return sub_1B91B7FA8;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v2);
  OUTLINED_FUNCTION_115(*(v3 + 24));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &qword_1B96A1920);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_GeoClientComponent.clearLocationSearchNode()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC79C8, &qword_1B96A1920);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v5);
  OUTLINED_FUNCTION_115(*(v6 + 28));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = xmmword_1B9652FE0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC79D0, &qword_1B96A1928);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_182();
    return sub_1B91B8360();
  }

  return result;
}

uint64_t sub_1B91B81E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B91B8670();
  return a7(v11);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_3_41();
  sub_1B91B8360();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = xmmword_1B9652FE0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91B8360()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

void (*Apple_Parsec_Siri_V2alpha_GeoClientComponent.parkingLocationAction.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[8] = 1;
    *(v10 + 1) = xmmword_1B9652FE0;
    *(v10 + 4) = 0;
    *(v10 + 5) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC79D0, &qword_1B96A1928);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_41();
    sub_1B91B8360();
  }

  return sub_1B91B853C;
}

void sub_1B91B8564(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = (*a1)[2];
  v13 = **a1;
  if (a2)
  {
    sub_1B91B8670();
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B91B8360();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_1B91B86C8();
  }

  else
  {
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B91B8360();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_1B91B8670()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B91B86C8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasParkingLocationAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v2);
  OUTLINED_FUNCTION_115(*(v3 + 28));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &qword_1B96A1928);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_GeoClientComponent.clearParkingLocationAction()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAC79D0, &qword_1B96A1928);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.experienceType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_GeoClientComponent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchNoun.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchConfirmation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.occupantFullName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.personRelationship.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.locationSearchIncidentType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(v2) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_LocationSearchNode.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.placeData.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.placeData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.note.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.unknownFields.getter()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_ParkingLocationAction.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(v0);
  return nullsub_1;
}

uint64_t sub_1B91B8FB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC78F0);
  __swift_project_value_buffer(v0, qword_1EBAC78F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCATION_SEARCH_VERB_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_VERB_SHARE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCATION_SEARCH_VERB_STOP_SHARE";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCATION_SEARCH_VERB_REPORT";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LOCATION_SEARCH_VERB_CONFIRM_REPORT";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "LOCATION_SEARCH_VERB_CLEAR_REPORT";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9298()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7908);
  __swift_project_value_buffer(v0, qword_1EBAC7908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOCATION_SEARCH_NOUN_UNKNOWN";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_NOUN_ETA";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9488()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7920);
  __swift_project_value_buffer(v0, qword_1EBAC7920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCATION_SEARCH_CONFIRMATION_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_CONFIRMATION_YES";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCATION_SEARCH_CONFIRMATION_NO";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCATION_SEARCH_CONFIRMATION_CANCEL";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B96F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7938);
  __swift_project_value_buffer(v0, qword_1EBAC7938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCATION_SEARCH_INCIDENT_TYPE_UNKNOWN";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCATION_SEARCH_INCIDENT_TYPE_ACCIDENT";
  *(v10 + 8) = 38;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCATION_SEARCH_INCIDENT_TYPE_INCIDENT";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCATION_SEARCH_INCIDENT_TYPE_PROBLEM";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LOCATION_SEARCH_INCIDENT_TYPE_HAZARD";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "LOCATION_SEARCH_INCIDENT_TYPE_SPEED_CHECK";
  *(v18 + 1) = 41;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "LOCATION_SEARCH_INCIDENT_TYPE_ROADWORK";
  *(v20 + 1) = 38;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "LOCATION_SEARCH_INCIDENT_TYPE_LANE_CLOSED";
  *(v22 + 1) = 41;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "LOCATION_SEARCH_INCIDENT_TYPE_ROAD_CLOSED";
  *(v24 + 1) = 41;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "LOCATION_SEARCH_INCIDENT_TYPE_RED_LIGHT_CAMERA";
  *(v26 + 1) = 46;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9ACC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7950);
  __swift_project_value_buffer(v0, qword_1EBAC7950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PARKING_LOCATION_ACTION_TYPE_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PARKING_LOCATION_ACTION_TYPE_SAVE";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARKING_LOCATION_ACTION_TYPE_RETRIEVE";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PARKING_LOCATION_ACTION_TYPE_DELETE";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9D34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7968);
  __swift_project_value_buffer(v0, qword_1EBAC7968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GEO_EXPERIENCE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GEO_EXPERIENCE_WHERE_AM_I";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91B9F30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7980);
  __swift_project_value_buffer(v0, qword_1EBAC7980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location_search_node";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parking_location_action";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "experience_type";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91BA344(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91BA290(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91BA1DC(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B91BA1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);
  return sub_1B964C580();
}

uint64_t sub_1B91BA290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoClientComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v30 = a3;
  v26 = a1;
  v27 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v23[1] = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1B8D9207C(v16, &qword_1EBAC79C8, &qword_1B96A1920);
  }

  else
  {
    sub_1B91B8360();
    sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);
    OUTLINED_FUNCTION_31_19();
    sub_1B964C740();
    result = sub_1B91B86C8();
    if (v4)
    {
      return result;
    }
  }

  sub_1B8D92024();
  v20 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v20, v21, v24) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAC79D0, &qword_1B96A1928);
  }

  else
  {
    sub_1B91B8360();
    sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);
    OUTLINED_FUNCTION_31_19();
    sub_1B964C740();
    result = sub_1B91B86C8();
    if (v4)
    {
      return result;
    }
  }

  if (!*v6)
  {
    return sub_1B964C290();
  }

  v22 = *(v6 + 8);
  v28 = *v6;
  v29 = v22;
  sub_1B91BA744();
  OUTLINED_FUNCTION_31_19();
  result = sub_1B964C680();
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

unint64_t sub_1B91BA744()
{
  result = qword_1EBAC79D8;
  if (!qword_1EBAC79D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoExperienceType, &type metadata for Apple_Parsec_Siri_V2alpha_GeoExperienceType, v0, v1);
    atomic_store(result, &qword_1EBAC79D8);
  }

  return result;
}

uint64_t sub_1B91BA798(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t static Apple_Parsec_Siri_V2alpha_GeoClientComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v36[1] = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79D0, &qword_1B96A1928);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v36[2] = v36 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79F0, &qword_1B96A1930);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v40 = v36 - v11;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79C8, &qword_1B96A1920);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC79F8, &qword_1B96A1938) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v36 - v17;
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  v19 = *(v15 + 56);
  v41 = a1;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v18);
  if (v20)
  {
    OUTLINED_FUNCTION_48(&v18[v19]);
    if (v20)
    {
      sub_1B8D9207C(v18, &qword_1EBAC79C8, &qword_1B96A1920);
      goto LABEL_11;
    }

LABEL_9:
    v21 = &qword_1EBAC79F8;
    v22 = &qword_1B96A1938;
    v23 = v18;
LABEL_20:
    sub_1B8D9207C(v23, v21, v22);
    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(&v18[v19]);
  if (v20)
  {
    sub_1B91B86C8();
    goto LABEL_9;
  }

  sub_1B91B8360();
  v24 = static Apple_Parsec_Siri_V2alpha_LocationSearchNode.== infix(_:_:)();
  sub_1B91B86C8();
  sub_1B91B86C8();
  sub_1B8D9207C(v18, &qword_1EBAC79C8, &qword_1B96A1920);
  if ((v24 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v25 = *(v37 + 48);
  v27 = v40;
  v26 = v41;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v27, 1, v39);
  if (!v20)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v27 + v25);
    if (!v28)
    {
      sub_1B91B8360();
      v31 = static Apple_Parsec_Siri_V2alpha_ParkingLocationAction.== infix(_:_:)();
      sub_1B91B86C8();
      sub_1B91B86C8();
      sub_1B8D9207C(v27, &qword_1EBAC79D0, &qword_1B96A1928);
      if ((v31 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    sub_1B91B86C8();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_48(v27 + v25);
  if (!v20)
  {
LABEL_19:
    v21 = &qword_1EBAC79F0;
    v22 = &qword_1B96A1930;
    v23 = v27;
    goto LABEL_20;
  }

  sub_1B8D9207C(v27, &qword_1EBAC79D0, &qword_1B96A1928);
LABEL_24:
  v32 = *v26;
  v33 = *a2;
  if (*(v26 + 8))
  {
    v32 = *v26 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v33)
    {
      if (v32 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!v32)
    {
LABEL_33:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_4_33();
      sub_1B91BA798(v34, v35, MEMORY[0x1E69AAC10]);
      v29 = sub_1B964C850();
      return v29 & 1;
    }
  }

  else if (v32 == v33)
  {
    goto LABEL_33;
  }

LABEL_21:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1B91BADA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA798(&qword_1EBAC7B78, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91BAE20(uint64_t a1)
{
  v2 = sub_1B91BA798(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91BAE90(uint64_t a1, uint64_t a2)
{
  sub_1B91BA798(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91BAF1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7998);
  __swift_project_value_buffer(v0, qword_1EBAC7998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "location_search_verb";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "location_search_noun";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "location_search_confirmation";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "occupant_full_name";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "person_place_id";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "person_relationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location_search_incident_type";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91BB300(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91BB368(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91BB3D0(v7, v8, v9, v10);
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B91BB438(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_LocationSearchNode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v2 || (OUTLINED_FUNCTION_94_4(), v3 = sub_1B91BBF38(), result = OUTLINED_FUNCTION_3_31(v11, 1, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, v3), !v0))
  {
    if (!v1[2] || (OUTLINED_FUNCTION_94_4(), v5 = sub_1B91BBF8C(), result = OUTLINED_FUNCTION_3_31(v11, 2, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, v5), !v0))
    {
      if (!v1[4] || (OUTLINED_FUNCTION_94_4(), v6 = sub_1B91BBFE0(), result = OUTLINED_FUNCTION_3_31(v11, 3, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, v6), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v8 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
            {
              if (!v1[12] || (OUTLINED_FUNCTION_94_4(), v10 = sub_1B91BC034(), result = OUTLINED_FUNCTION_3_31(v11, 7, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, v10), !v0))
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_LocationSearchNode.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v1 + 24))
  {
    v6 = v6 != 0;
  }

  if (*(v0 + 24) == 1)
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

  if (sub_1B8D92198(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
  {
    v8 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
    if (v8 || (sub_1B964C9F0() & 1) != 0)
    {
      v9 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
      if (v9 || (sub_1B964C9F0() & 1) != 0)
      {
        v10 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
        if (v10 || (sub_1B964C9F0()) && sub_1B8D92198(*(v1 + 96), *(v1 + 104), *(v0 + 96)))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode(0);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_4_33();
          v13 = sub_1B91BA798(v11, v12, MEMORY[0x1E69AAC10]);
          return OUTLINED_FUNCTION_634(v13) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B91BB898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA798(&qword_1EBAC7B70, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91BB918(uint64_t a1)
{
  v2 = sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91BB988(uint64_t a1, uint64_t a2)
{
  sub_1B91BA798(&qword_1EBAC79E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);

  return sub_1B964C5D0();
}

uint64_t sub_1B91BBA24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC79B0);
  __swift_project_value_buffer(v0, qword_1EBAC79B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parking_location_action_type";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_data";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "note";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91BBCE0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocationAction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v2 || (OUTLINED_FUNCTION_94_4(), v3 = sub_1B91BC088(), result = OUTLINED_FUNCTION_3_31(&v6, 1, &type metadata for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, v3), !v0))
  {
    if (sub_1B8D99EA8(*(v1 + 16), *(v1 + 24)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ParkingLocationAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 == v5)
  {
LABEL_6:
    if (MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]))
    {
      v6 = v1[4] == v0[4] && v1[5] == v0[5];
      if (v6 || (sub_1B964C9F0() & 1) != 0)
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction(0);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_4_33();
        v9 = sub_1B91BA798(v7, v8, MEMORY[0x1E69AAC10]);
        return OUTLINED_FUNCTION_634(v9) & 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1B91BBF38()
{
  result = qword_1EBAC7A08;
  if (!qword_1EBAC7A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7A08);
  }

  return result;
}

unint64_t sub_1B91BBF8C()
{
  result = qword_1EBAC7A10;
  if (!qword_1EBAC7A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, v0, v1);
    atomic_store(result, &qword_1EBAC7A10);
  }

  return result;
}

unint64_t sub_1B91BBFE0()
{
  result = qword_1EBAC7A18;
  if (!qword_1EBAC7A18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, v0, v1);
    atomic_store(result, &qword_1EBAC7A18);
  }

  return result;
}

unint64_t sub_1B91BC034()
{
  result = qword_1EBAC7A20;
  if (!qword_1EBAC7A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, v0, v1);
    atomic_store(result, &qword_1EBAC7A20);
  }

  return result;
}

unint64_t sub_1B91BC088()
{
  result = qword_1EBAC7A30;
  if (!qword_1EBAC7A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, &type metadata for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, v0, v1);
    atomic_store(result, &qword_1EBAC7A30);
  }

  return result;
}

uint64_t sub_1B91BC124(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B91BA798(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91BC208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91BA798(&qword_1EBAC7B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91BC288(uint64_t a1)
{
  v2 = sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91BC2F8(uint64_t a1, uint64_t a2)
{
  sub_1B91BA798(&qword_1EBAC79E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);

  return sub_1B964C5D0();
}

unint64_t sub_1B91BC378()
{
  result = qword_1EBAC7A40;
  if (!qword_1EBAC7A40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7A40);
  }

  return result;
}

unint64_t sub_1B91BC3D0()
{
  result = qword_1EBAC7A48;
  if (!qword_1EBAC7A48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7A48);
  }

  return result;
}

unint64_t sub_1B91BC428()
{
  result = qword_1EBAC7A50;
  if (!qword_1EBAC7A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, v0, v1);
    atomic_store(result, &qword_1EBAC7A50);
  }

  return result;
}

unint64_t sub_1B91BC4B0()
{
  result = qword_1EBAC7A68;
  if (!qword_1EBAC7A68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, v0, v1);
    atomic_store(result, &qword_1EBAC7A68);
  }

  return result;
}

unint64_t sub_1B91BC508()
{
  result = qword_1EBAC7A70;
  if (!qword_1EBAC7A70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, v0, v1);
    atomic_store(result, &qword_1EBAC7A70);
  }

  return result;
}

unint64_t sub_1B91BC560()
{
  result = qword_1EBAC7A78;
  if (!qword_1EBAC7A78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, v0, v1);
    atomic_store(result, &qword_1EBAC7A78);
  }

  return result;
}

unint64_t sub_1B91BC5E8()
{
  result = qword_1EBAC7A90;
  if (!qword_1EBAC7A90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, v0, v1);
    atomic_store(result, &qword_1EBAC7A90);
  }

  return result;
}

unint64_t sub_1B91BC640()
{
  result = qword_1EBAC7A98;
  if (!qword_1EBAC7A98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, v0, v1);
    atomic_store(result, &qword_1EBAC7A98);
  }

  return result;
}

unint64_t sub_1B91BC698()
{
  result = qword_1EBAC7AA0;
  if (!qword_1EBAC7AA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, v0, v1);
    atomic_store(result, &qword_1EBAC7AA0);
  }

  return result;
}

unint64_t sub_1B91BC720()
{
  result = qword_1EBAC7AB8;
  if (!qword_1EBAC7AB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, v0, v1);
    atomic_store(result, &qword_1EBAC7AB8);
  }

  return result;
}

unint64_t sub_1B91BC778()
{
  result = qword_1EBAC7AC0;
  if (!qword_1EBAC7AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, v0, v1);
    atomic_store(result, &qword_1EBAC7AC0);
  }

  return result;
}

unint64_t sub_1B91BC7D0()
{
  result = qword_1EBAC7AC8;
  if (!qword_1EBAC7AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &type metadata for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, v0, v1);
    atomic_store(result, &qword_1EBAC7AC8);
  }

  return result;
}

unint64_t sub_1B91BC858()
{
  result = qword_1EBAC7AE0;
  if (!qword_1EBAC7AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, &type metadata for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, v0, v1);
    atomic_store(result, &qword_1EBAC7AE0);
  }

  return result;
}

unint64_t sub_1B91BC8B0()
{
  result = qword_1EBAC7AE8;
  if (!qword_1EBAC7AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, &type metadata for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, v0, v1);
    atomic_store(result, &qword_1EBAC7AE8);
  }

  return result;
}

unint64_t sub_1B91BC908()
{
  result = qword_1EBAC7AF0;
  if (!qword_1EBAC7AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, &type metadata for Apple_Parsec_Siri_V2alpha_ParkingLocationActionType, v0, v1);
    atomic_store(result, &qword_1EBAC7AF0);
  }

  return result;
}

unint64_t sub_1B91BC990()
{
  result = qword_1EBAC7B08;
  if (!qword_1EBAC7B08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoExperienceType, &type metadata for Apple_Parsec_Siri_V2alpha_GeoExperienceType, v0, v1);
    atomic_store(result, &qword_1EBAC7B08);
  }

  return result;
}

unint64_t sub_1B91BC9E8()
{
  result = qword_1EBAC7B10;
  if (!qword_1EBAC7B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoExperienceType, &type metadata for Apple_Parsec_Siri_V2alpha_GeoExperienceType, v0, v1);
    atomic_store(result, &qword_1EBAC7B10);
  }

  return result;
}

unint64_t sub_1B91BCA40()
{
  result = qword_1EBAC7B18;
  if (!qword_1EBAC7B18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoExperienceType, &type metadata for Apple_Parsec_Siri_V2alpha_GeoExperienceType, v0, v1);
    atomic_store(result, &qword_1EBAC7B18);
  }

  return result;
}

void sub_1B91BCEB0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B91BCF94(319, &qword_1ED9D0FA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode);
    if (v2 <= 0x3F)
    {
      sub_1B91BCF94(319, &qword_1ED9D0598, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocationAction);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91BCF94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B91BD010(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B91BD0E8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B91BD2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D54AC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoVerb.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BD3A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoVerb.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91BD3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D5500();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoConfirmationValue.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BD4D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoConfirmationValue.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91BD508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D5554();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoPaginationValue.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BD5F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoPaginationValue.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.understanding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Apple_Parsec_Siri_V2alpha_VideoUnderstanding.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7D88, &qword_1B96A2810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_8();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.understanding.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D88, &qword_1B96A2810);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91C6920(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoClientComponent.understanding.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[8] = 1;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0xE000000000000000;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0xE000000000000000;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0xE000000000000000;
    *(v11 + 8) = 0;
    v11[72] = 1;
    *(v11 + 10) = MEMORY[0x1E69E7CC0];
    *(v11 + 11) = 0;
    v11[96] = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D88, &qword_1B96A2810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_8();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.results.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__results);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.targetDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7D90, &qword_1B96A2818);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t sub_1B91BDC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B91C6E5C();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.targetDevice.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D90, &qword_1B96A2818);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91C6920(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoClientComponent.targetDevice.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_114_0();
    v11[4] = 0;
    *(v11 + 40) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D90, &qword_1B96A2818);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B91BDF98()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91C6E5C();
    v2(v3);
    sub_1B91C6EB0();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B91BE06C(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11 - 8];
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_521(v4 + *a3, v16);
  OUTLINED_FUNCTION_179_3();
  sub_1B8F1B8B8();
  v13 = (a4)(0);
  OUTLINED_FUNCTION_178(v12, 1, v13);
  OUTLINED_FUNCTION_181_6();
  return v4;
}

void sub_1B91BE158()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B91C6920(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_179_3();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91BE258(uint64_t *a1)
{
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_10_4(v1 + *a1, v3);
}

void sub_1B91BE2D0()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_313();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v5);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91C6920(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  v12 = *v4;
  OUTLINED_FUNCTION_9_3(v9 + v12, v8);
  *(v9 + v12) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.utsSearchParams.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__utsSearchParams);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B91BE3EC(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {

    a4(v7);
  }

  else
  {
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B91C6920(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    v15 = *a3;
    OUTLINED_FUNCTION_59_3(v12 + v15);
    *(v12 + v15) = v5;
  }

  free(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.blockUgcNoResultsFallback.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__blockUgcNoResultsFallback);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.videoDialogComponent.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Apple_Parsec_Siri_V2alpha_VideoDialogComponent.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC7D98, &qword_1B96A2820);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_182();
    return sub_1B91C6E08();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.videoDialogComponent.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7D98, &qword_1B96A2820);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91C6920(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_177_6();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v2;
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 136) = v2;
  *(v1 + 144) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoClientComponent.videoDialogComponent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_51_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_114_0();
    v11[4] = 0;
    v11[5] = v13;
    v11[6] = 0;
    v11[7] = v13;
    v11[8] = 0;
    v11[9] = v13;
    v11[10] = 0;
    v11[11] = v13;
    v11[12] = 0;
    v11[13] = v13;
    v11[14] = 0;
    v11[15] = v13;
    v11[16] = 0;
    v11[17] = v13;
    *(v11 + 72) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC7D98, &qword_1B96A2820);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_246();
    sub_1B91C6E08();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91BE970(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_VideoClientComponent.summarizedKeywordSearch.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.summarizedKeywordSearch.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B91BEAB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_51_12();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4(v1 + v3, v4);
  return *(v1 + v3);
}

void sub_1B91BEB00()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91C6920(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  v12 = *v3;
  OUTLINED_FUNCTION_9_3(v9 + v12, v8);
  *(v9 + v12) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoClientComponent.shouldSwitchProfile.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_62_4();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_VideoClientComponentP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__shouldSwitchProfile);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91BEC00()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 72);
  v8 = *(*v4 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91C6920(v13);
    *(v12 + v11) = v10;
  }

  v14 = 48;
  if (v3)
  {
    v14 = 24;
  }

  v15 = *v1;
  OUTLINED_FUNCTION_18(v10 + v15, v5 + v14);
  *(v10 + v15) = v8;
  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.verb.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.confirmationValue.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.requestedProviderIds.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.paginationValue.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91BF04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91D55A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91BF134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.VideoHomeAutomationDeviceType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.values.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.object.getter()
{
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_10_4(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object, v1);
  OUTLINED_FUNCTION_209();
  return sub_1B8F1B8B8();
}

uint64_t sub_1B91BF374()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8F1B8B8();
  return Apple_Parsec_Siri_V2alpha_VideoResult.object.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoResult.object.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B91CAA80(v3);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}