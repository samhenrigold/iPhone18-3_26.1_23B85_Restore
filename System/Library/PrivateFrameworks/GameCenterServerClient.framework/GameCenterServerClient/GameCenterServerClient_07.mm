uint64_t sub_24DDF8164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 257))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 64);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF81A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_41(result, 0);
    *(result + 256) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 257) = 1;
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

      return OUTLINED_FUNCTION_570(result, a2);
    }

    *(result + 257) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_570(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 20);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 20);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 20);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *storeEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF8358);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 19);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF83E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF8424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_1142(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_1142(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy30_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

__n128 __swift_memcpy46_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO38Profile_GetProfileInfo_PrivacySettingsV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *_s22GameCenterServerClient10ComponentsO7SchemasO38Profile_GetProfileInfo_PrivacySettingsV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF8624);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF865C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF869C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_800(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_1104(result);
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO37Profile_GetProfileInfo_RequestContentV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *_s22GameCenterServerClient10ComponentsO7SchemasO37Profile_GetProfileInfo_RequestContentV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF8830);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF8868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 64))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF88A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 21);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 21);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 21);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *storeEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF8A90);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 20);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF8AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF8B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_1101(result);
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO30Profile_GetScopedIDs_ScopedIDsV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *_s22GameCenterServerClient10ComponentsO7SchemasO30Profile_GetScopedIDs_ScopedIDsV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF8C94);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF8CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 169))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 64);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF8D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_184(result, 0);
    *(result + 168) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 169) = 1;
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

      return OUTLINED_FUNCTION_570(result, a2);
    }

    *(result + 169) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_570(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 14);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 14);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 14);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *storeEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF8EB8);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF8EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 192))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 64);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF8F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_70(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 192) = 1;
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

      return OUTLINED_FUNCTION_570(result, a2);
    }

    *(result + 192) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_570(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 15);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 15);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 15);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *storeEnumTagSinglePayload for Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF90CCLL);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 14);
        }

        break;
    }
  }

  return result;
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO36Game_GetLeaderboardCategories_ResultV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 10);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 10);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 10);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *_s22GameCenterServerClient10ComponentsO7SchemasO36Game_GetLeaderboardCategories_ResultV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF926CLL);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 9);
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO38Friend_GetFriendPlayerIdsYukon_RequestV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *_s22GameCenterServerClient10ComponentsO7SchemasO38Friend_GetFriendPlayerIdsYukon_RequestV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF94B0);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF950C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF9550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t _s22GameCenterServerClient10ComponentsO7SchemasO39Friend_GetFriendPlayerIdsYukon_ResponseV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_382((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_382(v8);
}

_BYTE *_s22GameCenterServerClient10ComponentsO7SchemasO39Friend_GetFriendPlayerIdsYukon_ResponseV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_468(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_466(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x24DDF970CLL);
      case 4:
        result = OUTLINED_FUNCTION_467(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_461(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DDF97D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDF9820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_185(result, a2);
    }
  }

  return result;
}

void sub_24DDF9888(uint64_t a1)
{
  if (!qword_27F1B4908)
  {
    sub_24DE229C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1B4908);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22GameCenterServerClient10OperationsO52PostWebObjectsGKInvitationService_woaWaShareActivityO5InputV4BodyOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DDF9954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 240))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDF9994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    result = OUTLINED_FUNCTION_41(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 240) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 240) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDF9A04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 88))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

void *sub_24DDF9A40(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 9) = 0u;
    result = OUTLINED_FUNCTION_800(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 88) = 1;
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

      return OUTLINED_FUNCTION_959(result, (a2 - 1));
    }

    *(result + 88) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_959(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_24DDF9ABC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDF9B08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = OUTLINED_FUNCTION_886(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_221(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDF9BA0(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_261(*(a1 + 144));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2800, &qword_24DE22FB0);
  v3 = OUTLINED_FUNCTION_775();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_24DDF9C34()
{
  OUTLINED_FUNCTION_1203();
  if (v2)
  {
    *(v1 + 144) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2800, &qword_24DE22FB0);
    v3 = OUTLINED_FUNCTION_775();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_24DDF9CAC()
{
  sub_24DDF73C4(319, &qword_27F1B4910, type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_627();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24DDF9D54(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);

  return MEMORY[0x2821FE9C0](a1, a2, inited, j_j____swift_get_extra_inhabitant_indexTm);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_261(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C0, &qword_24DE23110);
  v3 = OUTLINED_FUNCTION_775();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_24DDF9E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_655();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(v6);

  return MEMORY[0x2821FEBD0](v3, a2, a3, inited, j_j____swift_store_extra_inhabitant_indexTm);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_1203();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C0, &qword_24DE23110);
    v3 = OUTLINED_FUNCTION_775();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_24DDF9F08(uint64_t a1)
{
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(inited - 8) + 84);
    return 0;
  }

  return inited;
}

uint64_t sub_24DDF9FCC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 513))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

void sub_24DDFA018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    v3 = OUTLINED_FUNCTION_41(result, 0);
    *(v3 + 488) = v4;
    *(v3 + 472) = v4;
    OUTLINED_FUNCTION_587(v4);
    *(v5 + 512) = 0;
    *v5 = v6;
    if (v7 >= 0x7FFFFFFF)
    {
      *(v5 + 513) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 513) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22GameCenterServerClient10OperationsO54PostWebObjectsGKProfileService_woaWaSetProfileSettingsO5InputV4BodyOSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DDFA10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 232))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1326();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFA14C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    result = OUTLINED_FUNCTION_70(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 232) = 1;
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

      return OUTLINED_FUNCTION_427(result, a2);
    }

    *(result + 232) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_427(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DDFA1D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFA224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_70(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_24DDFA2BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFA308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    result = OUTLINED_FUNCTION_800(result, a2 - 0x7FFFFFFF, 0);
    if (v3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_221(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24DDFA3B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 53))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1326();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFA3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

      return OUTLINED_FUNCTION_427(result, a2);
    }

    *(result + 53) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_427(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFA460(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 13))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

void *sub_24DDFA4AC(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 12) = 0;
    *(result + 2) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_959(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFA564(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1326();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFA5A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_1101(result);
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

      return OUTLINED_FUNCTION_427(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_427(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFA5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1326();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFA638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return OUTLINED_FUNCTION_427(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_427(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFA688(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

void *sub_24DDFA6D4(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_959(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFA74C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFA798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_185(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFA818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 158))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFA858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_184(result, 0);
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 158) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 158) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFA934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 360))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 152);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFA970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_41(result, 0);
    *(result + 328) = v3;
    *(result + 344) = v3;
    *(result + 312) = v3;
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *result = v4;
    if (v5 < 0)
    {
      *(result + 360) = 1;
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

      return OUTLINED_FUNCTION_785(result, a2);
    }

    *(result + 360) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_785(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFAA08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 176))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 104);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFAA44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    result = OUTLINED_FUNCTION_82(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 176) = 1;
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

      return OUTLINED_FUNCTION_1141(result, a2);
    }

    *(result + 176) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_1141(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFAAC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 176))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFAB0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    result = OUTLINED_FUNCTION_82(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_221(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFABA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 336))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 152);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFABE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_41(result, 0);
    *(result + 312) = v3;
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *result = v4;
    if (v5 < 0)
    {
      *(result + 336) = 1;
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

      return OUTLINED_FUNCTION_785(result, a2);
    }

    *(result + 336) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_785(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFAC60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 184))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 152);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFAC9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_82(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_1103(result);
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

      return OUTLINED_FUNCTION_785(result, a2);
    }

    *(result + 184) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_785(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFACF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 152))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 104);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFAD30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_184(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_1102(result);
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

      return OUTLINED_FUNCTION_1141(result, a2);
    }

    *(result + 152) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_1141(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFADA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFADF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    result = OUTLINED_FUNCTION_997(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_221(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFAE9C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers(v3);
  OUTLINED_FUNCTION_825();
  if (*(v4 + 84) == a2)
  {
    v5 = OUTLINED_FUNCTION_610();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }

  else
  {
    OUTLINED_FUNCTION_378();
    if (v10 ^ v11 | v9)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }
}

void sub_24DDFAF4C()
{
  OUTLINED_FUNCTION_523();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers(0);
  OUTLINED_FUNCTION_825();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_779();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 + 1);
  }
}

uint64_t sub_24DDFB050(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFB09C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_383(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_185(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFB158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 264))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFB198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_41(result, 0);
    *(result + 248) = v3;
    *result = v4;
    if (v5 < 0)
    {
      *(result + 264) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 264) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFB20C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFB258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_383(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_185(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFB2DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFB328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_800(result, a2 - 0x7FFFFFFF, 0);
    if (v3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_221(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFB3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers(v6);
  OUTLINED_FUNCTION_825();
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_610();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13 - 1;
    if (v12 <= 0)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }
}

void sub_24DDFB498()
{
  OUTLINED_FUNCTION_523();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers(0);
  OUTLINED_FUNCTION_825();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_779();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 + 2);
  }
}

void sub_24DDFB550(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_954();
    sub_24DDFB5E4(v5, v6, v7);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_627();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DDFB5E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24DE22B10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2071Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_429();
  sub_24DE228B0();
  OUTLINED_FUNCTION_825();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_261(*(v3 + *(a3 + 56)));
  }

  v8 = v6;
  v9 = v3 + *(a3 + 52);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void __swift_store_extra_inhabitant_index_2072Tm()
{
  OUTLINED_FUNCTION_523();
  sub_24DE228B0();
  OUTLINED_FUNCTION_825();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 52);

    __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 56)) = (v0 - 1);
  }
}

void sub_24DDFB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DDFB5E4(319, &qword_27F1B48F0, MEMORY[0x277D837D0]);
  if (v4 <= 0x3F)
  {
    sub_24DE228B0();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_500();
      sub_24DDFB898(v6, v7, v8, v9, v10);
      if (v11 <= 0x3F)
      {
        OUTLINED_FUNCTION_627();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24DDFB898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_1208(0, a2, a3);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_24DDFB8F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 89))
  {
    return OUTLINED_FUNCTION_382(*a1 + 2147483645);
  }

  OUTLINED_FUNCTION_1014();
  v4 = v3 - 1;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_382(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_382(-1);
  }
}

uint64_t sub_24DDFB958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    result = OUTLINED_FUNCTION_997(result, 0);
    *(result + 88) = 0;
    *result = v3;
    if (v4 > v5)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_24DDFBA10(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_204(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22GameCenterServerClient10OperationsO53PostWebObjectsGKChallengeService_woaWaChallengeCreateO5InputV4BodyOSg(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DDFBA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 342))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFBAA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_41(result, 0);
    *(result + 340) = 0;
    *(result + 336) = 0;
    *(result + 312) = v3;
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *result = v4;
    if (v5 < 0)
    {
      *(result + 342) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 342) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFBB3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 190))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 88);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFBB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_82(result, 0);
    *(result + 188) = 0;
    *(result + 184) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 190) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 190) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DDFBC80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 258))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 64);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFBCBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_41(result, 0);
    *(result + 256) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 258) = 1;
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

      return OUTLINED_FUNCTION_570(result, a2);
    }

    *(result + 258) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_570(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFBD4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 185))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFBD8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_82(result, 0);
    *(result + 184) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 185) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 185) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFBE00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 33))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFBE40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 33) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFBEA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 144))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 112);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFBEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    result = OUTLINED_FUNCTION_184(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DDFBF74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 182))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFBFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    result = OUTLINED_FUNCTION_82(result, 0);
    *(result + 180) = 0;
    *(result + 176) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 182) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 182) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC02C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 30))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFC06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 30) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC0D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFC124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    result = OUTLINED_FUNCTION_886(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_221(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 198))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFC1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_70(result, 0);
    *(result + 196) = 0;
    *(result + 192) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 198) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 198) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC26C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 46))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFC2B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_185(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC340(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 313))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFC38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_41(result, 0);
    *(result + 312) = 0;
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_221(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC48C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      return OUTLINED_FUNCTION_382(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_378();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_382(v3);
}

uint64_t sub_24DDFC4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    result = OUTLINED_FUNCTION_886(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_418(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 194))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFC5A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_70(result, 0);
    *(result + 192) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 194) = 1;
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 194) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC61C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 42))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFC65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 42) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC6CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 72);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFC708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    result = OUTLINED_FUNCTION_800(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_1104(result);
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
      *(result + 72) = (a2 - 1);
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

uint64_t _s22GameCenterServerClient10ComponentsO10ParametersOwet_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_1111(a1);
}

