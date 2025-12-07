uint64_t static Apple_Parsec_Siri_V2alpha_AppInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v1 + 40), *(v0 + 40)) & 1) == 0)
  {
    return 0;
  }

  sub_1B8D76B34(*(v1 + 48), *(v0 + 48));
  if ((v7 & 1) == 0 || *(v1 + 56) != *(v0 + 56))
  {
    return 0;
  }

  v8 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 80), *(v0 + 80));
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 88), *(v0 + 88));
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v1 + 96), *(v0 + 96)) & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB0554();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v1 + 112) == *(v0 + 112) && *(v1 + 120) == *(v0 + 120);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 128), *(v0 + 128));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(v1 + 136) == *(v0 + 136) && *(v1 + 144) == *(v0 + 144);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v1 + 152), *(v0 + 152));
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB0914();
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  v19 = sub_1B8CD2A80(v17, v18, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v19) & 1;
}

uint64_t sub_1B918930C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918938C(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C10, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91893FC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAC6C10, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B918947C()
{
  result = MEMORY[0x1BFADC850](0xD000000000000017, 0x80000001B970B840);
  qword_1EBAC6970 = 0xD000000000000021;
  *algn_1EBAC6978 = 0x80000001B970B2D0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.decodeMessage<A>(decoder:)()
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
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9189630(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  v10 = sub_1B8CD2A80(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B9189748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91897C8(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9189838(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);

  return sub_1B964C5D0();
}

uint64_t sub_1B91898D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5C58);
  __swift_project_value_buffer(v0, qword_1EBAB5C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "supported_intents";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supported_intent_media_categories";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "app_context";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "num_sirikit_video_apps";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
    {
      if (!v2[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
      {
        if (!v2[3] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  v8 = sub_1B8CD2A80(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B9189DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9189E60(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C30, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9189ED0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAC6C30, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9189F50()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6998);
  __swift_project_value_buffer(v0, qword_1EBAC6998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "INTENT_TYPE_NONE";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INTENT_TYPE_PLAY_MEDIA";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INTENT_TYPE_SEARCH_MEDIA";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918A17C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69B0);
  __swift_project_value_buffer(v0, qword_1EBAC69B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INTENT_MEDIA_CATEGORY_NONE";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INTENT_MEDIA_CATEGORY_MUSIC";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INTENT_MEDIA_CATEGORY_PODCASTS";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "INTENT_MEDIA_CATEGORY_AUDIOBOOKS";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "INTENT_MEDIA_CATEGORY_RADIO";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "INTENT_MEDIA_CATEGORY_GENERAL";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "INTENT_MEDIA_CATEGORY_VIDEO";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "INTENT_MEDIA_CATEGORY_SHORT_VIDEO";
  *(v22 + 1) = 33;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918A4E8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69C8);
  __swift_project_value_buffer(v0, qword_1EBAC69C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "APP_CONTEXT_NONE";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "APP_CONTEXT_SEARCH_PAGE";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "APP_CONTEXT_FOREGROUND";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918A72C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69E0);
  __swift_project_value_buffer(v0, qword_1EBAC69E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
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
  *v10 = "vocab_phrase";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "user_identification_needed";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.decodeMessage<A>(decoder:)()
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
        sub_1B964C4D0();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v3, v4, v5), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
    {
      if (*(v1 + 24) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v1 + 16), *(v0 + 16)) & 1) == 0 || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  v9 = sub_1B8CD2A80(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B918ABE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918AC68(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918ACD8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);

  return sub_1B964C5D0();
}

uint64_t sub_1B918AD70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC69F8);
  __swift_project_value_buffer(v0, qword_1EBAC69F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "show_in_app_string_search_results_metadata";
  *(v6 + 8) = 42;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "play_video_metadata";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B918B4C0(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B918AFC8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B918AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6CF0, &qword_1B969D610);
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
    sub_1B8D9207C(v10, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    sub_1B9184FE4();
    sub_1B9184FE4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9184D18();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC6CF0, &qword_1B969D610);
      sub_1B9184FE4();
      sub_1B9184FE4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC6CF0, &qword_1B969D610);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC6CF0, &qword_1B969D610);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC6CF0, &qword_1B969D610);
  }

  sub_1B9184FE4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC6CF0, &qword_1B969D610);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB99C8, &unk_1B96506F0);
  sub_1B9184FE4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B918B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6CF8, &unk_1B969D618);
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
    sub_1B8D9207C(v10, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    sub_1B9184FE4();
    sub_1B9184FE4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC6CF8, &unk_1B969D618);
      sub_1B9184FE4();
      sub_1B9184FE4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9184D18();
    }
  }

  sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC6CF8, &unk_1B969D618);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC6CF8, &unk_1B969D618);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC6CF8, &unk_1B969D618);
  }

  sub_1B9184FE4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC6CF8, &unk_1B969D618);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB99C8, &unk_1B96506F0);
  sub_1B9184FE4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  sub_1B8D92024();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B918BD10(v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B918BAFC(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_3_38();
  result = sub_1B9184D18();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B918BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9184FE4();
      sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);
      sub_1B964C740();
      return sub_1B9184D18();
    }

    result = sub_1B9184D18();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B918BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9184FE4();
      sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);
      sub_1B964C740();
      return sub_1B9184D18();
    }

    result = sub_1B9184D18();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_468();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v25 = OUTLINED_FUNCTION_686();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_183(v27);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_79();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99D0, &qword_1B969B9E0);
  OUTLINED_FUNCTION_183(v29);
  OUTLINED_FUNCTION_176();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &a9 - v32;
  v34 = *(v31 + 56);
  v35 = OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_643(v35, v36);
  OUTLINED_FUNCTION_643(v20, &v33[v34]);
  v37 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v37, v38, v23);
  if (v39)
  {
    OUTLINED_FUNCTION_178(&v33[v34], 1, v23);
    if (v39)
    {
      sub_1B8D9207C(v33, &qword_1EBAB99C8, &unk_1B96506F0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_66();
      v44 = sub_1B8CD2A80(v42, v43, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v44);
      goto LABEL_13;
    }

LABEL_9:
    sub_1B8D9207C(v33, &qword_1EBAB99D0, &qword_1B969B9E0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v33[v34], 1, v23);
  if (v39)
  {
    OUTLINED_FUNCTION_3_38();
    sub_1B9184D18();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_9_25();
  sub_1B9184FE4();
  static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata.== infix(_:_:)();
  v41 = v40;
  sub_1B9184D18();
  sub_1B9184D18();
  sub_1B8D9207C(v33, &qword_1EBAB99C8, &unk_1B96506F0);
  if (v41)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B918C218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918C298(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918C308(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B918C388()
{
  result = MEMORY[0x1BFADC850](0xD00000000000002BLL, 0x80000001B970B520);
  qword_1EBAC6A10 = 0xD000000000000033;
  *algn_1EBAC6A18 = 0x80000001B970B360;
  return result;
}

uint64_t sub_1B918C5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918C63C(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918C6AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAC6C68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B918C72C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6A38);
  __swift_project_value_buffer(v0, qword_1EBAC6A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STRING_SEARCH_SCOPE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STRING_SEARCH_SCOPE_GENERAL";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STRING_SEARCH_SCOPE_MOVIES";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "STRING_SEARCH_SCOPE_TV";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "STRING_SEARCH_SCOPE_FREEFORM_VIDEO";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B918C9D4()
{
  result = MEMORY[0x1BFADC850](0xD000000000000018, 0x80000001B970B440);
  qword_1EBAC6A50 = 0xD000000000000033;
  *algn_1EBAC6A58 = 0x80000001B970B360;
  return result;
}

uint64_t sub_1B918CAD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_113_0();
      a4(v8);
    }
  }

  return result;
}

uint64_t sub_1B918CBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_614();
  if (!*(*v6 + 16) || (v9(), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C600(), !v7))
  {
    a6(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B918CCCC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2A80(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B918CD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6C90, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918CE14(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918CE84(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAC6C80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B918CF04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6A78);
  __swift_project_value_buffer(v0, qword_1EBAC6A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_CATEGORY_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_CATEGORY_MOVIES";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_CATEGORY_TV";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_CATEGORY_FREEFORM";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B918D16C()
{
  result = qword_1EBAB4468;
  if (!qword_1EBAB4468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, v0, v1);
    atomic_store(result, &qword_1EBAB4468);
  }

  return result;
}

unint64_t sub_1B918D1C0()
{
  result = qword_1EBAB3F30;
  if (!qword_1EBAB3F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, v0, v1);
    atomic_store(result, &qword_1EBAB3F30);
  }

  return result;
}

unint64_t sub_1B918D214()
{
  result = qword_1EBAB3BB8;
  if (!qword_1EBAB3BB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, v0, v1);
    atomic_store(result, &qword_1EBAB3BB8);
  }

  return result;
}

unint64_t sub_1B918D268()
{
  result = qword_1EBAC6AE8;
  if (!qword_1EBAC6AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, v0, v1);
    atomic_store(result, &qword_1EBAC6AE8);
  }

  return result;
}

unint64_t sub_1B918D2BC()
{
  result = qword_1EBAC6AF8;
  if (!qword_1EBAC6AF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6AF8);
  }

  return result;
}

unint64_t sub_1B918D314()
{
  result = qword_1EBAB4460;
  if (!qword_1EBAB4460)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, v0, v1);
    atomic_store(result, &qword_1EBAB4460);
  }

  return result;
}

unint64_t sub_1B918D36C()
{
  result = qword_1EBAB4450;
  if (!qword_1EBAB4450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, v0, v1);
    atomic_store(result, &qword_1EBAB4450);
  }

  return result;
}

