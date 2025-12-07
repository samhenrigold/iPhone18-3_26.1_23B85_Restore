void sub_1B9459450(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9750, type metadata accessor for Searchfoundation_Topic.OneOf_Detail, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9459564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return OUTLINED_FUNCTION_180_1();
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1759Tm()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_1760Tm()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1B94599FC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9459DD0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2179Tm()
{
  OUTLINED_FUNCTION_1273();
  if (v0)
  {
    OUTLINED_FUNCTION_1242();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_194_1();
    v7 = OUTLINED_FUNCTION_699(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void __swift_store_extra_inhabitant_index_2180Tm()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t __swift_get_extra_inhabitant_index_2098Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_2099Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t __swift_get_extra_inhabitant_index_2260Tm(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_450_0();
  }

  OUTLINED_FUNCTION_639_1();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v2)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_2261Tm(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 12)
  {
    OUTLINED_FUNCTION_536_1();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_258_0();
    }

    __swift_storeEnumTagSinglePayload(a1 + v8, a2, a2, v7);
  }
}

uint64_t sub_1B945A5A4(uint64_t a1)
{
  v1 = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1808, type metadata accessor for Searchfoundation_StructuredLocation, MEMORY[0x1E69E6720]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F9660, type metadata accessor for Searchfoundation_TimeZone, MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1B9458030(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1B945A7A0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B945A91C(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B8DD7D14(319, qword_1EDA06FD0, MEMORY[0x1E69E6158]);
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

uint64_t __swift_get_extra_inhabitant_index_1930Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_639_1();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_266();
  }

  v7 = OUTLINED_FUNCTION_699(v4);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_1931Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_258_0();
    }

    v6 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B945ACD0(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_TextCopyItem(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_ImageCopyItem(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_ContactCopyItem(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_URLCopyItem(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B945ADD0(uint64_t a1)
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

uint64_t __swift_get_extra_inhabitant_index_2152Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  OUTLINED_FUNCTION_639_1();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_2153Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_258_0();
    }

    v6 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B945B0D0()
{
  OUTLINED_FUNCTION_734();
  v0 = OUTLINED_FUNCTION_948();
  sub_1B9458030(v0, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    v22 = v4;
    v6 = sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      v23 = v6;
      OUTLINED_FUNCTION_52_11();
      OUTLINED_FUNCTION_1057();
      sub_1B9458030(v8, v9, v10, v11);
      if (v13 <= 0x3F)
      {
        OUTLINED_FUNCTION_88_2(v12, v13, v14, v15, v16, v17, v18, v19, *v20, v20[4], 0, 0, v21, v22, v23, v24);
        OUTLINED_FUNCTION_180_1();
      }
    }
  }
}

uint64_t sub_1B945B1A4(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_URLShareItem(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_CoreSpotlightShareItem(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_2359Tm()
{
  OUTLINED_FUNCTION_761();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_753();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_194_1();
    v5 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_2360Tm()
{
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_128_1();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_1B945B430()
{
  OUTLINED_FUNCTION_734();
  v0 = OUTLINED_FUNCTION_52_11();
  sub_1B9458030(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B945B4A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_1903Tm_4);
}

uint64_t sub_1B945B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_215Tm_1_4);
}

uint64_t sub_1B945B568(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_2404Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_1362();
  OUTLINED_FUNCTION_761();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_753();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_259();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_128_1();
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_266();
    }
  }

  OUTLINED_FUNCTION_242();

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

uint64_t __swift_store_extra_inhabitant_index_2405Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_1216();
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_198();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_128_1();
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_258_0();
    }
  }

  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_242();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t __swift_get_extra_inhabitant_index_2143Tm()
{
  OUTLINED_FUNCTION_1273();
  if (v1)
  {
    OUTLINED_FUNCTION_1242();
    v4 = (v2 + v3) & 0x7FFFFFFF;
    if (v5)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_639_1();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_266();
    }

    v11 = OUTLINED_FUNCTION_699(v8);

    return __swift_getEnumTagSinglePayload(v11, v12, v13);
  }
}

void __swift_store_extra_inhabitant_index_2144Tm()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_586();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v6 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      OUTLINED_FUNCTION_258_0();
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t __swift_get_extra_inhabitant_index_1858Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1B945BB88(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_CommandButtonItem(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_ContactButtonItem(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_WatchListButtonItem(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Searchfoundation_SportsFollowButtonItem(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Searchfoundation_PlayAudioButtonItem(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Searchfoundation_StoreButtonItem(319);
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
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

void sub_1B945BCB0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B945BDB8(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9C8F98, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F96D8, type metadata accessor for Searchfoundation_Command, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B945BF4C(uint64_t a1)
{
  sub_1B8DD7D14(319, &qword_1ED9CF530, MEMORY[0x1E69E72F0]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9708, type metadata accessor for Searchfoundation_Person, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2386Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_622_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_2387Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B945C164(uint64_t a1)
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

void sub_1B945C258(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_1B964C2B0();
  if (v5 <= 0x3F)
  {
    v21 = v4;
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_1057();
    sub_1B9458030(v6, v7, v8, v9);
    if (v11 <= 0x3F)
    {
      OUTLINED_FUNCTION_88_2(v10, v11, v12, v13, v14, v15, v16, v17, *v18, v18[4], 0, 0, v19, a4, v21, v22);
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1849Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1850Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_get_extra_inhabitant_index_2287Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_639_1();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v4);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_2288Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_259_0();
    }

    v6 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B945C534(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1588Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1589Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B945C758(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_88_2(result, v6, v7, v8, v9, v10, v11, v12, *v13, v13[4], 0, 0, v14, a4, a5, v17);
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void __swift_get_extra_inhabitant_index_2638Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_242();
  }

  else
  {
    OUTLINED_FUNCTION_1362();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_259();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_128_1();
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_267_0();
      }

      else
      {
        v7 = OUTLINED_FUNCTION_186();
        __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
        OUTLINED_FUNCTION_622_0();
      }
    }

    OUTLINED_FUNCTION_699(v3);
    OUTLINED_FUNCTION_242();

    __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void __swift_store_extra_inhabitant_index_2639Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_242();
  }

  else
  {
    OUTLINED_FUNCTION_1216();
    sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_198();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_128_1();
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        v7 = OUTLINED_FUNCTION_186();
        __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
        OUTLINED_FUNCTION_633_0();
      }
    }

    OUTLINED_FUNCTION_61_0(v3);
    OUTLINED_FUNCTION_242();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

void sub_1B945C9E0()
{
  OUTLINED_FUNCTION_1260();
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_12();
    sub_1B9458030(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_52_11();
      OUTLINED_FUNCTION_1057();
      sub_1B9458030(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_123_1();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_180_1();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1563Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_622_0();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B945CC00(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B945CD88(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B945CEFC(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B945D06C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B945D190(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
          v2 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1B945D3E0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_1057();
    sub_1B9458030(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1840Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_639_1();
  v3 = v2;
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_753();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_194_1();
    v5 = v3 + v9;
  }

  return __swift_getEnumTagSinglePayload(v5, v1, v6);
}

uint64_t __swift_store_extra_inhabitant_index_1841Tm()
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
    OUTLINED_FUNCTION_196_2();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_1B945D5BC(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B945D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_734();
  sub_1B9458030(319, v8, v9, v10);
  if (v12 <= 0x3F)
  {
    v23 = v11;
    v13 = sub_1B964C2B0();
    if (v14 <= 0x3F)
    {
      OUTLINED_FUNCTION_88_2(v13, v14, v15, v16, v17, v18, v19, v20, *v21, v21[4], 0, 0, v22, v23, a7, v24);
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B945D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1903Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void sub_1B945D900(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9D39D8, type metadata accessor for Searchfoundation_RFVisualElement, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F8C40, type metadata accessor for Searchfoundation_CommandButtonItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B945DA0C(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9ED410, type metadata accessor for Searchfoundation_DrillDownMetadata, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B945DC80(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F1BD8, type metadata accessor for Searchfoundation_CardSectionValue, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F97B0, type metadata accessor for Searchfoundation_Card, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F8BD0, type metadata accessor for Searchfoundation_UserReportRequest, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F96D8, type metadata accessor for Searchfoundation_Command, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B9458030(319, qword_1ED9ECB58, type metadata accessor for Searchfoundation_AppEntityAnnotation, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1B945DFDC(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F1888, type metadata accessor for Searchfoundation_AppLinkCardSection, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F0A80, type metadata accessor for Searchfoundation_DescriptionCardSection, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F06E8, type metadata accessor for Searchfoundation_KeyValueDataCardSection, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F1E28, type metadata accessor for Searchfoundation_MapCardSection, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B9458030(319, &qword_1ED9F0FD8, type metadata accessor for Searchfoundation_MediaInfoCardSection, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B9458030(319, &qword_1ED9F0A50, type metadata accessor for Searchfoundation_MediaPlayerCardSection, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B9458030(319, &qword_1ED9F0BC0, type metadata accessor for Searchfoundation_NowPlayingCardSection, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1B9458030(319, &qword_1ED9F0FC0, type metadata accessor for Searchfoundation_RichTitleCardSection, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1B9458030(319, &qword_1ED9F1DE8, type metadata accessor for Searchfoundation_RowCardSection, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B9458030(319, &qword_1ED9F0BA8, type metadata accessor for Searchfoundation_ScoreboardCardSection, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1B9458030(319, &qword_1ED9F0188, type metadata accessor for Searchfoundation_SocialMediaPostCardSection, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1B9458030(319, &qword_1ED9F0B90, type metadata accessor for Searchfoundation_StockChartCardSection, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1B9458030(319, &qword_1ED9F03C0, type metadata accessor for Searchfoundation_TableHeaderRowCardSection, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1B9458030(319, &qword_1ED9F1280, type metadata accessor for Searchfoundation_TableRowCardSection, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1B9458030(319, &qword_1ED9F0A38, type metadata accessor for Searchfoundation_TextColumnsCardSection, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1B9458030(319, &qword_1ED9F1AC0, type metadata accessor for Searchfoundation_TitleCardSection, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1B9458030(319, &qword_1ED9F0F90, type metadata accessor for Searchfoundation_TrackListCardSection, MEMORY[0x1E69E6720]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1B9458030(319, &qword_1ED9F0590, type metadata accessor for Searchfoundation_AudioPlaybackCardSection, MEMORY[0x1E69E6720]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1B9458030(319, &qword_1ED9F1A10, type metadata accessor for Searchfoundation_FlightCardSection, MEMORY[0x1E69E6720]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1B9458030(319, &qword_1ED9F0030, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection, MEMORY[0x1E69E6720]);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1B9458030(319, &qword_1ED9F1DD0, type metadata accessor for Searchfoundation_WebCardSection, MEMORY[0x1E69E6720]);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1B9458030(319, &qword_1ED9F1860, type metadata accessor for Searchfoundation_MessageCardSection, MEMORY[0x1E69E6720]);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1B9458030(319, &qword_1ED9F0A68, type metadata accessor for Searchfoundation_DetailedRowCardSection, MEMORY[0x1E69E6720]);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1B9458030(319, &qword_1ED9F1978, type metadata accessor for Searchfoundation_ImagesCardSection, MEMORY[0x1E69E6720]);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1B9458030(319, &qword_1ED9F0B78, type metadata accessor for Searchfoundation_SuggestionCardSection, MEMORY[0x1E69E6720]);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1B9458030(319, &qword_1ED9F03D8, type metadata accessor for Searchfoundation_SelectableGridCardSection, MEMORY[0x1E69E6720]);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1B9458030(319, &qword_1ED9F4138, type metadata accessor for Searchfoundation_SectionHeaderCardSection, MEMORY[0x1E69E6720]);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_1B9458030(319, &qword_1ED9F1298, type metadata accessor for Searchfoundation_MetaInfoCardSection, MEMORY[0x1E69E6720]);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_1B9458030(319, &qword_1ED9F0F78, type metadata accessor for Searchfoundation_WatchListCardSection, MEMORY[0x1E69E6720]);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_1B9458030(319, &qword_1ED9F01D0, type metadata accessor for Searchfoundation_MapsDetailedRowCardSection, MEMORY[0x1E69E6720]);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_1B9458030(319, &qword_1ED9F1A50, type metadata accessor for Searchfoundation_ButtonCardSection, MEMORY[0x1E69E6720]);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_1B9458030(319, &qword_1ED9F00E8, type metadata accessor for Searchfoundation_HorizontalButtonCardSection, MEMORY[0x1E69E6720]);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_1B9458030(319, &qword_1ED9F03A8, type metadata accessor for Searchfoundation_VerticalLayoutCardSection, MEMORY[0x1E69E6720]);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_1B9458030(319, &qword_1ED9F1848, type metadata accessor for Searchfoundation_ProductCardSection, MEMORY[0x1E69E6720]);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      sub_1B9458030(319, &qword_1ED9F00D0, type metadata accessor for Searchfoundation_HorizontalScrollCardSection, MEMORY[0x1E69E6720]);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        sub_1B9458030(319, &qword_1ED9EFE80, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, MEMORY[0x1E69E6720]);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_1B9458030(319, &qword_1ED9F12B0, type metadata accessor for Searchfoundation_MapPlaceCardSection, MEMORY[0x1E69E6720]);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            sub_1B9458030(319, &qword_1ED9F0BE8, type metadata accessor for Searchfoundation_CompactRowCardSection, MEMORY[0x1E69E6720]);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              sub_1B9458030(319, &qword_1ED9F1240, type metadata accessor for Searchfoundation_WorldMapCardSection, MEMORY[0x1E69E6720]);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                sub_1B9458030(319, &qword_1ED9F0018, type metadata accessor for Searchfoundation_AttributionFooterCardSection, MEMORY[0x1E69E6720]);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  sub_1B9458030(319, &qword_1ED9F1CD0, type metadata accessor for Searchfoundation_GridCardSection, MEMORY[0x1E69E6720]);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    sub_1B9458030(319, &qword_1ED9F06D0, type metadata accessor for Searchfoundation_PersonHeaderCardSection, MEMORY[0x1E69E6720]);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      sub_1B9458030(319, &qword_1ED9F12F8, type metadata accessor for Searchfoundation_ColorBarCardSection, MEMORY[0x1E69E6720]);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        sub_1B9458030(319, &qword_1ED9F1AF0, type metadata accessor for Searchfoundation_SplitCardSection, MEMORY[0x1E69E6720]);
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          sub_1B9458030(319, &qword_1ED9F00B8, type metadata accessor for Searchfoundation_LinkPresentationCardSection, MEMORY[0x1E69E6720]);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            sub_1B9458030(319, &qword_1ED9F1A28, type metadata accessor for Searchfoundation_FindMyCardSection, MEMORY[0x1E69E6720]);
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              sub_1B9458030(319, &qword_1ED9F1CB8, type metadata accessor for Searchfoundation_HeroCardSection, MEMORY[0x1E69E6720]);
                                                                                              if (v47 <= 0x3F)
                                                                                              {
                                                                                                sub_1B9458030(319, &qword_1ED9F1C70, type metadata accessor for Searchfoundation_NewsCardSection, MEMORY[0x1E69E6720]);
                                                                                                if (v48 <= 0x3F)
                                                                                                {
                                                                                                  sub_1B9458030(319, &qword_1ED9F1C88, type metadata accessor for Searchfoundation_MiniCardSection, MEMORY[0x1E69E6720]);
                                                                                                  if (v49 <= 0x3F)
                                                                                                  {
                                                                                                    sub_1B9458030(319, &qword_1ED9F1CA0, type metadata accessor for Searchfoundation_InfoCardSection, MEMORY[0x1E69E6720]);
                                                                                                    if (v50 <= 0x3F)
                                                                                                    {
                                                                                                      sub_1B9458030(319, &qword_1ED9F0C18, type metadata accessor for Searchfoundation_CollectionCardSection, MEMORY[0x1E69E6720]);
                                                                                                      if (v51 <= 0x3F)
                                                                                                      {
                                                                                                        sub_1B9458030(319, &qword_1ED9F12E0, type metadata accessor for Searchfoundation_CombinedCardSection, MEMORY[0x1E69E6720]);
                                                                                                        if (v52 <= 0x3F)
                                                                                                        {
                                                                                                          sub_1B9458030(319, &qword_1ED9F01A0, type metadata accessor for Searchfoundation_ResponseWrapperCardSection, MEMORY[0x1E69E6720]);
                                                                                                          if (v53 <= 0x3F)
                                                                                                          {
                                                                                                            sub_1B9458030(319, &qword_1ED9F12C8, type metadata accessor for Searchfoundation_ListenToCardSection, MEMORY[0x1E69E6720]);
                                                                                                            if (v54 <= 0x3F)
                                                                                                            {
                                                                                                              sub_1B9458030(319, &qword_1ED9F1258, type metadata accessor for Searchfoundation_WatchNowCardSection, MEMORY[0x1E69E6720]);
                                                                                                              if (v55 <= 0x3F)
                                                                                                              {
                                                                                                                sub_1B9458030(319, &qword_1ED9F0170, type metadata accessor for Searchfoundation_StrokeAnimationCardSection, MEMORY[0x1E69E6720]);
                                                                                                                if (v56 <= 0x3F)
                                                                                                                {
                                                                                                                  sub_1B9458030(319, &qword_1ED9F0C30, type metadata accessor for Searchfoundation_ButtonListCardSection, MEMORY[0x1E69E6720]);
                                                                                                                  if (v57 <= 0x3F)
                                                                                                                  {
                                                                                                                    sub_1B9458030(319, &qword_1ED9F0C00, type metadata accessor for Searchfoundation_CommandRowCardSection, MEMORY[0x1E69E6720]);
                                                                                                                    if (v58 <= 0x3F)
                                                                                                                    {
                                                                                                                      sub_1B9458030(319, &qword_1ED9F01E8, type metadata accessor for Searchfoundation_LeadingTrailingCardSection, MEMORY[0x1E69E6720]);
                                                                                                                      if (v59 <= 0x3F)
                                                                                                                      {
                                                                                                                        sub_1B9458030(319, &qword_1ED9F0FF0, type metadata accessor for Searchfoundation_HeroTitleCardSection, MEMORY[0x1E69E6720]);
                                                                                                                        if (v60 <= 0x3F)
                                                                                                                        {
                                                                                                                          sub_1B9458030(319, &qword_1ED9F0A98, type metadata accessor for Searchfoundation_ArchiveViewCardSection, MEMORY[0x1E69E6720]);
                                                                                                                          if (v61 <= 0x3F)
                                                                                                                          {
                                                                                                                            sub_1B9458030(319, &qword_1ED9F18A0, type metadata accessor for Searchfoundation_AppIconCardSection, MEMORY[0x1E69E6720]);
                                                                                                                            if (v62 <= 0x3F)
                                                                                                                            {
                                                                                                                              sub_1B9458030(319, &qword_1ED9EB508, type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection, MEMORY[0x1E69E6720]);
                                                                                                                              if (v63 <= 0x3F)
                                                                                                                              {
                                                                                                                                sub_1B9458030(319, qword_1ED9D5380, type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                if (v64 <= 0x3F)
                                                                                                                                {
                                                                                                                                  sub_1B9458030(319, &qword_1ED9EF220, type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                  if (v65 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    sub_1B9458030(319, &qword_1ED9F0000, type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                    if (v66 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      sub_1B9458030(319, &qword_1ED9EFAA8, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                      if (v67 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        sub_1B9458030(319, &qword_1ED9EFAC0, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                        if (v68 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          sub_1B9458030(319, &qword_1ED9EFE68, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                          if (v69 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            sub_1B9458030(319, &qword_1ED9EFE50, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                            if (v70 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              sub_1B9458030(319, &qword_1ED9EFD88, type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                              if (v71 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                sub_1B9458030(319, &qword_1ED9EF238, type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                if (v72 <= 0x3F)
                                                                                                                                                {
                                                                                                                                                  sub_1B9458030(319, &qword_1ED9EFD70, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                  if (v73 <= 0x3F)
                                                                                                                                                  {
                                                                                                                                                    sub_1B9458030(319, &qword_1ED9F01B8, type metadata accessor for Searchfoundation_RFReferenceRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                    if (v74 <= 0x3F)
                                                                                                                                                    {
                                                                                                                                                      sub_1B9458030(319, &qword_1ED9F00A0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                      if (v75 <= 0x3F)
                                                                                                                                                      {
                                                                                                                                                        sub_1B9458030(319, &qword_1ED9EFCC8, type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                        if (v76 <= 0x3F)
                                                                                                                                                        {
                                                                                                                                                          sub_1B9458030(319, &qword_1ED9EB3D0, type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                          if (v77 <= 0x3F)
                                                                                                                                                          {
                                                                                                                                                            sub_1B9458030(319, &qword_1ED9EB5D0, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                            if (v78 <= 0x3F)
                                                                                                                                                            {
                                                                                                                                                              sub_1B9458030(319, &qword_1ED9D7138, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                              if (v79 <= 0x3F)
                                                                                                                                                              {
                                                                                                                                                                sub_1B9458030(319, &qword_1ED9D5E98, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                if (v80 <= 0x3F)
                                                                                                                                                                {
                                                                                                                                                                  sub_1B9458030(319, &qword_1ED9D4F98, type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                  if (v81 <= 0x3F)
                                                                                                                                                                  {
                                                                                                                                                                    sub_1B9458030(319, &qword_1ED9D4200, type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                    if (v82 <= 0x3F)
                                                                                                                                                                    {
                                                                                                                                                                      sub_1B9458030(319, &qword_1ED9D65F8, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                      if (v83 <= 0x3F)
                                                                                                                                                                      {
                                                                                                                                                                        sub_1B9458030(319, &qword_1ED9D6C10, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                        if (v84 <= 0x3F)
                                                                                                                                                                        {
                                                                                                                                                                          sub_1B9458030(319, &qword_1ED9D4570, type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                          if (v85 <= 0x3F)
                                                                                                                                                                          {
                                                                                                                                                                            sub_1B9458030(319, qword_1ED9D43B8, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                            if (v86 <= 0x3F)
                                                                                                                                                                            {
                                                                                                                                                                              sub_1B9458030(319, qword_1ED9D44F0, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                              if (v87 <= 0x3F)
                                                                                                                                                                              {
                                                                                                                                                                                sub_1B9458030(319, qword_1ED9D5F08, type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                if (v88 <= 0x3F)
                                                                                                                                                                                {
                                                                                                                                                                                  sub_1B9458030(319, qword_1ED9D5E50, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                  if (v89 <= 0x3F)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1B9458030(319, qword_1ED9D5428, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                    if (v90 <= 0x3F)
                                                                                                                                                                                    {
                                                                                                                                                                                      sub_1B9458030(319, qword_1ED9D91E0, type metadata accessor for Searchfoundation_RFTableHeaderCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                      if (v91 <= 0x3F)
                                                                                                                                                                                      {
                                                                                                                                                                                        sub_1B9458030(319, qword_1ED9DB2F8, type metadata accessor for Searchfoundation_RFTableRowCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                        if (v92 <= 0x3F)
                                                                                                                                                                                        {
                                                                                                                                                                                          sub_1B9458030(319, qword_1ED9D4270, type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                          if (v93 <= 0x3F)
                                                                                                                                                                                          {
                                                                                                                                                                                            sub_1B9458030(319, qword_1ED9D6150, type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                            if (v94 <= 0x3F)
                                                                                                                                                                                            {
                                                                                                                                                                                              sub_1B9458030(319, qword_1ED9D48E8, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                              if (v95 <= 0x3F)
                                                                                                                                                                                              {
                                                                                                                                                                                                sub_1B9458030(319, qword_1ED9D6200, type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                if (v96 <= 0x3F)
                                                                                                                                                                                                {
                                                                                                                                                                                                  sub_1B9458030(319, qword_1ED9D4998, type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                  if (v97 <= 0x3F)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    sub_1B9458030(319, qword_1ED9D3C18, type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                    if (v98 <= 0x3F)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      sub_1B9458030(319, qword_1ED9D40B8, type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                      if (v99 <= 0x3F)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        sub_1B9458030(319, qword_1ED9D62D0, type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                        if (v100 <= 0x3F)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          sub_1B9458030(319, qword_1ED9D54D8, type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                          if (v101 <= 0x3F)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            sub_1B9458030(319, qword_1ED9DD6C8, type metadata accessor for Searchfoundation_RFButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                            if (v102 <= 0x3F)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              sub_1B9458030(319, qword_1ED9D8A00, type metadata accessor for Searchfoundation_RFBinaryButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                              if (v103 <= 0x3F)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                sub_1B9458030(319, qword_1ED9D6368, type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                if (v104 <= 0x3F)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  sub_1B9458030(319, qword_1ED9D4320, type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                  if (v105 <= 0x3F)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    sub_1B9458030(319, qword_1ED9D4020, type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                    if (v106 <= 0x3F)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      sub_1B9458030(319, qword_1ED9DEA40, type metadata accessor for Searchfoundation_RFMapCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                      if (v107 <= 0x3F)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        sub_1B9458030(319, &qword_1ED9D6260, type metadata accessor for Searchfoundation_RFReferenceStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                        if (v108 <= 0x3F)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          sub_1B9458030(319, qword_1ED9D9288, type metadata accessor for Searchfoundation_RFMultiButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                          if (v109 <= 0x3F)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            sub_1B9458030(319, qword_1ED9D5570, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                            if (v110 <= 0x3F)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              sub_1B9458030(319, qword_1ED9CFCB0, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                              if (v111 <= 0x3F)
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

void sub_1B9460F08(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F1F90, type metadata accessor for Searchfoundation_FormattedText, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B9458030(319, &qword_1ED9F2328, type metadata accessor for Searchfoundation_ActionItem, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B9458030(319, &qword_1ED9F2EA8, type metadata accessor for Searchfoundation_Button, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1B9461250(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9461430(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B94615A8(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F8C40, type metadata accessor for Searchfoundation_CommandButtonItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F1CE8, type metadata accessor for Searchfoundation_CollectionStyle, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B94617E4(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B94619B8(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9461B8C(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F96F0, type metadata accessor for Searchfoundation_Command.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9738, type metadata accessor for Searchfoundation_Topic, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, qword_1ED9ED650, type metadata accessor for Searchfoundation_CommandReference, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9461D38(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9518, type metadata accessor for Searchfoundation_SymbolImage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9ED410, type metadata accessor for Searchfoundation_DrillDownMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B9461F68(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F89D8, type metadata accessor for Searchfoundation_PhotosLibraryImage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9708, type metadata accessor for Searchfoundation_Person, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462114(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9258, type metadata accessor for Searchfoundation_MediaMetadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, qword_1ED9EDDB8, type metadata accessor for Searchfoundation_AudioData, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9462258(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9258, type metadata accessor for Searchfoundation_MediaMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, qword_1ED9CC400, type metadata accessor for Searchfoundation_CardSection, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462428(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9240, type metadata accessor for Searchfoundation_WatchListItem, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B946260C()
{
  OUTLINED_FUNCTION_734();
  v0 = OUTLINED_FUNCTION_52_11();
  sub_1B9458030(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_1057();
    sub_1B9458030(v5, v6, v7, v8);
    if (v9 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9462700(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9258, type metadata accessor for Searchfoundation_MediaMetadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9D85E0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, qword_1ED9EDDB8, type metadata accessor for Searchfoundation_AudioData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B94628A8(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F22C8, type metadata accessor for Searchfoundation_SportsTeam, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9462A14(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462BD4(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462D90(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2328, type metadata accessor for Searchfoundation_ActionItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B9463028(uint64_t a1)
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F96D8, type metadata accessor for Searchfoundation_Command, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1B9463260()
{
  result = qword_1EBACDF08;
  if (!qword_1EBACDF08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ButtonAlignment, &type metadata for Searchfoundation_ButtonAlignment, v0, v1);
    atomic_store(result, &qword_1EBACDF08);
  }

  return result;
}

unint64_t sub_1B94632B4()
{
  result = qword_1EBACDF10;
  if (!qword_1EBACDF10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_PlaybackQueueLocation, &type metadata for Searchfoundation_PlaybackQueueLocation, v0, v1);
    atomic_store(result, &qword_1EBACDF10);
  }

  return result;
}

unint64_t sub_1B9463308()
{
  result = qword_1EBACDF18;
  if (!qword_1EBACDF18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EntityType, &type metadata for Searchfoundation_EntityType, v0, v1);
    atomic_store(result, &qword_1EBACDF18);
  }

  return result;
}

unint64_t sub_1B946335C()
{
  result = qword_1EBACDF20;
  if (!qword_1EBACDF20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_HierarchicalIncreasedContrastModeType, &type metadata for Searchfoundation_HierarchicalIncreasedContrastModeType, v0, v1);
    atomic_store(result, &qword_1EBACDF20);
  }

  return result;
}

unint64_t sub_1B94633B0()
{
  result = qword_1ED9D2FC8;
  if (!qword_1ED9D2FC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CardSource, &type metadata for Searchfoundation_CardSource, v0, v1);
    atomic_store(result, &qword_1ED9D2FC8);
  }

  return result;
}

unint64_t sub_1B9463404()
{
  result = qword_1EBAB5530;
  if (!qword_1EBAB5530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CardType, &type metadata for Searchfoundation_CardType, v0, v1);
    atomic_store(result, &qword_1EBAB5530);
  }

  return result;
}

unint64_t sub_1B9463458()
{
  result = qword_1EBACDF28;
  if (!qword_1EBACDF28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_TextColor, &type metadata for Searchfoundation_TextColor, v0, v1);
    atomic_store(result, &qword_1EBACDF28);
  }

  return result;
}

unint64_t sub_1B94634AC()
{
  result = qword_1EBACDF30;
  if (!qword_1EBACDF30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_TextAlignment, &type metadata for Searchfoundation_TextAlignment, v0, v1);
    atomic_store(result, &qword_1EBACDF30);
  }

  return result;
}

unint64_t sub_1B9463500()
{
  result = qword_1EBACE790;
  if (!qword_1EBACE790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_RFLevelOfDetail, &type metadata for Searchfoundation_RFLevelOfDetail, v0, v1);
    atomic_store(result, &qword_1EBACE790);
  }

  return result;
}

void OUTLINED_FUNCTION_37_12(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 42) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = 0;
  *(v2 + 72) = v1;
}

void OUTLINED_FUNCTION_57_14(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 42) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = 0;
  *(v2 + 72) = v1;
}

uint64_t OUTLINED_FUNCTION_58_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_64_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + *(v3 + 32), 1, 1, v1);
  v4 = v2 + *(v3 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v3 + *(v2 + 32), 1, 1, v1);
  v4 = v3 + *(v2 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_81_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + *(v3 + 28), 1, 1, v1);
  v4 = v2 + *(v3 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_82_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v3 + *(v2 + 28), 1, 1, v1);
  v4 = v3 + *(v2 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_101_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v2 + *(v3 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_102_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v3 + *(v2 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_119_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_121_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  v5 = v1 + *(v2 + 28);

  return __swift_storeEnumTagSinglePayload(v5, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, a1);
  v5 = v2 + *(v1 + 28);

  return __swift_storeEnumTagSinglePayload(v5, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_125_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_127_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v2 + *(v3 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_128_8(uint64_t a1)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_131_8(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v3 + *(v2 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_227_1(uint64_t a1)
{
  *(v1 + 84) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_228_2(uint64_t a1)
{
  *(v1 + 72) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_229_2(uint64_t a1)
{
  *(v1 + 72) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_230_3(uint64_t a1)
{
  *(v1 + 72) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_231_5(uint64_t a1)
{
  *(v1 + 64) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_232_2(uint64_t a1)
{
  *(v1 + 80) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_233_1(uint64_t a1)
{
  *(v1 + 80) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_234_5(uint64_t a1)
{
  *(v1 + 80) = *(a1 + 20);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_264_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_268_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_337_0()
{
  v2 = *(v0 + 88);
  *(v1 + 72) = *(v0 + 80);
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_411_1@<X0>(uint64_t a2@<X8>)
{
  *(v3 + 48) = 0;
  *(v3 + 56) = a2;
  *(v3 + 64) = 0;
  *(v3 + 72) = a2;
  *(v3 + 80) = 0;
  *(v3 + 88) = a2;
  *(v3 + 96) = 0;
  *(v3 + 104) = a2;
  *(v3 + 112) = 0;
  *(v3 + 120) = a2;
  *(v3 + 128) = 0;
  *(v3 + 136) = a2;
  *(v3 + 144) = 0;
  *(v3 + 152) = a2;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = v2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_424_1()
{
  type metadata accessor for Searchfoundation_CardSectionValue._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_429_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_433_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_436_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_447_1()
{
  type metadata accessor for Searchfoundation_Command._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_457_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_460_0(uint64_t a1)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_465_0@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_469_0()
{
  type metadata accessor for Searchfoundation_DetailedRowCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_480_1()
{
  type metadata accessor for Searchfoundation_Card._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_487_0()
{
  type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_488_0@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_645_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_649_1()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_654_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_655_1(uint64_t a1)
{
  v5 = (v2 + *(v3 + 40));
  *v5 = 0;
  v5[1] = v1;
  v6 = (v2 + *(v3 + 44));
  *v6 = 0;
  v6[1] = v1;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_658_0()
{
  type metadata accessor for Searchfoundation_CardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_659_1()
{
  type metadata accessor for Searchfoundation_RFFactItemButtonCardSection._StorageClass(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_666_1()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_669_1()
{
  type metadata accessor for Searchfoundation_RichTitleCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_676_1@<X0>(uint64_t a2@<X8>)
{
  v3[4] = 0;
  v3[5] = a2;
  v3[6] = v2;
  v3[7] = v2;
  v3[8] = 0;
  v3[9] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_679_0(uint64_t a1)
{
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = v1;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_681_1()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_687_0()
{
  *(v1 - 96) = v0;

  return sub_1B8D92024();
}

void OUTLINED_FUNCTION_692_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
}

void OUTLINED_FUNCTION_693_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
}

uint64_t OUTLINED_FUNCTION_695_1()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_696_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_741_0(uint64_t a1)
{
  type metadata accessor for Searchfoundation_CardSectionValue(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_742_0(uint64_t a1)
{
  type metadata accessor for Searchfoundation_CardSectionValue(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_749_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_769@<X0>(uint64_t a1@<X8>)
{
  v1[2] = 0;
  v1[3] = a1;
  v1[4] = 0;
  v1[5] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_774_0(uint64_t a1)
{
  type metadata accessor for Searchfoundation_Command(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_791_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_804_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_825_0(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_835_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 72) = a3;
  *(v3 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_845_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_865()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_868_0()
{
  *(v1 - 72) = v0;

  return type metadata accessor for Searchfoundation_Punchout(0);
}

uint64_t OUTLINED_FUNCTION_870_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_871_0@<X0>(uint64_t a2@<X8>)
{
  v3[10] = 0;
  v3[11] = v2;
  v3[12] = 0;
  v3[13] = v2;
  v3[14] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_873_0@<X0>(uint64_t a2@<X8>)
{
  v3[4] = 0;
  v3[5] = a2;
  v3[6] = v2;
  v3[7] = v2;
  v3[8] = 0;
  v3[9] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_874@<X0>(uint64_t a2@<X8>)
{
  v3[8] = v2;
  v3[9] = v2;
  v3[10] = 0;
  v3[11] = a2;
  v3[12] = 0;
  v3[13] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_879(uint64_t a1)
{
  type metadata accessor for Searchfoundation_DetailedRowCardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_880(uint64_t a1)
{
  type metadata accessor for Searchfoundation_DetailedRowCardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL OUTLINED_FUNCTION_889()
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v0 + 64);

  return sub_1B8D92198(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_895@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_896@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_912(uint64_t a1)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_913(uint64_t a1)
{
  type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_925(uint64_t a1)
{
  *v1 = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_926(uint64_t a1)
{
  *v1 = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_933(uint64_t a1)
{
  type metadata accessor for Searchfoundation_Card(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1004()
{
  result = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1008()
{
  result = *(v0 + 48);
  *(v1 + 48) = *(v0 + 40);
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1009()
{
  result = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1031()
{
  result = *(v0 + 16);
  *(v1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1045(uint64_t a1)
{
  *v1 = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1048(uint64_t a1)
{
  type metadata accessor for Searchfoundation_ButtonItem(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_1051(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0xE000000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 42) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
}

uint64_t OUTLINED_FUNCTION_1063(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1064(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1065(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_1066(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1073(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1074(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1075(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1076(uint64_t a1)
{
  type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1077(uint64_t a1)
{
  type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1080(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1081(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1082(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1083(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1084(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1086@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1087(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1088(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1089(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1090(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1091(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1092(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1093(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1094(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1095(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1096(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1098(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1099(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1100(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1101(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1102(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1103(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1104(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1105(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1106(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1107(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1108(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1109(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1110(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1111(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1112(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1113(uint64_t a1)
{
  type metadata accessor for Searchfoundation_CardSection(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1117@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1118(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1119(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1122()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_1126(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1140(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0xE000000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 42) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
}

uint64_t OUTLINED_FUNCTION_1149()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1151()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1153()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1154()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_1155(uint64_t a1, __n128 a2)
{
  *v2 = a2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1161(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1165()
{

  return sub_1B944B0D4();
}

uint64_t OUTLINED_FUNCTION_1179@<X0>(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
  type metadata accessor for Searchfoundation_EntitySearchMetadata(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1188()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1189()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_1190(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1201(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1206(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 72) = a3;
  *(v3 - 96) = result;
  *(v3 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return type metadata accessor for Searchfoundation_RFVisualProperty(0);
}

uint64_t OUTLINED_FUNCTION_1215@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 80) = a2;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1217()
{
  *(v1 - 104) = v0;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_1223(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1224(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1228(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1233()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1244(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1245(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1248()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1251(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1252()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1255(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1275()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1276()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1277()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1278()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1280()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1308()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_1309()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_1310()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_1314()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_1315()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_1316()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_1317@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1320()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1322()
{

  return sub_1B944B02C();
}

uint64_t OUTLINED_FUNCTION_1325(uint64_t a1)
{

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1328()
{

  return sub_1B964C2B0();
}

void OUTLINED_FUNCTION_1329()
{
  v3 = *v1;
  v4 = *v0;

  sub_1B8D67B1C(v3, v4);
}

uint64_t OUTLINED_FUNCTION_1331(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return type metadata accessor for Searchfoundation_RFVisualProperty(0);
}

uint64_t OUTLINED_FUNCTION_1332(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1B964C730();
}

uint64_t OUTLINED_FUNCTION_1333()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1344@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[2] = a2;
  v2[3].n128_u8[0] = 0;
  v2[3].n128_u64[1] = 0;
  v2[4].n128_u64[0] = a1;
  type metadata accessor for Searchfoundation_PerformIntentCommand(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_1346()
{
  *v1 = 0;
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
}

uint64_t OUTLINED_FUNCTION_1356(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1382(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_1383@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1384@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1385@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 48) = 0;
  *(v2 + 56) = a2;
  *(v2 + 64) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1386()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1387()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1388()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1389()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_1396(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_1399()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_1400()
{

  return sub_1B964C2B0();
}

uint64_t Searchfoundation_ColorBarCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_ColorBarCardSection(0) + 20);
  if (qword_1EBAB8320 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBACE7E8;
}

uint64_t Searchfoundation_ColorBarCardSection.barColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  OUTLINED_FUNCTION_5_37();
  v7 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  OUTLINED_FUNCTION_119_0(v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor);
  sub_1B906D5EC(v1 + v7, v6, &qword_1EBACB050, &unk_1B96B7BD0);
  v8 = type metadata accessor for Searchfoundation_Color(0);
  if (OUTLINED_FUNCTION_30_27(v6) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *(a1 + v9) = qword_1ED9CD1C8;
    v10 = OUTLINED_FUNCTION_30_27(v6);

    if (v10 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_58();
    return sub_1B946C9A8();
  }

  return result;
}

uint64_t Searchfoundation_ColorBarCardSection.barColor.setter(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Searchfoundation_ColorBarCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_25();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B946AB14(v10);
    *(v2 + v7) = v9;
  }

  OUTLINED_FUNCTION_2_58();
  sub_1B946C9A8();
  v11 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B906CF4C(v6, v9 + v12, &qword_1EBACB050, &unk_1B96B7BD0);
  return swift_endAccess();
}

void Searchfoundation_ColorBarCardSection.barColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v12[v14] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_58();
    sub_1B946C9A8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void Searchfoundation_ColorBarCardSection.topText.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v13);
    v14 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_48();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B9469CD0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_5_37();
  v13 = *a3;
  OUTLINED_FUNCTION_119_0(v4 + v13);
  sub_1B906D5EC(v4 + v13, v12, a1, a2);
  v14 = a4(0);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v14) != 1;
  sub_1B8D9207C(v12, a1, a2);
  return v15;
}

uint64_t sub_1B9469DD4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for Searchfoundation_ColorBarCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_25();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = sub_1B946AB14(v17);
    *(v9 + v14) = v16;
  }

  v18 = a3(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
  v19 = *a4;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B906CF4C(v13, v16 + v19, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1B9469EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  OUTLINED_FUNCTION_5_37();
  v9 = *a1;
  OUTLINED_FUNCTION_119_0(v2 + v9);
  sub_1B906D5EC(v2 + v9, v8, &qword_1EBACB1D0, &qword_1B96B9870);
  type metadata accessor for Searchfoundation_RichText(0);
  if (OUTLINED_FUNCTION_30_27(v8) != 1)
  {
    return sub_1B946C9A8();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v10;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_249_3(v11);
  v12 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_249_3(v12);
  result = OUTLINED_FUNCTION_30_27(v8);
  if (result != 1)
  {
    return sub_1B8D9207C(v8, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  return result;
}

uint64_t sub_1B946A044(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(type metadata accessor for Searchfoundation_ColorBarCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_25();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B946AB14(v12);
    *(v4 + v9) = v11;
  }

  sub_1B946C9A8();
  v13 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  v14 = *a2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B906CF4C(v8, v11 + v14, &qword_1EBACB1D0, &qword_1B96B9870);
  return swift_endAccess();
}

void Searchfoundation_ColorBarCardSection.title.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v13);
    v14 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_48();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B946A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B946C9FC();
  return a7(v11);
}

void Searchfoundation_ColorBarCardSection.subtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v13);
    v14 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_48();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B946A540(uint64_t a1, char a2, void (*a3)(void *), void (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1B946C9FC();
    a3(v6);
    sub_1B946CA50(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t Searchfoundation_ColorBarCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_ColorBarCardSection.unknownFields.setter(uint64_t a1)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1B946A748()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACE7D0);
  __swift_project_value_buffer(v0, qword_1EBACE7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 51;
  *v6 = "barColor";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 52;
  *v10 = "topText";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 53;
  *v12 = "title";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 54;
  *v14 = "subtitle";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ColorBarCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8318 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACE7D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B946AA38()
{
  OUTLINED_FUNCTION_17_25();
  result = sub_1B946AA68();
  qword_1EBACE7E8 = result;
  return result;
}

uint64_t sub_1B946AA68()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText;
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle, 1, 1, v4);
  return v0;
}

uint64_t sub_1B946AB14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText;
  v12 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title, 1, 1, v12);
  v14 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle, 1, 1, v12);
  v15 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v15, v8, &qword_1EBACB050, &unk_1B96B7BD0);
  swift_beginAccess();
  sub_1B906CF4C(v8, v1 + v9, &qword_1EBACB050, &unk_1B96B7BD0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v16, v5, &qword_1EBACB1D0, &qword_1B96B9870);
  swift_beginAccess();
  sub_1B906CF4C(v5, v1 + v11, &qword_1EBACB1D0, &qword_1B96B9870);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v17, v5, &qword_1EBACB1D0, &qword_1B96B9870);
  swift_beginAccess();
  sub_1B906CF4C(v5, v1 + v13, &qword_1EBACB1D0, &qword_1B96B9870);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v18, v5, &qword_1EBACB1D0, &qword_1B96B9870);

  swift_beginAccess();
  sub_1B906CF4C(v5, v1 + v14, &qword_1EBACB1D0, &qword_1B96B9870);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B946AE20()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  return v0;
}

uint64_t sub_1B946AEC0()
{
  v0 = sub_1B946AE20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_ColorBarCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_ColorBarCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ColorBarCardSection._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B946AB14(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B946AFB4(v10, a1, a2, a3);
}

uint64_t sub_1B946AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case '3':
        sub_1B946B0B8(a2, a1, a3, a4);
        continue;
      case '4':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText;
        goto LABEL_8;
      case '5':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title;
        goto LABEL_8;
      case '6':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle;
LABEL_8:
        sub_1B946B194(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B946B0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD30B0(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B946B194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD30B0(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_ColorBarCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  result = sub_1B946B2D4(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B946B2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v42 = type metadata accessor for Searchfoundation_RichText(0);
  v12 = MEMORY[0x1EEE9AC00](v42);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v36 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - v18;
  v20 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v23, v19, &qword_1EBACB050, &unk_1B96B7BD0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1B8D9207C(v19, &qword_1EBACB050, &unk_1B96B7BD0);
    v24 = v43;
  }

  else
  {
    sub_1B946C9A8();
    sub_1B8CD30B0(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
    v25 = v43;
    sub_1B964C740();
    v24 = v25;
    result = sub_1B946CA50(v22, type metadata accessor for Searchfoundation_Color);
    if (v25)
    {
      return result;
    }
  }

  v27 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v27, v11, &qword_1EBACB1D0, &qword_1B96B9870);
  v28 = v42;
  if (__swift_getEnumTagSinglePayload(v11, 1, v42) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  else
  {
    v29 = v40;
    sub_1B946C9A8();
    sub_1B8CD30B0(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
    sub_1B964C740();
    result = sub_1B946CA50(v29, type metadata accessor for Searchfoundation_RichText);
    if (v24)
    {
      return result;
    }
  }

  v30 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title;
  swift_beginAccess();
  v31 = v41;
  sub_1B906D5EC(a1 + v30, v41, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v31, 1, v28) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  else
  {
    v32 = v38;
    sub_1B946C9A8();
    sub_1B8CD30B0(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
    sub_1B964C740();
    result = sub_1B946CA50(v32, type metadata accessor for Searchfoundation_RichText);
    if (v24)
    {
      return result;
    }
  }

  v33 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle;
  swift_beginAccess();
  v34 = v39;
  sub_1B906D5EC(a1 + v33, v39, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v34, 1, v28) == 1)
  {
    return sub_1B8D9207C(v34, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  v35 = v37;
  sub_1B946C9A8();
  sub_1B8CD30B0(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C740();
  return sub_1B946CA50(v35, type metadata accessor for Searchfoundation_RichText);
}

uint64_t static Searchfoundation_ColorBarCardSection.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  v3 = *(type metadata accessor for Searchfoundation_ColorBarCardSection(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {

    v6 = sub_1B946B9DC(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD30B0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B946B9DC(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v91 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v4 = MEMORY[0x1EEE9AC00](v93);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v85 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = (&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v80 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v83 = (&v80 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v92 = &v80 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v87 = (&v80 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v80 - v20;
  v21 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v80 - v31;
  v33 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v33, v32, &qword_1EBACB050, &unk_1B96B7BD0);
  v34 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__barColor;
  v35 = v94;
  swift_beginAccess();
  v36 = *(v24 + 56);
  sub_1B906D5EC(v32, v26, &qword_1EBACB050, &unk_1B96B7BD0);
  v37 = v35 + v34;
  v38 = v35;
  sub_1B906D5EC(v37, &v26[v36], &qword_1EBACB050, &unk_1B96B7BD0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v21) == 1)
  {

    sub_1B8D9207C(v32, &qword_1EBACB050, &unk_1B96B7BD0);
    v39 = a1;
    if (__swift_getEnumTagSinglePayload(&v26[v36], 1, v21) == 1)
    {
      sub_1B8D9207C(v26, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_10;
    }

LABEL_6:
    v40 = &qword_1EBACB058;
    v41 = &unk_1B96CA9D0;
LABEL_16:
    v58 = v26;
LABEL_17:
    sub_1B8D9207C(v58, v40, v41);
    goto LABEL_18;
  }

  sub_1B906D5EC(v26, v30, &qword_1EBACB050, &unk_1B96B7BD0);
  if (__swift_getEnumTagSinglePayload(&v26[v36], 1, v21) == 1)
  {

    sub_1B8D9207C(v32, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B946CA50(v30, type metadata accessor for Searchfoundation_Color);
    goto LABEL_6;
  }

  v42 = v88;
  sub_1B946C9A8();
  v43 = *(v21 + 20);
  v44 = *&v30[v43];
  v45 = *(v42 + v43);
  v39 = a1;

  if (v44 != v45)
  {

    sub_1B947FDE4();
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      sub_1B946CA50(v42, type metadata accessor for Searchfoundation_Color);
      sub_1B8D9207C(v32, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B946CA50(v30, type metadata accessor for Searchfoundation_Color);
      v58 = v26;
      v40 = &qword_1EBACB050;
      v41 = &unk_1B96B7BD0;
      goto LABEL_17;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD30B0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v48 = sub_1B964C850();
  sub_1B946CA50(v42, type metadata accessor for Searchfoundation_Color);
  sub_1B8D9207C(v32, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B946CA50(v30, type metadata accessor for Searchfoundation_Color);
  sub_1B8D9207C(v26, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v49 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText;
  swift_beginAccess();
  v50 = v89;
  sub_1B906D5EC(v39 + v49, v89, &qword_1EBACB1D0, &qword_1B96B9870);
  v51 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__topText;
  swift_beginAccess();
  v52 = *(v93 + 48);
  v26 = v90;
  sub_1B906D5EC(v50, v90, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B906D5EC(v38 + v51, &v26[v52], &qword_1EBACB1D0, &qword_1B96B9870);
  v53 = v91;
  if (__swift_getEnumTagSinglePayload(v26, 1, v91) == 1)
  {
    sub_1B8D9207C(v50, &qword_1EBACB1D0, &qword_1B96B9870);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v26[v52], 1, v53);
    v55 = v92;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v26, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v56 = v87;
  sub_1B906D5EC(v26, v87, &qword_1EBACB1D0, &qword_1B96B9870);
  v57 = __swift_getEnumTagSinglePayload(&v26[v52], 1, v53);
  v55 = v92;
  if (v57 == 1)
  {
    sub_1B8D9207C(v50, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B946CA50(v56, type metadata accessor for Searchfoundation_RichText);
LABEL_15:
    v40 = &qword_1EBACB230;
    v41 = &unk_1B96B8870;
    goto LABEL_16;
  }

  v60 = v86;
  sub_1B946C9A8();
  v61 = static Searchfoundation_RichText.== infix(_:_:)(v56, v60);
  sub_1B946CA50(v60, type metadata accessor for Searchfoundation_RichText);
  sub_1B8D9207C(v50, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B946CA50(v56, type metadata accessor for Searchfoundation_RichText);
  sub_1B8D9207C(v26, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v61 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v62 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title;
  swift_beginAccess();
  sub_1B906D5EC(v39 + v62, v55, &qword_1EBACB1D0, &qword_1B96B9870);
  v63 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__title;
  swift_beginAccess();
  v64 = v93;
  v65 = *(v93 + 48);
  v66 = v55;
  v67 = v55;
  v68 = v85;
  sub_1B906D5EC(v66, v85, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B906D5EC(v38 + v63, v68 + v65, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v68, 1, v53) != 1)
  {
    v69 = v83;
    sub_1B906D5EC(v68, v83, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v68 + v65, 1, v53) == 1)
    {
      sub_1B8D9207C(v92, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B946CA50(v69, type metadata accessor for Searchfoundation_RichText);
      goto LABEL_28;
    }

    v70 = v86;
    sub_1B946C9A8();
    v71 = static Searchfoundation_RichText.== infix(_:_:)(v69, v70);
    sub_1B946CA50(v70, type metadata accessor for Searchfoundation_RichText);
    sub_1B8D9207C(v92, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B946CA50(v69, type metadata accessor for Searchfoundation_RichText);
    sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
    if (v71)
    {
      goto LABEL_30;
    }

LABEL_18:

    return 0;
  }

  sub_1B8D9207C(v67, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v68 + v65, 1, v53) != 1)
  {
LABEL_28:
    v40 = &qword_1EBACB230;
    v41 = &unk_1B96B8870;
    v58 = v68;
    goto LABEL_17;
  }

  sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_30:
  v72 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle;
  swift_beginAccess();
  v73 = v84;
  sub_1B906D5EC(v39 + v72, v84, &qword_1EBACB1D0, &qword_1B96B9870);
  v74 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ColorBarCardSectionP33_AA6A3E994DE8DE27398A2FA44228FC8B13_StorageClass__subtitle;
  swift_beginAccess();
  v75 = *(v64 + 48);
  v76 = v82;
  sub_1B906D5EC(v73, v82, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B906D5EC(v38 + v74, v76 + v75, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v76, 1, v53) == 1)
  {

    sub_1B8D9207C(v73, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v76 + v75, 1, v53) == 1)
    {
      sub_1B8D9207C(v76, &qword_1EBACB1D0, &qword_1B96B9870);
      return 1;
    }

    goto LABEL_35;
  }

  v77 = v81;
  sub_1B906D5EC(v76, v81, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v76 + v75, 1, v53) == 1)
  {

    sub_1B8D9207C(v84, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B946CA50(v77, type metadata accessor for Searchfoundation_RichText);
LABEL_35:
    sub_1B8D9207C(v76, &qword_1EBACB230, &unk_1B96B8870);
    return 0;
  }

  v78 = v86;
  sub_1B946C9A8();
  v79 = static Searchfoundation_RichText.== infix(_:_:)(v77, v78);

  sub_1B946CA50(v78, type metadata accessor for Searchfoundation_RichText);
  sub_1B8D9207C(v84, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B946CA50(v77, type metadata accessor for Searchfoundation_RichText);
  sub_1B8D9207C(v76, &qword_1EBACB1D0, &qword_1B96B9870);
  return (v79 & 1) != 0;
}

uint64_t Searchfoundation_ColorBarCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_ColorBarCardSection(0);
  sub_1B8CD30B0(&qword_1EBACE7F0, type metadata accessor for Searchfoundation_ColorBarCardSection, protocol conformance descriptor for Searchfoundation_ColorBarCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B946C818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD30B0(&qword_1EBACE808, type metadata accessor for Searchfoundation_ColorBarCardSection, "Q\t|5HX\a");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B946C898(uint64_t a1)
{
  v2 = sub_1B8CD30B0(&qword_1EBACE698, type metadata accessor for Searchfoundation_ColorBarCardSection, protocol conformance descriptor for Searchfoundation_ColorBarCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B946C908(uint64_t a1, uint64_t a2)
{
  sub_1B8CD30B0(&qword_1EBACE698, type metadata accessor for Searchfoundation_ColorBarCardSection, protocol conformance descriptor for Searchfoundation_ColorBarCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B946C9A8()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B946C9FC()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B946CA50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B946CBF0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_ColorBarCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B946CC7C(uint64_t a1)
{
  sub_1B946CD84(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B946CD84(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B946CD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_48()
{

  return sub_1B946C9A8();
}

uint64_t OUTLINED_FUNCTION_10_34()
{

  return sub_1B906D5EC(v0 + v4, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_25()
{
  type metadata accessor for Searchfoundation_ColorBarCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_27(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

unint64_t Searchfoundation_CommandType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Searchfoundation_CommandType.rawValue.getter()
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

uint64_t sub_1B946CF7C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_CommandType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B946CFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B946F018();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_CommandType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBACE810 = a1;
}

uint64_t sub_1B946D0F8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_CommandType.allCases.getter();
  *a1 = result;
  return result;
}

void (*Searchfoundation_ReferentialCommand.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ReferentialCommand(v0);
  return nullsub_1;
}

uint64_t sub_1B946D1EC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a1(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_CommandReference.referenceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B946D2CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B946D360()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*Searchfoundation_CommandReference.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CommandReference(v0);
  return nullsub_1;
}

void Searchfoundation_AbstractCommand.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_AbstractCommand.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_AbstractCommand.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC8, &unk_1B96CA9E0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Searchfoundation_AbstractCommand(0);
  sub_1B8DD9078(v1 + *(v7 + 24), v6, &qword_1EBAB8EC8, &unk_1B96CA9E0);
  v8 = type metadata accessor for Searchfoundation_CommandValue(0);
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_21_23();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_178(v6, 1, v8);
    if (!v9)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB8EC8, &unk_1B96CA9E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_59();
    return sub_1B946DAF0(v6, a1);
  }

  return result;
}

uint64_t Searchfoundation_AbstractCommand.value.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_AbstractCommand(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8EC8, &unk_1B96CA9E0);
  OUTLINED_FUNCTION_3_59();
  sub_1B946DAF0(v0, v1 + v3);
  type metadata accessor for Searchfoundation_CommandValue(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Searchfoundation_CommandValue.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_CommandValue(0);
  OUTLINED_FUNCTION_21_23();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void (*Searchfoundation_AbstractCommand.value.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC8, &unk_1B96CA9E0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Searchfoundation_CommandValue(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Searchfoundation_AbstractCommand(0) + 24);
  *(v3 + 10) = v10;
  v11 = OUTLINED_FUNCTION_115(v10);
  OUTLINED_FUNCTION_44_7(v11, v12);
  OUTLINED_FUNCTION_75(v6);
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_21_23();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_75(v6);
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8EC8, &unk_1B96CA9E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_59();
    sub_1B946DAF0(v6, v9);
  }

  return sub_1B946D7E8;
}

uint64_t Searchfoundation_AbstractCommand.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC8, &unk_1B96CA9E0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_AbstractCommand(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 24));
  sub_1B8DD9078(v5, v6, &qword_1EBAB8EC8, &unk_1B96CA9E0);
  type metadata accessor for Searchfoundation_CommandValue(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  OUTLINED_FUNCTION_129_2();
  return v0;
}

Swift::Void __swiftcall Searchfoundation_AbstractCommand.clearValue()()
{
  v1 = type metadata accessor for Searchfoundation_AbstractCommand(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB8EC8, &unk_1B96CA9E0);
  type metadata accessor for Searchfoundation_CommandValue(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Searchfoundation_AbstractCommand.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_AbstractCommand(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_AbstractCommand.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for Searchfoundation_AbstractCommand(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_CommandValue(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Searchfoundation_CommandValue.referentialCommand.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_CommandValue(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 20));
  sub_1B8DD9078(v7, v8, &unk_1EBAB8EB8, &qword_1B964D6B8);
  v9 = type metadata accessor for Searchfoundation_ReferentialCommand(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v13, v14, v9);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &unk_1EBAB8EB8, &qword_1B964D6B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_85();
    return sub_1B946DAF0(v1, a1);
  }

  return result;
}

uint64_t sub_1B946DAF0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v4(v3);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return a2;
}

uint64_t sub_1B946DB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1B946DEE8(a1, &v14 - v11);
  return a7(v12);
}

uint64_t Searchfoundation_CommandValue.referentialCommand.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_CommandValue(v2) + 20);
  sub_1B8D9207C(v1 + v3, &unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_0_85();
  sub_1B946DAF0(v0, v1 + v3);
  OUTLINED_FUNCTION_21_23();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_CommandValue.referentialCommand.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Searchfoundation_ReferentialCommand(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Searchfoundation_CommandValue(0) + 20);
  *(v3 + 10) = v10;
  v11 = OUTLINED_FUNCTION_115(v10);
  OUTLINED_FUNCTION_44_7(v11, v12);
  OUTLINED_FUNCTION_75(v6);
  if (v13)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v6);
    if (!v13)
    {
      sub_1B8D9207C(v6, &unk_1EBAB8EB8, &qword_1B964D6B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_85();
    sub_1B946DAF0(v6, v9);
  }

  return sub_1B946DDB4;
}

void sub_1B946DDDC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
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
    sub_1B946DEE8((*a1)[4], v9);
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B946DAF0(v9, v13 + v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_1B946DF40();
  }

  else
  {
    sub_1B8D9207C(v13 + v8, a3, a4);
    sub_1B946DAF0(v10, v13 + v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_1B946DEE8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v4(v3);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return a2;
}

uint64_t sub_1B946DF40()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_CommandValue.hasReferentialCommand.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_CommandValue(v3);
  v5 = OUTLINED_FUNCTION_115(*(v4 + 20));
  sub_1B8DD9078(v5, v6, &unk_1EBAB8EB8, &qword_1B964D6B8);
  type metadata accessor for Searchfoundation_ReferentialCommand(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  OUTLINED_FUNCTION_129_2();
  return v0;
}

Swift::Void __swiftcall Searchfoundation_CommandValue.clearReferentialCommand()()
{
  v1 = type metadata accessor for Searchfoundation_CommandValue(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_21_23();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_CommandValue.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_CommandValue.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B946E168()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5388);
  __swift_project_value_buffer(v0, qword_1EBAB5388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CommandTypeUnknown";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CommandTypeReferential";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B946E480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD30F8(&qword_1EBACE8A0, type metadata accessor for Searchfoundation_ReferentialCommand, protocol conformance descriptor for Searchfoundation_ReferentialCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B946E500(uint64_t a1)
{
  v2 = sub_1B8CD30F8(qword_1ED9D2810, type metadata accessor for Searchfoundation_ReferentialCommand, protocol conformance descriptor for Searchfoundation_ReferentialCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B946E570(uint64_t a1, uint64_t a2)
{
  sub_1B8CD30F8(qword_1ED9D2810, type metadata accessor for Searchfoundation_ReferentialCommand, protocol conformance descriptor for Searchfoundation_ReferentialCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B946E660()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B946E6E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_1B964C700(), !v5))
  {
    a4(0);
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B946E7B0(uint64_t *a1, void *a2, void (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_72();
  v7 = sub_1B8CD30F8(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B946E8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD30F8(&qword_1EBACE898, type metadata accessor for Searchfoundation_CommandReference, protocol conformance descriptor for Searchfoundation_CommandReference);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B946E960(uint64_t a1)
{
  v2 = sub_1B8CD30F8(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference, protocol conformance descriptor for Searchfoundation_CommandReference);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B946E9D0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD30F8(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference, protocol conformance descriptor for Searchfoundation_CommandReference);

  return sub_1B964C5D0();
}

uint64_t sub_1B946EA68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4F68);
  __swift_project_value_buffer(v0, qword_1EBAB4F68);
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
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_AbstractCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B946ED24(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B946ECBC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B946ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_AbstractCommand(0);
  type metadata accessor for Searchfoundation_CommandValue(0);
  sub_1B8CD30F8(&qword_1ED9D2ED0, type metadata accessor for Searchfoundation_CommandValue, protocol conformance descriptor for Searchfoundation_CommandValue);
  return sub_1B964C580();
}

uint64_t Searchfoundation_AbstractCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC8, &unk_1B96CA9E0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Searchfoundation_CommandValue(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = v14 - v13;
  if (!*v5 || (v16 = *(v5 + 8), v19 = *v5, v20 = v16, sub_1B946F018(), result = sub_1B964C680(), !v4))
  {
    v21 = a1;
    v18 = type metadata accessor for Searchfoundation_AbstractCommand(0);
    sub_1B8DD9078(v5 + *(v18 + 24), v10, &qword_1EBAB8EC8, &unk_1B96CA9E0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB8EC8, &unk_1B96CA9E0);
    }

    else
    {
      sub_1B946DAF0(v10, v15);
      sub_1B8CD30F8(&qword_1ED9D2ED0, type metadata accessor for Searchfoundation_CommandValue, protocol conformance descriptor for Searchfoundation_CommandValue);
      sub_1B964C740();
      result = sub_1B946DF40();
      if (v4)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

unint64_t sub_1B946F018()
{
  result = qword_1ED9D2F58;
  if (!qword_1ED9D2F58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CommandType, &type metadata for Searchfoundation_CommandType, v0, v1);
    atomic_store(result, &qword_1ED9D2F58);
  }

  return result;
}

uint64_t static Searchfoundation_AbstractCommand.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_28_1();
  type metadata accessor for Searchfoundation_CommandValue(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC8, &unk_1B96CA9E0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED0, &qword_1B964D6D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *v2;
  v18 = *a2;
  if (*(v2 + 8))
  {
    v17 = *v2 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_19;
      }
    }

    else if (v17)
    {
      goto LABEL_19;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_19;
  }

  v29 = type metadata accessor for Searchfoundation_AbstractCommand(0);
  v19 = *(v29 + 24);
  v20 = *(v13 + 48);
  sub_1B8DD9078(v2 + v19, v16, &qword_1EBAB8EC8, &unk_1B96CA9E0);
  sub_1B8DD9078(a2 + v19, &v16[v20], &qword_1EBAB8EC8, &unk_1B96CA9E0);
  OUTLINED_FUNCTION_75(v16);
  if (v21)
  {
    OUTLINED_FUNCTION_75(&v16[v20]);
    if (v21)
    {
      sub_1B8D9207C(v16, &qword_1EBAB8EC8, &unk_1B96CA9E0);
      goto LABEL_22;
    }
  }

  else
  {
    sub_1B8DD9078(v16, v12, &qword_1EBAB8EC8, &unk_1B96CA9E0);
    OUTLINED_FUNCTION_75(&v16[v20]);
    if (!v21)
    {
      sub_1B946DAF0(&v16[v20], v8);
      v24 = static Searchfoundation_CommandValue.== infix(_:_:)(v12, v8);
      sub_1B946DF40();
      sub_1B946DF40();
      sub_1B8D9207C(v16, &qword_1EBAB8EC8, &unk_1B96CA9E0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_22:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_72();
      v27 = sub_1B8CD30F8(v25, v26, MEMORY[0x1E69AAC10]);
      v22 = OUTLINED_FUNCTION_634(v27);
      return v22 & 1;
    }

    sub_1B946DF40();
  }

  sub_1B8D9207C(v16, &qword_1EBAB8ED0, &qword_1B964D6D0);
LABEL_19:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1B946F3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD30F8(&qword_1EBACE890, type metadata accessor for Searchfoundation_AbstractCommand, protocol conformance descriptor for Searchfoundation_AbstractCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B946F474(uint64_t a1)
{
  v2 = sub_1B8CD30F8(qword_1ED9D2B20, type metadata accessor for Searchfoundation_AbstractCommand, protocol conformance descriptor for Searchfoundation_AbstractCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B946F4E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD30F8(qword_1ED9D2B20, type metadata accessor for Searchfoundation_AbstractCommand, protocol conformance descriptor for Searchfoundation_AbstractCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B946F598(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B964C780();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v15 + 104))(v13, v14);
  return sub_1B964C760();
}

uint64_t Searchfoundation_CommandValue.decodeMessage<A>(decoder:)()
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
      sub_1B946F778(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B946F778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_CommandValue(0);
  type metadata accessor for Searchfoundation_ReferentialCommand(0);
  sub_1B8CD30F8(qword_1ED9D2810, type metadata accessor for Searchfoundation_ReferentialCommand, protocol conformance descriptor for Searchfoundation_ReferentialCommand);
  return sub_1B964C580();
}

uint64_t Searchfoundation_CommandValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Searchfoundation_ReferentialCommand(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = v12 - v11;
  v14 = *(type metadata accessor for Searchfoundation_CommandValue(0) + 20);
  v17 = v3;
  sub_1B8DD9078(v3 + v14, v8, &unk_1EBAB8EB8, &qword_1B964D6B8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &unk_1EBAB8EB8, &qword_1B964D6B8);
  }

  else
  {
    sub_1B946DAF0(v8, v13);
    sub_1B8CD30F8(qword_1ED9D2810, type metadata accessor for Searchfoundation_ReferentialCommand, protocol conformance descriptor for Searchfoundation_ReferentialCommand);
    sub_1B964C740();
    result = sub_1B946DF40();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Searchfoundation_CommandValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Searchfoundation_ReferentialCommand(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EC0, &unk_1B964D6C0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_22_3();
  v17 = *(type metadata accessor for Searchfoundation_CommandValue(v16) + 20);
  v18 = *(v14 + 56);
  OUTLINED_FUNCTION_44_7(a1 + v17, v2);
  OUTLINED_FUNCTION_44_7(a2 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v19, v20, v5);
  if (v21)
  {
    OUTLINED_FUNCTION_178(v2 + v18, 1, v5);
    if (v21)
    {
      sub_1B8D9207C(v2, &unk_1EBAB8EB8, &qword_1B964D6B8);
LABEL_18:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_72();
      sub_1B8CD30F8(v29, v30, MEMORY[0x1E69AAC10]);
      v24 = sub_1B964C850();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  sub_1B8DD9078(v2, v13, &unk_1EBAB8EB8, &qword_1B964D6B8);
  OUTLINED_FUNCTION_178(v2 + v18, 1, v5);
  if (v21)
  {
    sub_1B946DF40();
LABEL_9:
    v22 = &qword_1EBAB8EC0;
    v23 = &unk_1B964D6C0;
LABEL_10:
    sub_1B8D9207C(v2, v22, v23);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_85();
  sub_1B946DAF0(v2 + v18, v9);
  v25 = *v13 == *v9 && v13[1] == v9[1];
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B946DF40();
    sub_1B946DF40();
    v22 = &unk_1EBAB8EB8;
    v23 = &qword_1B964D6B8;
    goto LABEL_10;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_72();
  sub_1B8CD30F8(v26, v27, MEMORY[0x1E69AAC10]);
  v28 = sub_1B964C850();
  sub_1B946DF40();
  sub_1B946DF40();
  sub_1B8D9207C(v2, &unk_1EBAB8EB8, &qword_1B964D6B8);
  if (v28)
  {
    goto LABEL_18;
  }

LABEL_11:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1B946FD90(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD30F8(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B946FE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD30F8(&qword_1EBACE888, type metadata accessor for Searchfoundation_CommandValue, protocol conformance descriptor for Searchfoundation_CommandValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B946FEF4(uint64_t a1)
{
  v2 = sub_1B8CD30F8(&qword_1ED9D2ED0, type metadata accessor for Searchfoundation_CommandValue, protocol conformance descriptor for Searchfoundation_CommandValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B946FF64(uint64_t a1, uint64_t a2)
{
  sub_1B8CD30F8(&qword_1ED9D2ED0, type metadata accessor for Searchfoundation_CommandValue, protocol conformance descriptor for Searchfoundation_CommandValue);

  return sub_1B964C5D0();
}

unint64_t sub_1B946FFE4()
{
  result = qword_1ED9D2F50;
  if (!qword_1ED9D2F50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CommandType, &type metadata for Searchfoundation_CommandType, v0, v1);
    atomic_store(result, &qword_1ED9D2F50);
  }

  return result;
}

unint64_t sub_1B947003C()
{
  result = qword_1ED9D2F40;
  if (!qword_1ED9D2F40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CommandType, &type metadata for Searchfoundation_CommandType, v0, v1);
    atomic_store(result, &qword_1ED9D2F40);
  }

  return result;
}

unint64_t sub_1B9470094()
{
  result = qword_1ED9D2F48;
  if (!qword_1ED9D2F48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CommandType, &type metadata for Searchfoundation_CommandType, v0, v1);
    atomic_store(result, &qword_1ED9D2F48);
  }

  return result;
}

unint64_t sub_1B94700EC()
{
  result = qword_1EBACE850;
  if (!qword_1EBACE850)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBACE858, &qword_1B96CAAD8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBACE850);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_115_1();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_6(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v4 = OUTLINED_FUNCTION_115_1();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

void sub_1B947075C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B94708D4(319, &qword_1ED9D2EB0, type metadata accessor for Searchfoundation_CommandValue);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9470834(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B94708D4(319, &qword_1ED9D27F0, type metadata accessor for Searchfoundation_ReferentialCommand);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94708D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t Searchfoundation_CompactRowCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_CompactRowCardSection(0) + 20);
  if (qword_1EBAB4730 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAB4738;
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_CompactRowCardSection(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_60();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9470BE0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Searchfoundation_CompactRowCardSection.punchoutOptions.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_7_38();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B94733AC(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_18(v7 + 16, v2 + 24);
    *(v7 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_10_4(v0 + 24, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_10_35();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 24, v5);
  *(v6 + 24) = v2;
  *(v6 + 32) = v0;
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_60();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 24);
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9470DF8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_CompactRowCardSection.punchoutPickerTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_38();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B94733AC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 24, v0 + 24);
    *(v7 + 24) = v3;
    *(v7 + 32) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_10_4(v0 + 40, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_10_35();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v2;
  *(v6 + 48) = v0;
}

uint64_t Searchfoundation_CompactRowCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_60();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 40);
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9471000()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_CompactRowCardSection.punchoutPickerDismissText.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_38();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B94733AC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 40, v0 + 24);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_CompactRowCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_60();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 56, v3);
  return *(v2 + 56);
}

uint64_t Searchfoundation_CompactRowCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_11_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B94733AC(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 56, v4);
  *(v5 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.canBeHidden.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 84) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B947119C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_CompactRowCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_60();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 57, v3);
  return *(v2 + 57);
}

uint64_t Searchfoundation_CompactRowCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_11_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B94733AC(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 57, v4);
  *(v5 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.hasTopPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 57);
  *(v1 + 84) = *(v0 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9471314(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_CompactRowCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_60();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 58, v3);
  return *(v2 + 58);
}

uint64_t Searchfoundation_CompactRowCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_11_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B94733AC(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 58, v4);
  *(v5 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.hasBottomPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 58);
  *(v1 + 84) = *(v0 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B947148C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_CompactRowCardSection.type.getter()
{
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_CompactRowCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_10_35();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;
}

uint64_t Searchfoundation_CompactRowCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_60();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 64);
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9471670()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_CompactRowCardSection.type.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_38();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B94733AC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 64, v0 + 24);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_CompactRowCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_10_4(v1 + 80, v3);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1B9471758@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_CompactRowCardSection.separatorStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B947179C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_CompactRowCardSection.separatorStyle.setter(&v3);
}

uint64_t Searchfoundation_CompactRowCardSection.separatorStyle.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_10_35();
  v8 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_60();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94718C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    OUTLINED_FUNCTION_7_38();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 80) = v3;
  *(v8 + 88) = v6;

  free(v2);
}

uint64_t Searchfoundation_CompactRowCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__backgroundColor, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_10_35() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B94733AC(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_CompactRowCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9471D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B92D6A80();
  return a7(v11);
}

uint64_t Searchfoundation_CompactRowCardSection.title.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_10_35() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B94733AC(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_CompactRowCardSection.title.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v14);
    v15 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B9472050(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13 - 8];
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_521(v5 + *a3, v19);
  sub_1B8D92024();
  v15 = a4(0);
  v16 = __swift_getEnumTagSinglePayload(v14, 1, v15) != 1;
  sub_1B8D9207C(v14, v6, v4);
  return v16;
}

uint64_t sub_1B9472154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = *(type metadata accessor for Searchfoundation_CompactRowCardSection(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v4 + v12) = sub_1B94733AC(v13);
  }

  v14 = a3(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9472264@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7 - 8];
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_521(v2 + *a1, v15);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_57(v8);
  if (!v9)
  {
    return sub_1B92D6A28();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v10;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_249_3(v11);
  v12 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_249_3(v12);
  result = OUTLINED_FUNCTION_57(v8);
  if (!v9)
  {
    return sub_1B8D9207C(v8, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_10_35() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B94733AC(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_CompactRowCardSection.subtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_RichText(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = type metadata accessor for Searchfoundation_Text(0);
    OUTLINED_FUNCTION_84_6(v14);
    v15 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CompactRowCardSection.isSubtitleDetatched.getter()
{
  OUTLINED_FUNCTION_3_60();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched, v4);
  return *(v2 + v3);
}

uint64_t Searchfoundation_CompactRowCardSection.isSubtitleDetatched.setter()
{
  v3 = OUTLINED_FUNCTION_11_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B94733AC(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  result = OUTLINED_FUNCTION_9_3(v5 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched, v4);
  *(v5 + v8) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.isSubtitleDetatched.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9472768(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94733AC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  OUTLINED_FUNCTION_11_4();
  *(v6 + v9) = v3;

  free(v1);
}

uint64_t Searchfoundation_CompactRowCardSection.image.getter@<X0>(int a1@<W8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__image, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_CompactRowCardSection.image.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_10_35() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_38();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B94733AC(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_CompactRowCardSection.image.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_59();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9472B50(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    sub_1B92D6A80();
    a3(v5);
    sub_1B92D6AD8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t Searchfoundation_CompactRowCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_CompactRowCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B9472D54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACE8A8);
  __swift_project_value_buffer(v0, qword_1EBACE8A8);
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
  *v28 = "isSubtitleDetatched";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "image";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_CompactRowCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8330 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACE8A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B947326C()
{
  OUTLINED_FUNCTION_7_38();
  result = sub_1B94732BC();
  qword_1EBAB4738 = result;
  return result;
}

uint64_t sub_1B94732BC()
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
  v1 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__title;
  v4 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__subtitle, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched) = 0;
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__image;
  v6 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1B94733AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v29 - v8;
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
  v29 = (v1 + 64);
  v30 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__backgroundColor;
  v31 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__title;
  v32 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__title;
  v12 = type metadata accessor for Searchfoundation_RichText(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v34 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__subtitle, 1, 1, v12);
  v35 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched) = 0;
  v13 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__image;
  v37 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__image;
  v14 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
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
  LOBYTE(v18) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v18;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v18;
  swift_beginAccess();
  v21 = *(a1 + 64);
  v20 = *(a1 + 72);
  v22 = v29;
  swift_beginAccess();
  *v22 = v21;
  *(v1 + 72) = v20;

  swift_beginAccess();
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = v30;
  swift_beginAccess();
  *v25 = v23;
  *(v1 + 88) = v24;
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
  v26 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + v26);
  v27 = v35;
  swift_beginAccess();
  *(v1 + v27) = v26;
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B94739E0()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__backgroundColor[0], &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return v0;
}

uint64_t sub_1B9473AA8()
{
  v0 = sub_1B94739E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_CompactRowCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_CompactRowCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_CompactRowCardSection._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94733AC(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B9473B9C(v10, a1, a2, a3);
}

uint64_t sub_1B9473B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9473DA4(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8FD77E8(a2, a1);
        break;
      case 3:
        sub_1B8FD786C(a2, a1);
        break;
      case 4:
        sub_1B92D3D10(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B92D3D94(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B92D3E18(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8E16ACC(a2, a1);
        break;
      case 8:
        sub_1B92D3E9C(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B9473E70(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B9473F4C(a2, a1, a3, a4);
            break;
          case '4':
            sub_1B9474028(a2, a1, a3, a4);
            break;
          case '5':
            sub_1B9474104(a2, a1, a3, a4);
            break;
          case '6':
            sub_1B9474190(a2, a1, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B9473DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD3140(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9473E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3140(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9473F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3140(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9474028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3140(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9474104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B9474190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3140(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_CompactRowCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  result = sub_1B94742D8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B94742D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v40 - v8);
  v10 = type metadata accessor for Searchfoundation_Image(0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v14;
  v49 = type metadata accessor for Searchfoundation_RichText(0);
  v15 = MEMORY[0x1EEE9AC00](v49);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v40 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v47 = &v40 - v19;
  v48 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v52 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v41 = v9;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3140(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    v9 = v41;
  }

  v21 = v52;
  swift_beginAccess();
  v22 = *(v21 + 24);
  v23 = *(v21 + 32);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  v25 = v52;
  swift_beginAccess();
  v26 = *(v25 + 40);
  v27 = *(v25 + 48);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v30 = v52;
  swift_beginAccess();
  if (*(v30 + 56) != 1 || (result = sub_1B964C670(), !v5))
  {
    swift_beginAccess();
    if (*(v30 + 57) != 1 || (result = sub_1B964C670(), !v5))
    {
      swift_beginAccess();
      if (*(v30 + 58) != 1 || (result = sub_1B964C670(), !v5))
      {
        swift_beginAccess();
        v31 = *(v30 + 64);
        v32 = *(v30 + 72);
        v33 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v33 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v33 || (, sub_1B964C700(), result = , !v5))
        {
          v34 = v52;
          swift_beginAccess();
          if (!*(v34 + 80) || (v35 = *(v34 + 88), v50 = *(v34 + 80), v51 = v35, sub_1B92C8A2C(), result = sub_1B964C680(), !v5))
          {
            v41 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__backgroundColor[0];
            swift_beginAccess();
            v36 = v47;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v36, 1, v48) == 1)
            {
              sub_1B8D9207C(v36, &qword_1EBACB050, &unk_1B96B7BD0);
            }

            else
            {
              v41 = type metadata accessor for Searchfoundation_Color;
              sub_1B92D6A28();
              sub_1B8CD3140(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              if (v5)
              {
                return result;
              }
            }

            v48 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__title;
            swift_beginAccess();
            v37 = v46;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v37, 1, v49) == 1)
            {
              sub_1B8D9207C(v37, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              v48 = type metadata accessor for Searchfoundation_RichText;
              sub_1B92D6A28();
              sub_1B8CD3140(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              if (v5)
              {
                return result;
              }
            }

            v48 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__subtitle;
            swift_beginAccess();
            v38 = v44;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v38, 1, v49) == 1)
            {
              sub_1B8D9207C(v38, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              v48 = type metadata accessor for Searchfoundation_RichText;
              sub_1B92D6A28();
              sub_1B8CD3140(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              if (v5)
              {
                return result;
              }
            }

            v49 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
            v39 = v52;
            swift_beginAccess();
            if (*(v39 + v49) != 1 || (result = sub_1B964C670(), !v5))
            {
              v49 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__image;
              swift_beginAccess();
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
              {
                return sub_1B8D9207C(v9, &qword_1EBAB8EA8, &unk_1B96B77D0);
              }

              else
              {
                sub_1B92D6A28();
                sub_1B8CD3140(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
                sub_1B964C740();
                return sub_1B92D6AD8();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_CompactRowCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_60();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B9474DC8(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3140(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B9474DC8(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for Searchfoundation_Image(0);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v90 - v9;
  v104 = type metadata accessor for Searchfoundation_RichText(0);
  MEMORY[0x1EEE9AC00](v104);
  v97 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v11 = MEMORY[0x1EEE9AC00](v103);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v90 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v90 - v21;
  v22 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v24);
  v106 = &v90 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v90 - v30;
  swift_beginAccess();
  v32 = *(a1 + 16);
  swift_beginAccess();
  v33 = *(a2 + 16);

  sub_1B8D67B1C(v32, v33);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v36 = *(a1 + 24);
  v37 = *(a1 + 32);
  swift_beginAccess();
  v38 = v36 == *(a2 + 24) && v37 == *(a2 + 32);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = v39 == *(a2 + 40) && v40 == *(a2 + 48);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v42 = *(a1 + 56);
  swift_beginAccess();
  if (v42 != *(a2 + 56))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v43 = *(a1 + 57);
  swift_beginAccess();
  if (v43 != *(a2 + 57))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v44 = *(a1 + 58);
  swift_beginAccess();
  if (v44 != *(a2 + 58))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  swift_beginAccess();
  v47 = v45 == *(a2 + 64) && v46 == *(a2 + 72);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v48 = *(a1 + 80);
  v49 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v48, v49, *(a2 + 80)))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v50 = *(v24 + 48);
  v51 = v106;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51, 1, v22) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51 + v50, 1, v22);
    v53 = v105;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v54 = &qword_1EBACB058;
    v55 = &unk_1B96CA9D0;
LABEL_36:
    v64 = v51;
LABEL_37:
    sub_1B8D9207C(v64, v54, v55);
    goto LABEL_38;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v22) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92D6AD8();
    goto LABEL_26;
  }

  v56 = v100;
  sub_1B92D6A28();
  if (*&v29[*(v22 + 20)] != *&v56[*(v22 + 20)])
  {

    sub_1B947FDE4();
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B92D6AD8();
      v64 = v51;
      v54 = &qword_1EBACB050;
      v55 = &unk_1B96B7BD0;
      goto LABEL_37;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3140(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v59 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
  v53 = v105;
  if ((v59 & 1) == 0)
  {
LABEL_38:

    return 0;
  }

LABEL_30:
  swift_beginAccess();
  v60 = v101;
  sub_1B8D92024();
  swift_beginAccess();
  v51 = v102;
  v61 = *(v103 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v62 = v104;
  if (__swift_getEnumTagSinglePayload(v51, 1, v104) == 1)
  {
    sub_1B8D9207C(v60, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v51 + v61, 1, v62) == 1)
    {
      sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  v63 = v99;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v51 + v61, 1, v62) == 1)
  {
    sub_1B8D9207C(v60, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
LABEL_35:
    v54 = &qword_1EBACB230;
    v55 = &unk_1B96B8870;
    goto LABEL_36;
  }

  v66 = v97;
  sub_1B92D6A28();
  v67 = static Searchfoundation_RichText.== infix(_:_:)(v63, v66);
  sub_1B92D6AD8();
  sub_1B8D9207C(v60, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v67 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_42:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v68 = *(v103 + 48);
  v69 = v53;
  v70 = v98;
  sub_1B8D92024();
  sub_1B8D92024();
  v71 = v104;
  if (__swift_getEnumTagSinglePayload(v70, 1, v104) == 1)
  {
    sub_1B8D9207C(v69, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v70 + v68, 1, v71) == 1)
    {
      sub_1B8D9207C(v70, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v72 = v96;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70 + v68, 1, v71) == 1)
  {
    sub_1B8D9207C(v105, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
LABEL_48:
    v54 = &qword_1EBACB230;
    v55 = &unk_1B96B8870;
    v64 = v70;
    goto LABEL_37;
  }

  v73 = v97;
  sub_1B92D6A28();
  v74 = static Searchfoundation_RichText.== infix(_:_:)(v72, v73);
  sub_1B92D6AD8();
  sub_1B8D9207C(v105, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v70, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v74 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_50:
  v75 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  swift_beginAccess();
  LODWORD(v75) = *(a1 + v75);
  v76 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CompactRowCardSectionP33_124C86CBA59148692DD801DDDEA8148F13_StorageClass__isSubtitleDetatched;
  swift_beginAccess();
  if (v75 != *(a2 + v76))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v77 = v95;
  sub_1B8D92024();
  swift_beginAccess();
  v78 = *(v92 + 48);
  v79 = v94;
  sub_1B8D92024();
  v80 = v79;
  sub_1B8D92024();
  v81 = v93;
  if (__swift_getEnumTagSinglePayload(v79, 1, v93) == 1)
  {

    sub_1B8D9207C(v77, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v81) == 1)
    {
      sub_1B8D9207C(v79, &qword_1EBAB8EA8, &unk_1B96B77D0);
      return 1;
    }

    goto LABEL_56;
  }

  v82 = v91;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v80 + v78, 1, v81) == 1)
  {

    sub_1B8D9207C(v77, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_56:
    v83 = &qword_1EBAB8EB0;
    v84 = &qword_1B964D6B0;
    v85 = v80;
LABEL_57:
    sub_1B8D9207C(v85, v83, v84);
    return 0;
  }

  v86 = v90;
  sub_1B92D6A28();
  if (*&v82[*(v81 + 20)] != *&v86[*(v81 + 20)])
  {

    sub_1B94C6890();
    v88 = v87;

    if ((v88 & 1) == 0)
    {

      sub_1B92D6AD8();
      sub_1B8D9207C(v95, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v85 = v80;
      v83 = &qword_1EBAB8EA8;
      v84 = &unk_1B96B77D0;
      goto LABEL_57;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3140(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v89 = sub_1B964C850();

  sub_1B92D6AD8();
  sub_1B8D9207C(v95, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v80, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return (v89 & 1) != 0;
}

uint64_t Searchfoundation_CompactRowCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_CompactRowCardSection(0);
  sub_1B8CD3140(&qword_1EBACE8C0, type metadata accessor for Searchfoundation_CompactRowCardSection, protocol conformance descriptor for Searchfoundation_CompactRowCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9475FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3140(&qword_1EBACE8D0, type metadata accessor for Searchfoundation_CompactRowCardSection, protocol conformance descriptor for Searchfoundation_CompactRowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9476030(uint64_t a1)
{
  v2 = sub_1B8CD3140(&qword_1EBAB4728, type metadata accessor for Searchfoundation_CompactRowCardSection, protocol conformance descriptor for Searchfoundation_CompactRowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94760A0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3140(&qword_1EBAB4728, type metadata accessor for Searchfoundation_CompactRowCardSection, protocol conformance descriptor for Searchfoundation_CompactRowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9476268(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_CompactRowCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B94762F4(uint64_t a1)
{
  sub_1B92D701C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B92D701C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
    if (v2 <= 0x3F)
    {
      sub_1B92D701C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_38()
{
  type metadata accessor for Searchfoundation_CompactRowCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_35()
{
  type metadata accessor for Searchfoundation_CompactRowCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_37()
{
  type metadata accessor for Searchfoundation_CompactRowCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_Color.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_Color(0) + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
  }

  *(a2 + v3) = qword_1ED9CD1C8;
}

uint64_t sub_1B9476654@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_ColorTintStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9476688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9483F8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ColorTintStyle.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v0, v1);
}

uint64_t (*static Searchfoundation_ColorTintStyle.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B9476778@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ColorTintStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_GradientType.rawValue.getter()
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

uint64_t sub_1B94767EC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_GradientType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9476820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9482EB4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_GradientType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v0, v1);
}

uint64_t (*static Searchfoundation_GradientType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9476910@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_GradientType.allCases.getter();
  *a1 = result;
  return result;
}

void Searchfoundation_Color.redComponent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_GraphicalFloat(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_84_9(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_60();
    OUTLINED_FUNCTION_461();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9476AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_177_1();
  sub_1B947C4CC();
  return a7(v7);
}

void Searchfoundation_Color.greenComponent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_GraphicalFloat(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_84_9(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_60();
    OUTLINED_FUNCTION_461();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9476CB4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B947C4CC();
    v2(v3);
    sub_1B947C524();
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

uint64_t sub_1B9476D64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_17_26();
  v3 = OUTLINED_FUNCTION_117_5();
  OUTLINED_FUNCTION_521(v3, v4);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v5 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v0, &qword_1EBACAF98, &qword_1B96B98A0);
  return v9;
}

uint64_t sub_1B9476E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(OUTLINED_FUNCTION_126_4() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_41_21();
    v4 = OUTLINED_FUNCTION_40_0();
    *(v0 + v3) = sub_1B947BF70(v4);
  }

  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Color.blueComponent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_GraphicalFloat(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_84_9(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_60();
    OUTLINED_FUNCTION_461();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94770BC@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_32_20(v5);
  v6 = OUTLINED_FUNCTION_117_5();
  OUTLINED_FUNCTION_521(v6, v7);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B947C474();
  }

  return result;
}

uint64_t sub_1B94771CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(OUTLINED_FUNCTION_126_4() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_41_21();
    v4 = OUTLINED_FUNCTION_40_0();
    *(v0 + v3) = sub_1B947BF70(v4);
  }

  OUTLINED_FUNCTION_461();
  sub_1B947C474();
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Color.alphaComponent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_GraphicalFloat(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v13 = OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_84_9(v13);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_60();
    OUTLINED_FUNCTION_461();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Color.colorTintStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_21_24();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  result = OUTLINED_FUNCTION_521(v4, v7);
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B947749C@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_Color.colorTintStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B94774E0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_Color.colorTintStyle.setter(&v3);
}

uint64_t Searchfoundation_Color.colorTintStyle.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Searchfoundation_Color(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_41_21();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B947BF70(v8);
    *(v2 + v5) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  OUTLINED_FUNCTION_173_0();
  result = swift_beginAccess();
  *v9 = v3;
  *(v9 + 8) = v4;
  return result;
}

uint64_t Searchfoundation_Color.colorTintStyle.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_21_24();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  OUTLINED_FUNCTION_521(v5, v3);
  v6 = *(v5 + 8);
  v3[9] = *v5;
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9477640()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 84);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 88);
    OUTLINED_FUNCTION_41_21();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B947BF70(v10);
    *(v9 + v8) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  swift_beginAccess();
  *v11 = v2;
  *(v11 + 8) = v5;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Searchfoundation_Color.darkModeColor.getter()
{
  OUTLINED_FUNCTION_243();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_Color(v6);
  OUTLINED_FUNCTION_521(*(v0 + *(v7 + 20)) + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor, &v13);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *(v3 + v9) = qword_1ED9CD1C8;
    v10 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_24();
    OUTLINED_FUNCTION_182();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_Color.darkModeColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  v4 = type metadata accessor for Searchfoundation_Color(0);
  v5 = *(v4 + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_41_21();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v1 + v5) = sub_1B947BF70(v6);
  }

  OUTLINED_FUNCTION_15_24();
  sub_1B947C474();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  OUTLINED_FUNCTION_117_5();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Color.darkModeColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[3] = v1;
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  v11 = *(v1 + *(v7 + 20));
  v12 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor;
  OUTLINED_FUNCTION_521(v11 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor, v3);
  OUTLINED_FUNCTION_643(v11 + v12, v6);
  v13 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v13, v14, v7);
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v10[v16] = qword_1ED9CD1C8;
    v17 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_24();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Color.hasDarkModeColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_Color(v4);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_16_2();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v7, v8, &unk_1B96B7BD0);
  return v6;
}

Swift::Void __swiftcall Searchfoundation_Color.clearDarkModeColor()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_139();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  v4 = *(v3 + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_41_21();
    v5 = OUTLINED_FUNCTION_40_0();
    *(v0 + v4) = sub_1B947BF70(v5);
  }

  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v3);
  OUTLINED_FUNCTION_117_5();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_Color.value.getter()
{
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value, v2);
  OUTLINED_FUNCTION_209();
  return sub_1B8D92024();
}

uint64_t sub_1B9477D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Searchfoundation_Color.value.setter();
}

uint64_t Searchfoundation_Color.value.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_Color(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_41_21();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B947BF70(v3);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_Color.value.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[6] = v0;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  v3[7] = __swift_coroFrameAllocStub(v8);
  v3[8] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_21_24();
  *(v3 + 18) = v9;
  OUTLINED_FUNCTION_521(*(v0 + v9) + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value, v3);
  sub_1B8D92024();
  OUTLINED_FUNCTION_242();
}

void sub_1B9477F28(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_466();
    sub_1B8D92024();
    Searchfoundation_Color.value.setter();
    v5 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v5, v6, &qword_1B96CB430);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = *(v2 + 72);
      v8 = *(v2 + 48);
      OUTLINED_FUNCTION_41_21();
      v9 = OUTLINED_FUNCTION_40_0();
      *(v8 + v7) = sub_1B947BF70(v9);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Searchfoundation_Color.calendarColor.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_32_20(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
LABEL_6:
    v8 = OUTLINED_FUNCTION_61_3();
    type metadata accessor for Searchfoundation_CalendarColor(v8);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_182();
  return sub_1B947C474();
}

void Searchfoundation_Color.calendarColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_CalendarColor(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_47_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v13)
  {
    v14 = sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_29_27();
      OUTLINED_FUNCTION_177_1();
      sub_1B947C474();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_73();
    v14 = sub_1B947C524();
  }

  OUTLINED_FUNCTION_180_5(v14);
LABEL_7:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Color.appColor.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_32_20(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_182();
      return sub_1B947C474();
    }

    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
  }

  v9 = OUTLINED_FUNCTION_61_3();
  type metadata accessor for Searchfoundation_AppColor(v9);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9478404()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v1(v0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Searchfoundation_Color.appColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_AppColor(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_47_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v13)
  {
    v14 = sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
LABEL_7:
    OUTLINED_FUNCTION_180_5(v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_1_73();
    v14 = sub_1B947C524();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_177_1();
  sub_1B947C474();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Color.imageDerivedColor.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_32_20(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_24_25();
      OUTLINED_FUNCTION_182();
      return sub_1B947C474();
    }

    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_ImageDerivedColor(0);
  type metadata accessor for Searchfoundation_Image(0);
  v9 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Searchfoundation_ImageDerivedColor.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_ImageDerivedColor(0);
  type metadata accessor for Searchfoundation_Image(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Searchfoundation_Color.imageDerivedColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_ImageDerivedColor(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_47_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_Image(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_25();
  OUTLINED_FUNCTION_177_1();
  sub_1B947C474();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Color.gradientColor.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_32_20(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_182();
      return sub_1B947C474();
    }

    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
  }

  return OUTLINED_FUNCTION_119_6(MEMORY[0x1E69E7CC0]);
}

void Searchfoundation_Color.gradientColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_GradientColor(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_47_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
LABEL_7:
    *v13 = MEMORY[0x1E69E7CC0];
    v13[1] = 0;
    *(v13 + 16) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_177_1();
  sub_1B947C474();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Color.weatherColor.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_32_20(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_22_23();
      OUTLINED_FUNCTION_182();
      return sub_1B947C474();
    }

    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
  }

  v9 = OUTLINED_FUNCTION_61_3();
  v10 = type metadata accessor for Searchfoundation_WeatherColor(v9);
  OUTLINED_FUNCTION_108_8(v10);
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for Searchfoundation_Date(0);
  v15 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void sub_1B9478CD4()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_139();
  v3 = *(type metadata accessor for Searchfoundation_Color(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_41_21();
    v4 = OUTLINED_FUNCTION_40_0();
    *(v0 + v3) = sub_1B947BF70(v4);
  }

  sub_1B947C474();
  v5 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_WeatherColor.init()()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v1 = type metadata accessor for Searchfoundation_WeatherColor(v0);
  OUTLINED_FUNCTION_108_8(v1);
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Searchfoundation_Date(0);
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_Color.weatherColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  type metadata accessor for Searchfoundation_WeatherColor(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_47_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBACE978, &qword_1B96CB430);
LABEL_7:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    *(v13 + 1) = 0u;
    *(v13 + 2) = 0u;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Searchfoundation_Date(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_23();
  OUTLINED_FUNCTION_177_1();
  sub_1B947C474();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9479778(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_468();
  v7 = *v6 == *v3 && *(v4 + 8) == v3[1];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_86();
  v10 = sub_1B8CD3188(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

void static Searchfoundation_ImageDerivedColor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v30 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v30);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_22_3();
  v37 = *(type metadata accessor for Searchfoundation_ImageDerivedColor(v36) + 20);
  v38 = *(v34 + 56);
  OUTLINED_FUNCTION_643(v27 + v37, v20);
  OUTLINED_FUNCTION_643(v25 + v37, v20 + v38);
  OUTLINED_FUNCTION_37_0(v20);
  if (!v39)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v20 + v38);
    if (!v39)
    {
      OUTLINED_FUNCTION_6_36();
      sub_1B947C474();
      if (*&v33[*(v28 + 20)] == *(v21 + *(v28 + 20)) || (, , sub_1B94C6890(), v43 = v42, , , (v43 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_86();
        sub_1B8CD3188(v44, v45, MEMORY[0x1E69AAC10]);
        v46 = sub_1B964C850();
        sub_1B947C524();
        OUTLINED_FUNCTION_491();
        sub_1B947C524();
        sub_1B8D9207C(v20, &qword_1EBAB8EA8, &unk_1B96B77D0);
        if ((v46 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      sub_1B947C524();
      sub_1B947C524();
      v40 = &qword_1EBAB8EA8;
      v41 = &unk_1B96B77D0;
LABEL_10:
      sub_1B8D9207C(v20, v40, v41);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_30_28();
    sub_1B947C524();
LABEL_9:
    v40 = &qword_1EBAB8EB0;
    v41 = &qword_1B964D6B0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v20 + v38);
  if (!v39)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v20, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_15:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_86();
  sub_1B8CD3188(v47, v48, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
LABEL_16:
  OUTLINED_FUNCTION_283();
}