_BYTE *_s22GameCenterServerClient10ComponentsO10ParametersOwst_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x24DDFC85CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDFC894(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 184))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFC8D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_82(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_1103(result);
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 184) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC92C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 152))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1190();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFC96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_184(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_1102(result);
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

      return OUTLINED_FUNCTION_222(result, a2);
    }

    *(result + 152) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_222(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFC9C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFCA04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

void sub_24DDFCA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24DDF9888(319);
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_24DDFCACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_382(-1);
  }

  if (a2 < 0 && *(a1 + 72))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_1014();
  }

  return OUTLINED_FUNCTION_382(v2);
}

uint64_t sub_24DDFCB0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

      return OUTLINED_FUNCTION_204(result, a2);
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_204(result, a2);
    }
  }

  return result;
}

uint64_t sub_24DDFCB64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  OUTLINED_FUNCTION_1014();
  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DDFCBB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_185(result, a2);
    }
  }

  return result;
}

unint64_t sub_24DDFCC14()
{
  result = qword_27F1B4948;
  if (!qword_27F1B4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B4948);
  }

  return result;
}

unint64_t sub_24DDFCC68()
{
  result = qword_27F1B4950;
  if (!qword_27F1B4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B4950);
  }

  return result;
}

unint64_t sub_24DDFCCBC()
{
  result = qword_27F1B4958;
  if (!qword_27F1B4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B4958);
  }

  return result;
}

unint64_t sub_24DDFCD10()
{
  result = qword_27F1B4960;
  if (!qword_27F1B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B4960);
  }

  return result;
}

unint64_t sub_24DDFCD64()
{
  result = qword_27F1B4968;
  if (!qword_27F1B4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B4968);
  }

  return result;
}

unint64_t sub_24DDFCDB8()
{
  result = qword_27F1B4970;
  if (!qword_27F1B4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B4970);
  }

  return result;
}

unint64_t sub_24DDFCE0C()
{
  result = qword_27F1B4978;
  if (!qword_27F1B4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B4978);
  }

  return result;
}

unint64_t sub_24DDFCE60(uint64_t a1)
{
  result = OUTLINED_FUNCTION_923(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_632(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_0()
{
  v0[47] = 0;
  v0[48] = 0;
  v0[45] = 0;
  v0[46] = 0;
  v0[43] = 0;
  v0[44] = 0;
  v0[41] = 0;
  v0[42] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[40] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[30] = 0;
  v0[26] = 0;
  v0[27] = 0;
  v0[33] = 0;
}

void OUTLINED_FUNCTION_2()
{
  v0[47] = 0;
  v0[48] = 0;
  v0[45] = 0;
  v0[46] = 0;
  v0[43] = 0;
  v0[44] = 0;
  v0[41] = 0;
  v0[42] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[40] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[24] = 0;
  v0[25] = 0;
}

void OUTLINED_FUNCTION_5()
{
  v0[47] = 0;
  v0[48] = 0;
  v0[45] = 0;
  v0[46] = 0;
  v0[43] = 0;
  v0[44] = 0;
  v0[41] = 0;
  v0[42] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[40] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[31] = 0;
  v0[32] = 0;
}

void OUTLINED_FUNCTION_8()
{
  v0[47] = 0;
  v0[48] = 0;
  v0[45] = 0;
  v0[46] = 0;
  v0[43] = 0;
  v0[44] = 0;
  v0[41] = 0;
  v0[42] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[40] = 0;
}

uint64_t OUTLINED_FUNCTION_10()
{
  v3 = v1[1];
  *(v0 + 160) = *v1;
  *(v0 + 176) = v3;
  v4 = v1[3];
  *(v0 + 192) = v1[2];
  *(v0 + 208) = v4;
  v5 = *(v2 - 160);
  v6 = *(v2 - 156);
  v7 = *(v2 - 104);
  v8 = *(v0 + 160);
  v9 = *(v0 + 164);
  v10 = *(v0 + 216);
  *(v2 - 168) = v6;
  *(v2 - 164) = v9;
  *(v0 + 96) = v5;
  *(v0 + 100) = v6;
  *(v0 + 104) = *(v0 + 248);
  *(v0 + 120) = *(v0 + 264);
  *(v0 + 136) = *(v0 + 280);
  *(v0 + 152) = v7;
  *(v0 + 32) = v8;
  *(v0 + 36) = v9;
  *(v0 + 40) = *(v0 + 168);
  *(v0 + 56) = *(v0 + 184);
  *(v0 + 72) = *(v0 + 200);
  *(v0 + 88) = v10;
  return v0 + 96;
}

unint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{

  return sub_24DDFCE60(a1);
}

void OUTLINED_FUNCTION_13()
{
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 100) = 0;
  *(v0 + 88) = 1;
  *(v0 + 80) = 2;
  *(v0 + 84) = 2;
  *(v0 + 72) = 2;
  *(v0 + 76) = 2;
}

uint64_t OUTLINED_FUNCTION_14()
{
  v4 = *(v3 - 160);
  *(v3 - 272) = v4;
  v5 = *(v3 - 240);
  *(v3 - 224) = *(v3 - 232);
  v6 = *(v3 - 68);
  *(v3 - 72) = v6;
  *(v3 - 220) = v6;
  v7 = *(v3 - 256);
  *(v3 - 216) = *(v3 - 248);
  *(v3 - 208) = v5;
  *(v3 - 200) = v1;
  *(v3 - 192) = v2;
  *(v3 - 184) = v7;
  *(v3 - 176) = v0;
  *(v3 - 168) = v4;
  v8 = *(v3 - 208);
  v9 = *(v3 - 264);
  *v9 = *(v3 - 224);
  v9[1] = v8;
  v10 = *(v3 - 176);
  v9[2] = *(v3 - 192);
  v9[3] = v10;
  return v3 - 224;
}

void OUTLINED_FUNCTION_21()
{
  v0[47] = 0;
  v0[48] = 0;
  v0[45] = 0;
  v0[46] = 0;
  v0[43] = 0;
  v0[44] = 0;
  v0[41] = 0;
  v0[42] = 0;
  v0[38] = 0;
  v0[39] = 0;
}

void OUTLINED_FUNCTION_25()
{
  v2 = v0[1];
  *(v1 - 136) = v0[2];
  *(v1 - 128) = v2;
  v3 = v0[3];
  *(v1 - 152) = v0[4];
  *(v1 - 144) = v3;
  v4 = v0[5];
  *(v1 - 168) = v0[6];
  *(v1 - 160) = v4;
}

void OUTLINED_FUNCTION_29()
{
  v2 = v0[1];
  *(v1 - 136) = v0[2];
  *(v1 - 128) = v2;
  v3 = v0[3];
  *(v1 - 152) = v0[4];
  *(v1 - 144) = v3;
  v4 = v0[5];
  *(v1 - 168) = v0[6];
  *(v1 - 160) = v4;
}

void OUTLINED_FUNCTION_37()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 164) = 2;
}

void OUTLINED_FUNCTION_40()
{
  *(v7 - 152) = v5;
  *(v7 - 148) = *(v7 - 72);
  *(v7 - 144) = v0;
  *(v7 - 136) = v6;
  *(v7 - 128) = v2;
  *(v7 - 120) = v4;
  *(v7 - 112) = v3;
  *(v7 - 104) = v1;
  *(v7 - 96) = *(v7 - 272);
}