unint64_t sub_1B918D3C4()
{
  result = qword_1EBAB4458;
  if (!qword_1EBAB4458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, v0, v1);
    atomic_store(result, &qword_1EBAB4458);
  }

  return result;
}

unint64_t sub_1B918D44C()
{
  result = qword_1EBAB3F28;
  if (!qword_1EBAB3F28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, v0, v1);
    atomic_store(result, &qword_1EBAB3F28);
  }

  return result;
}

unint64_t sub_1B918D4A4()
{
  result = qword_1EBAB3F18;
  if (!qword_1EBAB3F18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, v0, v1);
    atomic_store(result, &qword_1EBAB3F18);
  }

  return result;
}

unint64_t sub_1B918D4FC()
{
  result = qword_1EBAB3F20;
  if (!qword_1EBAB3F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, v0, v1);
    atomic_store(result, &qword_1EBAB3F20);
  }

  return result;
}

unint64_t sub_1B918D584()
{
  result = qword_1EBAB3BB0;
  if (!qword_1EBAB3BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, v0, v1);
    atomic_store(result, &qword_1EBAB3BB0);
  }

  return result;
}

unint64_t sub_1B918D5DC()
{
  result = qword_1EBAB3BA0;
  if (!qword_1EBAB3BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, v0, v1);
    atomic_store(result, &qword_1EBAB3BA0);
  }

  return result;
}

unint64_t sub_1B918D634()
{
  result = qword_1EBAB3BA8;
  if (!qword_1EBAB3BA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, &type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState, v0, v1);
    atomic_store(result, &qword_1EBAB3BA8);
  }

  return result;
}

unint64_t sub_1B918D6BC()
{
  result = qword_1EBAC6B38;
  if (!qword_1EBAC6B38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, v0, v1);
    atomic_store(result, &qword_1EBAC6B38);
  }

  return result;
}

unint64_t sub_1B918D714()
{
  result = qword_1EBAC6B40;
  if (!qword_1EBAC6B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, v0, v1);
    atomic_store(result, &qword_1EBAC6B40);
  }

  return result;
}

unint64_t sub_1B918D76C()
{
  result = qword_1EBAC6B48;
  if (!qword_1EBAC6B48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, v0, v1);
    atomic_store(result, &qword_1EBAC6B48);
  }

  return result;
}

unint64_t sub_1B918D7C4()
{
  result = qword_1EBAC6B50;
  if (!qword_1EBAC6B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6B50);
  }

  return result;
}

unint64_t sub_1B918D81C()
{
  result = qword_1EBAC6B58;
  if (!qword_1EBAC6B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6B58);
  }

  return result;
}

unint64_t sub_1B918D874()
{
  result = qword_1EBAC6B60;
  if (!qword_1EBAC6B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6B60);
  }

  return result;
}

unint64_t sub_1B918D8CC()
{
  result = qword_1EBAC6B68;
  if (!qword_1EBAC6B68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, v0, v1);
    atomic_store(result, &qword_1EBAC6B68);
  }

  return result;
}

unint64_t sub_1B918D924()
{
  result = qword_1EBAC6B70;
  if (!qword_1EBAC6B70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, v0, v1);
    atomic_store(result, &qword_1EBAC6B70);
  }

  return result;
}

unint64_t sub_1B918D97C()
{
  result = qword_1EBAC6B78;
  if (!qword_1EBAC6B78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, v0, v1);
    atomic_store(result, &qword_1EBAC6B78);
  }

  return result;
}

unint64_t sub_1B918DA64()
{
  result = qword_1EBAC6BB0;
  if (!qword_1EBAC6BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, v0, v1);
    atomic_store(result, &qword_1EBAC6BB0);
  }

  return result;
}

unint64_t sub_1B918DABC()
{
  result = qword_1EBAC6BB8;
  if (!qword_1EBAC6BB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, v0, v1);
    atomic_store(result, &qword_1EBAC6BB8);
  }

  return result;
}

unint64_t sub_1B918DB14()
{
  result = qword_1EBAC6BC0;
  if (!qword_1EBAC6BC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope, v0, v1);
    atomic_store(result, &qword_1EBAC6BC0);
  }

  return result;
}

unint64_t sub_1B918DB6C()
{
  result = qword_1EBAC6BC8;
  if (!qword_1EBAC6BC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6BC8);
  }

  return result;
}

unint64_t sub_1B918DBC4()
{
  result = qword_1EBAC6BD0;
  if (!qword_1EBAC6BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6BD0);
  }

  return result;
}

unint64_t sub_1B918DC1C()
{
  result = qword_1EBAC6BD8;
  if (!qword_1EBAC6BD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, &type metadata for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6BD8);
  }

  return result;
}