uint64_t OUTLINED_FUNCTION_41(uint64_t result, __n128 a2)
{
  *(result + 216) = a2;
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_44(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void OUTLINED_FUNCTION_59()
{
  v0[8] = 0;
  v0[9] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
}

void OUTLINED_FUNCTION_60()
{
  v0[29] = 0;
  v0[30] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[32] = 0;
  v0[33] = 0;
  v0[31] = 0;
  v0[27] = 0;
  v0[28] = 0;
  v0[25] = 0;
  v0[26] = 0;
}

void OUTLINED_FUNCTION_61()
{
  v2 = *(v0 + 8);
  *(v1 - 144) = *(v0 + 16);
  *(v1 - 136) = v2;
  v3 = *(v0 + 24);
  *(v1 - 160) = *(v0 + 32);
  *(v1 - 152) = v3;
  v4 = *(v0 + 40);
  *(v1 - 176) = *(v0 + 48);
  *(v1 - 168) = v4;
  v5 = *(v0 + 64);
  *(v1 - 192) = *(v0 + 56);
  *(v1 - 184) = v5;
  v6 = *(v0 + 80);
  *(v1 - 208) = *(v0 + 72);
  *(v1 - 200) = v6;
  v7 = *(v0 + 96);
  *(v1 - 224) = *(v0 + 88);
  *(v1 - 216) = v7;
  v8 = *(v0 + 104);
  *(v1 - 240) = *(v0 + 112);
  *(v1 - 232) = v8;
  v9 = *(v0 + 120);
  *(v1 - 256) = *(v0 + 128);
  *(v1 - 248) = v9;
  *(v1 - 72) = *(v0 + 136);
}

uint64_t OUTLINED_FUNCTION_70(uint64_t result, __n128 a2)
{
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

void OUTLINED_FUNCTION_71()
{
  v0[60] = 0;
  v0[61] = 0;
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[52] = 0;
  v0[53] = 0;
  v0[51] = 0;
}

void OUTLINED_FUNCTION_72()
{
  *(v7 - 152) = v0;
  *(v7 - 148) = *(v7 - 68);
  *(v7 - 144) = v5;
  *(v7 - 136) = v3;
  *(v7 - 128) = v2;
  *(v7 - 120) = v4;
  *(v7 - 112) = v6;
  *(v7 - 104) = v1;
  *(v7 - 96) = 0;
}

void OUTLINED_FUNCTION_76()
{
  v0[12] = 0;
  v0[13] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[36] = 0;
}

uint64_t OUTLINED_FUNCTION_82(uint64_t result, __n128 a2)
{
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

void OUTLINED_FUNCTION_95()
{
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 88) = 2;
  *(v0 + 92) = 2;
  *(v0 + 84) = 2;
  *(v0 + 300) = 2;
  *(v0 + 304) = 2;
  *(v0 + 308) = 2;
  *(v0 + 312) = 2;
  *(v0 + 316) = 2;
}

void OUTLINED_FUNCTION_104(int a1@<W8>)
{
  v1[21] = a1;
  v1[75] = a1;
  v1[76] = a1;
  v1[77] = a1;
  v1[78] = a1;
  v1[79] = a1;
}

unint64_t OUTLINED_FUNCTION_125()
{
  *(v2 - 112) = 0;
  *(v2 - 68) = v0;
  return v1 | (v0 << 32);
}

uint64_t OUTLINED_FUNCTION_129@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_141()
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  *(v4 - 88) = v0;
  *(v4 - 68) = 2;

  sub_24DD7639C(v1, v2, v3, v0);
}

void OUTLINED_FUNCTION_143()
{
  *(v0 - 352) = 0;
  *(v0 - 344) = 0;
  *(v0 - 360) = 0;
  *(v0 - 320) = 0;
}

uint64_t OUTLINED_FUNCTION_144()
{

  return sub_24DE22B70();
}

void OUTLINED_FUNCTION_145()
{
  v0[12] = 0;
  v0[13] = 0;
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
}

void OUTLINED_FUNCTION_156()
{
  v0[41] = 2;
  v0[14] = 2;
  v0[15] = 2;
}

void OUTLINED_FUNCTION_159()
{
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
}

void OUTLINED_FUNCTION_160()
{
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
}

void OUTLINED_FUNCTION_163()
{
  v0[12] = 0;
  v0[13] = 0;
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = 0;
  v0[14] = 0;
  v0[15] = 0;
}

void OUTLINED_FUNCTION_170()
{
  v0[22] = 0;
  v0[60] = 0;
  v0[61] = 0;
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
}

void OUTLINED_FUNCTION_177(int a1@<W8>)
{
  v1[21] = a1;
  v1[75] = a1;
  v1[76] = a1;
  v1[77] = a1;
}

uint64_t OUTLINED_FUNCTION_184(uint64_t result, __n128 a2)
{
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

void *OUTLINED_FUNCTION_203(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[113] = v5;
  v6[112] = a5;
  v6[111] = a4;
  v6[110] = a2;
  v6[109] = a1;

  return memcpy(v6 + 71, a2, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_210()
{
  v3 = v0[1];
  *(v1 - 160) = *v0;
  *(v1 - 144) = v3;
  v4 = v0[3];
  *(v1 - 128) = v0[2];
  *(v1 - 112) = v4;

  return swift_getEnumCaseMultiPayload();
}

__n128 OUTLINED_FUNCTION_219()
{
  result = *v0;
  *(v1 + 40) = *(v0 + 16);
  *(v1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_261@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_265(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_266(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_274()
{
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = 0;
}

void OUTLINED_FUNCTION_277()
{
  v0[22] = 2;
  v0[23] = 2;
  v0[21] = 2;
  v0[75] = 2;
}

void OUTLINED_FUNCTION_280()
{
  v0[17] = 0;
  v0[18] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
}

unint64_t OUTLINED_FUNCTION_282@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *(v2 - 4) = v3;
  return v4 | (v3 << 32);
}

void OUTLINED_FUNCTION_315()
{
  v0[34] = 0;
  v0[35] = 0;
  v0[32] = 0;
  v0[33] = 0;
  v0[31] = 0;
}

void *OUTLINED_FUNCTION_325(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return memcpy(va, v28, 0x98uLL);
}

void OUTLINED_FUNCTION_331()
{
  v0[20] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[14] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  *(v1 - 72) = 0;
}

uint64_t OUTLINED_FUNCTION_332()
{

  return MEMORY[0x282197F90](27503, 0xE200000000000000, v0 - 80);
}

void OUTLINED_FUNCTION_333(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;

  sub_24DD7639C(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_357(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

void *OUTLINED_FUNCTION_362()
{
  v0[149] = v1;
  v0[150] = v2;
  v0[151] = v3;
  return v0 + 152;
}

__n128 OUTLINED_FUNCTION_368()
{
  result = *v0;
  *(v1 + 168) = *(v0 + 16);
  *(v1 + 152) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_369()
{

  return sub_24DE22CA0();
}

uint64_t OUTLINED_FUNCTION_375(uint64_t a1)
{

  return sub_24DE22D50();
}

uint64_t OUTLINED_FUNCTION_383@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 88) = a3;
  *(result + 72) = a3;
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_404(uint64_t a1)
{

  return sub_24DE22C30();
}

void OUTLINED_FUNCTION_431()
{
  *(v1 - 264) = *(v0 + 140);
  *(v1 - 268) = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v1 - 288) = *(v0 + 152);
  *(v1 - 280) = v2;
  v3 = *(v0 + 176);
  *(v1 - 304) = *(v0 + 168);
  *(v1 - 296) = v3;
  v4 = *(v0 + 192);
  *(v1 - 320) = *(v0 + 184);
  *(v1 - 312) = v4;
  *(v1 - 324) = *(v0 + 200);
  *(v1 - 336) = *(v0 + 208);
  *(v1 - 328) = *(v0 + 216);
  v5 = *(v0 + 232);
  *(v1 - 352) = *(v0 + 224);
  *(v1 - 344) = v5;
  v6 = *(v0 + 248);
  *(v1 - 376) = *(v0 + 240);
  *(v1 - 368) = v6;
}

void OUTLINED_FUNCTION_437()
{

  bzero(v0, 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_447()
{

  return sub_24DE22AA0();
}

uint64_t OUTLINED_FUNCTION_448@<X0>(char a1@<W8>)
{
  *(v1 - 232) = a1;

  return sub_24DE22B40();
}

uint64_t OUTLINED_FUNCTION_459()
{
  v3 = v1[12];
  *(v0 + 120) = v1[11];
  *(v0 + 136) = v3;
  v4 = v1[14];
  *(v0 + 152) = v1[13];
  v5 = *(v2 - 168);
  v6 = *(v2 - 164);
  v7 = *(v2 - 96);
  v8 = *(v0 + 192);
  v9 = *(v0 + 196);
  v10 = *(v0 + 264);
  *(v2 - 176) = v6;
  *(v2 - 172) = v9;
  *(v0 + 112) = v5;
  *(v0 + 116) = v6;
  *(v1 + 56) = v4;
  *(v0 + 184) = v7;
  *(v0 + 32) = v8;
  *(v0 + 36) = v9;
  *(v0 + 40) = *(v1 + 88);
  *(v0 + 56) = *(v1 + 104);
  *(v0 + 72) = *(v1 + 120);
  *(v0 + 88) = *(v1 + 136);
  *(v0 + 104) = v10;
  return v0 + 112;
}

__n128 OUTLINED_FUNCTION_462(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  *(v2 - 8) = *(a1 + 4);
  *(v2 - 4) = v3;
  return *(a2 + 56);
}

uint64_t OUTLINED_FUNCTION_471()
{

  return sub_24DD74A90();
}

void OUTLINED_FUNCTION_472()
{
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
}

uint64_t OUTLINED_FUNCTION_477()
{

  return sub_24DE229C0();
}

unint64_t OUTLINED_FUNCTION_487()
{
  *(v2 - 120) = 0;
  *(v2 - 68) = v1;
  return v0 | (v1 << 32);
}

double OUTLINED_FUNCTION_490(uint64_t a1)
{
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = a1;
  return result;
}

void OUTLINED_FUNCTION_511(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = BYTE4(v1) & 1;
}

void OUTLINED_FUNCTION_527()
{
  v0[22] = 0;
  v0[23] = 0;
  v0[60] = 0;
  v0[61] = 0;
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
}

void OUTLINED_FUNCTION_528()
{
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
  v0[26] = 0;
  v0[27] = 0;
  v0[24] = 0;
  v0[25] = 0;
}

uint64_t OUTLINED_FUNCTION_536()
{

  return sub_24DE22AA0();
}

void OUTLINED_FUNCTION_555()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
  v5 = *(v0 - 88);

  sub_24DD763E4(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_556(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_562@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

uint64_t OUTLINED_FUNCTION_563(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_24DE22AD0();
}

void OUTLINED_FUNCTION_567(uint64_t a1@<X8>)
{
  *(a1 + 4) = v2;
  *a1 = v1;
  *(a1 + 5) = v3;
}

void OUTLINED_FUNCTION_579()
{
  *(v1 - 264) = *(v0 + 144);
  v2 = *(v0 + 156);
  *(v1 - 268) = *(v0 + 152);
  *(v1 - 280) = v2;
  *(v1 - 284) = *(v0 + 160);
  *(v1 - 296) = *(v0 + 164);
  *(v1 - 300) = *(v0 + 168);
}

void OUTLINED_FUNCTION_587(__n128 a1)
{
  *(v1 + 200) = a1;
  *(v1 + 184) = a1;
  *(v1 + 168) = a1;
  *(v1 + 152) = a1;
  *(v1 + 136) = a1;
  *(v1 + 120) = a1;
  *(v1 + 104) = a1;
  *(v1 + 88) = a1;
  *(v1 + 72) = a1;
  *(v1 + 56) = a1;
  *(v1 + 40) = a1;
  *(v1 + 24) = a1;
  *(v1 + 8) = a1;
}

void *OUTLINED_FUNCTION_588(uint64_t a1, ...)
{

  return sub_24DE22CC0();
}

void OUTLINED_FUNCTION_590()
{
  v1 = *(v0 + 160);
  *(v0 + 1888) = *(v0 + 168);
  *(v0 + 1896) = v1;
  v2 = *(v0 + 144);
  *(v0 + 1904) = *(v0 + 152);
  *(v0 + 1912) = v2;
  v3 = *(v0 + 128);
  *(v0 + 1920) = *(v0 + 136);
  *(v0 + 1928) = v3;
  v4 = *(v0 + 112);
  *(v0 + 1936) = *(v0 + 120);
  *(v0 + 1944) = v4;
  *(v0 + 1952) = *(v0 + 104);
  *(v0 + 1960) = *(v0 + 100);
}

void OUTLINED_FUNCTION_601()
{
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
}

void OUTLINED_FUNCTION_607()
{
  *(v1 - 72) = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[10] = 0;
}

void OUTLINED_FUNCTION_609()
{
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
}

uint64_t OUTLINED_FUNCTION_611()
{
  *(v3 - 232) = v1;
  *(v3 - 228) = *(v3 - 68);
  v4 = *(v3 - 288);
  *(v3 - 224) = *(v3 - 256);
  *(v3 - 208) = v4;
  v5 = *(v3 - 304);
  *(v3 - 192) = *(v3 - 272);
  *(v3 - 176) = v5;
  *(v3 - 160) = v2;
  return v0;
}

void OUTLINED_FUNCTION_622()
{
  *(v0 + 1040) = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 1048) = *(v0 + 128);
  *(v0 + 1056) = v2;
  *(v0 + 1064) = *(v0 + 136);
  LODWORD(v2) = *(v0 + 84);
  *(v0 + 1072) = *(v0 + 88);
  *(v0 + 1073) = v2;
  *(v0 + 1074) = *(v0 + 92);
  *(v0 + 1079) = *(v1 - 128);
}

void OUTLINED_FUNCTION_623()
{
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = 0;
}

void *OUTLINED_FUNCTION_650()
{
  *(v0 + 576) = *(v0 + 24);
  v6 = *(v4 - 68);
  *(v4 - 72) = v6;
  *(v0 + 580) = v6;
  v7 = *(v0 + 16);
  *(v0 + 584) = *(v0 + 8);
  *(v0 + 592) = v7;
  *(v0 + 600) = *v0;
  *(v0 + 608) = v1;
  *(v0 + 616) = v2;
  *(v0 + 624) = v3;

  return memcpy((v0 + 632), (v0 + 48), 0x101uLL);
}

__n128 OUTLINED_FUNCTION_654()
{
  v2 = v0->n128_u64[1];
  v3 = v0[2].n128_u8[0];
  v4 = v0[2].n128_u32[1];
  v5 = v0[2].n128_u8[8];
  v6 = v0[2].n128_u8[9];
  *(v1 - 64) = v0->n128_u64[0];
  *(v1 - 56) = v2;
  result = v0[1];
  *(v1 - 48) = result;
  *(v1 - 32) = v3;
  *(v1 - 24) = v5;
  *(v1 - 28) = v4;
  *(v1 - 23) = v6;
  return result;
}

__n128 OUTLINED_FUNCTION_665(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, unint64_t a22, int a23, char a24, __n128 a26)
{
  v26[12].n128_u8[8] = a21 & 1;
  v26[13].n128_u64[0] = a22;
  v26[13].n128_u8[8] = a24 & 1;
  result = a26;
  v26[14] = a26;
  v29 = *(v27 - 104);
  v26[15].n128_u64[0] = *(v27 - 112);
  v26[15].n128_u64[1] = v29;
  return result;
}

void OUTLINED_FUNCTION_678()
{
  *(v0 - 68) = *(v0 - 148);
  v2 = *(v0 - 128);
  *(v0 - 256) = *(v0 - 144);
  *(v0 - 288) = v2;
  v3 = *(v0 - 96);
  *(v0 - 272) = *(v0 - 112);
  *(v0 - 304) = v3;

  JUMPOUT(0x253039720);
}

void OUTLINED_FUNCTION_697(_DWORD *a1@<X8>)
{
  *a1 = v1;
  *(v2 + 2007) = *(v2 + 2159);
  v3 = *(v2 + 216);
  *(v2 + 2008) = *(v2 + 208);
  *(v2 + 2016) = v3;
  v4 = *(v2 + 200);
  *(v2 + 2024) = *(v2 + 192);
  *(v2 + 2032) = v4;
  *(v2 + 2040) = *(v2 + 184);
}

__n128 OUTLINED_FUNCTION_705()
{
  v1 = *(v0 + 176);
  *(v0 - 112) = *(v0 + 168);
  *(v0 - 104) = v1;
  return *(v0 + 152);
}

__n128 OUTLINED_FUNCTION_706()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 45);
  result = *v0;
  v7 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v7;
  *(v1 - 32) = v2;
  *(v1 - 20) = v4;
  *(v1 - 24) = v3;
  *(v1 - 19) = v5;
  return result;
}

void OUTLINED_FUNCTION_717()
{
  v1 = *(v0 + 56);
  *(v0 + 365) = *(v0 + 60);
  *(v0 + 366) = v1;
  *(v0 + 367) = *(v0 + 164);
  v2 = *(v0 + 152);
  *(v0 + 368) = *(v0 + 144);
  *(v0 + 376) = v2;
  v3 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 128);
  *(v0 + 392) = v3;
  *(v0 + 400) = *(v0 + 120);
}

uint64_t OUTLINED_FUNCTION_721(uint64_t a1)
{

  return sub_24DE22B70();
}

void *OUTLINED_FUNCTION_722(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{

  return memcpy(&a59, (v59 + 16), 0x49uLL);
}

void OUTLINED_FUNCTION_730()
{
  v0[115] = v0[32];
  v0[116] = v0[26];
  v1 = v0[23];
  v0[117] = v0[24];
  v0[118] = v1;
  v2 = v0[21];
  v0[119] = v0[22];
  v0[120] = v2;
}

void OUTLINED_FUNCTION_737()
{
  v2 = *(v0 + 16);
  *(v1 - 104) = *(v0 + 24);
  *(v1 - 96) = v2;
}

__n128 OUTLINED_FUNCTION_741()
{
  v2 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 272) = result;
  *(v1 - 256) = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_742()
{
  v1 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v1;
  *(v0 - 256) = *(v0 - 192);
  result = *(v0 - 183);
  *(v0 - 247) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_766(uint64_t a1, uint64_t a2)
{

  return sub_24DE22CA0();
}

void OUTLINED_FUNCTION_769(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
}

uint64_t OUTLINED_FUNCTION_772@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_773@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return sub_24DDE48CC(a1, a2);
}

unint64_t OUTLINED_FUNCTION_776(uint64_t a1, uint64_t a2)
{
  *(v2 - 248) = a1;
  *(v2 - 240) = a2;
  *(v2 - 224) = 2;

  return sub_24DDE1E9C();
}

__n128 OUTLINED_FUNCTION_786(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a20, __int128 a21)
{
  *v21 = a17;
  v21[1] = a18;
  result = a20;
  v21[2] = a20;
  v21[3] = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_787(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[21] = v15;
  v14[22] = v13;
  v14[23] = v11;
  v14[24] = v12;
  return a11;
}

void *OUTLINED_FUNCTION_788()
{

  return memcpy((v0 + 16), v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_795()
{

  return sub_24DE22CE0();
}

void *OUTLINED_FUNCTION_796(uint64_t a1, ...)
{

  return sub_24DE22CC0();
}

void OUTLINED_FUNCTION_797(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.hash(into:)(va, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_798()
{
}

void *OUTLINED_FUNCTION_799(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_800@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

void OUTLINED_FUNCTION_804()
{
  v2 = v0[2];
  *(v1 - 112) = v0[3];
  *(v1 - 104) = v2;
  v3 = v0[4];
  *(v1 - 128) = v0[5];
  *(v1 - 120) = v3;
  v4 = v0[6];
  *(v1 - 144) = v0[7];
  *(v1 - 136) = v4;
  v5 = v0[8];
  *(v1 - 160) = v0[9];
  *(v1 - 152) = v5;
}

void OUTLINED_FUNCTION_813()
{
  v2 = v0[16];
  *(v1 - 168) = v0[15];
  *(v1 - 160) = v2;
  v3 = v0[14];
  *(v1 - 152) = v0[13];
  *(v1 - 144) = v3;
  v4 = v0[12];
  *(v1 - 136) = v0[11];
  *(v1 - 128) = v4;
  v5 = v0[18];
  *(v1 - 120) = v0[17];
  *(v1 - 112) = v5;
}

void OUTLINED_FUNCTION_821()
{
  v1 = v0[55];
  v0[221] = v0[54];
  v0[222] = v1;
  v2 = v0[52];
  v0[223] = v0[51];
  v0[224] = v2;
  v0[225] = v0[53];
}

void OUTLINED_FUNCTION_823()
{
  *(v0 + 975) = *(v1 - 96);
  *(v0 + 976) = *(v0 + 200);
  *(v0 + 984) = *(v0 + 216);
  *(v0 + 992) = *(v0 + 160);
}

void OUTLINED_FUNCTION_833(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.hash(into:)(va, a2, a3, a4, a5, a6);
}

void OUTLINED_FUNCTION_835(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
  *(a1 + 13) = v4;
}

uint64_t OUTLINED_FUNCTION_838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void *OUTLINED_FUNCTION_839(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_840()
{
}

void OUTLINED_FUNCTION_841()
{

  JUMPOUT(0x253039720);
}

void OUTLINED_FUNCTION_846()
{
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = 0;
}

void *OUTLINED_FUNCTION_855(uint64_t a1, uint64_t a2, ...)
{

  return sub_24DE22CC0();
}

void OUTLINED_FUNCTION_866()
{
  v0[111] = v0[33];
  v0[112] = v0[31];
  v1 = v0[28];
  v0[113] = v0[29];
  v0[114] = v1;
}

uint64_t OUTLINED_FUNCTION_872()
{
}

uint64_t OUTLINED_FUNCTION_873()
{
}

void *OUTLINED_FUNCTION_874(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[119] = v5;
  v6[118] = a5;
  v6[117] = a4;
  v6[116] = a2;
  v6[115] = a1;

  return memcpy(v6 + 77, a2, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_878()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_879()
{

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_881()
{
  v5 = *(v3 - 88);
  *v0 = v2;
  v0[1] = v1;
  v0[2] = v5;
}

uint64_t OUTLINED_FUNCTION_883()
{
}

uint64_t OUTLINED_FUNCTION_886@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_887()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_888(uint64_t a1, uint64_t a2)
{

  return sub_24DE22CA0();
}

uint64_t OUTLINED_FUNCTION_892(uint64_t result)
{
  *(v1 + 164) = result;
  *(v1 + 168) = BYTE4(result) & 1;
  return result;
}

int8x8_t OUTLINED_FUNCTION_893@<D0>(__int16 a1@<W8>, __n128 a2@<Q0>, int16x8_t a3@<Q1>)
{
  a3.i16[1] = a3.i16[2];
  a3.i16[2] = a2.n128_u16[0];
  a3.i16[3] = a1;
  return vmovn_s16(a3);
}

uint64_t OUTLINED_FUNCTION_894(uint64_t result)
{
  *(v1 + 156) = result;
  *(v1 + 160) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_898()
{
}

uint64_t OUTLINED_FUNCTION_899(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_905(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_906(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_909(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t *OUTLINED_FUNCTION_912()
{
  *(v1 - 56) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 80));
}

uint64_t OUTLINED_FUNCTION_915()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_916()
{
  v1 = v0[16];
  v0[246] = v0[15];
  v0[247] = v1;
  v2 = v0[14];
  v0[248] = v0[13];
  v0[249] = v2;
}

uint64_t OUTLINED_FUNCTION_918()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 - 80));
}

void OUTLINED_FUNCTION_926()
{
  *(v1 - 36) = v0;

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_930(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_931(uint64_t result)
{
  *(v1 + 140) = result;
  *(v1 + 144) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_933(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_934(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

__n128 OUTLINED_FUNCTION_937()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  return result;
}

void OUTLINED_FUNCTION_939(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hash(into:)(va);
}

void *OUTLINED_FUNCTION_940@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_941@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_942(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void OUTLINED_FUNCTION_945()
{
  *(v0 + 1014) = *(v0 + 316);
  *(v0 + 1015) = *(v0 + 312);
  *(v0 + 1016) = *(v0 + 308);
}

void *OUTLINED_FUNCTION_949(void *a1)
{

  return memcpy(a1, v1, 0x59uLL);
}

void *OUTLINED_FUNCTION_950()
{

  return memcpy((v0 + 384), (v0 + 16), 0xB8uLL);
}

void *OUTLINED_FUNCTION_951()
{

  return memcpy((v0 + 200), (v0 + 16), 0xB8uLL);
}

void *OUTLINED_FUNCTION_958(uint64_t a1, uint64_t a2, ...)
{

  return sub_24DE22CC0();
}

uint64_t OUTLINED_FUNCTION_962()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_963()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_964()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_965()
{

  JUMPOUT(0x253039720);
}

void OUTLINED_FUNCTION_967()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);

  sub_24DD763E4(v2, v3, v4, v5);
}

void *OUTLINED_FUNCTION_968(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

__n128 OUTLINED_FUNCTION_971()
{
  result = *v1;
  *(v0 + 40) = *(v1 + 16);
  *(v0 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_974()
{
}

void OUTLINED_FUNCTION_976()
{
  *(v0 + 112) = 0;
  *(v0 + 176) = 0;
  *(v1 - 72) = 0;
}

__n128 OUTLINED_FUNCTION_981(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11)
{
  result = a11;
  *(v11 + 88) = a9;
  *(v11 + 104) = a11;
  return result;
}

void OUTLINED_FUNCTION_984()
{
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  v0[57] = 0;
  v0[58] = 0;
}

void OUTLINED_FUNCTION_986(__n128 a1)
{
  *v1 = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
}

__n128 OUTLINED_FUNCTION_995()
{
  result = *v0;
  *(v1 + 56) = *(v0 + 16);
  *(v1 + 40) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_996()
{
  result = *v0;
  v4 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_997(uint64_t result, __n128 a2)
{
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

void OUTLINED_FUNCTION_998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  sub_24DD7639C(a1, a2, a13, a15);
}

uint64_t OUTLINED_FUNCTION_1001()
{

  return sub_24DE22CE0();
}

void *OUTLINED_FUNCTION_1002(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_1003()
{
}

void OUTLINED_FUNCTION_1004()
{

  JUMPOUT(0x253039720);
}

void *OUTLINED_FUNCTION_1008(void *a1)
{

  return memcpy(a1, (v1 + 144), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_1009()
{
}

void OUTLINED_FUNCTION_1010()
{

  JUMPOUT(0x253039720);
}

void *OUTLINED_FUNCTION_1012(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_1043()
{
  sub_24DDE8A88((v0 + 1640), (v0 + 1000));
  sub_24DDE8A88((v0 + 680), (v0 + 1320));

  return memcpy((v0 + 360), (v0 + 1000), 0x139uLL);
}

void OUTLINED_FUNCTION_1045()
{
  v1 = v0[22];
  v0[86] = v0[23];
  v0[87] = v1;
  v0[88] = v0[24];
}

void OUTLINED_FUNCTION_1048()
{
  v1 = v0[63];
  v0[232] = v0[62];
  v0[233] = v1;
  v0[234] = v0[23];
}

void OUTLINED_FUNCTION_1052(__n128 a1)
{
  *v1 = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 73) = 0u;
}

uint64_t OUTLINED_FUNCTION_1057@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 16) = v3;
  *(v2 + 32) = a2;
  return 1;
}

void OUTLINED_FUNCTION_1066()
{
  v0[20] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[23] = 0;
  v0[24] = 0;
}

void *OUTLINED_FUNCTION_1088(void *a1)
{

  return memcpy(a1, (v1 - 184), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_1089()
{
}

uint64_t OUTLINED_FUNCTION_1090()
{
}

void *OUTLINED_FUNCTION_1091(void *a1)
{

  return memcpy(a1, (v1 + 184), 0xB0uLL);
}

void *OUTLINED_FUNCTION_1092(void *a1)
{

  return memcpy(a1, (v1 + 184), 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1093()
{
}

void *OUTLINED_FUNCTION_1094(void *a1)
{

  return memcpy(a1, (v1 + 152), 0xBEuLL);
}

uint64_t OUTLINED_FUNCTION_1095()
{
}

void *OUTLINED_FUNCTION_1096(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1097(uint64_t a1)
{

  return sub_24DE22D30();
}

void *OUTLINED_FUNCTION_1105@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 24), (v1 + 40), 0x55uLL);
}

uint64_t OUTLINED_FUNCTION_1108()
{
}

uint64_t OUTLINED_FUNCTION_1109()
{
}

void OUTLINED_FUNCTION_1112(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 176);
  v5 = *(v2 - 168);

  sub_24DD7639C(a1, a2, v4, v5);
}

void OUTLINED_FUNCTION_1115(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 40) = a2;
  *(a1 + 56) = a2;
  *(a1 + 72) = a2;
  *(a1 + 88) = a2;
}

uint64_t OUTLINED_FUNCTION_1119()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_1120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  Components.Schemas.SetProfileSettings_Response.hash(into:)(va);
}

uint64_t OUTLINED_FUNCTION_1125(uint64_t a1)
{

  return sub_24DE22D50();
}

uint64_t OUTLINED_FUNCTION_1126(uint64_t a1, uint64_t a2)
{

  return sub_24DE22CA0();
}

uint64_t OUTLINED_FUNCTION_1127(uint64_t a1, uint64_t a2)
{

  return sub_24DE22AD0();
}

uint64_t OUTLINED_FUNCTION_1128(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_24DE22AD0();
}

uint64_t OUTLINED_FUNCTION_1129()
{
}

uint64_t OUTLINED_FUNCTION_1131()
{
}

uint64_t OUTLINED_FUNCTION_1134(uint64_t a1)
{

  return sub_24DDE73DC(a1);
}

void OUTLINED_FUNCTION_1135()
{

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_1136@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>)
{

  return sub_24DDD6934(a1, a2, a3, a4, a5, a6, a7, a8, a9, *&a10, *&a11, *&a12, *&a13, a14.n128_i64[0], a14.n128_i64[1], v14, v15, v16);
}

void *OUTLINED_FUNCTION_1137(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

void *OUTLINED_FUNCTION_1139(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void *OUTLINED_FUNCTION_1140@<X0>(const void *a1@<X1>, void *a2@<X8>)
{

  return memcpy(a2, a1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1143(uint64_t a1)
{

  return sub_24DDE73DC(a1);
}

uint64_t OUTLINED_FUNCTION_1163()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_1164()
{
}

uint64_t OUTLINED_FUNCTION_1165()
{

  return sub_24DE22CF0();
}

void *OUTLINED_FUNCTION_1166(void *a1)
{

  return memcpy(a1, &STACK[0x820], 0x118uLL);
}

void *OUTLINED_FUNCTION_1167(void *a1)
{

  return memcpy(a1, &STACK[0x670], 0x101uLL);
}

void *OUTLINED_FUNCTION_1168(void *a1)
{

  return memcpy(a1, (v1 + 144), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_1169(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_24DE22AD0();
}

void *OUTLINED_FUNCTION_1170(void *a1)
{

  return memcpy(a1, &STACK[0x608], 0x7DuLL);
}

void *OUTLINED_FUNCTION_1171(void *a1)
{

  return memcpy(a1, v1, 0x6DuLL);
}

uint64_t OUTLINED_FUNCTION_1172()
{

  return static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
}

void OUTLINED_FUNCTION_1180()
{
  v2 = v0[2];
  *(v1 - 136) = v0[3];
  *(v1 - 128) = v2;
  v3 = v0[4];
  *(v1 - 152) = v0[5];
  *(v1 - 144) = v3;
}

void OUTLINED_FUNCTION_1209(uint64_t a1@<X8>)
{
  v2[82] = v1;
  v2[83] = a1;
  v2[84] = v2[23];
}

void OUTLINED_FUNCTION_1217(uint64_t a1@<X8>)
{
  *(v2 - 84) = BYTE4(a1);
  *(v2 - 88) = a1;
  *(v2 - 83) = v1;
}

__n128 OUTLINED_FUNCTION_1229()
{
  v1 = *(v0 + 48);
  *&STACK[0x200] = *(v0 + 32);
  *&STACK[0x210] = v1;
  result = *(v0 + 64);
  *&STACK[0x220] = result;
  return result;
}

void OUTLINED_FUNCTION_1235(uint64_t a1@<X8>)
{
  v2 = *(v1 - 352);
  *(v1 - 248) = *(a1 - 256);
  *(v1 - 240) = v2;
}

__n128 OUTLINED_FUNCTION_1238@<Q0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6, __n128 a7)
{
  *(v7 + 144) = a1;
  result = a7;
  *(v7 + 152) = a6;
  *(v7 + 168) = a7;
  return result;
}

void OUTLINED_FUNCTION_1245()
{
  v7[12] = v6;
  v7[13] = v5;
  v7[14] = v4;
  v7[15] = v3;
  v7[16] = v2;
  v7[17] = v1;
  v7[18] = v0;
}

__n128 OUTLINED_FUNCTION_1276()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 + 960) = *v0;
  *(v1 + 976) = v3;
  *(v1 + 992) = *(v0 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_1277()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 + 912) = *v0;
  *(v1 + 928) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1284(uint64_t a1)
{

  return sub_24DE22BF0();
}

void *OUTLINED_FUNCTION_1285()
{

  return memcpy(&STACK[0x328], (v0 + 56), 0x55uLL);
}

void OUTLINED_FUNCTION_1286()
{
  *(v2 - 68) = v0;
  *(v2 - 72) = v1;

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_1288()
{

  return MEMORY[0x282197F90](27503, 0xE200000000000000, v0 - 96);
}

void OUTLINED_FUNCTION_1289()
{
  *(v2 - 52) = v0;
  *(v2 - 56) = v1;

  JUMPOUT(0x253039720);
}

void *OUTLINED_FUNCTION_1290(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_24DE22CC0();
}

void *OUTLINED_FUNCTION_1291()
{

  return memcpy(&STACK[0x538], (v0 + 24), 0x55uLL);
}

void *OUTLINED_FUNCTION_1292()
{

  return memcpy((v0 + 192), v1, 0x50uLL);
}

void *OUTLINED_FUNCTION_1293(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a65, (v65 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_1294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_24DDE3490(a18, 1);
}

uint64_t OUTLINED_FUNCTION_1295(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{

  return sub_24DDE5C90(v29, a29, a28);
}

uint64_t OUTLINED_FUNCTION_1296(uint64_t a1)
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_1297(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

void *OUTLINED_FUNCTION_1298(void *a1)
{

  return memcpy(a1, (v1 - 184), 0x60uLL);
}

void *OUTLINED_FUNCTION_1299(void *a1)
{

  return memcpy(a1, (v1 + 192), 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_1300(uint64_t a1)
{

  return sub_24DE22BF0();
}

uint64_t OUTLINED_FUNCTION_1301(uint64_t a1, uint64_t a2)
{

  return sub_24DE22CA0();
}

uint64_t OUTLINED_FUNCTION_1302()
{
}

void *OUTLINED_FUNCTION_1303(uint64_t a1, uint64_t a2, ...)
{

  return sub_24DE22CC0();
}

void *OUTLINED_FUNCTION_1304(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_1305()
{
}

uint64_t OUTLINED_FUNCTION_1306()
{

  return sub_24DE22CF0();
}

uint64_t OUTLINED_FUNCTION_1307@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 8) = result;
  return result;
}

void *OUTLINED_FUNCTION_1308(void *a1)
{

  return memcpy(a1, (v1 + 192), 0xBEuLL);
}

void OUTLINED_FUNCTION_1309()
{

  JUMPOUT(0x253039720);
}

void OUTLINED_FUNCTION_1310()
{

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_1311()
{
}

uint64_t OUTLINED_FUNCTION_1312()
{
}

uint64_t OUTLINED_FUNCTION_1313()
{
}

void *OUTLINED_FUNCTION_1314(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x6DuLL);
}

void *OUTLINED_FUNCTION_1315(void *a1)
{

  return memcpy(a1, (v1 - 192), 0xB0uLL);
}

void *OUTLINED_FUNCTION_1316(void *a1)
{

  return memcpy(a1, v1, 0x59uLL);
}

void *OUTLINED_FUNCTION_1317(void *a1)
{

  return memcpy(a1, (v1 + 152), 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1318()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_1319(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_24DDE8C0C(&a9, va);
}

void *OUTLINED_FUNCTION_1320(void *a1)
{

  return memcpy(a1, (v1 + 176), 0xB0uLL);
}

void *OUTLINED_FUNCTION_1321(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x68uLL);
}

void OUTLINED_FUNCTION_1322()
{

  JUMPOUT(0x253039720);
}

void *OUTLINED_FUNCTION_1323(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

void *OUTLINED_FUNCTION_1324(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x6DuLL);
}

uint64_t OUTLINED_FUNCTION_1325()
{
}

void OUTLINED_FUNCTION_1329(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
}

uint64_t sub_24DE0469C()
{
  v0 = sub_24DE22990();
  v1 = OUTLINED_FUNCTION_443(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_97();
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4[3] = sub_24DE229D0();
  v4[4] = MEMORY[0x277D379F8];
  __swift_allocate_boxed_opaque_existential_0(v4);
  sub_24DE228F0();
  sub_24DE04770();
  v3[3] = sub_24DE22A10();
  v3[4] = MEMORY[0x277D37A10];
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_24DE229F0();
  return sub_24DE228D0();
}

uint64_t sub_24DE04770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4CF0, &qword_24DE38768);
  sub_24DE22990();
  *(swift_allocObject() + 16) = xmmword_24DE38440;
  sub_24DE22970();
  sub_24DE22980();
  sub_24DE206DC(&qword_27F1B4CF8, MEMORY[0x277D379D8], MEMORY[0x277D379E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4D00, &unk_24DE38770);
  sub_24DE20724();
  return sub_24DE22B20();
}

uint64_t Client.init(serverURL:configuration:transport:middlewares:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_24DE228E0();
  OUTLINED_FUNCTION_27();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_97();
  v13 = v12 - v11;
  v14 = sub_24DE227E0();
  OUTLINED_FUNCTION_27();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_97();
  (*(v16 + 16))(v19 - v18, a1, v14);
  (*(v9 + 16))(v13, a2, v7);
  sub_24DE04A88(a3, v23);
  sub_24DE22940();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v20 = OUTLINED_FUNCTION_406();
  v21(v20);
  return (*(v16 + 8))(a1, v14);
}

uint64_t sub_24DE04A88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Client.postWebObjectsGKFriendService_woaWaGetFriendPlayerIds(_:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_282_0(v0, v1);
  v2 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_24DE04B44()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v0 = sub_24DDC92D8();
  v1 = OUTLINED_FUNCTION_244_0(v0);
  v2 = OUTLINED_FUNCTION_179_0(v1);
  OUTLINED_FUNCTION_178_0(v2);
  v3 = *(MEMORY[0x277D37998] + 4);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_177_0(v4);
  type metadata accessor for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output(v5);
  OUTLINED_FUNCTION_167_0();
  *v3 = v6;
  OUTLINED_FUNCTION_176_0(v7);
  OUTLINED_FUNCTION_2_0(v8);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v9);
}

uint64_t sub_24DE04C2C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_346_0();

    OUTLINED_FUNCTION_27_0();

    return v8();
  }
}

void sub_24DE04D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  v29 = OUTLINED_FUNCTION_166_0(v26, v27, v28);
  v30 = OUTLINED_FUNCTION_443(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_110_0(v31);
  v32 = sub_24DE22840();
  v33 = OUTLINED_FUNCTION_443(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  sub_24DE22A90();
  OUTLINED_FUNCTION_27();
  v148 = v34;
  v149 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v38 = MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_0(v38, v39, v40, v41, v42, v43, v44, v45, v142);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v52 = MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_63_0(v52, v53, v54, v55, v56, v57, v58, v59, v143);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_46_0();
  v62 = MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_52_0(v62, v63, v64, v65, v66, v67, v68, v69, v144);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_39_0();
  v146 = v71;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_76_0(*(v21 + 128));
  sub_24DE22930();
  OUTLINED_FUNCTION_75_0();
  sub_24DE22A20();
  if (v147)
  {
    v72 = OUTLINED_FUNCTION_199_0();
    v73(v72);
  }

  else
  {
    OUTLINED_FUNCTION_363_0();
    *(v74 - 256) = v24;
    OUTLINED_FUNCTION_22_0(v145);
    OUTLINED_FUNCTION_362_0(v75);
    v76();
    OUTLINED_FUNCTION_399_0();
    OUTLINED_FUNCTION_310_0();
    MEMORY[0x253039240]();
    v77 = v145[1];
    OUTLINED_FUNCTION_83_0();
    v78 = sub_24DE22850();
    v79 = OUTLINED_FUNCTION_170_0(v78);
    OUTLINED_FUNCTION_274_0(v79);
    OUTLINED_FUNCTION_273_0();
    v80 = OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_106_0(v80, v81);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    v82 = v147;
    sub_24DE22A50();
    if (v82)
    {

      OUTLINED_FUNCTION_35_0();
      v83();
      v84 = OUTLINED_FUNCTION_125_0();
      v20(v84);
      OUTLINED_FUNCTION_47_0();
      (*(v85 + 8))(v77, v22);
    }

    else
    {

      OUTLINED_FUNCTION_35_0();
      v86();
      v87 = OUTLINED_FUNCTION_116_0();
      v20(v87);
      OUTLINED_FUNCTION_114_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_243_0();
      v88 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v88, v89);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_71_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_213_0();
      v147 = v22;
      OUTLINED_FUNCTION_37_0();

      v90 = OUTLINED_FUNCTION_732();
      v149 = a10;
      v77(v90);
      v91 = OUTLINED_FUNCTION_79_0();
      v92 = (v20)(v91);
      OUTLINED_FUNCTION_269_0(v92);
      OUTLINED_FUNCTION_120_0();
      v93 = OUTLINED_FUNCTION_335_0();
      OUTLINED_FUNCTION_106_0(v93, v94);
      OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_102_0(v95);
      OUTLINED_FUNCTION_165_0();

      v96 = OUTLINED_FUNCTION_97_0();
      v77(v96);
      v97 = OUTLINED_FUNCTION_79_0();
      v20(v97);
      OUTLINED_FUNCTION_114_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_90_0();
      v98 = OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_106_0(v98, v99);
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_175_0(v100);
      OUTLINED_FUNCTION_212_0();

      v101 = OUTLINED_FUNCTION_6_0();
      v102(v101);
      v103 = OUTLINED_FUNCTION_116_0();
      v104 = (v20)(v103);
      OUTLINED_FUNCTION_131_0(v104);
      OUTLINED_FUNCTION_89_0();
      v105 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v105, v106);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_174_0();

      OUTLINED_FUNCTION_8_0();
      v107();
      v108 = OUTLINED_FUNCTION_116_0();
      v20(v108);
      OUTLINED_FUNCTION_114_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_65_0();
      v109 = OUTLINED_FUNCTION_241_0();
      v111 = OUTLINED_FUNCTION_139_0(v109, v110);
      OUTLINED_FUNCTION_40_0(v111);

      v112 = OUTLINED_FUNCTION_6_0();
      v113(v112);
      v114 = OUTLINED_FUNCTION_116_0();
      v23(v114);
      OUTLINED_FUNCTION_114_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_66_0();
      v115 = OUTLINED_FUNCTION_241_0();
      v117 = OUTLINED_FUNCTION_139_0(v115, v116);
      OUTLINED_FUNCTION_40_0(v117);

      v118 = OUTLINED_FUNCTION_6_0();
      v119(v118);
      v120 = OUTLINED_FUNCTION_116_0();
      v121 = (v23)(v120);
      OUTLINED_FUNCTION_131_0(v121);
      OUTLINED_FUNCTION_88_0();
      v122 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v122, v123);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_165_0();

      OUTLINED_FUNCTION_8_0();
      v124();
      v125 = OUTLINED_FUNCTION_116_0();
      v20(v125);
      OUTLINED_FUNCTION_109_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_307_0();
      OUTLINED_FUNCTION_151_0(&v146);
      v126 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v126, v127);
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_234_0(v128);

      OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_211_0();
      v150();
      v129 = OUTLINED_FUNCTION_116_0();
      v130 = (v20)(v129);
      OUTLINED_FUNCTION_131_0(v130);
      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_118_0();
      v131 = sub_24DD70F40();
      OUTLINED_FUNCTION_203_0(v131, v132, &type metadata for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.AcceptableContentType);
      v133 = OUTLINED_FUNCTION_62_0();
      (v150)(v133);
      v134 = OUTLINED_FUNCTION_116_0();
      v20(v134);
      OUTLINED_FUNCTION_311_0();
      if (v135 != 1)
      {
        OUTLINED_FUNCTION_277_0();
        OUTLINED_FUNCTION_322_0();
        OUTLINED_FUNCTION_184_0();
        sub_24DE22930();
        OUTLINED_FUNCTION_142_0();
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_118_0();
        sub_24DE20688();
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_191_0();
        sub_24DE22A80();
        v136 = OUTLINED_FUNCTION_218_0();
        sub_24DD763E4(v136, v137, v138, v139);
        v140 = OUTLINED_FUNCTION_73_0();
        v25(v140);
        v141 = OUTLINED_FUNCTION_352_0();
        v20(v141);
      }
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE056A4()
{
  OUTLINED_FUNCTION_441();
  v5 = OUTLINED_FUNCTION_195_0(v1, v2, v3, v4);
  v0[38] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[39] = v6;
  v7 = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_232_0(v7);
  v8 = sub_24DE22A90();
  v0[41] = v8;
  OUTLINED_FUNCTION_26_0(v8);
  v0[42] = v9;
  v10 = OUTLINED_FUNCTION_240_0();
  v11 = OUTLINED_FUNCTION_320_0(v10);
  v0[45] = OUTLINED_FUNCTION_319_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v12);
  v13 = OUTLINED_FUNCTION_1318();
  v14 = OUTLINED_FUNCTION_329_0(v13);
  v0[47] = v14;
  OUTLINED_FUNCTION_26_0(v14);
  v0[48] = v15;
  v16 = OUTLINED_FUNCTION_240_0();
  v0[50] = OUTLINED_FUNCTION_328_0(v16);
  v17 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_24DE05804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_127_0();
  MEMORY[0x2530392C0]();
  v18 = OUTLINED_FUNCTION_13_0();
  v19 = v17(v18);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_34_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0();
    MEMORY[0x2530392C0]();
    v25 = OUTLINED_FUNCTION_48_0();
    v17(v25);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    FriendPlayer = type metadata accessor for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output(0);
    OUTLINED_FUNCTION_136_0(FriendPlayer);
    OUTLINED_FUNCTION_82_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_0(v19);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v20 = OUTLINED_FUNCTION_51_0();
  v21(v20);
  v22 = OUTLINED_FUNCTION_20_0();
  v23 = (v16)(v22);
  OUTLINED_FUNCTION_138_0(v23);
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v24 = OUTLINED_FUNCTION_112_0();
    (v16)(v24);
    sub_24DE205DC(200, &qword_27F1B4B50);
    OUTLINED_FUNCTION_126_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_182_0();
  OUTLINED_FUNCTION_157_0();
  v16();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  OUTLINED_FUNCTION_324_0(v36);
  v37 = swift_task_alloc();
  OUTLINED_FUNCTION_255_0(v37);
  sub_24DE20634();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0xC8] = v38;
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v39);
}

uint64_t sub_24DE05A7C()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 432) = v0;

  v7 = OUTLINED_FUNCTION_59_0();
  v8(v7);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_24DE05B84()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = OUTLINED_FUNCTION_60_0();
  sub_24DDFDC5C(v1, v2);
  v3 = OUTLINED_FUNCTION_252_0();
  sub_24DDFDC5C(v3, v4);
  v5 = OUTLINED_FUNCTION_251_0();
  Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output.Ok.init(body:)(v5);
  sub_24DE205DC(v0, &qword_27F1B4B50);
  v6 = OUTLINED_FUNCTION_33_0();
  FriendPlayer = type metadata accessor for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output(v6);
  OUTLINED_FUNCTION_135_0(FriendPlayer);
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24DE05C4C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE056A4();
}

uint64_t Client.postWebObjectsGKInvitationService_woaWaShareActivity(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[32] = v2;
  v1[33] = v0;
  memcpy(v1 + 2, v3, 0xF0uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_24DE05D68()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[33];
  v0[34] = *(sub_24DDCA00C() + 1);
  v2 = swift_task_alloc();
  v0[35] = v2;
  v3 = OUTLINED_FUNCTION_258_0(v2);
  v0[36] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[37] = v4;
  type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v4 = v5;
  v4[1] = sub_24DE05E7C;
  OUTLINED_FUNCTION_2_0(v0[32]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v6);
}

uint64_t sub_24DE05E7C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_27_0();

    return v8();
  }
}

uint64_t sub_24DE05FB8()
{
  OUTLINED_FUNCTION_441();

  OUTLINED_FUNCTION_1327();

  return v0();
}

void sub_24DE06028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_371_0();
  v124 = v25;
  v26 = sub_24DE22800();
  v27 = OUTLINED_FUNCTION_443(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_365_0(v28);
  OUTLINED_FUNCTION_122_0();
  v29 = sub_24DE22840();
  v30 = OUTLINED_FUNCTION_443(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v126 = sub_24DE22A90();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0(v41, v42, v43, v44, v45, v46, v47, v48, v117);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_294_0(v51);
  OUTLINED_FUNCTION_223_0(v21[3]);
  OUTLINED_FUNCTION_362_0(v21[5]);
  v122 = v21[19];
  v121 = v21[20];
  v120 = v21[21];
  v119 = v21[22];
  v118 = v21[23];
  v53 = v21[24];
  v52 = v21[25];
  v54 = v21[26];
  v55 = v21[27];
  v56 = v21[28];
  sub_24DE22930();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_200_0();
  sub_24DE22A20();
  if (v22)
  {
    v57 = OUTLINED_FUNCTION_199_0();
    v69(v57, v126);
  }

  else
  {
    v58 = OUTLINED_FUNCTION_295_0();
    v125 = v59;
    (v59)(v58, v126);
    OUTLINED_FUNCTION_132_0();
    MEMORY[0x253039280]();
    OUTLINED_FUNCTION_114_0();
    MEMORY[0x253039240]();
    OUTLINED_FUNCTION_83_0();
    v60 = sub_24DE22850();
    OUTLINED_FUNCTION_170_0(v60);
    OUTLINED_FUNCTION_312_0();
    OUTLINED_FUNCTION_249_0(v61);
    OUTLINED_FUNCTION_95_0(&v131[8]);

    v62 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v62, v63);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    sub_24DE22A50();

    v64 = OUTLINED_FUNCTION_158_0();
    v125(v64);
    v65 = OUTLINED_FUNCTION_201_0();
    v66 = v20(v65);
    OUTLINED_FUNCTION_91_0(v66);
    OUTLINED_FUNCTION_95_0(&v131[5]);
    v127[1] = v123;

    v67 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v67, v68);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_71_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_291_0();
    OUTLINED_FUNCTION_37_0();

    v70 = OUTLINED_FUNCTION_732();
    v124(v70);
    v71 = OUTLINED_FUNCTION_201_0();
    v20(v71);
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_249_0(v72);
    OUTLINED_FUNCTION_95_0(&v131[2]);
    OUTLINED_FUNCTION_263_0(&v131[3]);
    v73 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v73, v74);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_102_0(v75);
    OUTLINED_FUNCTION_165_0();

    v76 = OUTLINED_FUNCTION_141_0();
    v124(v76);
    v77 = OUTLINED_FUNCTION_201_0();
    v78 = v20(v77);
    OUTLINED_FUNCTION_91_0(v78);
    OUTLINED_FUNCTION_95_0(&v130);
    OUTLINED_FUNCTION_338_0(&a13);
    v79 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v79, v80);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_183_0(v81);
    OUTLINED_FUNCTION_212_0();

    OUTLINED_FUNCTION_38_0();
    v82();
    v83 = OUTLINED_FUNCTION_201_0();
    v20(v83);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_249_0(v84);
    OUTLINED_FUNCTION_95_0(&v128);
    OUTLINED_FUNCTION_263_0(&v129);
    v85 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v85, v86);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_162_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_38_0();
    v87();
    v88 = OUTLINED_FUNCTION_201_0();
    v89 = v20(v88);
    OUTLINED_FUNCTION_91_0(v89);
    OUTLINED_FUNCTION_95_0(&v127[8]);
    OUTLINED_FUNCTION_388_0(&v127[9]);
    v90 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_139_0(v90, v91);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_38_0();
    v92();
    v93 = OUTLINED_FUNCTION_201_0();
    v94 = (v131[0])(v93);
    OUTLINED_FUNCTION_91_0(v94);
    OUTLINED_FUNCTION_95_0(&v127[5]);
    OUTLINED_FUNCTION_388_0(&v127[6]);
    v95 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_139_0(v95, v96);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_38_0();
    v97();
    v98 = OUTLINED_FUNCTION_201_0();
    (v131[0])(v98);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_249_0(v99);
    OUTLINED_FUNCTION_95_0(&v127[2]);
    OUTLINED_FUNCTION_263_0(&v127[3]);
    v100 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v100, v101);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_162_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_165_0();

    OUTLINED_FUNCTION_38_0();
    v102();
    v103 = OUTLINED_FUNCTION_201_0();
    v104 = v20(v103);
    OUTLINED_FUNCTION_91_0(v104);
    OUTLINED_FUNCTION_268_0(v127);
    v105 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_168_0(v105, v106);
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_234_0(v107);

    v108 = OUTLINED_FUNCTION_732();
    v125(v108);
    v109 = OUTLINED_FUNCTION_201_0();
    (v131[0])(v109);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_249_0(v110);
    OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_118_0();
    sub_24DD71334();
    sub_24DE22A40();
    v111 = OUTLINED_FUNCTION_626();
    v125(v111);
    v112 = OUTLINED_FUNCTION_201_0();
    (v131[0])(v112);
    if (v122)
    {
      OUTLINED_FUNCTION_322_0();
      OUTLINED_FUNCTION_292_0();

      OUTLINED_FUNCTION_184_0();
      OUTLINED_FUNCTION_249_0(v113);
      v131[0] = v125;
      v131[1] = v121;
      v131[2] = v120;
      v131[3] = v119;
      v131[4] = v118;
      v131[5] = v53;
      v131[6] = v52;
      v131[7] = v54;
      v131[8] = v55;
      v131[9] = v56;
      v131[10] = v131;
      sub_24DE22820();
      OUTLINED_FUNCTION_118_0();
      sub_24DE20588();
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_191_0();
      sub_24DE22A80();
      memcpy(v127, v131, sizeof(v127));
      sub_24DE205DC(v127, &unk_27F1B4CD8);
      v114 = OUTLINED_FUNCTION_248_0();
      v115(v114);
      v116 = OUTLINED_FUNCTION_192_0();
      (v131[0])(v116);
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE06D08()
{
  OUTLINED_FUNCTION_441();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v5 = sub_24DE22800();
  v0[34] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[35] = v6;
  v0[36] = OUTLINED_FUNCTION_1318();
  v7 = sub_24DE22A90();
  v0[37] = v7;
  OUTLINED_FUNCTION_26_0(v7);
  v0[38] = v8;
  v0[39] = OUTLINED_FUNCTION_240_0();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v9);
  v0[42] = OUTLINED_FUNCTION_1318();
  v10 = sub_24DE22880();
  v0[43] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[44] = v11;
  v0[45] = OUTLINED_FUNCTION_240_0();
  v0[46] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_24DE06E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[46];
  v17 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v17);
  v18 = OUTLINED_FUNCTION_13_0();
  v19 = v15(v18);
  if (v16 != 200)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0();
    MEMORY[0x2530392C0]();
    v29 = OUTLINED_FUNCTION_48_0();
    v15(v29);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v30 = type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
    OUTLINED_FUNCTION_136_0(v30);
    OUTLINED_FUNCTION_389();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v20 = v14[41];
  a9 = v14[37];
  a10 = v14[40];
  v21 = v14[35];
  v22 = v14[36];
  OUTLINED_FUNCTION_260_0(v19);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v23 = OUTLINED_FUNCTION_51_0();
  v24(v23);
  OUTLINED_FUNCTION_61_0();
  v14[47] = v22;
  v14[48] = v25;
  v26 = OUTLINED_FUNCTION_160_0();
  v27 = v22(v26);
  OUTLINED_FUNCTION_138_0(v27);
  OUTLINED_FUNCTION_133_0();
  if (v20)
  {
    v28 = v14[42];
    (v22)(v14[40], v14[37]);
    sub_24DE205DC(v28, &qword_27F1B4B50);

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_157_0();
  (v22)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v21 & 1) == 0)
  {
    __break(1u);
  }

  sub_24DE22930();
  v40 = swift_task_alloc();
  v14[49] = v40;
  sub_24DE20534();
  OUTLINED_FUNCTION_50_0();
  *v40 = v41;
  v40[1] = sub_24DE07184;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v42);
}

uint64_t sub_24DE07184()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 400) = v0;

  (*(v3 + 376))(*(v3 + 312), *(v3 + 296));
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_24DE0729C()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = *(v0 + 336);
  v2 = *(v0 + 240);
  sub_24DDE7DA0((v0 + 16), v0 + 128);
  sub_24DDE7DA0((v0 + 128), v0 + 184);
  Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  *(v2 + 48) = *(v0 + 120);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *v2 = v5;
  v6 = type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
  OUTLINED_FUNCTION_135_0(v6);
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_24DE07394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(*(v10 + 336), &qword_27F1B4B50);

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_24DE0744C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE06D08();
}

uint64_t sub_24DE074D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8[0] = v5[0];
  v8[1] = v2;
  v8[2] = v6;
  v9 = v7;
  sub_24DDE7DA0(v8, a2);
  return sub_24DDE2250(v5, v4);
}

uint64_t Client.postWebObjectsGKProfileService_woaWaAppInit(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_23_0();
}

uint64_t sub_24DE0754C()
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_496();
  v1 = sub_24DDCB544();
  v2 = OUTLINED_FUNCTION_332_0(v1);
  *(v0 + 48) = v2;
  v3 = OUTLINED_FUNCTION_258_0(v2);
  OUTLINED_FUNCTION_299_0(v3);
  v4 = *(MEMORY[0x277D37998] + 4);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_297_0(v5);
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(v6);
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v4 = v7;
  OUTLINED_FUNCTION_224_0(v8);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_230_0();

  return MEMORY[0x282197F10](v9);
}

uint64_t sub_24DE0764C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_27_0();

    return v8();
  }
}

void sub_24DE07788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  v109 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4CB8, &unk_24DE38750);
  OUTLINED_FUNCTION_443(v24);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_384_0();
  v105 = v26;
  v27 = OUTLINED_FUNCTION_122_0();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(v27);
  OUTLINED_FUNCTION_104_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_0();
  v106 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2800, &qword_24DE22FB0);
  OUTLINED_FUNCTION_443(v30);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_384_0();
  v107 = v32;
  OUTLINED_FUNCTION_122_0();
  v33 = sub_24DE22800();
  v34 = OUTLINED_FUNCTION_443(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v35 = sub_24DE22840();
  v36 = OUTLINED_FUNCTION_443(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v115 = sub_24DE22A90();
  OUTLINED_FUNCTION_27();
  v111 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_101_0();
  v104 = v40;
  OUTLINED_FUNCTION_100_0();
  v42 = MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52_0(v42, v43, v44, v45, v46, v47, v48, v49, v101);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_150_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_229_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_383_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_101_0();
  v110 = v58;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_296_0();
  sub_24DE22930();
  sub_24DE22A20();
  if (v20)
  {
    (*(v111 + 8))(v21, v115);
  }

  else
  {
    v102 = *(v111 + 8);
    v60 = (v102)(v21, v115);
    v61 = MEMORY[0x253039280](v60);
    MEMORY[0x253039240](v61);
    OUTLINED_FUNCTION_406();
    sub_24DE22810();
    sub_24DE22850();
    sub_24DE229E0();
    sub_24DE22930();
    v62 = v109[1];
    v113 = *v109;
    v114 = v62;

    v63 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v63, v64);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    sub_24DE22A50();

    (v102)(v110, v115);
    v65 = OUTLINED_FUNCTION_64_0();
    v22(v65);
    OUTLINED_FUNCTION_271_0();
    sub_24DE22930();
    v66 = v109[3];
    v113 = v109[2];
    v114 = v66;

    v67 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_139_0(v67, v68);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();

    (v102)(v22, v115);
    v69 = OUTLINED_FUNCTION_117_0();
    v62(v69);
    OUTLINED_FUNCTION_312_0();
    sub_24DE22930();
    v70 = v109[5];
    v113 = v109[4];
    v114 = v70;

    v71 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v71, v72);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_96_0();
    sub_24DE22A50();

    (v102)(0, v115);
    v73 = OUTLINED_FUNCTION_117_0();
    v115(v73);
    sub_24DE22930();
    v74 = v109[7];
    v113 = v109[6];
    v114 = v74;

    v75 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v75, v76);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_96_0();
    sub_24DE22A50();

    (v102)(v22, v115);
    v77 = OUTLINED_FUNCTION_117_0();
    v22(v77);
    OUTLINED_FUNCTION_184_0();
    sub_24DE22930();
    OUTLINED_FUNCTION_306_0(v109[8]);
    v78 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v78, v79);
    OUTLINED_FUNCTION_1_0();
    sub_24DE22A50();

    v80 = OUTLINED_FUNCTION_318_0();
    v102(v80);
    v81 = OUTLINED_FUNCTION_117_0();
    v22(v81);
    OUTLINED_FUNCTION_114_0();
    sub_24DE22930();
    OUTLINED_FUNCTION_306_0(v109[10]);
    v82 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v82, v83);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    (v102)(v112, v115);
    v84 = OUTLINED_FUNCTION_64_0();
    v22(v84);
    OUTLINED_FUNCTION_310_0();
    sub_24DE22930();
    OUTLINED_FUNCTION_306_0(v109[12]);
    v85 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v85, v86);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    (v102)(v112, v115);
    v87 = OUTLINED_FUNCTION_64_0();
    v22(v87);
    sub_24DE22930();
    OUTLINED_FUNCTION_306_0(v109[14]);
    v88 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v88, v89);
    OUTLINED_FUNCTION_0_0();
    sub_24DE22A50();

    v90 = OUTLINED_FUNCTION_318_0();
    v102(v90);
    v91 = OUTLINED_FUNCTION_117_0();
    v22(v91);
    sub_24DE22930();
    OUTLINED_FUNCTION_306_0(v109[16]);
    v92 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_168_0(v92, v93);
    OUTLINED_FUNCTION_58_0();
    sub_24DE22A50();

    (v102)(v108, v115);
    v94 = OUTLINED_FUNCTION_64_0();
    MEMORY[0](v94);
    sub_24DE22930();
    OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_186_0();
    sub_24DD718CC();
    sub_24DE22A40();
    (v102)(v104, v115);
    v95 = OUTLINED_FUNCTION_117_0();
    (*"x-gk-host-bundle-id")(v95);
    v96 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(0);
    sub_24DE203A0(v109 + *(v96 + 20), v107);
    v97 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body(0);
    if (__swift_getEnumTagSinglePayload(v107, 1, v97) != 1)
    {
      sub_24DE20410(v107, v106);
      sub_24DE22930();
      sub_24DE20474(v106, v105);
      __swift_storeEnumTagSinglePayload(v105, 0, 1, inited);
      OUTLINED_FUNCTION_288_0();
      OUTLINED_FUNCTION_118_0();
      sub_24DE206DC(&qword_27F1B4CC0, type metadata accessor for Components.Schemas.App_AppInit_RequestContent, &protocol conformance descriptor for Components.Schemas.App_AppInit_RequestContent);
      OUTLINED_FUNCTION_56_0();
      sub_24DE22A80();
      sub_24DE205DC(v105, &qword_27F1B4CB8);
      v98 = OUTLINED_FUNCTION_316_0();
      v99(v98);
      v100 = OUTLINED_FUNCTION_117_0();
      v106(v100);
      sub_24DE204D8(v106);
    }
  }

  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE08488()
{
  OUTLINED_FUNCTION_441();
  v0[265] = v1;
  v0[264] = v2;
  v0[263] = v3;
  v0[262] = v4;
  v5 = sub_24DE22800();
  v0[266] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[267] = v6;
  v0[268] = OUTLINED_FUNCTION_1318();
  v7 = sub_24DE22A90();
  v0[269] = v7;
  OUTLINED_FUNCTION_26_0(v7);
  v0[270] = v8;
  v0[271] = OUTLINED_FUNCTION_240_0();
  v0[272] = swift_task_alloc();
  v0[273] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v9);
  v0[274] = OUTLINED_FUNCTION_1318();
  v10 = sub_24DE22880();
  v0[275] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[276] = v11;
  v0[277] = OUTLINED_FUNCTION_240_0();
  v0[278] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_24DE08620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[278];
  v17 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v17);
  v18 = OUTLINED_FUNCTION_13_0();
  v19 = v15(v18);
  if (v16 != 200)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0();
    MEMORY[0x2530392C0]();
    v30 = OUTLINED_FUNCTION_48_0();
    v15(v30);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v31 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output(0);
    OUTLINED_FUNCTION_136_0(v31);
    OUTLINED_FUNCTION_283_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v20 = v14[273];
  v21 = v14[270];
  a9 = v14[269];
  a10 = v14[272];
  v22 = v14[267];
  OUTLINED_FUNCTION_260_0(v19);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v23 = OUTLINED_FUNCTION_51_0();
  v24(v23);
  v25 = *(v21 + 8);
  v14[279] = v25;
  OUTLINED_FUNCTION_159_0();
  v14[280] = v26;
  v27 = OUTLINED_FUNCTION_160_0();
  v28 = v25(v27);
  OUTLINED_FUNCTION_138_0(v28);
  OUTLINED_FUNCTION_133_0();
  if (v20)
  {
    v29 = v14[274];
    (v25)(v14[272], v14[269]);
    sub_24DE205DC(v29, &qword_27F1B4B50);
    OUTLINED_FUNCTION_392_0(v14[278]);

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_157_0();
  (v25)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v22 & 1) == 0)
  {
    __break(1u);
  }

  sub_24DE22930();
  v41 = swift_task_alloc();
  v14[281] = v41;
  sub_24DE2034C();
  OUTLINED_FUNCTION_50_0();
  *v41 = v42;
  v41[1] = sub_24DE08928;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v43);
}

uint64_t sub_24DE08928()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 2256) = v0;

  v7 = OUTLINED_FUNCTION_378_0();
  v8(v7);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_24DE08A30()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[274];
  v2 = v0[262];
  sub_24DDE7E78(v0 + 2, v0 + 132);
  sub_24DDE7E78(v0 + 132, v0 + 197);
  Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 67, 0x201uLL);
  v3 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output(0);
  OUTLINED_FUNCTION_135_0(v3);
  OUTLINED_FUNCTION_283_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DE08B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(*(v10 + 2192), &qword_27F1B4B50);
  OUTLINED_FUNCTION_392_0(*(v10 + 2224));

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_24DE08BD0()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE08488();
}

uint64_t sub_24DE08C5C()
{
  OUTLINED_FUNCTION_227_0();
  memcpy(__dst, v0, 0x201uLL);
  memcpy(__src, v0, 0x201uLL);
  nullsub_1();
  sub_24DDE7E78(__src, v1);
  return sub_24DDE294C(__dst, v3);
}

uint64_t Client.postWebObjectsGKProfileService_woaWaSetProfileSettings(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[31] = v2;
  v1[32] = v0;
  memcpy(v1 + 2, v3, 0xE8uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_24DE08D30()
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[32];
  v0[33] = *(sub_24DDCCB70() + 1);
  v2 = swift_task_alloc();
  v0[34] = v2;
  v3 = OUTLINED_FUNCTION_258_0(v2);
  v0[35] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[36] = v4;
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v4 = v5;
  v4[1] = sub_24DE08E44;
  OUTLINED_FUNCTION_2_0(v0[31]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v6);
}

uint64_t sub_24DE08E44()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_27_0();

    return v8();
  }
}

uint64_t sub_24DE08F80()
{
  OUTLINED_FUNCTION_441();

  OUTLINED_FUNCTION_1327();

  return v0();
}

void sub_24DE08FF0()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_371_0();
  v5 = sub_24DE22800();
  v6 = OUTLINED_FUNCTION_443(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_0();
  v32 = v7;
  OUTLINED_FUNCTION_122_0();
  v8 = sub_24DE22840();
  v9 = OUTLINED_FUNCTION_443(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v35 = sub_24DE22A90();
  OUTLINED_FUNCTION_27();
  v46 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_222_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_146_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_101_0();
  v33 = v15;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_221_0();
  v34 = v17;
  v29 = v0[2];
  v30 = v0[3];
  v31 = v18;
  memcpy(v45, v0 + 5, sizeof(v45));
  sub_24DE22930();
  OUTLINED_FUNCTION_339_0(0xD000000000000036);
  if (v1)
  {
    (*(v46 + 8))(v4, v35);
  }

  else
  {
    OUTLINED_FUNCTION_364_0();
    v28 = v3;
    v19 = *(v46 + 8);
    v20 = (v19)(v4, v35);
    v21 = MEMORY[0x253039280](v20);
    MEMORY[0x253039240](v21);
    OUTLINED_FUNCTION_185_0();
    sub_24DE22810();
    v22 = sub_24DE22850();
    OUTLINED_FUNCTION_170_0(v22);
    sub_24DE22930();
    v41[0] = v31;
    v41[1] = v34;

    v23 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v23, v24);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_191_0();
    sub_24DE22A50();

    (v19)(v33, v35);
    v32(v42, 0);
    sub_24DE22930();
    v43 = v29;
    v44 = v30;

    v25 = sub_24DE22820();
    OUTLINED_FUNCTION_190_0(v25, v26);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();

    v27 = OUTLINED_FUNCTION_181_0();
    v19(v27);
    v35(v41, 0);
    sub_24DE22930();
    sub_24DE22820();
    OUTLINED_FUNCTION_186_0();
    sub_24DD71EF4();
    sub_24DE22A40();
    (v19)(v2, v35);
    v35(v41, 0);
    memcpy(v42, v45, sizeof(v42));
    if (sub_24DDE7F28(v42) != 1)
    {
      sub_24DDE7F14(v42, v39);
      memcpy(v40, v45, sizeof(v40));
      sub_24DE2029C(v40, v38);
      sub_24DE22930();
      memcpy(v41, v39, sizeof(v41));
      nullsub_1();
      memcpy(v38, v41, sizeof(v38));
      sub_24DE22820();
      OUTLINED_FUNCTION_186_0();
      sub_24DE202F8();
      OUTLINED_FUNCTION_219_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A80();
      memcpy(v36, v38, sizeof(v36));
      sub_24DE205DC(v36, &unk_27F1B4CA8);
      (v19)(v28, v35);
      v35(&v37, 0);
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE09648()
{
  OUTLINED_FUNCTION_441();
  v0[48] = v1;
  v0[49] = v2;
  v0[46] = v3;
  v0[47] = v4;
  v5 = sub_24DE22800();
  v0[50] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[51] = v6;
  v0[52] = OUTLINED_FUNCTION_1318();
  v7 = sub_24DE22A90();
  v0[53] = v7;
  OUTLINED_FUNCTION_26_0(v7);
  v0[54] = v8;
  v0[55] = OUTLINED_FUNCTION_240_0();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v9);
  v0[58] = OUTLINED_FUNCTION_1318();
  v10 = sub_24DE22880();
  v0[59] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[60] = v11;
  v0[61] = OUTLINED_FUNCTION_240_0();
  v0[62] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_24DE097D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[62];
  v17 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v17);
  v18 = OUTLINED_FUNCTION_13_0();
  v19 = v15(v18);
  if (v16 != 200)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0();
    MEMORY[0x2530392C0]();
    v29 = OUTLINED_FUNCTION_48_0();
    v15(v29);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v30 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output(0);
    OUTLINED_FUNCTION_136_0(v30);
    OUTLINED_FUNCTION_390_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v20 = v14[57];
  a9 = v14[53];
  a10 = v14[56];
  v21 = v14[51];
  v22 = v14[52];
  OUTLINED_FUNCTION_260_0(v19);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v23 = OUTLINED_FUNCTION_51_0();
  v24(v23);
  OUTLINED_FUNCTION_61_0();
  v14[63] = v22;
  v14[64] = v25;
  v26 = OUTLINED_FUNCTION_160_0();
  v27 = v22(v26);
  OUTLINED_FUNCTION_138_0(v27);
  OUTLINED_FUNCTION_133_0();
  if (v20)
  {
    v28 = v14[58];
    (v22)(v14[56], v14[53]);
    sub_24DE205DC(v28, &qword_27F1B4B50);

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_157_0();
  (v22)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v21 & 1) == 0)
  {
    __break(1u);
  }

  sub_24DE22930();
  v40 = swift_task_alloc();
  v14[65] = v40;
  sub_24DE20248();
  OUTLINED_FUNCTION_50_0();
  *v40 = v41;
  v40[1] = sub_24DE09AC4;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v42);
}

uint64_t sub_24DE09AC4()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_162();
  *v6 = v5;
  *(v3 + 528) = v0;

  (*(v3 + 504))(*(v3 + 440), *(v3 + 424));
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_24DE09BDC()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[58];
  v2 = v0[46];
  sub_24DDE7F4C(v0 + 2, v0 + 24);
  sub_24DDE7F4C(v0 + 24, v0 + 35);
  Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 13, 0x58uLL);
  v3 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output(0);
  OUTLINED_FUNCTION_135_0(v3);
  OUTLINED_FUNCTION_390_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DE09CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(*(v10 + 464), &qword_27F1B4B50);

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}