void sub_1B918E748(uint64_t a1)
{
  sub_1B918E918(319, &qword_1ED9CF5E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918E83C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B918E918(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918E918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B918E9A4(uint64_t a1)
{
  sub_1B8DD7D14(319, qword_1EDA06FD0, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1B918E918(319, &qword_1EBAB3B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept, MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1B901FE74();
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1B918EB7C(319, &qword_1EBAB3B30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1B918EB7C(319, &qword_1EBAB3B20, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            v2 = sub_1B964C2B0();
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1B918EB7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C7C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B918EC1C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B918ECEC(uint64_t a1)
{
  sub_1B8DD7D14(319, qword_1EDA06FD0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918EDB8(uint64_t a1)
{
  sub_1B918E918(319, &qword_1EBAB3D10, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B918EE6C(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B918EF1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1B8DD7D14(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B918F004()
{
  result = qword_1EBAC6CD8;
  if (!qword_1EBAC6CD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext, v0, v1);
    atomic_store(result, &qword_1EBAC6CD8);
  }

  return result;
}

unint64_t sub_1B918F058()
{
  result = qword_1EBAC6CE0;
  if (!qword_1EBAC6CE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory, v0, v1);
    atomic_store(result, &qword_1EBAC6CE0);
  }

  return result;
}

unint64_t sub_1B918F0AC()
{
  result = qword_1EBAC6CE8;
  if (!qword_1EBAC6CE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, &type metadata for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType, v0, v1);
    atomic_store(result, &qword_1EBAC6CE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return sub_1B964C7B0();
}

uint64_t OUTLINED_FUNCTION_74_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1B964C5F0();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.results.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_AppsClientComponent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.bundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.adamID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.cardSections.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.marketplaceID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(v2) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_AppResult.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B918F870()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6D00);
  __swift_project_value_buffer(v0, qword_1EBAC6D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "results";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B918FA50(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B918FA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0);
  sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppsClientComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = *v0;
  if (!*(v2 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0), v3 = sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppResult), result = OUTLINED_FUNCTION_11_9(v2, 1, v4, v3), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppsClientComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1B8D67E68(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_56();
  v5 = sub_1B9190718(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B918FCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9190718(&qword_1EBAC6D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918FD50(uint64_t a1)
{
  v2 = sub_1B9190718(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918FDC0(uint64_t a1, uint64_t a2)
{
  sub_1B9190718(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B918FE5C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6D18);
  __swift_project_value_buffer(v0, qword_1EBAC6D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundle_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "adam_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "card_sections";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "marketplace_id";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 5:
        sub_1B964C530();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91901AC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91901AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_CardSection(0);
  sub_1B9190718(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        v12 = *(v1 + 48);
        if (!*(v12 + 16) || (type metadata accessor for Searchfoundation_CardSection(0), v13 = sub_1B9190718(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection, protocol conformance descriptor for Searchfoundation_CardSection), result = OUTLINED_FUNCTION_11_9(v12, 4, v14, v13), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 5), !v0))
          {
            type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppResult.== infix(_:_:)(uint64_t *a1, void *a2)
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

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D684DC(a1[6], a2[6]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[7] == a2[7] && a1[8] == a2[8];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_56();
  v11 = sub_1B9190718(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B91904C4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B9190718(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91905A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9190718(&qword_1EBAC6D78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9190628(uint64_t a1)
{
  v2 = sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9190698(uint64_t a1, uint64_t a2)
{
  sub_1B9190718(&qword_1EBAC6D30, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B9190718(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_1B91909C8(uint64_t a1)
{
  sub_1B9190B48(319, &qword_1ED9CF680, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppResult);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9190A90(uint64_t a1)
{
  sub_1B9190B48(319, &qword_1EBAC6D70, type metadata accessor for Searchfoundation_CardSection);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9190B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9190BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B527C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9190CBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioVerb.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9190D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91AC334();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9190DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9190E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91AC388();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9190EF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9190F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91AC3DC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioItemType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9191074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5228();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RequestedMediaType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91911A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B51D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191280@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioNoun.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91912B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5180();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91913AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioActivity.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioMood.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B9191418(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B512C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B91914F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioMood.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B919152C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B50D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919160C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioGenre.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9191640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5084();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191720@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioModifier.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9191770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B5030();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioReference.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9191894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4FDC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioDecade.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91919C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4F88();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191AA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioSort.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9191AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4F34();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191BB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioAttribute.allCases.getter(a1);
  *a2 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 3;
  v3 = 2;
  if (a2 == 10)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  if (a2 != 20)
  {
    v3 = v4;
  }

  if (a2 != 30)
  {
    v2 = v3;
  }

  if (!a2)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.rawValue.getter()
{
  if (v0[8])
  {
    return 10 * *v0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B9191C5C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9191C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4EE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9191DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B4E8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191EB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioRadioType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageType.rawValue.getter()
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

uint64_t sub_1B9191F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B11E0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9191FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ImageType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EBAB77B8 != -1)
    {
      OUTLINED_FUNCTION_141_9(&qword_1EBAB77B8);
    }

    *(a1 + v8) = qword_1EBAC70B8;
    v9 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v6);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71A0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91A0110(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_200_4();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v9);
  OUTLINED_FUNCTION_59_1();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_53_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v10 + 20);
    if (qword_1EBAB77B8 != -1)
    {
      OUTLINED_FUNCTION_141_9(&qword_1EBAB77B8);
    }

    *&v14[v16] = qword_1EBAC70B8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v10);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAC71A0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.modify()
{
  v1 = OUTLINED_FUNCTION_194_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_30(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v3);
  OUTLINED_FUNCTION_53_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults);
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 25) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71A8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91A0110(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_200_4();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 12) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  *(v1 + 25) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.playbackSignals.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_53_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v13[8] = 1;
    *(v13 + 3) = 0;
    *(v13 + 2) = 0;
    v13[24] = 1;
    *(v13 + 25) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC71A8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B919295C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91A79BC();
    v2(v3);
    sub_1B91A7A10();
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

uint64_t sub_1B9192A30(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  OUTLINED_FUNCTION_53_12();
  OUTLINED_FUNCTION_119_0(*(v5 + v15) + *a3);
  sub_1B8F1B8B8();
  a4(0);
  v16 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v16, v17, v18);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1B8D9207C(v14, v6, v4);
  return v20;
}

void sub_1B9192B2C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B91A0110(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9192C44(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v5(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v2 + *a2, v6);
}

void sub_1B9192D04()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_313();
  v11 = v10(v9);
  v12 = OUTLINED_FUNCTION_216_1(v11);
  v14 = *(v1 + v2);
  if ((v12 & 1) == 0)
  {
    v8(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v16 = v6(v15);
    OUTLINED_FUNCTION_192_2(v16);
  }

  v17 = *v4;
  OUTLINED_FUNCTION_9_3(v14 + v17, v13);
  *(v14 + v17) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.internalSignals.modify()
{
  v1 = OUTLINED_FUNCTION_194_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_30(v2);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v3);
  OUTLINED_FUNCTION_53_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals);
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.appBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9192FC8(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  v7 = (*(v2 + *(v6 + 20)) + *a2);
  OUTLINED_FUNCTION_6_2(v6);
  v8 = *v7;

  return v8;
}

void sub_1B91930AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_184_0();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23;
  OUTLINED_FUNCTION_16();
  v35 = *(v34(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v23 + v35);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v38 = OUTLINED_FUNCTION_40_0();
    v37 = v30(v38);
    *(v33 + v35) = v37;
  }

  v39 = (v37 + *v28);
  OUTLINED_FUNCTION_18(v39, &a10);
  *v39 = v24;
  v39[1] = v22;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.pegasusAudioType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.launchID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.systemExtensionBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.boltProxiedBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_53_12();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_10_4(v3 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection, v5);
  return *(v3 + v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A0110(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  v10 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  result = OUTLINED_FUNCTION_9_3(v7 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection, v6);
  *(v7 + v10) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.shouldPerformAppSelection.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_53_12();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9193740(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A0110(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_11_4();
  *(v6 + v9) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  sub_1B8F1B8B8();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  OUTLINED_FUNCTION_178(v1, 1, v6);
  if (v7)
  {
    *a1 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = v8;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_185_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_178(v1, 1, v6);
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71B0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_9();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91A0110(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_46_9();
  OUTLINED_FUNCTION_200_4();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  OUTLINED_FUNCTION_185_5();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_53_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v13[1] = MEMORY[0x1E69E7CC0];
    v13[2] = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_185_5();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC71B0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_9();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioIntentDetails.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v3);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  OUTLINED_FUNCTION_9_2();
  if (v4)
  {
    OUTLINED_FUNCTION_172_3(MEMORY[0x1E69E7CC0]);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v4)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC71B8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioIntentDetails.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91A0110(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_50_11();
  OUTLINED_FUNCTION_200_4();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.init()(uint64_t a1)
{
  OUTLINED_FUNCTION_172_3(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioIntentDetails.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_53_12();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = MEMORY[0x1E69E7CC0];
    v13[8] = 0;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 5) = 0;
    *(v13 + 6) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC71B8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91940A8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.playbackQueueLocation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.playbackRepeatMode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 12) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v5);
  OUTLINED_FUNCTION_115(*(v6 + 32));
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71C0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_12();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_122_0();
  sub_1B91A7968();
  OUTLINED_FUNCTION_185_5();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = MEMORY[0x1E69E7CC0];
    *(v10 + 4) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC71C0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_12();
    OUTLINED_FUNCTION_461();
    sub_1B91A7968();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.hasClientRankingOverrides.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v5);
  OUTLINED_FUNCTION_188(v0 + *(v6 + 32));
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClientSignals.clearClientRankingOverrides()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_185_5();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.internalSignals.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v5);
  OUTLINED_FUNCTION_115(*(v6 + 36));
  sub_1B8F1B8B8();
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71C8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_16();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_122_0();
  sub_1B91A7968();
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0) + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8F1B8B8();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC71C8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_16();
    OUTLINED_FUNCTION_461();
    sub_1B91A7968();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9194C38()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91A79BC();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B91A7968();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_1B91A7A10();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B91A7968();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.hasMusicRankingInfluenceImpactInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v5);
  OUTLINED_FUNCTION_188(v0 + *(v6 + 36));
  v7 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClientSignals.clearMusicRankingInfluenceImpactInfo()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC71C8, "R#\v");
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9194F04()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9194F8C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91951E8()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9195270()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.dynamiteClientStateErrors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.searchBoxString.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 16, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 16));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  OUTLINED_FUNCTION_71_2(*(v4 + 16));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91957C8()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 32, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 32));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 32, v6);
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 32);
  OUTLINED_FUNCTION_71_2(*(v4 + 32));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9195950()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void sub_1B91959EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.getter()
{
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 64, v6);
  *(v7 + 64) = v2;
  *(v7 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9195C58()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_41_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91A7C90(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

void sub_1B9195D04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.simple3PPlayMusic.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.simple3PPlayMusic.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 96, v6);
  *(v7 + 96) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.simple3PPlayMusic.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  *(v1 + 84) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9195F28(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 96) = v3;

  free(v1);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 104, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 104));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 104, v6);
  *(v7 + 104) = v1;
  *(v7 + 112) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 104);
  OUTLINED_FUNCTION_71_2(*(v4 + 104));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91960AC()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 104) = v1;
  *(v6 + 112) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.attributes.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 48) = *(v0 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.musicTitle.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.musicTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91963AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.getter()
{
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 160, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 160, v6);
  *(v7 + 160) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196604()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activities.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_41_15();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B91A7C90(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 160);
    *(v6 + 160) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.getter()
{
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 168, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 168, v6);
  *(v7 + 168) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 48) = *(v0 + 168);

  return OUTLINED_FUNCTION_514();
}

void sub_1B91967C8()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.moods.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_41_15();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B91A7C90(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 168);
    *(v6 + 168) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.getter()
{
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 176, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 176, v6);
  *(v7 + 176) = v2;
  *(v7 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  v4 = *(v0 + 184);
  *(v1 + 48) = *(v0 + 176);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B91969A0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_41_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91A7C90(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 176);
    *(v7 + 176) = v3;
    *(v7 + 184) = v2;
  }

  free(v0);
}

void sub_1B9196A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196B88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  v4 = *(v0 + 216);
  *(v1 + 48) = *(v0 + 208);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196CC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.showTitle.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.showTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  v4 = *(v0 + 232);
  *(v1 + 48) = *(v0 + 224);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.getter()
{
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 240, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 240, v6);
  *(v7 + 240) = v2;
  *(v7 + 248) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 240);
  v4 = *(v0 + 248);
  *(v1 + 48) = *(v0 + 240);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9196F30()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_41_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91A7C90(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 240);
    *(v7 + 240) = v3;
    *(v7 + 248) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.getter()
{
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 256, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 256, v6);
  *(v7 + 256) = v2;
  *(v7 + 264) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_39(v3);
  OUTLINED_FUNCTION_62_0(v0 + 256);
  v4 = *(v0 + 264);
  *(v1 + 48) = *(v0 + 256);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919710C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_41_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91A7C90(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 256);
    *(v7 + 256) = v3;
    *(v7 + 264) = v2;
  }

  free(v0);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 272, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 272));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 272, v6);
  *(v7 + 272) = v1;
  *(v7 + 280) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 272);
  OUTLINED_FUNCTION_71_2(*(v4 + 272));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91972A4()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 272) = v1;
  *(v6 + 280) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.getter()
{
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 288, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 288, v6);
  *(v7 + 288) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_13_24(v3);
  OUTLINED_FUNCTION_62_0(v0 + 288);
  *(v1 + 48) = *(v0 + 288);

  return OUTLINED_FUNCTION_514();
}

void sub_1B919745C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genres.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_41_15();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B91A7C90(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 288);
    *(v6 + 288) = v2;
  }

  free(v0);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 296, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 296));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 296, v6);
  *(v7 + 296) = v1;
  *(v7 + 304) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 296);
  OUTLINED_FUNCTION_71_2(*(v4 + 296));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91975F0()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 296) = v1;
  *(v6 + 304) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 312, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 312));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 312, v6);
  *(v7 + 312) = v1;
  *(v7 + 320) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 312);
  OUTLINED_FUNCTION_71_2(*(v4 + 312));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9197778()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 312) = v1;
  *(v6 + 320) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 328, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 328));
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = OUTLINED_FUNCTION_115_6(v4);
  v7 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 328, v6);
  *(v7 + 328) = v1;
  *(v7 + 336) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 328);
  OUTLINED_FUNCTION_71_2(*(v4 + 328));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9197900()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91A7C90(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 328) = v1;
  *(v6 + 336) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

double Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 344, v3);
  return *(v2 + 344);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91A7C90(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 344, v6);
  *(v7 + 344) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_29_22();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 344);
  *(v1 + 72) = *(v5 + 344);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9197AA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 344) = v3;

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.homeAutomationEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71D0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.homeAutomationEntity.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_115_6(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B91A7C90(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_47_9();
  OUTLINED_FUNCTION_200_4();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.homeAutomationEntity.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
    *v13 = MEMORY[0x1E69E7CC0];
    v13[1] = v15;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    v13[5] = 0xE000000000000000;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    v13[8] = 0;
    v13[9] = 0xE000000000000000;
    v13[10] = 0;
    *(v13 + 88) = 1;
    v13[12] = 0;
    *(v13 + 104) = 1;
    v13[14] = 0;
    *(v13 + 120) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC71D0, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.hasHomeAutomationEntity.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v5);
  OUTLINED_FUNCTION_77_0();
  v6 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity;
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity);
  OUTLINED_FUNCTION_188(v0 + v6);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_AudioUnderstanding.clearHomeAutomationEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91A7C90(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activity.modify()
{
  v1 = OUTLINED_FUNCTION_194_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_24(v2);
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity);
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.mood.modify()
{
  v1 = OUTLINED_FUNCTION_194_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_24(v2);
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood);
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genre.modify()
{
  v1 = OUTLINED_FUNCTION_194_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_13_24(v2);
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre);
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198434()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_22_5();
  if (v6)
  {
    v7 = v5;
    v8 = OUTLINED_FUNCTION_61_1();
    v7(v8);
  }

  else
  {
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = *(v0 + 64);
    v13 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v16 = OUTLINED_FUNCTION_40_0();
      v17 = v10(v16);
      OUTLINED_FUNCTION_228_1(v17);
    }

    v18 = *v9;
    OUTLINED_FUNCTION_59_3(v15 + v18);
    *(v15 + v18) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v19);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier);
  OUTLINED_FUNCTION_521(v2, v3);
  OUTLINED_FUNCTION_66_2(*v2);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_275_1();
  v27 = OUTLINED_FUNCTION_115_6(v26);
  v28 = *(v20 + v23);
  if ((v27 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v29 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B91A7C90(v29);
    OUTLINED_FUNCTION_72_2(v30);
  }

  v31 = v28 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  OUTLINED_FUNCTION_18(v28 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier, &a10);
  *v31 = v21;
  *(v31 + 8) = v22;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_71_2(*v0);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9198624()
{
  OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_4_15(v6);
  v8 = *(v5 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91A7C90(v9);
    OUTLINED_FUNCTION_73_2(v10);
  }

  v11 = 48;
  if (v2)
  {
    v11 = 24;
  }

  v12 = v8 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  OUTLINED_FUNCTION_18(v12, v0 + v11);
  *v12 = v3;
  *(v12 + 8) = v4;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entityOriginalValue.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_39(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitleOriginalValue.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_39(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198968()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();
    v10 = v9;
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 64);
      v10(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v17 = OUTLINED_FUNCTION_40_0();
      v14 = v4(v17);
      *(v16 + v15) = v14;
    }

    v18 = (v14 + *v3);
    OUTLINED_FUNCTION_18(v18, v0 + 24);
    *v18 = v2;
    v18[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 16, v7);
  *(v8 + 16) = v2;
  *(v8 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.artist.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198BA8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_45_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91ABB5C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.title.getter()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 32, v7);
  *(v8 + 32) = v2;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198D88()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_45_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91ABB5C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t sub_1B9198E34()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 48, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9198E80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.identifier.setter(v1, v2);
}

void sub_1B9198F00()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 48, v10);
  *(v11 + 48) = v2;
  *(v11 + 56) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199024()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 48);
    *(v9 + 48) = v2;
    *(v9 + 56) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

void Apple_Parsec_Siri_V2alpha_AudioItem.type.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 64, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 64));
}

void Apple_Parsec_Siri_V2alpha_AudioItem.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 64, v7);
  *(v8 + 64) = v1;
  *(v8 + 72) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.type.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4) + 20);
  *(v1 + 84) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0(v6 + 64);
  OUTLINED_FUNCTION_71_2(*(v6 + 64));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91991DC()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 64) = v1;
  *(v6 + 72) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t sub_1B9199278()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 80, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B91992C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.setter(v1, v2);
}

void sub_1B9199344()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 80, v10);
  *(v11 + 80) = v2;
  *(v11 + 88) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199468()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 80);
    *(v9 + 80) = v2;
    *(v9 + 88) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.getter()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 96, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 96, v7);
  *(v8 + 96) = v2;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199658()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_45_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91ABB5C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

float Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceScore.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 112, v3);
  return *(v2 + 112);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceScore.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91ABB5C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 112, v6);
  *(v7 + 112) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 112);
  *(v1 + 80) = *(v5 + 112);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9199808(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 112) = v3;

  free(v2);
}

uint64_t sub_1B91998C4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_10_4(*(v0 + *(v3 + 20)) + 120, v4);
}

void sub_1B9199978()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_313();
  v9 = *(v8(v7) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v12 = v3(v13);
    *(v6 + v9) = v12;
  }

  OUTLINED_FUNCTION_9_3(v12 + 120, v11);
  *(v12 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.internalSignals.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 48) = *(v0 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199AB8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_22_5();
  if (v5)
  {
    v6 = v4;
    v7 = OUTLINED_FUNCTION_61_1();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = v2;
    v10 = *(v0 + 64);
    v11 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = v8(v14);
      OUTLINED_FUNCTION_73_2(v15);
    }

    OUTLINED_FUNCTION_59_3(v13 + 120);
    *(v13 + 120) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t sub_1B9199B90()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 128, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9199BDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.setter(v1, v2);
}

void sub_1B9199C5C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 128, v10);
  *(v11 + 128) = v2;
  *(v11 + 136) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199D80()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 128);
    *(v9 + 128) = v2;
    *(v9 + 136) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t sub_1B9199E3C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 144, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9199E88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.punchoutUri.setter(v1, v2);
}

void sub_1B9199F08()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 144, v10);
  *(v11 + 144) = v2;
  *(v11 + 152) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.punchoutUri.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919A02C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 144);
    *(v9 + 144) = v2;
    *(v9 + 152) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 160, v3);
  return *(v2 + 160);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 160, v6);
  *(v7 + 160) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 84) = *(v0 + 160);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919A1D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.provider.getter()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 168, v2);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.provider.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 168, v7);
  *(v8 + 168) = v2;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.provider.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  v4 = *(v0 + 176);
  *(v1 + 48) = *(v0 + 168);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919A39C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.provider.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_45_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B91ABB5C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 168);
    *(v7 + 168) = v3;
    *(v7 + 176) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isAvailable.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 184, v3);
  return *(v2 + 184);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isAvailable.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 184, v6);
  *(v7 + 184) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isAvailable.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 184);
  *(v1 + 84) = *(v0 + 184);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919A530(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 184) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isHardBan.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 185, v3);
  return *(v2 + 185);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isHardBan.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 185, v6);
  *(v7 + 185) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isHardBan.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 185);
  *(v1 + 84) = *(v0 + 185);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919A6B0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 185) = v3;

  free(v1);
}

uint64_t sub_1B919A748()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 192, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919A794(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.bundleID.setter(v1, v2);
}

void sub_1B919A814()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 192, v10);
  *(v11 + 192) = v2;
  *(v11 + 200) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.bundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919A938()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 192);
    *(v9 + 192) = v2;
    *(v9 + 200) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t sub_1B919A9F4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 208, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919AA40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.universalResourceLink.setter(v1, v2);
}

void sub_1B919AAC0()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 208, v10);
  *(v11 + 208) = v2;
  *(v11 + 216) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.universalResourceLink.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  v4 = *(v0 + 216);
  *(v1 + 48) = *(v0 + 208);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919ABE4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 208);
    *(v9 + 208) = v2;
    *(v9 + 216) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t sub_1B919ACA0()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 224, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919ACEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.providerAppName.setter(v1, v2);
}

void sub_1B919AD6C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 224, v10);
  *(v11 + 224) = v2;
  *(v11 + 232) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.providerAppName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  v4 = *(v0 + 232);
  *(v1 + 48) = *(v0 + 224);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919AE90()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 224);
    *(v9 + 224) = v2;
    *(v9 + 232) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

void Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceLevel.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 240, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 240));
}

void Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceLevel.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 240, v7);
  *(v8 + 240) = v1;
  *(v8 + 248) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceLevel.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4) + 20);
  *(v1 + 84) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0(v6 + 240);
  OUTLINED_FUNCTION_71_2(*(v6 + 240));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919B0CC()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 240) = v1;
  *(v6 + 248) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.getter()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 256, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 256, v6);
  *(v7 + 256) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 256);
  *(v1 + 48) = *(v0 + 256);

  return OUTLINED_FUNCTION_514();
}

void sub_1B919B28C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_45_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B91ABB5C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 256);
    *(v6 + 256) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.images.getter()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 264, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.images.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 264, v6);
  *(v7 + 264) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.images.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 264);
  *(v1 + 48) = *(v0 + 264);

  return OUTLINED_FUNCTION_514();
}

void sub_1B919B458()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioItem.images.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_45_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B91ABB5C(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 264);
    *(v6 + 264) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.details.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    *a1 = 0;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71D8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t sub_1B919B5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B91A79BC();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.details.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91ABB5C(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_200_4();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.details.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    v13[1] = v15;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC71D8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.hasDetails.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v5);
  OUTLINED_FUNCTION_77_0();
  v6 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details;
  OUTLINED_FUNCTION_119_0(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details);
  OUTLINED_FUNCTION_188(v0 + v6);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_AudioItem.clearDetails()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B91ABB5C(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.assetInfo.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.uriFormatString.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1B919BCEC()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B919BD74()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceType.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentPlaceHint.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentReference.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceQuantifierEnum.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceTypeEnum.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentPlaceHintEnum.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 112) = *result;
  *(v1 + 120) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B919C208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B1234();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919C288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B1288();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919C308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B12DC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919C3E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B919C498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B919C548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B919C624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B1330();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t sub_1B919C73C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B919C764()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E30);
  __swift_project_value_buffer(v0, qword_1EBAC6E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9653B20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_VERB_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_VERB_PLAY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_VERB_FIND";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_VERB_ADD";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_VERB_SAVE";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_VERB_SING";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_VERB_SUBSCRIBE";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "AUDIO_VERB_FOLLOW";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "AUDIO_VERB_SHUFFLE";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "AUDIO_VERB_REPEAT";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "AUDIO_VERB_CREATE";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "AUDIO_VERB_RESUME";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "AUDIO_VERB_OPEN";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919CBEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E48);
  __swift_project_value_buffer(v0, qword_1EBAC6E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLAYBACK_QUEUE_LOCATION_UNKNOWN";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAYBACK_QUEUE_LOCATION_NOW";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLAYBACK_QUEUE_LOCATION_NEXT";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLAYBACK_QUEUE_LOCATION_LATER";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919CE54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E60);
  __swift_project_value_buffer(v0, qword_1EBAC6E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PLAYBACK_REPEAT_MODE_NONE";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAYBACK_REPEAT_MODE_ALL";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLAYBACK_REPEAT_MODE_ONE";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919D07C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E78);
  __swift_project_value_buffer(v0, qword_1EBAC6E78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B9652FF0;
  v4 = v48 + v3 + v1[14];
  *(v48 + v3) = 0;
  *v4 = "AUDIO_ITEM_TYPE_UNKNOWN";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v48 + v3 + v2 + v1[14];
  *(v48 + v3 + v2) = 1;
  *v8 = "AUDIO_ITEM_TYPE_SONG";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v48 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "AUDIO_ITEM_TYPE_ALBUM";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v48 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "AUDIO_ITEM_TYPE_ARTIST";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v48 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "AUDIO_ITEM_TYPE_GENRE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v48 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "AUDIO_ITEM_TYPE_PLAYLIST";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v48 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "AUDIO_ITEM_TYPE_PODCAST_SHOW";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  v19 = (v48 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "AUDIO_ITEM_TYPE_PODCAST_EPISODE";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v7();
  v21 = (v48 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "AUDIO_ITEM_TYPE_PODCAST_PLAYLIST";
  *(v22 + 1) = 32;
  v22[16] = 2;
  v7();
  v23 = (v48 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "AUDIO_ITEM_TYPE_MUSIC_STATION";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v48 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "AUDIO_ITEM_TYPE_AUDIO_BOOK";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v7();
  v27 = (v48 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "AUDIO_ITEM_TYPE_MOVIE";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v7();
  v29 = (v48 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "AUDIO_ITEM_TYPE_TV_SHOW";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v48 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "AUDIO_ITEM_TYPE_TV_SHOW_EPISODE";
  *(v32 + 1) = 31;
  v32[16] = 2;
  v7();
  v33 = (v48 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "AUDIO_ITEM_TYPE_MUSIC_VIDEO";
  *(v34 + 1) = 27;
  v34[16] = 2;
  v7();
  v35 = (v48 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "AUDIO_ITEM_TYPE_PODCAST_STATION";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v7();
  v37 = (v48 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "AUDIO_ITEM_TYPE_RADIO_STATION";
  *(v38 + 1) = 29;
  v38[16] = 2;
  v7();
  v39 = (v48 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "AUDIO_ITEM_TYPE_STATION";
  *(v40 + 1) = 23;
  v40[16] = 2;
  v7();
  v41 = (v48 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "AUDIO_ITEM_TYPE_MUSIC";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v48 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "AUDIO_ITEM_TYPE_ALGORITHMIC_RADIO_STATION";
  *(v44 + 1) = 41;
  v44[16] = 2;
  v7();
  v45 = (v48 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "AUDIO_ITEM_TYPE_NEWS";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B919D6EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E90);
  __swift_project_value_buffer(v0, qword_1EBAC6E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B966D600;
  v4 = v57 + v3;
  v5 = v57 + v3 + v1[14];
  *(v57 + v3) = 0;
  *v5 = "REQUESTED_MEDIA_TYPE_UNKNOWN";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "REQUESTED_MEDIA_TYPE_PLAYLIST";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "REQUESTED_MEDIA_TYPE_PODCAST";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "REQUESTED_MEDIA_TYPE_MUSIC";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "REQUESTED_MEDIA_TYPE_MUSIC_VIDEO";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "REQUESTED_MEDIA_TYPE_AUDIO_BOOK";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "REQUESTED_MEDIA_TYPE_VIDEO";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "REQUESTED_MEDIA_TYPE_ITUNES_U";
  *(v21 + 1) = 29;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "REQUESTED_MEDIA_TYPE_COMPILATION";
  *(v23 + 1) = 32;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "REQUESTED_MEDIA_TYPE_ALBUM";
  *(v25 + 1) = 26;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "REQUESTED_MEDIA_TYPE_ARTIST";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "REQUESTED_MEDIA_TYPE_TV_SHOW";
  *(v29 + 1) = 28;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "REQUESTED_MEDIA_TYPE_RADIO_SHOW";
  *(v31 + 1) = 31;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "REQUESTED_MEDIA_TYPE_SHOW";
  *(v33 + 1) = 25;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "REQUESTED_MEDIA_TYPE_RADIO_STATION";
  *(v35 + 1) = 34;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "REQUESTED_MEDIA_TYPE_PODCAST_STATION";
  *(v37 + 1) = 36;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "REQUESTED_MEDIA_TYPE_STATION";
  *(v39 + 1) = 28;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "REQUESTED_MEDIA_TYPE_MUSIC_PLAYLIST";
  *(v41 + 1) = 35;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "REQUESTED_MEDIA_TYPE_EPISODE";
  *(v43 + 1) = 28;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "REQUESTED_MEDIA_TYPE_SINGLE";
  *(v45 + 1) = 27;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 20;
  *v47 = "REQUESTED_MEDIA_TYPE_EP";
  *(v47 + 1) = 23;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 21;
  *v49 = "REQUESTED_MEDIA_TYPE_LP";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "REQUESTED_MEDIA_TYPE_SONG";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 23;
  *v53 = "REQUESTED_MEDIA_TYPE_GENRE";
  *(v53 + 1) = 26;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 24;
  *v55 = "REQUESTED_MEDIA_TYPE_NEWS";
  *(v55 + 1) = 25;
  v55[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B919DE44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6EA8);
  __swift_project_value_buffer(v0, qword_1EBAC6EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AUDIO_NOUN_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_NOUN_LIBRARY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_NOUN_BEATS_1";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919E104(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 0;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_21_7();
  (*(v15 + 104))(v13, v14);
  return sub_1B964C760();
}

uint64_t sub_1B919E284()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F08);
  __swift_project_value_buffer(v0, qword_1EBAC6F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AUDIO_TYPE_MODIFIER_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_TYPE_MODIFIER_MORE_OF";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919E474()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F20);
  __swift_project_value_buffer(v0, qword_1EBAC6F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_REFERENCE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_REFERENCE_ONE";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_REFERENCE_MANY";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_REFERENCE_THE";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_REFERENCE_THESE";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_REFERENCE_HIM";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_REFERENCE_HER";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919E78C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F38);
  __swift_project_value_buffer(v0, qword_1EBAC6F38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_DECADE_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_DECADE_1920S";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_DECADE_1930S";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_DECADE_1940S";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_DECADE_1950S";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_DECADE_1960S";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_DECADE_1970S";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "AUDIO_DECADE_1980S";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "AUDIO_DECADE_1990S";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "AUDIO_DECADE_2000S";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "AUDIO_DECADE_2010S";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "AUDIO_DECADE_2020S";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919EBC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F50);
  __swift_project_value_buffer(v0, qword_1EBAC6F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v4 = "AUDIO_SORT_UNKNOWN";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 1;
  *v8 = "AUDIO_SORT_POPULAR";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "AUDIO_SORT_UNPOPULAR";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "AUDIO_SORT_BEST";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "AUDIO_SORT_WORST";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "AUDIO_SORT_NEWEST";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "AUDIO_SORT_OLDEST";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "AUDIO_SORT_HOTTEST";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "AUDIO_SORT_MEDIOCRE";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "AUDIO_SORT_GREATEST";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B919EF98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F68);
  __swift_project_value_buffer(v0, qword_1EBAC6F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_ATTRIBUTE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_ATTRIBUTE_FROM_ARTIST";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_ATTRIBUTE_FROM_SONG";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_ATTRIBUTE_FROM_ALBUM";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_ATTRIBUTE_NEXT";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_ATTRIBUTE_PREVIOUS";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_ATTRIBUTE_PLAY_NEXT";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "AUDIO_ATTRIBUTE_ADD_TO_UP_NEXT";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "AUDIO_ATTRIBUTE_AFFINITY";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "AUDIO_ATTRIBUTE_RECOMMENDED";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "AUDIO_ATTRIBUTE_DISCOVERY";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "AUDIO_ATTRIBUTE_ADD_TO_UNSPECIFIED_PLAYLIST";
  *(v30 + 1) = 43;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919F3F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F80);
  __swift_project_value_buffer(v0, qword_1EBAC6F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_CONFIDENCE_LEVEL_UNKNOWN";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "AUDIO_CONFIDENCE_LEVEL_LOW";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "AUDIO_CONFIDENCE_LEVEL_MEDIUM";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 30;
  *v14 = "AUDIO_CONFIDENCE_LEVEL_HIGH";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919F65C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F98);
  __swift_project_value_buffer(v0, qword_1EBAC6F98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_RADIO_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_RADIO_TYPE_AM";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_RADIO_TYPE_FM";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_RADIO_TYPE_HD";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_RADIO_TYPE_SATELLITE";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_RADIO_TYPE_DAB";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919F93C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FB0);
  __swift_project_value_buffer(v0, qword_1EBAC6FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "IMAGE_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMAGE_TYPE_URL";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919FB44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FC8);
  __swift_project_value_buffer(v0, qword_1EBAC6FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "understanding";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "audio_search_results";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "playback_signals";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "internal_signals";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "app_bundle_id";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "pegasus_audio_type";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "launch_id";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "system_extension_bundle_id";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "bolt_proxied_bundle_id";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "should_perform_app_selection";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "client_signals";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "audio_intent_details";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919FFD8()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals) = v3;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection) = 0;
  v11 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  return v0;
}

uint64_t sub_1B91A0110(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  v13 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults) = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals;
  v53 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v54 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals) = v13;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  v52 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  v56 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v57 = v20;
  v58 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection) = 0;
  v21 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals;
  v59 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails;
  v60 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  swift_beginAccess();
  v26 = *(a1 + v25);
  swift_beginAccess();
  *(v1 + v12) = v26;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  swift_beginAccess();
  v28 = *(a1 + v27);
  v29 = v54;
  swift_beginAccess();
  *(v1 + v29) = v28;

  v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  swift_beginAccess();
  *v16 = v31;
  v16[1] = v32;

  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  swift_beginAccess();
  *v17 = v34;
  v17[1] = v35;

  v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  v39 = v52;
  swift_beginAccess();
  *v39 = v37;
  v39[1] = v38;

  v40 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = v56;
  swift_beginAccess();
  *v43 = v41;
  v43[1] = v42;

  v44 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v57;
  swift_beginAccess();
  *v47 = v46;
  v47[1] = v45;

  v48 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v58;
  swift_beginAccess();
  *(v1 + v49) = v48;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B91A081C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding, &qword_1EBAC71A0, "R#\v");

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals, &qword_1EBAC71A8, "R#\v");

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals, &qword_1EBAC71B0, "R#\v");
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails, &qword_1EBAC71B8, "R#\v");
  return v0;
}

uint64_t sub_1B91A09A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B91A0BA4(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B91A0C80(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B91A0D5C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B91A9608();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        sub_1B91A9704();
        break;
      case 10:
        sub_1B91A0E38(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B91A0EC4(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B91A0FA0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A0BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0);
  sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91A0D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A0E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B91A0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientSignals);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A0FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = v50 - v6;
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  MEMORY[0x1EEE9AC00](v51);
  v50[1] = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = v50 - v9;
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  MEMORY[0x1EEE9AC00](v52);
  v50[2] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = v50 - v12;
  v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v50 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  v58 = a1;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1B8D9207C(v16, &qword_1EBAC71A0, "R#\v");
    v18 = v59;
  }

  else
  {
    sub_1B91A7968();
    sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);
    v19 = v59;
    sub_1B964C740();
    v18 = v19;
    if (v19)
    {
      return sub_1B91A7A10();
    }

    sub_1B91A7A10();
  }

  v20 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  v21 = v58;
  swift_beginAccess();
  v22 = v57;
  if (*(*(v21 + v20) + 16))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0);
    sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioItem);

    sub_1B964C730();
    if (v18)
    {
    }
  }

  swift_beginAccess();
  v23 = v55;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v22);
  v25 = v56;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v23, &qword_1EBAC71A8, "R#\v");
  }

  else
  {
    sub_1B91A7968();
    sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);
    sub_1B964C740();
    if (v18)
    {
      return sub_1B91A7A10();
    }

    sub_1B91A7A10();
  }

  v27 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  swift_beginAccess();
  v28 = v54;
  if (*(*(v21 + v27) + 16))
  {

    sub_1B964C6E0();
    if (v18)
    {
    }
  }

  v29 = (v21 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32 || (, sub_1B964C700(), result = , !v18))
  {
    v33 = (v21 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
    swift_beginAccess();
    v34 = *v33;
    v35 = v33[1];
    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36 || (, sub_1B964C700(), result = , !v18))
    {
      v37 = (v21 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
      swift_beginAccess();
      v38 = *v37;
      v39 = v37[1];
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (!v40 || (, sub_1B964C700(), result = , !v18))
      {
        v41 = (v21 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
        swift_beginAccess();
        v42 = *v41;
        v43 = v41[1];
        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (!v44 || (, sub_1B964C700(), result = , !v18))
        {
          v45 = (v21 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
          swift_beginAccess();
          v46 = *v45;
          v47 = v45[1];
          v48 = HIBYTE(v47) & 0xF;
          if ((v47 & 0x2000000000000000) == 0)
          {
            v48 = v46 & 0xFFFFFFFFFFFFLL;
          }

          if (!v48 || (, sub_1B964C700(), result = , !v18))
          {
            v49 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
            swift_beginAccess();
            if (*(v21 + v49) != 1 || (result = sub_1B964C670(), !v18))
            {
              swift_beginAccess();
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v25, 1, v52) == 1)
              {
                sub_1B8D9207C(v25, &qword_1EBAC71B0, "R#\v");
LABEL_43:
                swift_beginAccess();
                sub_1B8F1B8B8();
                if (__swift_getEnumTagSinglePayload(v28, 1, v51) == 1)
                {
                  return sub_1B8D9207C(v28, &qword_1EBAC71B8, "R#\v");
                }

                sub_1B91A7968();
                sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);
                sub_1B964C740();
                return sub_1B91A7A10();
              }

              sub_1B91A7968();
              sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientSignals);
              sub_1B964C740();
              result = sub_1B91A7A10();
              if (!v18)
              {
                goto LABEL_43;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B91A1B74()
{
  OUTLINED_FUNCTION_284();
  v152 = v0;
  v2 = v1;
  v136 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v132 = v5 - v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7868, &qword_1B96A16E8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v137 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  v133 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v141 = &v132 - v13;
  v14 = OUTLINED_FUNCTION_201();
  v139 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v134 = v17 - v16;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7870, &qword_1B96A16F0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v140 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  v21 = OUTLINED_FUNCTION_183(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  v149 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v132 - v25;
  v26 = OUTLINED_FUNCTION_201();
  v146 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v26);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v142 = v29 - v28;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7878, &qword_1B96A16F8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_185();
  v147 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  v33 = OUTLINED_FUNCTION_183(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_66();
  v143 = v34 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v145 = &v132 - v37;
  v38 = OUTLINED_FUNCTION_201();
  v151 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v38);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  v150 = v41 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7880, &unk_1B96A1700) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v132 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  v47 = OUTLINED_FUNCTION_183(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_66();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v132 - v52;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding, &v176);
  sub_1B8F1B8B8();
  v54 = v152;
  OUTLINED_FUNCTION_521(v152 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding, &v175);
  v55 = *(v42 + 56);
  sub_1B8F1B8B8();
  v56 = v151;
  sub_1B8F1B8B8();
  v57 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v57, v58, v56);
  if (v60)
  {

    sub_1B8D9207C(v53, &qword_1EBAC71A0, "R#\v");
    OUTLINED_FUNCTION_178(&v45[v55], 1, v56);
    if (v60)
    {
      sub_1B8D9207C(v45, &qword_1EBAC71A0, "R#\v");
      goto LABEL_15;
    }

LABEL_9:
    v61 = &qword_1EBAC7880;
    v62 = &unk_1B96A1700;
LABEL_10:
    v63 = v45;
LABEL_11:
    sub_1B8D9207C(v63, v61, v62);
    goto LABEL_54;
  }

  v59 = v53;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(&v45[v55], 1, v56);
  if (v60)
  {

    sub_1B8D9207C(v53, &qword_1EBAC71A0, "R#\v");
    sub_1B91A7A10();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_24_19();
  v64 = v150;
  sub_1B91A7968();
  v65 = *(v56 + 20);
  v66 = *(v50 + v65);
  v67 = *(v64 + v65);

  if (v66 != v67)
  {

    v68 = sub_1B91AA504(v66, v67);

    if ((v68 & 1) == 0)
    {
      sub_1B91A7A10();
      sub_1B8D9207C(v59, &qword_1EBAC71A0, "R#\v");
      sub_1B91A7A10();
      v63 = OUTLINED_FUNCTION_541_0();
      v62 = "R#\v";
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v69, v70, MEMORY[0x1E69AAC10]);
  v71 = sub_1B964C850();
  sub_1B91A7A10();
  sub_1B8D9207C(v59, &qword_1EBAC71A0, "R#\v");
  sub_1B91A7A10();
  v72 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v72, v73, "R#\v");
  if ((v71 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_15:
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults, &v174);
  OUTLINED_FUNCTION_521(v54 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults, &v173);

  v74 = OUTLINED_FUNCTION_543();
  sub_1B8D8DB5C(v74, v75);
  v77 = v76;

  if ((v77 & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals, &v172);
  v78 = v145;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  v79 = OUTLINED_FUNCTION_202_3();
  OUTLINED_FUNCTION_521(v79, &v171);
  v80 = *(v144 + 48);
  v45 = v147;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_202_3();
  v81 = v152;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  v82 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v82, v83, v146);
  if (v60)
  {
    sub_1B8D9207C(v78, &qword_1EBAC71A8, "R#\v");
    OUTLINED_FUNCTION_37_0(&v45[v80]);
    v84 = v148;
    if (v60)
    {
      sub_1B8D9207C(v45, &qword_1EBAC71A8, "R#\v");
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(&v45[v80]);
  v84 = v148;
  if (v85)
  {
    sub_1B8D9207C(v78, &qword_1EBAC71A8, "R#\v");
    sub_1B91A7A10();
LABEL_24:
    v61 = &qword_1EBAC7878;
    v62 = &qword_1B96A16F8;
    goto LABEL_10;
  }

  sub_1B91A7968();
  LODWORD(v151) = static Apple_Parsec_Siri_V2alpha_PlaybackSignals.== infix(_:_:)();
  OUTLINED_FUNCTION_128();
  sub_1B91A7A10();
  sub_1B8D9207C(v78, &qword_1EBAC71A8, "R#\v");
  sub_1B91A7A10();
  v86 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v86, v87, "R#\v");
  if ((v151 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  v88 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals, &v170);
  v89 = *(v2 + v88);
  v90 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  OUTLINED_FUNCTION_521(v81 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals, &v169);
  if ((sub_1B8D6123C(v89, *(v81 + v90)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v91 = v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID, &v168);
  v92 = *(v91 + 8);
  OUTLINED_FUNCTION_521(v81 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID, &v167);
  OUTLINED_FUNCTION_714_0();
  if (!v60 || v92 != v93)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v95 = v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType, &v166);
  v96 = *(v95 + 8);
  OUTLINED_FUNCTION_521(v81 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType, &v165);
  OUTLINED_FUNCTION_714_0();
  if (!v60 || v96 != v97)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v99 = v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID, &v164);
  v100 = *(v99 + 8);
  OUTLINED_FUNCTION_521(v81 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID, &v163);
  OUTLINED_FUNCTION_714_0();
  if (!v60 || v100 != v101)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v103 = v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID, &v162);
  v104 = *(v103 + 8);
  OUTLINED_FUNCTION_521(v81 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID, &v161);
  OUTLINED_FUNCTION_714_0();
  if (!v60 || v104 != v105)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v107 = v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID, &v160);
  v108 = *(v107 + 8);
  OUTLINED_FUNCTION_521(v81 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID, &v159);
  OUTLINED_FUNCTION_714_0();
  if (!v60 || v108 != v109)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v111 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection, &v158);
  LODWORD(v111) = *(v2 + v111);
  v112 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_521(v81 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection, &v157);
  if (v111 != *(v81 + v112))
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals, &v156);
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  v113 = OUTLINED_FUNCTION_202_3();
  OUTLINED_FUNCTION_521(v113, &v155);
  v114 = *(v138 + 48);
  v115 = v140;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_202_3();
  OUTLINED_FUNCTION_33_4();
  v116 = v115;
  sub_1B8F1B8B8();
  v117 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v117, v118, v139);
  if (v60)
  {
    sub_1B8D9207C(v84, &qword_1EBAC71B0, "R#\v");
    OUTLINED_FUNCTION_37_0(v115 + v114);
    v119 = v141;
    if (v60)
    {
      sub_1B8D9207C(v116, &qword_1EBAC71B0, "R#\v");
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v115 + v114);
  v119 = v141;
  if (v120)
  {
    sub_1B8D9207C(v84, &qword_1EBAC71B0, "R#\v");
    sub_1B91A7A10();
LABEL_64:
    v61 = &qword_1EBAC7870;
    v62 = &qword_1B96A16F0;
    v63 = v116;
    goto LABEL_11;
  }

  sub_1B91A7968();
  static Apple_Parsec_Siri_V2alpha_ClientSignals.== infix(_:_:)();
  v122 = v121;
  OUTLINED_FUNCTION_128();
  sub_1B91A7A10();
  sub_1B8D9207C(v84, &qword_1EBAC71B0, "R#\v");
  sub_1B91A7A10();
  sub_1B8D9207C(v116, &qword_1EBAC71B0, "R#\v");
  if (v122)
  {
LABEL_66:
    OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails, &v154);
    OUTLINED_FUNCTION_33_4();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_521(v152 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails, &v153);
    v123 = *(v135 + 48);
    v124 = v119;
    v125 = v137;
    OUTLINED_FUNCTION_33_4();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_33_4();
    sub_1B8F1B8B8();
    v126 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v126, v127, v136);
    if (v60)
    {

      sub_1B8D9207C(v124, &qword_1EBAC71B8, "R#\v");
      OUTLINED_FUNCTION_37_0(v125 + v123);
      if (v60)
      {
        sub_1B8D9207C(v125, &qword_1EBAC71B8, "R#\v");
        goto LABEL_55;
      }
    }

    else
    {
      v128 = v133;
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_37_0(v125 + v123);
      if (!v129)
      {
        sub_1B91A7968();
        static Apple_Parsec_Siri_V2alpha_AudioIntentDetails.== infix(_:_:)(v128);

        OUTLINED_FUNCTION_128();
        sub_1B91A7A10();
        sub_1B8D9207C(v141, &qword_1EBAC71B8, "R#\v");
        sub_1B91A7A10();
        v130 = OUTLINED_FUNCTION_541_0();
        sub_1B8D9207C(v130, v131, "R#\v");
        goto LABEL_55;
      }

      sub_1B8D9207C(v141, &qword_1EBAC71B8, "R#\v");
      sub_1B91A7A10();
    }

    sub_1B8D9207C(v125, &qword_1EBAC7868, &qword_1B96A16E8);
    goto LABEL_55;
  }

LABEL_54:

LABEL_55:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91A2AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A2B68(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A2BD8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A2C70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FE0);
  __swift_project_value_buffer(v0, qword_1EBAC6FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "playback_queue_location";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playback_speed";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "playback_repeat_mode";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "immediately_start_playback";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "play_shuffled";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "resume_playback";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_ambiguous_play";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.decodeMessage<A>(decoder:)()
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
        sub_1B91A3054(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91A30BC(v7, v8, v9, v10);
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B91AC334(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_94_4(), sub_1B91AC388(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        if (*(v2 + 25) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 26) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (*(v2 + 27) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              if (*(v2 + 28) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_PlaybackSignals.== infix(_:_:)()
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

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  if (*(v1 + 12) != *(v0 + 12))
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    if (v6 != v7)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v7 != 1)
  {
    if (v6 == 2)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v6 != 1)
  {
    return 0;
  }

LABEL_23:
  if (*(v1 + 25) != *(v0 + 25) || *(v1 + 26) != *(v0 + 26) || *(v1 + 27) != *(v0 + 27) || *(v1 + 28) != *(v0 + 28))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  v11 = sub_1B8CD2AC8(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B91A34B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A3534(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A35A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A363C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FF8);
  __swift_project_value_buffer(v0, qword_1EBAC6FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "multipler";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.decodeMessage<A>(decoder:)()
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
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8D10390();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B91AC3DC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if (!sub_1B8D92198(v3, *(v2 + 8), *v1) || *(v2 + 12) != *(v1 + 12))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_67();
  v6 = sub_1B8CD2AC8(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B91A3A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A3AF4(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7240, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier);

  return MEMORY[0x1EEE15928](a1, v2);
}