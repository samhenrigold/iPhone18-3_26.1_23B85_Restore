uint64_t getEnumTagSinglePayload for MediaAPI.PlaylistAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.PlaylistAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350154);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.AlbumAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.AlbumAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753502F0);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27535032C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 10);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 10);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 10);
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

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2753503B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350470);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 9);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.MusicVideoAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.MusicVideoAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753505FCLL);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.LibrarySongAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.LibrarySongAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350788);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.SongAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.SongAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350914);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_27535094C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350A08);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275350A44(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 13);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_275350ACC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350B88);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275350BC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 12);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_275350C44(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350D00);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_275350D38(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350DF4);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.Artwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.Artwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275350F80);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_275350FBC()
{
  result = qword_2809C2320;
  if (!qword_2809C2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2320);
  }

  return result;
}

unint64_t sub_275351014()
{
  result = qword_2809C2328;
  if (!qword_2809C2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2328);
  }

  return result;
}

unint64_t sub_27535106C()
{
  result = qword_2809C2330;
  if (!qword_2809C2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2330);
  }

  return result;
}

unint64_t sub_2753510C4()
{
  result = qword_2809C2338;
  if (!qword_2809C2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2338);
  }

  return result;
}

unint64_t sub_27535111C()
{
  result = qword_2809C2340;
  if (!qword_2809C2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2340);
  }

  return result;
}

unint64_t sub_275351174()
{
  result = qword_2809C2348;
  if (!qword_2809C2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2348);
  }

  return result;
}

unint64_t sub_2753511CC()
{
  result = qword_2809C2350;
  if (!qword_2809C2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2350);
  }

  return result;
}

unint64_t sub_275351224()
{
  result = qword_2809C2358;
  if (!qword_2809C2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2358);
  }

  return result;
}

unint64_t sub_27535127C()
{
  result = qword_2809C2360;
  if (!qword_2809C2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2360);
  }

  return result;
}

unint64_t sub_2753512D4()
{
  result = qword_2809C2368;
  if (!qword_2809C2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2368);
  }

  return result;
}

unint64_t sub_27535132C()
{
  result = qword_2809C2370;
  if (!qword_2809C2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2370);
  }

  return result;
}

unint64_t sub_275351384()
{
  result = qword_2809C2378;
  if (!qword_2809C2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2378);
  }

  return result;
}

unint64_t sub_2753513DC()
{
  result = qword_2809C2380;
  if (!qword_2809C2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2380);
  }

  return result;
}

unint64_t sub_275351434()
{
  result = qword_2809C2388;
  if (!qword_2809C2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2388);
  }

  return result;
}

unint64_t sub_27535148C()
{
  result = qword_2809C2390;
  if (!qword_2809C2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2390);
  }

  return result;
}

unint64_t sub_2753514E4()
{
  result = qword_2809C2398;
  if (!qword_2809C2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2398);
  }

  return result;
}

unint64_t sub_27535153C()
{
  result = qword_2809C23A0;
  if (!qword_2809C23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23A0);
  }

  return result;
}

unint64_t sub_275351594()
{
  result = qword_2809C23A8;
  if (!qword_2809C23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23A8);
  }

  return result;
}

unint64_t sub_2753515EC()
{
  result = qword_2809C23B0;
  if (!qword_2809C23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23B0);
  }

  return result;
}

unint64_t sub_275351644()
{
  result = qword_2809C23B8;
  if (!qword_2809C23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23B8);
  }

  return result;
}

unint64_t sub_27535169C()
{
  result = qword_2809C23C0;
  if (!qword_2809C23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23C0);
  }

  return result;
}

unint64_t sub_2753516F4()
{
  result = qword_2809C23C8;
  if (!qword_2809C23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23C8);
  }

  return result;
}

unint64_t sub_27535174C()
{
  result = qword_2809C23D0;
  if (!qword_2809C23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23D0);
  }

  return result;
}

unint64_t sub_2753517A4()
{
  result = qword_2809C23D8;
  if (!qword_2809C23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23D8);
  }

  return result;
}

unint64_t sub_2753517FC()
{
  result = qword_2809C23E0;
  if (!qword_2809C23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23E0);
  }

  return result;
}

unint64_t sub_275351854()
{
  result = qword_2809C23E8;
  if (!qword_2809C23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23E8);
  }

  return result;
}

unint64_t sub_2753518AC()
{
  result = qword_2809C23F0;
  if (!qword_2809C23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23F0);
  }

  return result;
}

unint64_t sub_275351904()
{
  result = qword_2809C23F8;
  if (!qword_2809C23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C23F8);
  }

  return result;
}

unint64_t sub_27535195C()
{
  result = qword_2809C2400;
  if (!qword_2809C2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2400);
  }

  return result;
}

unint64_t sub_2753519B4()
{
  result = qword_2809C2408;
  if (!qword_2809C2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2408);
  }

  return result;
}

unint64_t sub_275351A0C()
{
  result = qword_2809C2410;
  if (!qword_2809C2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2410);
  }

  return result;
}

unint64_t sub_275351A64()
{
  result = qword_2809C2418;
  if (!qword_2809C2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2418);
  }

  return result;
}

unint64_t sub_275351ABC()
{
  result = qword_2809C2420;
  if (!qword_2809C2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2420);
  }

  return result;
}

unint64_t sub_275351B14()
{
  result = qword_2809C2428;
  if (!qword_2809C2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2428);
  }

  return result;
}

unint64_t sub_275351B6C()
{
  result = qword_2809C2430;
  if (!qword_2809C2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2430);
  }

  return result;
}

unint64_t sub_275351BC4()
{
  result = qword_2809C2438;
  if (!qword_2809C2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2438);
  }

  return result;
}

unint64_t sub_275351C1C()
{
  result = qword_2809C2440;
  if (!qword_2809C2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2440);
  }

  return result;
}

unint64_t sub_275351C74()
{
  result = qword_2809C2448;
  if (!qword_2809C2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2448);
  }

  return result;
}

unint64_t sub_275351CCC()
{
  result = qword_2809C2450;
  if (!qword_2809C2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2450);
  }

  return result;
}

unint64_t sub_275351D24()
{
  result = qword_2809C2458;
  if (!qword_2809C2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2458);
  }

  return result;
}

unint64_t sub_275351D7C()
{
  result = qword_2809C2460;
  if (!qword_2809C2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2460);
  }

  return result;
}

unint64_t sub_275351DD4()
{
  result = qword_2809C2468;
  if (!qword_2809C2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2468);
  }

  return result;
}

unint64_t sub_275351E2C()
{
  result = qword_2809C2470;
  if (!qword_2809C2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2470);
  }

  return result;
}

unint64_t sub_275351E84()
{
  result = qword_2809C2478;
  if (!qword_2809C2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2478);
  }

  return result;
}

unint64_t sub_275351EDC()
{
  result = qword_2809C2480;
  if (!qword_2809C2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2480);
  }

  return result;
}

unint64_t sub_275351F34()
{
  result = qword_2809C2488;
  if (!qword_2809C2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2488);
  }

  return result;
}

unint64_t sub_275351F8C()
{
  result = qword_2809C2490;
  if (!qword_2809C2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2490);
  }

  return result;
}

unint64_t sub_275351FE4()
{
  result = qword_2809C2498;
  if (!qword_2809C2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2498);
  }

  return result;
}

unint64_t sub_27535203C()
{
  result = qword_2809C24A0;
  if (!qword_2809C24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24A0);
  }

  return result;
}

unint64_t sub_275352094()
{
  result = qword_2809C24A8;
  if (!qword_2809C24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24A8);
  }

  return result;
}

unint64_t sub_2753520EC()
{
  result = qword_2809C24B0;
  if (!qword_2809C24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24B0);
  }

  return result;
}

unint64_t sub_275352144()
{
  result = qword_2809C24B8;
  if (!qword_2809C24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24B8);
  }

  return result;
}

unint64_t sub_27535219C()
{
  result = qword_2809C24C0;
  if (!qword_2809C24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24C0);
  }

  return result;
}

unint64_t sub_2753521F4()
{
  result = qword_2809C24C8;
  if (!qword_2809C24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24C8);
  }

  return result;
}

unint64_t sub_27535224C()
{
  result = qword_2809C24D0;
  if (!qword_2809C24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24D0);
  }

  return result;
}

unint64_t sub_2753522A4()
{
  result = qword_2809C24D8;
  if (!qword_2809C24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24D8);
  }

  return result;
}

unint64_t sub_2753522FC()
{
  result = qword_2809C24E0;
  if (!qword_2809C24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24E0);
  }

  return result;
}

unint64_t sub_275352354()
{
  result = qword_2809C24E8;
  if (!qword_2809C24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24E8);
  }

  return result;
}

unint64_t sub_2753523AC()
{
  result = qword_2809C24F0;
  if (!qword_2809C24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24F0);
  }

  return result;
}

unint64_t sub_275352404()
{
  result = qword_2809C24F8;
  if (!qword_2809C24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C24F8);
  }

  return result;
}

unint64_t sub_27535245C()
{
  result = qword_2809C2500;
  if (!qword_2809C2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2500);
  }

  return result;
}

unint64_t sub_2753524B4()
{
  result = qword_2809C2508;
  if (!qword_2809C2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2508);
  }

  return result;
}

unint64_t sub_27535250C()
{
  result = qword_2809C2510;
  if (!qword_2809C2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2510);
  }

  return result;
}

unint64_t sub_275352564()
{
  result = qword_2809C2518;
  if (!qword_2809C2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2518);
  }

  return result;
}

unint64_t sub_2753525BC()
{
  result = qword_2809C2520;
  if (!qword_2809C2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2520);
  }

  return result;
}

unint64_t sub_275352614()
{
  result = qword_2809C2528;
  if (!qword_2809C2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2528);
  }

  return result;
}

unint64_t sub_27535266C()
{
  result = qword_2809C2530;
  if (!qword_2809C2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2530);
  }

  return result;
}

unint64_t sub_2753526C4()
{
  result = qword_2809C2538;
  if (!qword_2809C2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2538);
  }

  return result;
}

unint64_t sub_27535271C()
{
  result = qword_2809C2540;
  if (!qword_2809C2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2540);
  }

  return result;
}

unint64_t sub_275352774()
{
  result = qword_2809C2548;
  if (!qword_2809C2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2548);
  }

  return result;
}

unint64_t sub_2753527CC()
{
  result = qword_2809C2550;
  if (!qword_2809C2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2550);
  }

  return result;
}

unint64_t sub_275352824()
{
  result = qword_2809C2558;
  if (!qword_2809C2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2558);
  }

  return result;
}

unint64_t sub_27535287C()
{
  result = qword_2809C2560;
  if (!qword_2809C2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2560);
  }

  return result;
}

unint64_t sub_2753528D4()
{
  result = qword_2809C2568;
  if (!qword_2809C2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2568);
  }

  return result;
}

unint64_t sub_27535292C()
{
  result = qword_2809C2570;
  if (!qword_2809C2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2570);
  }

  return result;
}

unint64_t sub_275352984()
{
  result = qword_2809C2578;
  if (!qword_2809C2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2578);
  }

  return result;
}

unint64_t sub_2753529DC()
{
  result = qword_2809C2580;
  if (!qword_2809C2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2580);
  }

  return result;
}

unint64_t sub_275352A34()
{
  result = qword_2809C2588;
  if (!qword_2809C2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2588);
  }

  return result;
}

unint64_t sub_275352A8C()
{
  result = qword_2809C2590;
  if (!qword_2809C2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2590);
  }

  return result;
}

unint64_t sub_275352AE4()
{
  result = qword_2809C2598;
  if (!qword_2809C2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2598);
  }

  return result;
}

unint64_t sub_275352B3C()
{
  result = qword_2809C25A0;
  if (!qword_2809C25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25A0);
  }

  return result;
}

unint64_t sub_275352B94()
{
  result = qword_2809C25A8;
  if (!qword_2809C25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25A8);
  }

  return result;
}

unint64_t sub_275352BEC()
{
  result = qword_2809C25B0;
  if (!qword_2809C25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25B0);
  }

  return result;
}

unint64_t sub_275352C44()
{
  result = qword_2809C25B8;
  if (!qword_2809C25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25B8);
  }

  return result;
}

unint64_t sub_275352C9C()
{
  result = qword_2809C25C0;
  if (!qword_2809C25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25C0);
  }

  return result;
}

unint64_t sub_275352CF4()
{
  result = qword_2809C25C8;
  if (!qword_2809C25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25C8);
  }

  return result;
}

unint64_t sub_275352D4C()
{
  result = qword_2809C25D0;
  if (!qword_2809C25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25D0);
  }

  return result;
}

unint64_t sub_275352DA4()
{
  result = qword_2809C25D8;
  if (!qword_2809C25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25D8);
  }

  return result;
}

unint64_t sub_275352DFC()
{
  result = qword_2809C25E0;
  if (!qword_2809C25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25E0);
  }

  return result;
}

unint64_t sub_275352E54()
{
  result = qword_2809C25E8;
  if (!qword_2809C25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25E8);
  }

  return result;
}

unint64_t sub_275352EA8()
{
  result = qword_2809C25F0;
  if (!qword_2809C25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25F0);
  }

  return result;
}

unint64_t sub_275352EFC()
{
  result = qword_2809C25F8;
  if (!qword_2809C25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C25F8);
  }

  return result;
}

void OUTLINED_FUNCTION_1_5()
{
  v0[27] = 0;
  v0[28] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[15] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = 0;
}

void OUTLINED_FUNCTION_4_5()
{
  v0[16] = 0;
  v0[17] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[23] = 0;
  v0[18] = 0;
}

void OUTLINED_FUNCTION_5_3()
{
  v0[27] = 0;
  v0[28] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[15] = 0;
  v0[23] = 0;
  v0[24] = 0;
}

unint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  return sub_27534B700(a1);
}

unint64_t OUTLINED_FUNCTION_10_4(uint64_t a1)
{

  return sub_27534B700(a1);
}

void OUTLINED_FUNCTION_11_3()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[9] = 0;
  v0[10] = 0;
  v0[13] = 0;
  v0[20] = 0;
  v0[21] = 0;
}

void OUTLINED_FUNCTION_12_4()
{
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 212) = 0;
  *(v0 + 584) = 0;
  *(v0 + 600) = 0;
  *(v0 + 592) = 0;
  *(v0 + 168) = 0;
  *(v0 + 216) = 0;
}

void OUTLINED_FUNCTION_13_4()
{
  *(v0 + 520) = 0;
  *(v0 + 572) = 0;
  *(v0 + 560) = 0;
  *(v0 + 552) = 0;
  *(v0 + 544) = 0;
  *(v0 + 80) = 0;
  *(v0 + 536) = 0;
  *(v0 + 608) = 0;
  *(v0 + 528) = 0;
}

void OUTLINED_FUNCTION_14_3()
{
  v0[26] = 0;
  v0[27] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
}

void OUTLINED_FUNCTION_15_3()
{
  v0[16] = 0;
  v0[17] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[21] = 0;
  v0[22] = 0;
}

void OUTLINED_FUNCTION_16_2()
{
  v0[26] = 0;
  v0[27] = 0;
  v0[28] = 0;
  v0[29] = 0;
}

void OUTLINED_FUNCTION_17_3()
{
  v0[11] = 0;
  v0[12] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
}

double OUTLINED_FUNCTION_22_1(__n128 a1)
{
  *(v1 + 144) = a1;
  result = 0.0;
  *(v1 + 176) = 0u;
  *(v1 + 576) = 1;
  return result;
}

void OUTLINED_FUNCTION_26_2()
{
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[41] = 0;
  v0[42] = 0;
  v0[33] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[38] = 0;
}

void OUTLINED_FUNCTION_27_2()
{
  v0[26] = 0;
  v0[27] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[33] = 0;
  v0[34] = 0;
  v0[35] = 0;
}

void OUTLINED_FUNCTION_31_2()
{
  v0[11] = 0;
  v0[12] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1)
{

  return sub_2753B75B8();
}

void OUTLINED_FUNCTION_35_1()
{
  v0[73] = 0;
  v0[75] = 0;
  v0[74] = 0;
  v0[21] = 0;
}

void OUTLINED_FUNCTION_36_1()
{
  *(v0 + 92) = 0;
  *(v0 + 512) = 0;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  *(v0 + 368) = 0;
  *(v0 + 376) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 428) = 0;
}

void OUTLINED_FUNCTION_39_2()
{
  v0[26] = 2;
  v0[27] = 2;
  v0[23] = 2;
  v0[24] = 2;
  v0[25] = 2;
  v0[74] = 2;
}

void OUTLINED_FUNCTION_40_2()
{
  v0[28] = 2;
  v0[29] = 2;
  v0[25] = 2;
  v0[26] = 2;
  v0[27] = 2;
  v0[80] = 2;
}

uint64_t OUTLINED_FUNCTION_45_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return sub_27534C054(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_46_2(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_51_1()
{
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[41] = 0;
  v0[42] = 0;
  v0[33] = 0;
  v0[34] = 0;
}

void OUTLINED_FUNCTION_52_2()
{
  v0[26] = 0;
  v0[27] = 0;
  v0[28] = 0;
  v0[29] = 0;
  v0[38] = 0;
  v0[39] = 0;
  v0[30] = 0;
  v0[31] = 0;
}

void OUTLINED_FUNCTION_53_2()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
}

uint64_t OUTLINED_FUNCTION_61_0@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return sub_2753B7558();
}

uint64_t OUTLINED_FUNCTION_83_2(uint64_t a1)
{

  return sub_2753B7558();
}

void OUTLINED_FUNCTION_86_0()
{
  v0[44] = 2;
  v0[45] = 2;
  v0[46] = 2;
  v0[47] = 2;
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_117_2()
{
  v1 = *(v0 + 288);
  *(v0 + 1840) = *(v0 + 280);
  *(v0 + 1848) = v1;
  *(v0 + 1856) = *(v0 + 304);
  *(v0 + 1864) = *(v0 + 328);
  *(v0 + 1872) = *(v0 + 352);
  *(v0 + 1880) = *(v0 + 376);
  *(v0 + 1888) = *(v0 + 400);
  *(v0 + 1896) = *(v0 + 428);
  *(v0 + 1897) = *(v0 + 164);
  *(v0 + 1904) = *(v0 + 272);
  *(v0 + 1912) = *(v0 + 296);
  *(v0 + 1920) = *(v0 + 312);
  *(v0 + 1928) = *(v0 + 336);
  *(v0 + 1936) = *(v0 + 368);
  *(v0 + 1944) = *(v0 + 392);
}

void OUTLINED_FUNCTION_136_2(int a1@<W8>)
{
  *(v1 + 2724) = a1;
  v2 = *(v1 + 240);
  *(v1 + 2728) = *(v1 + 248);
  *(v1 + 2736) = v2;
  *(v1 + 2744) = *(v1 + 232);
  *(v1 + 2752) = *(v1 + 320);
  LODWORD(v2) = *(v1 + 108);
  *(v1 + 2753) = *(v1 + 112);
  *(v1 + 2754) = v2;
  LODWORD(v2) = *(v1 + 100);
  *(v1 + 2755) = *(v1 + 104);
  *(v1 + 2756) = v2;
  *(v1 + 2757) = *(v1 + 116);
  *(v1 + 2760) = *(v1 + 168);
  *(v1 + 2768) = *(v1 + 200);
  *(v1 + 2776) = *(v1 + 176);
}

void OUTLINED_FUNCTION_137_2(int a1@<W8>)
{
  *(v1 + 2084) = a1;
  v2 = *(v1 + 216);
  *(v1 + 2088) = *(v1 + 224);
  *(v1 + 2096) = v2;
  *(v1 + 2104) = *(v1 + 208);
  *(v1 + 2112) = *(v1 + 296);
  LODWORD(v2) = *(v1 + 100);
  *(v1 + 2113) = *(v1 + 104);
  *(v1 + 2114) = v2;
  LODWORD(v2) = *(v1 + 92);
  *(v1 + 2115) = *(v1 + 96);
  *(v1 + 2116) = v2;
  *(v1 + 2117) = *(v1 + 108);
  *(v1 + 2120) = *(v1 + 144);
  *(v1 + 2128) = *(v1 + 184);
  *(v1 + 2136) = *(v1 + 160);
}

void OUTLINED_FUNCTION_145_1()
{
  v2 = *(v1 + 316);
  *(v0 + 12) = *(v1 + 315);
  *(v0 + 16) = v2;
  *(v0 + 20) = *(v1 + 317);
  v3 = *(v1 + 328);
  *(v0 + 24) = *(v1 + 320);
  *(v0 + 32) = v3;
  *(v0 + 40) = *(v1 + 336);
  *(v0 + 52) = *(v1 + 344);
  v4 = *(v1 + 360);
  *(v0 + 56) = *(v1 + 352);
  *(v0 + 64) = v4;
  *(v0 + 72) = *(v1 + 368);
  *(v0 + 84) = *(v1 + 376);
  v5 = *(v1 + 392);
  *(v0 + 88) = *(v1 + 384);
  *(v0 + 96) = v5;
}

uint64_t OUTLINED_FUNCTION_146_1(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_147_1(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_158_1(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_167_0()
{
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[13] = 0;
}

void OUTLINED_FUNCTION_169_0()
{
  v0[9] = 0;
  v0[10] = 0;
  v0[14] = 0;
  v0[11] = 0;
  v0[12] = 0;
}

void OUTLINED_FUNCTION_180_0()
{
  *(v0 + 1776) = *(v0 + 320);
  *(v0 + 1784) = *(v0 + 344);
  *(v0 + 1792) = *(v0 + 360);
  *(v0 + 1800) = *(v0 + 384);
  v1 = *(v0 + 416);
  *(v0 + 1808) = *(v0 + 408);
  *(v0 + 1816) = v1;
  *(v0 + 1824) = *(v0 + 432);
  *(v0 + 1832) = *(v0 + 452);
}

void OUTLINED_FUNCTION_185_0()
{
  v0[330] = v0[38];
  v1 = v0[37];
  v0[331] = v0[36];
  v0[332] = v1;
  v2 = v0[35];
  v0[333] = v0[34];
  v0[334] = v2;
  v3 = v0[33];
  v0[335] = v0[32];
  v0[336] = v3;
  v0[337] = v0[42];
}

void OUTLINED_FUNCTION_186_0()
{
  v0[250] = v0[35];
  v1 = v0[34];
  v0[251] = v0[33];
  v0[252] = v1;
  v2 = v0[32];
  v0[253] = v0[31];
  v0[254] = v2;
  v3 = v0[30];
  v0[255] = v0[29];
  v0[256] = v3;
  v0[257] = v0[39];
}

void OUTLINED_FUNCTION_189_0()
{
  *(v0 + 1712) = *(v0 + 440);
  v1 = *(v0 + 464);
  *(v0 + 1720) = *(v0 + 456);
  *(v0 + 1728) = v1;
  v2 = *(v0 + 480);
  *(v0 + 1736) = *(v0 + 472);
  *(v0 + 1744) = v2;
  v3 = *(v0 + 496);
  *(v0 + 1752) = *(v0 + 488);
  *(v0 + 1760) = v3;
  *(v0 + 1768) = *(v0 + 508);
}

void OUTLINED_FUNCTION_198_0()
{
  v0[264] = v0[17];
  v0[269] = v0[21];
  v0[270] = v0[74];
  v0[271] = v0[75];
  v0[272] = v0[72];
  v0[273] = v0[73];
}

void OUTLINED_FUNCTION_217_0(_DWORD *a1@<X8>)
{
  *a1 = v2[46];
  *(v1 + 281) = v2[44];
  *(v1 + 345) = v2[42];
  *(v1 + 377) = v2[40];
}

void OUTLINED_FUNCTION_224_0(int a1@<W8>)
{
  *(v1 + 186) = a1;
  *(v1 + 250) = *(v3 - 124);
  v2[855] = *(v3 - 102);
  v2[887] = *(v3 - 108);
  v2[919] = *(v3 - 114);
  v2[951] = *(v3 - 120);
}

void OUTLINED_FUNCTION_231_0()
{
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 452) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 384) = 0;
  *(v0 + 344) = 0;
  *(v0 + 320) = 0;
  *(v0 + 508) = 0;
  *(v0 + 488) = 0;
  *(v0 + 496) = 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
}

void OUTLINED_FUNCTION_247()
{
  v0[32] = 0;
  v0[33] = 0;
  v0[34] = 0;
  v0[35] = 0;
}

void OUTLINED_FUNCTION_250(int a1@<W8>)
{
  *(v1 + 1626) = a1;
  *(v1 + 1630) = *(v1 + 2046);
  v2 = *(v1 + 112);
  *(v1 + 1632) = *(v1 + 104);
  *(v1 + 1640) = v2;
  v3 = *(v1 + 96);
  *(v1 + 1648) = *(v1 + 88);
  *(v1 + 1656) = v3;
}

void OUTLINED_FUNCTION_261()
{
  v0[51] = 1;
  v0[52] = 1;
  v0[41] = 1;
}

void OUTLINED_FUNCTION_285()
{
  v1 = *(v0 + 184);
  *(v0 + 1738) = *(v0 + 188);
  *(v0 + 1739) = v1;
  v2 = *(v0 + 176);
  *(v0 + 1740) = *(v0 + 180);
  *(v0 + 1741) = v2;
  v3 = *(v0 + 168);
  *(v0 + 1744) = *(v0 + 160);
  *(v0 + 1752) = v3;
}

void *OUTLINED_FUNCTION_309()
{

  return memcpy((v1 + 32), v0, 0x81uLL);
}

void OUTLINED_FUNCTION_311(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
}

uint64_t OUTLINED_FUNCTION_312(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2753B7638();
}

void *OUTLINED_FUNCTION_313()
{

  return memcpy(v0, (v1 + 32), 0x81uLL);
}

void OUTLINED_FUNCTION_317(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{

  sub_27534DC8C(0, a2, a3, v5, a5);
}

void OUTLINED_FUNCTION_320(int a1@<W8>)
{
  *(v1 + 2988) = a1;
  v2 = *(v1 + 128);
  *(v1 + 2992) = *(v1 + 120);
  *(v1 + 3000) = v2;
  v3 = *(v1 + 136);
  *(v1 + 3008) = *(v1 + 144);
  *(v1 + 3016) = v3;
}

void OUTLINED_FUNCTION_321(int a1@<W8>)
{
  *(v1 + 2788) = a1;
  *(v1 + 2792) = *(v1 + 160);
  *(v1 + 2800) = *(v1 + 208);
  *(v1 + 2808) = *(v1 + 192);
}

void OUTLINED_FUNCTION_324(int a1@<W8>)
{
  *(v1 + 2148) = a1;
  *(v1 + 2152) = *(v1 + 152);
  *(v1 + 2160) = *(v1 + 192);
  *(v1 + 2168) = *(v1 + 176);
}

void OUTLINED_FUNCTION_327()
{
  v2 = v1[70];
  v0[13] = v1[69];
  v0[14] = v2;
  v3 = v1[72];
  v0[15] = v1[71];
  v0[16] = v3;
}

void *OUTLINED_FUNCTION_328@<X0>(int a1@<W8>)
{
  *(v1 + 2820) = a1;
  *(v1 + 2824) = *(v1 + 184);
  *(v1 + 2832) = *(v1 + 224);

  return memcpy((v2 + 400), (v1 + 3376), 0x91uLL);
}

void *OUTLINED_FUNCTION_329@<X0>(int a1@<W8>)
{
  *(v1 + 2180) = a1;
  *(v1 + 2184) = *(v1 + 168);
  *(v1 + 2192) = *(v1 + 200);

  return memcpy((v2 + 400), (v1 + 2424), 0x91uLL);
}

void *OUTLINED_FUNCTION_331(void *a1)
{

  return memcpy(a1, (v1 - 240), 0x91uLL);
}

void OUTLINED_FUNCTION_332(int a1@<W8>)
{
  *(v1 + 1780) = a1;
  *(v1 + 1784) = *(v1 + 136);
  v2 = *(v1 + 128);
  *(v1 + 1792) = *(v1 + 120);
  *(v1 + 1800) = v2;
}

uint64_t OUTLINED_FUNCTION_333(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_335(uint64_t result, char a2)
{
  *(v2 + 376) = result;
  *(v2 + 384) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_337(uint64_t a1)
{

  return sub_2753B75F8();
}

uint64_t OUTLINED_FUNCTION_338(uint64_t result, char a2)
{
  *(v2 + 392) = result;
  *(v2 + 400) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_341()
{
  v1 = v0[19];
  v0[213] = v0[18];
  v0[214] = v1;
  v2 = v0[16];
  v0[215] = v0[17];
  v0[216] = v2;
}

uint64_t OUTLINED_FUNCTION_344(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_348()
{
  v1 = v0[24];
  v0[231] = v0[23];
  v0[232] = v1;
  v2 = v0[22];
  v0[233] = v0[21];
  v0[234] = v2;
}

uint64_t OUTLINED_FUNCTION_351()
{

  return sub_27534C068(0, 0, 1);
}

uint64_t OUTLINED_FUNCTION_353(uint64_t result, char a2)
{
  *(v2 + 576) = result;
  *(v2 + 584) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_358(uint64_t result, char a2)
{
  *(v2 + 368) = result;
  *(v2 + 376) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_359()
{
}

uint64_t OUTLINED_FUNCTION_360(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  return sub_27534B40C(va, &a10, a3, a4);
}

uint64_t OUTLINED_FUNCTION_361(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2753B7638();
}

void *OUTLINED_FUNCTION_362(void *a1)
{

  return memcpy(a1, v1, 0x81uLL);
}

uint64_t OUTLINED_FUNCTION_363(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return sub_27534B40C(va, &a10, a3, a4);
}

void *OUTLINED_FUNCTION_371(void *a1)
{

  return memcpy(a1, v1, 0x91uLL);
}

void *OUTLINED_FUNCTION_375(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1)
{

  return sub_2753B7558();
}

void *OUTLINED_FUNCTION_377(void *a1)
{

  return memcpy(a1, (v1 + 1968), 0x81uLL);
}

uint64_t OUTLINED_FUNCTION_378()
{
}

void OUTLINED_FUNCTION_379()
{
  v2 = *(v1 - 320);
  *(v1 - 128) = v0;
  *(v1 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_402()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);
  v4 = *(v0 - 88);

  return sub_27534C068(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_404()
{
}

uint64_t OUTLINED_FUNCTION_405(uint64_t a1, uint64_t a2)
{

  return sub_2753B7718();
}

void *OUTLINED_FUNCTION_407()
{

  return memcpy((v1 + 32), (v0 + 3560), 0x81uLL);
}

void *OUTLINED_FUNCTION_408()
{

  return memcpy((v1 + 32), (v0 + 2608), 0x81uLL);
}

void *OUTLINED_FUNCTION_425(void *a1)
{

  return memcpy(a1, (v1 + 3232), 0x2F9uLL);
}

uint64_t OUTLINED_FUNCTION_426()
{
  v4 = *(v2 - 72);
  v5 = *(v2 - 112);
  *v5 = v0;
  v5[1] = v1;
  v5[2] = v4;
}

void *OUTLINED_FUNCTION_427()
{

  return memcpy((v1 + 608), (v0 + 3208), 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_431()
{
}

void OUTLINED_FUNCTION_447()
{
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
}

void OUTLINED_FUNCTION_459()
{
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v4;
  v3[3] = v0;
}

uint64_t OUTLINED_FUNCTION_464(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_465(uint64_t a1, uint64_t a2)
{

  return sub_2753B7638();
}

uint64_t OUTLINED_FUNCTION_466(uint64_t a1, uint64_t a2)
{

  return sub_2753B7808();
}

uint64_t OUTLINED_FUNCTION_467()
{
}

void *OUTLINED_FUNCTION_468(void *a1)
{

  return memcpy(a1, (v1 + 1816), 0x91uLL);
}

void *OUTLINED_FUNCTION_469(void *a1)
{

  return memcpy(a1, (v1 + 1808), 0x91uLL);
}

void *OUTLINED_FUNCTION_470(void *a1)
{

  return memcpy(a1, (v1 + 560), 0x81uLL);
}

uint64_t OUTLINED_FUNCTION_471()
{
}

uint64_t OUTLINED_FUNCTION_472()
{
}

void *OUTLINED_FUNCTION_473(void *a1)
{

  return memcpy(a1, (v1 + 1832), 0x91uLL);
}

void *OUTLINED_FUNCTION_474(void *a1)
{

  return memcpy(a1, (v1 + 2008), 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_475()
{
}

void *OUTLINED_FUNCTION_476(void *a1)
{

  return memcpy(a1, (v1 + 2160), 0x81uLL);
}

void *OUTLINED_FUNCTION_477(void *a1)
{

  return memcpy(a1, (v1 + 1896), 0x91uLL);
}

void *OUTLINED_FUNCTION_478(void *a1)
{

  return memcpy(a1, (v1 + 2336), 0x91uLL);
}

void *OUTLINED_FUNCTION_479(void *a1)
{

  return memcpy(a1, (v1 + 2512), 0x81uLL);
}

void *OUTLINED_FUNCTION_480(void *a1)
{

  return memcpy(a1, (v1 + 2072), 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_481()
{
}

void OUTLINED_FUNCTION_482(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{

  sub_27534DC8C(0, a2, a3, v5, a5);
}

void *OUTLINED_FUNCTION_483(void *a1)
{

  return memcpy(a1, (v1 + 2240), 0x81uLL);
}

uint64_t static NanoID.newContentID()()
{
  sub_2753B6668();

  sub_2753B6668();
  v0 = sub_2753B6658();
  v2 = v1;
  v4 = v3;

  return MEMORY[0x2821CC330](v0, v2, v4);
}

unint64_t sub_2753552A0()
{
  result = qword_2809C2600;
  if (!qword_2809C2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2600);
  }

  return result;
}

unint64_t sub_2753552F8()
{
  result = qword_2809C2608;
  if (!qword_2809C2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2608);
  }

  return result;
}

unint64_t sub_275355350()
{
  result = qword_2809C2610;
  if (!qword_2809C2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2610);
  }

  return result;
}

unint64_t sub_2753553A8()
{
  result = qword_2809C2618;
  if (!qword_2809C2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2618);
  }

  return result;
}

uint64_t sub_27535540C@<X0>(uint64_t *a1@<X8>)
{
  result = static NanoID.newContentID()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_275355510()
{
  v0 = sub_2753B6A18();
  __swift_allocate_value_buffer(v0, qword_2809DAC90);
  __swift_project_value_buffer(v0, qword_2809DAC90);
  return sub_2753B69F8();
}

uint64_t sub_2753556D0(uint64_t a1, uint64_t a2)
{
  sub_275355A94(qword_2809C2650, &protocol conformance descriptor for RelationshipKey);
  sub_275355A94(qword_2809C1060, MEMORY[0x277D65118]);
  return sub_2753B6EF8();
}

uint64_t sub_275355764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275355A94(qword_2809C2650, &protocol conformance descriptor for RelationshipKey);
  sub_275355A94(qword_2809C1060, MEMORY[0x277D65118]);
  return sub_2753B6EE8();
}

uint64_t sub_275355810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275355A94(qword_2809C2650, &protocol conformance descriptor for RelationshipKey);
  sub_275355A94(qword_2809C1060, MEMORY[0x277D65118]);
  return sub_2753B6ED8();
}

uint64_t sub_2753558B4(uint64_t a1)
{
  v2 = sub_275355A94(qword_2809C2650, &protocol conformance descriptor for RelationshipKey);

  return MEMORY[0x2821CC280](a1, v2);
}

uint64_t sub_27535591C(uint64_t a1, uint64_t a2)
{
  sub_275355A94(qword_2809C2650, &protocol conformance descriptor for RelationshipKey);
  sub_275355A94(qword_2809C1060, MEMORY[0x277D65118]);
  return sub_2753B6F08();
}

_BYTE *storeEnumTagSinglePayload for MusicContent(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275355A5CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275355A94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2753B6A18();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t MusicContentBehavior.__deallocating_deinit()
{
  MusicContentBehavior.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_275355CB8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t MusicContent.ContentType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_2753B74E8();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t MusicContent.ContentType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x73676E6F73;
      break;
    case 2:
      result = 0x69762D636973756DLL;
      break;
    case 3:
      result = 0x736D75626C61;
      break;
    case 4:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x736E6F6974617473;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275355EC0()
{
  result = qword_2809C26D8;
  if (!qword_2809C26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C26D8);
  }

  return result;
}

uint64_t sub_275355F38@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275355F64()
{
  result = qword_2809C26E0;
  if (!qword_2809C26E0)
  {
    sub_275355FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C26E0);
  }

  return result;
}

void sub_275355FBC()
{
  if (!qword_2809C26E8)
  {
    v0 = sub_2753B70B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C26E8);
    }
  }
}

unint64_t sub_275356020()
{
  result = qword_2809C26F0;
  if (!qword_2809C26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C26F0);
  }

  return result;
}

unint64_t sub_275356078()
{
  result = qword_2809C26F8;
  if (!qword_2809C26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C26F8);
  }

  return result;
}

unint64_t sub_2753560D0()
{
  result = qword_2809C2700;
  if (!qword_2809C2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2700);
  }

  return result;
}

unint64_t sub_275356128()
{
  result = qword_2809C2708;
  if (!qword_2809C2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2708);
  }

  return result;
}

unint64_t sub_275356240()
{
  result = qword_2809C2710;
  if (!qword_2809C2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2710);
  }

  return result;
}

unint64_t sub_275356298()
{
  result = qword_2809C2718;
  if (!qword_2809C2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2718);
  }

  return result;
}

uint64_t sub_2753562EC(uint64_t a1, uint64_t a2)
{
  sub_2753565E4();
  sub_275356638();
  return sub_2753B6EF8();
}

uint64_t sub_275356348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2753565E4();
  sub_275356638();
  return sub_2753B6EE8();
}

uint64_t sub_2753563BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2753565E4();
  sub_275356638();
  return sub_2753B6ED8();
}

uint64_t sub_275356428(uint64_t a1)
{
  v2 = sub_2753565E4();

  return MEMORY[0x2821CC280](a1, v2);
}

uint64_t sub_275356474(uint64_t a1, uint64_t a2)
{
  sub_2753565E4();
  sub_275356638();
  return sub_2753B6F08();
}

_BYTE *_s11ContentTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753565ACLL);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2753565E4()
{
  result = qword_2809C2720;
  if (!qword_2809C2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2720);
  }

  return result;
}

unint64_t sub_275356638()
{
  result = qword_2809C2728;
  if (!qword_2809C2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2728);
  }

  return result;
}

uint64_t MusicContent.Environment.reachability(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D65198];
  sub_2753B6AB8();
  OUTLINED_FUNCTION_9();
  (*(v3 + 104))(a1, v2);
  v4 = *MEMORY[0x277D651A0];
  sub_2753B6AC8();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 104);

  return v7(a1, v4, v5);
}

uint64_t sub_275356740(uint64_t a1, char a2)
{
  v3 = v2;
  sub_275359D88(0, &qword_2809C1820, type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_275359E5C();
    v13 = sub_2753842E4(a2 & 1);
    if (v14)
    {
      v15 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *v2;
      sub_275329F4C(0);
      sub_2753B7478();
      v16 = v21;
      sub_27532A070(*(v21 + 56) + *(v10 + 72) * v15, v8);
      sub_275329FB8();
      sub_2753B7488();
      v17 = 0;
      *v3 = v16;
    }

    else
    {
      v17 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v17, 1, v9);
    return sub_275359E5C();
  }

  else
  {
    sub_27532A070(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_2753289BC(v12, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
  }

  return result;
}

void MusicContent.Environment.bag.getter(uint64_t *a2@<X8>)
{
  MusicContent.Environment.selectedAccount.getter(&v7);
  if (*(&v7 + 1))
  {
    v4 = v10;
    v3 = v11;
    v6 = v8;
    v5 = v9;
    sub_275316838(v8, v9, v10);
    OUTLINED_FUNCTION_1_6();
    sub_275359E5C();
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v4;
  a2[3] = v3;
}

void MusicContent.Environment.selectedAccount.getter(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  if (v3 && (v4 = *v1, v5 = v1[1], v6 = *(*v1 + 16), v7 = (v4 + 32), v6))
  {
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(__src, v7, sizeof(__src));
      v8 = __dst[0] == v5 && v3 == __dst[1];
      if (v8 || (sub_2753B7718() & 1) != 0)
      {
        break;
      }

      v7 += 72;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    memcpy(a1, __src, 0x48uLL);
    sub_275356B38(__dst, v9);
  }

  else
  {
LABEL_9:
    *(a1 + 8) = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }
}

uint64_t sub_275356B8C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275356BAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275356B8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_275356BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275356BA4(*v1);
  *a1 = result;
  return result;
}

uint64_t MusicContent.Environment.init(userIdentity:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_275356C48, 0, 0);
}

uint64_t sub_275356C48()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  if (!v1)
  {

    v12 = 0;
    v10 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = *(v0 + 160);
    *v13 = v10;
    v13[1] = v12;
    OUTLINED_FUNCTION_5_4();

    return v14();
  }

  v3 = v1;
  v4 = sub_275358B9C(v3);
  *(v0 + 184) = v5;
  *(v0 + 192) = v4;
  *(v0 + 144) = v2;
  if (v2)
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE90000000000003ELL;
    }

    if (v5)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0x6E776F6E6B6E753CLL;
    }

    OUTLINED_FUNCTION_2_7(v4, &qword_2809C2748);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2753BE420;
    v11 = v7;
    sub_275357268(v9, v8, v6, (v0 + 144), (v10 + 32));

    v12 = *(v0 + 192);
    if (!*(v0 + 184))
    {
      v12 = 0x6E776F6E6B6E753CLL;
    }

    goto LABEL_13;
  }

  sub_2753277B8(0, &qword_2809C2730, 0x277D7FC30);
  v16 = sub_27531F624(v3, [objc_allocWithZone(MEMORY[0x277D7FA48]) initWithSystemApplicationType_]);
  *(v0 + 200) = v16;
  v17 = [objc_opt_self() sharedBagProvider];
  *(v0 + 208) = v17;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_275356EE4;
  v18 = swift_continuation_init();
  sub_275358C00(0);
  *(v0 + 136) = v19;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2753571D8;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v18;
  [v17 getBagForRequestContext:v16 withCompletionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_275356EE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {

    v2 = sub_275357128;
  }

  else
  {
    v2 = sub_27535700C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27535700C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 152);
  *(v0 + 144) = v2;

  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  if (v4)
  {
    v7 = *(v0 + 184);
  }

  else
  {
    v7 = 0xE90000000000003ELL;
  }

  if (v4)
  {
    v8 = *(v0 + 192);
  }

  else
  {
    v8 = 0x6E776F6E6B6E753CLL;
  }

  OUTLINED_FUNCTION_2_7(v3, &qword_2809C2748);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2753BE420;
  v10 = v6;
  sub_275357268(v8, v7, v5, (v0 + 144), (v9 + 32));

  v11 = *(v0 + 192);
  if (!*(v0 + 184))
  {
    v11 = 0x6E776F6E6B6E753CLL;
  }

  v12 = *(v0 + 160);
  *v12 = v9;
  v12[1] = v11;
  OUTLINED_FUNCTION_5_4();

  return v13();
}

uint64_t sub_275357128(uint64_t a1)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);
  v4 = *(v1 + 168);
  swift_willThrow();

  *(v1 + 80) = MEMORY[0x277D84F90];
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 105) = 16843009;
  sub_275314888(v1 + 80);
  v5 = *(v1 + 8);

  return v5();
}

uint64_t *sub_2753571D8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_27532A6F4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_27532A6F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_275357268(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, id *a4@<X3>, void *a5@<X8>)
{

  sub_275316888(0, 0, 0, 0);
  v10 = *a4;
  if (!*a4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v11 = *MEMORY[0x277D7F9D0];
  v12 = a3;
  v13 = [v10 stringForBagKey_];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2753B6D88();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  if (!*a4)
  {
    goto LABEL_11;
  }

  v18 = [*a4 dictionaryForBagKey_];
  if (!v18 || (v19 = v18, v20 = sub_2753B6C78(), v19, v21 = sub_275357454(v20), , !v21))
  {
    v21 = sub_2753B6C98();
  }

  v22 = sub_2753576FC(a4);
  sub_275316888(0, 0, 0, 0);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = 0;
  a5[3] = v12;
  a5[4] = 0;
  a5[5] = v15;
  a5[6] = v17;
  a5[7] = v21;
  a5[8] = v22;
}

double MusicContent.Environment.Account.init(id:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  sub_275316888(0, 0, 0, 0);
  result = 0.0;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  return result;
}

unint64_t sub_275357454(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_275359C0C();
    v2 = sub_2753B74C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v21 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_275359C68(*(v1 + 48) + 40 * v11, __src);
      sub_275316DF4(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_275359C68(__dst, v24);
      if (!swift_dynamicCast())
      {
        sub_275359CC4(__dst);

        goto LABEL_23;
      }

      sub_275316DF4(&__dst[40], v24);
      sub_275359CC4(__dst);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_2753842B8(v22, v23);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        *v14 = v22;
        v14[1] = v23;

        v15 = (v2[7] + 16 * v12);
        *v15 = v22;
        v15[1] = v23;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v16 = (v2[6] + 16 * result);
        *v16 = v22;
        v16[1] = v23;
        v17 = (v2[7] + 16 * result);
        *v17 = v22;
        v17[1] = v23;
        v18 = v2[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_27;
        }

        v2[2] = v20;
      }

      v9 = v10;
      v1 = v21;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_2753576FC(void **a1)
{
  sub_275359D88(0, &qword_2809C1820, type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v61 - v3;
  v5 = sub_2753B61F8();
  v70 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v67 = &v61 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v61 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v61 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v68 = &v61 - v20;
  sub_275359D88(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v61 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v61 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  v33 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0);
  sub_275329FB8();
  v66 = v33;
  v34 = sub_2753B6C98();
  v71 = a1;
  v72 = v34;
  result = *a1;
  if (!*a1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v36 = [result urlForBagKey_];
  if (v36)
  {
    v37 = v36;
    sub_2753B61B8();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  __swift_storeEnumTagSinglePayload(v30, v38, 1, v5);
  sub_275359DDC(v30, v32);
  result = *v71;
  if (!*v71)
  {
    goto LABEL_23;
  }

  v39 = [result enhancedAudioConfiguration];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 keyServerURL];
    if (v41)
    {
      v42 = v41;
      v62 = v8;
      v63 = v4;
      sub_2753B61B8();

      v43 = *(v70 + 32);
      v43(v68, v19, v5);
      v44 = [v40 certificateURL];
      if (v44)
      {
        v45 = v44;
        v46 = v65;
        sub_2753B61B8();

        v43(v27, v46, v5);
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
      }

      else
      {
        sub_275359EB0(v32, v27);
      }

      if (__swift_getEnumTagSinglePayload(v27, 1, v5) == 1)
      {
        (*(v70 + 8))(v68, v5);

        sub_275359E5C();
        v4 = v63;
      }

      else
      {
        v47 = v64;
        v43(v64, v27, v5);
        v48 = v70;
        v49 = *(v70 + 16);
        v4 = v63;
        v49(v63, v68, v5);
        v50 = v66;
        v49(&v4[*(v66 + 20)], v47, v5);
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v50);
        sub_275356740(v4, 0);

        v51 = *(v48 + 8);
        v51(v47, v5);
        v51(v68, v5);
      }

      v8 = v62;
    }

    else
    {
    }
  }

  result = *v71;
  if (!*v71)
  {
    goto LABEL_24;
  }

  v52 = [result urlForBagKey_];
  v53 = v69;
  v54 = v70;
  if (v52)
  {
    v55 = v52;
    v56 = v67;
    sub_2753B61B8();

    v57 = *(v54 + 32);
    v57(v53, v56, v5);
    sub_275359EB0(v32, v24);
    if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
    {
      (*(v54 + 8))(v53, v5);
      sub_275359E5C();
    }

    else
    {
      v57(v8, v24, v5);
      v58 = *(v54 + 16);
      v58(v4, v53, v5);
      v59 = v66;
      v58(&v4[*(v66 + 20)], v8, v5);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v59);
      sub_275356740(v4, 1);
      v60 = *(v54 + 8);
      v60(v8, v5);
      v60(v53, v5);
    }
  }

  sub_275359E5C();
  return v72;
}

uint64_t MusicContent.Environment.Account.Bag.KeyServerInfo.init(keyServerURL:keyServerCertificateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v10 = *(v7 + 32);
  v10(a3, a1, v6);
  v8 = a3 + *(type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0) + 20);

  return (v10)(v8, a2, v6);
}

void MusicContent.Environment.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 25) = 16843009;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v1;
}

unint64_t MusicContent.Environment.Endpoint.Error.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_275357F28@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.Environment.Endpoint.Error.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MusicContent.Environment.Endpoint.PlaybackEndpoint.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

uint64_t sub_275358018()
{
  sub_2753B7798();
  MEMORY[0x277C76A80](0);
  return sub_2753B77D8();
}

uint64_t static MusicContent.Environment.Endpoint.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 >= 0x40)
    {
      return OUTLINED_FUNCTION_0();
    }

    return OUTLINED_FUNCTION_4();
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }

    return OUTLINED_FUNCTION_0();
  }

  if ((v3 & 0xC0) == 0x80)
  {
    return OUTLINED_FUNCTION_4();
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t MusicContent.Environment.Endpoint.hash(into:)()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x277C76A80](v3);
    v2 = 0;
    return MEMORY[0x277C76A80](v2);
  }

  if (v1 >> 6 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  v2 = v1 & 0x3F;
  MEMORY[0x277C76A80](1);
  return MEMORY[0x277C76A80](v2);
}

uint64_t MusicContent.Environment.Endpoint.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  if (!(v1 >> 6))
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x277C76A80](v3);
    v2 = 0;
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  v2 = v1 & 0x3F;
  MEMORY[0x277C76A80](1);
LABEL_7:
  MEMORY[0x277C76A80](v2);
  return sub_2753B77D8();
}

uint64_t sub_2753581D0()
{
  v1 = *v0;
  sub_2753B7798();
  if (!(v1 >> 6))
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x277C76A80](v3);
    v2 = 0;
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  v2 = v1 & 0x3F;
  MEMORY[0x277C76A80](1);
LABEL_7:
  MEMORY[0x277C76A80](v2);
  return sub_2753B77D8();
}

uint64_t MusicContent.Environment.Account.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *MusicContent.Environment.Account.account.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *MusicContent.Environment.Account.iTunesCloudUserIdentity.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *MusicContent.Environment.Account.mediaRemoteUserIdentity.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t MusicContent.Environment.Account.Bag.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MusicContent.Environment.Account.Bag.musicAPIDomains.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MusicContent.Environment.Account.Bag.KeyServerInfo.keyServerURL.getter()
{
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_27();

  return v1(v0);
}

uint64_t MusicContent.Environment.Account.Bag.KeyServerInfo.keyServerURL.setter()
{
  OUTLINED_FUNCTION_24();
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t MusicContent.Environment.Account.Bag.KeyServerInfo.keyServerCertificateURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0) + 20);
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicContent.Environment.Account.Bag.KeyServerInfo.keyServerCertificateURL.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(v2) + 20);
  sub_2753B61F8();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*MusicContent.Environment.Account.Bag.KeyServerInfo.keyServerCertificateURL.modify())()
{
  v0 = OUTLINED_FUNCTION_24();
  type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(v0);
  return nullsub_1;
}

uint64_t MusicContent.Environment.Account.Bag.keyServerInfos.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MusicContent.Environment.Account.bag.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_275316838(v2, v3, v4);
}

__n128 MusicContent.Environment.Account.bag.setter(uint64_t a1)
{
  sub_275316888(v1[5], v1[6], v1[7], v1[8]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  return result;
}

uint64_t sub_2753587B0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.Environment.Account.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicContent.Environment.accounts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MusicContent.Environment.selectedAccountID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

id MusicContent.Environment.storeRequestContext.getter()
{
  MusicContent.Environment.selectedAccount.getter(&v4);
  if (*(&v4 + 1) && (v0 = v5, v1 = v5, OUTLINED_FUNCTION_1_6(), sub_275359E5C(), v0))
  {
    sub_2753277B8(0, &qword_2809C2730, 0x277D7FC30);
    return sub_27531F624(v1, [objc_allocWithZone(MEMORY[0x277D7FA48]) initWithSystemApplicationType_]);
  }

  else
  {
    v6 = 1;
    sub_275358D94(0);
    sub_275358E44();
    swift_allocError();
    v3 = sub_275358DF0();
    MEMORY[0x277C755D0](&v6, 0xD000000000000018, 0x80000002753B9820, MEMORY[0x277D84F90], &_s11EnvironmentV5ErrorON, v3);
    return swift_willThrow();
  }
}

id MusicContent.Environment.genericRequestContext.getter()
{
  v0 = [objc_opt_self() defaultInfo];
  v1 = [objc_allocWithZone(MEMORY[0x277D7FBD8]) initWithClientInfo_];

  return v1;
}

uint64_t sub_275358B9C(void *a1)
{
  v1 = [a1 accountDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2753B6D88();

  return v3;
}

void sub_275358C00(uint64_t a1)
{
  if (!qword_2809C2738)
  {
    sub_2753277B8(255, &qword_2809C2740, 0x277D7FC60);
    sub_275358C80();
    v1 = sub_2753B7188();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C2738);
    }
  }
}

unint64_t sub_275358C80()
{
  result = qword_2809C1468;
  if (!qword_2809C1468)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809C1468);
  }

  return result;
}

void sub_275358CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MusicContent.Environment.Account);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(uint64_t a1)
{
  result = qword_2809C27A0;
  if (!qword_2809C27A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275358D94(uint64_t a1)
{
  if (!qword_2809C2750)
  {
    sub_275358DF0();
    v1 = sub_2753B6308();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C2750);
    }
  }
}

unint64_t sub_275358DF0()
{
  result = qword_2809C2758;
  if (!qword_2809C2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2758);
  }

  return result;
}

unint64_t sub_275358E44()
{
  result = qword_2809C2760;
  if (!qword_2809C2760)
  {
    sub_275358D94(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2760);
  }

  return result;
}

unint64_t sub_275358EA0()
{
  result = qword_2809C2768;
  if (!qword_2809C2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2768);
  }

  return result;
}

unint64_t sub_275358EF8()
{
  result = qword_2809C2770;
  if (!qword_2809C2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2770);
  }

  return result;
}

unint64_t sub_275358F50()
{
  result = qword_2809C2778;
  if (!qword_2809C2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2778);
  }

  return result;
}

unint64_t sub_275358FA8()
{
  result = qword_2809C2780;
  if (!qword_2809C2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2780);
  }

  return result;
}

unint64_t sub_275359000()
{
  result = qword_2809C2788;
  if (!qword_2809C2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2788);
  }

  return result;
}

unint64_t sub_275359058()
{
  result = qword_2809C2790;
  if (!qword_2809C2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2790);
  }

  return result;
}

unint64_t sub_2753590B0()
{
  result = qword_2809C2798;
  if (!qword_2809C2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2798);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_275359118(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 29))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275359158(uint64_t result, int a2, int a3)
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
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11EnvironmentV8EndpointOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s11EnvironmentV8EndpointOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27535931CLL);
      case 4:
        *(result + 1) = v6;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s11EnvironmentV8EndpointO5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275359450);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s11EnvironmentV8EndpointO16PlaybackEndpointOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11EnvironmentV8EndpointO16PlaybackEndpointOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753595ECLL);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275359628(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_0();
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

  return *a1;
}

_BYTE *sub_275359678(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275359714);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB00C7ContentO11EnvironmentV7AccountV3BagVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27535976C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2753597AC(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27535980C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27535984C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2753598B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B61F8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_27535990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B61F8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_275359958(uint64_t a1)
{
  result = sub_2753B61F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s11EnvironmentV5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11EnvironmentV5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275359B18);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_275359B60()
{
  result = qword_2809C27B0;
  if (!qword_2809C27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27B0);
  }

  return result;
}

unint64_t sub_275359BB8()
{
  result = qword_2809C27B8;
  if (!qword_2809C27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27B8);
  }

  return result;
}

void sub_275359C0C()
{
  if (!qword_2809C27C0)
  {
    v0 = sub_2753B74D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C27C0);
    }
  }
}

uint64_t sub_275359CC4(uint64_t a1)
{
  sub_275359D20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275359D20()
{
  if (!qword_2809C27C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C27C8);
    }
  }
}

void sub_275359D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275359DDC(uint64_t a1, uint64_t a2)
{
  sub_275359D88(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275359E5C()
{
  v1 = OUTLINED_FUNCTION_24();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_275359EB0(uint64_t a1, uint64_t a2)
{
  sub_275359D88(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_2_7(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x277D84560];

  sub_275358CF4(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_5_4()
{
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 25) = 16843009;
  return v2 + 8;
}

_SonicKit_MusicKit::MusicContentError_optional __swiftcall MusicContentError.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 301:
      v2 = 4;
      break;
    case 302:
      v2 = 5;
      break;
    case 303:
      v2 = 6;
      break;
    case 304:
      v2 = 7;
      break;
    case 305:
      v2 = 8;
      break;
    case 306:
      v2 = 9;
      break;
    case 307:
      v2 = 10;
      break;
    case 308:
      v2 = 11;
      break;
    case 309:
      v2 = 12;
      break;
    case 310:
      v2 = 13;
      break;
    case 311:
      v2 = 14;
      break;
    case 312:
      v2 = 15;
      break;
    case 313:
      v2 = 16;
      break;
    case 314:
      v2 = 17;
      break;
    case 315:
      v2 = 18;
      break;
    default:
      v3 = 0;
      v2 = 2;
      switch(rawValue)
      {
        case 0:
          goto LABEL_5;
        case 1:
          v3 = 1;
LABEL_5:
          v2 = v3;
          break;
        case 2:
          goto LABEL_24;
        case 3:
          v2 = 3;
          break;
        default:
          if (rawValue == 99999)
          {
            v2 = 19;
          }

          else
          {
            v2 = 20;
          }

          break;
      }

      break;
  }

LABEL_24:
  *v1 = v2;
  return rawValue;
}

unint64_t sub_27535A148()
{
  result = qword_2809C27D0;
  if (!qword_2809C27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27D0);
  }

  return result;
}

uint64_t sub_27535A1BC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContentError.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_27535A1E8()
{
  result = qword_2809C27D8;
  if (!qword_2809C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C27D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicContentError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27535A308);
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27535A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;

  sub_27535FC44(&v17);
  v3 = *(v17 + 16);
  v4 = (v17 + 40);
  if (v3)
  {
    while (2)
    {
      v5 = *(v4 + 20) | (*(v4 + 42) << 16);
      switch(*(v4 + 42) >> 5)
      {
        case 1:
        case 3:
        case 4:
          v4 += 7;
          if (!--v3)
          {
            goto LABEL_4;
          }

          continue;
        case 5:
          v13 = v4[3];
          v14 = v4[4];
          v15 = *(v4 + 1);
          v16 = *(v4 - 1);

          *a2 = v16;
          *(a2 + 16) = v15;
          *(a2 + 32) = v13;
          *(a2 + 40) = v14;
          break;
        default:
          v8 = *(v4 - 1);
          v7 = *v4;
          v10 = v4[1];
          v9 = v4[2];
          v11 = v4[3];
          v12 = v4[4];

          *a2 = v8;
          *(a2 + 8) = v7;
          *(a2 + 16) = v10;
          *(a2 + 24) = v9;
          *(a2 + 32) = v11;
          *(a2 + 40) = v12;
          break;
      }

      break;
    }

    *(a2 + 50) = BYTE2(v5);
    *(a2 + 48) = v5;
  }

  else
  {
LABEL_4:

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 50) = -2;
    *(a2 + 48) = 254;
  }

  return result;
}

uint64_t MusicContent.RawIdentifier.MediaAPI.qualify(unavailableStorefronts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 47) = 0;
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.qualify(cloudRevision:cloudStatus:isDeleted:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  *a5 = *v5;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 40) = a1;
  *(a5 + 48) = a2 & 1 | (v6 << 8);
  *(a5 + 50) = ((a4 & 1) != 0) | 0x40;
}

uint64_t MusicContent.RawIdentifier.Opaque.qualify(mediaAPILookupStorefronts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 50) = -96;
  *(a2 + 48) = 0;
}

uint64_t MusicContent.QualifiedIdentifier.raw.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = -96;
  v8 = 0;
  v9 = 0;
  switch(*(v1 + 50) >> 5)
  {
    case 1:
      v9 = v1[3];
      v7 = 32;
      goto LABEL_7;
    case 2:
      v7 = *(v1 + 32) | 0x40;

      v8 = v5;
      v9 = v6;
      break;
    case 3:
      v9 = v1[3];
      v7 = 96;
      goto LABEL_7;
    case 4:
      v9 = v1[3];
      v7 = 0x80;
LABEL_7:
      v8 = v1[2];
      break;
    case 5:
      break;
    default:
      v9 = 0;
      v7 = 0;
      v8 = v1[2];
      break;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v7;
  return result;
}

uint64_t static MusicContent.RawIdentifier.mediaAPI(id:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t static MusicContent.RawIdentifier.cloudLibrary(personID:ulid:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6 | 0x40;
}

uint64_t static MusicContentQualifiedIdentifier.sourceType.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicContent.MediaAPIContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 5;
  if (v1 < 5)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t MusicContent.MediaAPIContentType.rawValue.getter()
{
  result = 0x73676E6F73;
  switch(*v0)
  {
    case 1:
      result = 0x69762D636973756DLL;
      break;
    case 2:
      result = 0x736D75626C61;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0x736E6F6974617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27535A948@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.MediaAPIContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicContent.LibraryContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 4;
  if (v1 < 4)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t MusicContent.LibraryContentType.rawValue.getter()
{
  result = 1735290739;
  switch(*v0)
  {
    case 1:
      result = 0x646956636973756DLL;
      break;
    case 2:
      result = 0x6D75626C61;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27535AAF0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.LibraryContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicContent.CloudLibraryContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 4;
  if (v1 < 4)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

unint64_t MusicContent.CloudLibraryContentType.rawValue.getter()
{
  result = 0x2D7972617262696CLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27535AC54@<X0>(unint64_t *a1@<X8>)
{
  result = MusicContent.CloudLibraryContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicContent.PurchasableContentType.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_3();
  sub_2753B74E8();
  result = OUTLINED_FUNCTION_72_3();
  v3 = 3;
  if (v1 < 3)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t MusicContent.PurchasableContentType.rawValue.getter()
{
  v1 = 0x646956636973756DLL;
  if (*v0 != 1)
  {
    v1 = 0x6D75626C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1735290739;
  }
}

uint64_t sub_27535AD68@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.PurchasableContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27535ADC0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicContent.CloudStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27535AFF4()
{
  OUTLINED_FUNCTION_39_3();
  sub_27536446C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t MusicContent.RawIdentifier.MediaAPI.id.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static MusicContent.RawIdentifier.MediaAPI.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v4 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_27();

  return sub_2752E8E7C(v5, v6);
}

uint64_t MusicContent.RawIdentifier.MediaAPI.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  sub_2753B6688();

  return sub_2752E97E0();
}

uint64_t MusicContent.RawIdentifier.MediaAPI.hashValue.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_24_2(v1);
  sub_2752E97E0();
  return sub_2753B77D8();
}

uint64_t sub_27535B248()
{
  sub_2753B7798();
  sub_2753B6688();
  sub_2752E97E0();
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.Library.qualify(entityRevision:cloudStatus:isDeleted:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = 256;
  if ((a3 & 1) == 0)
  {
    v9 = 0;
  }

  *a4 = *v4;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = a1;
  *(a4 + 40) = v9 | v5;
  *(a4 + 50) = 32;
  *(a4 + 48) = 0;
  return OUTLINED_FUNCTION_31_3();
}

uint64_t MusicContent.RawIdentifier.Library.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2753B6688();
  MEMORY[0x277C76AA0](v2);

  return sub_2752E987C(v0, v3);
}

uint64_t MusicContent.RawIdentifier.Library.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_24_2(v4);
  MEMORY[0x277C76AA0](v2);
  sub_2752E987C(v6, v3);
  return sub_2753B77D8();
}

uint64_t sub_27535B424()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2753B7798();
  sub_2753B6688();
  MEMORY[0x277C76AA0](v1);
  sub_2752E987C(v4, v2);
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.personID.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.ulid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static MusicContent.RawIdentifier.CloudLibrary.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_14_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v9 = v4 == v6 && v5 == v7;
  if (!v9 && (OUTLINED_FUNCTION_59_3() & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_27();

  return sub_2752E91DC(v10);
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  sub_2753B6688();
  OUTLINED_FUNCTION_129_0();
  sub_2753B6688();

  return sub_2752E99B4(v0);
}

uint64_t MusicContent.RawIdentifier.CloudLibrary.hashValue.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_24_2(v1);
  sub_2753B6688();
  sub_2752E99B4(v3);
  return sub_2753B77D8();
}

uint64_t sub_27535B738()
{
  sub_2753B7798();
  sub_2753B6688();
  sub_2753B6688();
  sub_2752E99B4(v1);
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.StorePurchase.personID.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_27535B910@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = a1;
  *(a2 + 50) = BYTE2(a1);
  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_27535B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_4(a1);
  OUTLINED_FUNCTION_44_3();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_2753B7718() & 1) == 0 || v4 != v5)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_27();

  return v10(v9);
}

uint64_t sub_27535BA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 24);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  sub_2753B7798();
  a4(v9);
  return sub_2753B77D8();
}

uint64_t sub_27535BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 32) = a5;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t MusicContent.RawIdentifier.Opaque.id.setter()
{
  result = OUTLINED_FUNCTION_41_3();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static MusicContent.RawIdentifier.Opaque.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_14_4(a1);
  if (v5 == *v6 && *(v7 + 8) == v6[1])
  {
    return 1;
  }

  else
  {
    return sub_2753B7718();
  }
}

uint64_t MusicContent.RawIdentifier.Opaque.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_100(a1);
  sub_2753B6688();
  return sub_2753B77D8();
}

uint64_t sub_27535BB90()
{
  sub_2753B7798();
  sub_2753B6688();
  return sub_2753B77D8();
}

uint64_t static MusicContent.RawIdentifier.opaque(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = -96;
  return OUTLINED_FUNCTION_10_5();
}

BOOL static MusicContent.RawIdentifier.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  v154[0] = *a1;
  v154[1] = v2;
  v154[2] = v5;
  v154[3] = v4;
  v155 = v6;
  v156 = v8;
  v157 = v7;
  v158 = v10;
  v159 = v9;
  v160 = v11;
  switch(v6 >> 5)
  {
    case 1u:
      if ((v11 & 0xE0) != 0x20)
      {
        goto LABEL_50;
      }

      if (v3 != v8 || v2 != v7)
      {
        v95 = OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_37_3(v95, v96) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (v5 != v10)
      {
        goto LABEL_50;
      }

      v97 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v97, v98, v99, v100, v101);
      v102 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v102, v103, v104, v105, v106);
      v107 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v107, v108, v109, v110, v111);
      v112 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v112, v113, v114, v115, v116);
      v93 = sub_2752E8FAC(v4, v9);
      goto LABEL_41;
    case 2u:
      if ((v11 & 0xE0) != 0x40)
      {
        goto LABEL_50;
      }

      if (v3 != v8 || v2 != v7)
      {
        v37 = OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_37_3(v37, v38) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      v39 = v5 == v10 && v4 == v9;
      if (!v39 && (sub_2753B7718() & 1) == 0)
      {
        goto LABEL_50;
      }

      v40 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v40, v41, v42, v43, v44);
      v45 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v45, v46, v47, v48, v49);
      v50 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v50, v51, v52, v53, v54);
      v55 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v55, v56, v57, v58, v59);
      v35 = sub_2752E91DC(v6 & 0x1F);
      goto LABEL_23;
    case 3u:
      if ((v11 & 0xE0) == 0x60)
      {
        goto LABEL_26;
      }

      goto LABEL_50;
    case 4u:
      if ((v11 & 0xE0) != 0x80)
      {
        goto LABEL_50;
      }

LABEL_26:
      if (v3 != v8 || v2 != v7)
      {
        v71 = OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_37_3(v71, v72) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (v5 != v10)
      {
        goto LABEL_50;
      }

      v73 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v73, v74, v75, v76, v77);
      v78 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v78, v79, v80, v81, v82);
      v83 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v83, v84, v85, v86, v87);
      v88 = OUTLINED_FUNCTION_6_2();
      sub_275329198(v88, v89, v90, v91, v92);
      v93 = sub_2752E90F0(v4, v9);
LABEL_41:
      v117 = v93;
      sub_2753609A8(v154, &qword_2809C27E0, &type metadata for MusicContent.RawIdentifier);
      v118 = OUTLINED_FUNCTION_6_2();
      sub_2753147B0(v118, v119, v120, v121, v122);
      v123 = OUTLINED_FUNCTION_0_6();
      sub_2753147B0(v123, v124, v125, v126, v127);
      return (v117 & 1) != 0;
    case 5u:
      if ((v11 & 0xE0) != 0xA0)
      {
        goto LABEL_50;
      }

      if (v3 == v8 && v2 == v7)
      {
        sub_275329198(v3, v2, v5, v4, v6);
        v150 = OUTLINED_FUNCTION_147();
        sub_275329198(v150, v151, v10, v9, v11);
        sub_2753609A8(v154, &qword_2809C27E0, &type metadata for MusicContent.RawIdentifier);
      }

      else
      {
        v153 = OUTLINED_FUNCTION_37_3(v3, v2);
        v129 = OUTLINED_FUNCTION_0_6();
        sub_275329198(v129, v130, v131, v132, v133);
        v134 = OUTLINED_FUNCTION_1_7();
        sub_275329198(v134, v135, v136, v137, v138);
        sub_2753609A8(v154, &qword_2809C27E0, &type metadata for MusicContent.RawIdentifier);
        result = 0;
        if ((v153 & 1) == 0)
        {
          return result;
        }
      }

      return 1;
    default:
      if (v11 >= 0x20 || (v3 == v8 ? (v12 = v2 == v7) : (v12 = 0), !v12 && (v13 = OUTLINED_FUNCTION_147(), (OUTLINED_FUNCTION_37_3(v13, v14) & 1) == 0)))
      {
LABEL_50:
        v140 = OUTLINED_FUNCTION_0_6();
        sub_275329198(v140, v141, v142, v143, v144);
        v145 = OUTLINED_FUNCTION_1_7();
        sub_275329198(v145, v146, v147, v148, v149);
        sub_2753609A8(v154, &qword_2809C27E0, &type metadata for MusicContent.RawIdentifier);
        return 0;
      }

      v15 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v15, v16, v17, v18, v19);
      v20 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v20, v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_0_6();
      sub_275329198(v25, v26, v27, v28, v29);
      v30 = OUTLINED_FUNCTION_1_7();
      sub_275329198(v30, v31, v32, v33, v34);
      v35 = sub_2752E8E7C(v5, v10);
LABEL_23:
      v152 = v35;
      sub_2753609A8(v154, &qword_2809C27E0, &type metadata for MusicContent.RawIdentifier);
      v60 = OUTLINED_FUNCTION_1_7();
      sub_2753147B0(v60, v61, v62, v63, v64);
      v65 = OUTLINED_FUNCTION_0_6();
      sub_2753147B0(v65, v66, v67, v68, v69);
      return (v152 & 1) != 0;
  }
}

uint64_t MusicContent.RawIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  switch(*(v1 + 32) >> 5)
  {
    case 1:
      MEMORY[0x277C76A80](1);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v2);
      OUTLINED_FUNCTION_70_3();

      result = sub_2752E987C(v8, v9);
      break;
    case 2:
      MEMORY[0x277C76A80](2);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      sub_2753B6688();
      OUTLINED_FUNCTION_70_3();

      result = sub_2752E99B4(v6);
      break;
    case 3:
      v5 = 3;
      goto LABEL_10;
    case 4:
      v5 = 4;
LABEL_10:
      MEMORY[0x277C76A80](v5);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v2);
      sub_2753B6688();
      OUTLINED_FUNCTION_70_3();

      break;
    case 5:
      MEMORY[0x277C76A80](5);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_70_3();

      result = sub_2753B6688();
      break;
    default:
      MEMORY[0x277C76A80](0);
      OUTLINED_FUNCTION_20_2();
      sub_2753B6688();
      OUTLINED_FUNCTION_70_3();

      result = sub_2752E97E0();
      break;
  }

  return result;
}

uint64_t MusicContent.RawIdentifier.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  OUTLINED_FUNCTION_100(a1);
  MusicContent.RawIdentifier.hash(into:)(v5);
  return sub_2753B77D8();
}

uint64_t sub_27535C1D8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_2753B7798();
  MusicContent.RawIdentifier.hash(into:)(v4);
  return sub_2753B77D8();
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.raw.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.raw.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.unavailableStorefronts.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.MediaAPI.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_14_4(a1);
  v8 = *(v7 + 16);
  v9 = *(v6 + 16);
  v10 = v5 == *v6 && *(v7 + 8) == *(v6 + 8);
  if (!v10 && (sub_2753B7718() & 1) == 0 || (sub_2752E8E7C(v8, v9) & 1) == 0)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_27();

  return sub_27535C378(v11, v12);
}

uint64_t sub_27535C378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2753B7718() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  sub_2753B6688();
  sub_2752E97E0();
  v0 = OUTLINED_FUNCTION_129_0();

  return sub_275360930(v0, v1);
}

uint64_t MusicContent.QualifiedIdentifier.MediaAPI.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_24_2(v3);
  sub_2752E97E0();
  sub_275360930(v5, v2);
  return sub_2753B77D8();
}

uint64_t sub_27535C4C8()
{
  v1 = *(v0 + 24);
  sub_2753B7798();
  sub_2753B6688();
  sub_2752E97E0();
  sub_275360930(v3, v1);
  return sub_2753B77D8();
}

double MusicContent.QualifiedIdentifier.Library.raw.setter()
{
  v0 = OUTLINED_FUNCTION_55_3();
  *&result = OUTLINED_FUNCTION_68_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9).n128_u64[0];
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.Library.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_14_4(a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 32);
  v10 = *(v7 + 40);
  v11 = *(v7 + 41);
  v12 = *(v6 + 16);
  v13 = *(v6 + 32);
  v14 = *(v6 + 40);
  v15 = *(v6 + 41);
  if (v5 == *v6 && *(v7 + 8) == *(v6 + 8))
  {
    if (v8 != v12)
    {
      return 0;
    }
  }

  else
  {
    v17 = sub_2753B7718();
    result = 0;
    if ((v17 & 1) == 0 || v8 != v12)
    {
      return result;
    }
  }

  v19 = OUTLINED_FUNCTION_27();
  v21 = sub_2752E8FAC(v19, v20);
  v22 = v9 == v13 && v10 == v14;
  v23 = v11 ^ v15 ^ 1;
  if (!v22)
  {
    v23 = 0;
  }

  if (v21)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

void MusicContent.QualifiedIdentifier.Library.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 24);
  sub_2753B6688();
  MEMORY[0x277C76AA0](v2);
  sub_2752E987C(v0, v5);
  MEMORY[0x277C76A80](v3);
  MEMORY[0x277C76A80](v4);
  sub_2753B77B8();
  OUTLINED_FUNCTION_70_3();
}

uint64_t MusicContent.QualifiedIdentifier.Library.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 24);
  v6 = OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_24_2(v6);
  MEMORY[0x277C76AA0](v2);
  sub_2752E987C(v8, v5);
  MEMORY[0x277C76A80](v3);
  MEMORY[0x277C76A80](v4);
  sub_2753B77B8();
  return sub_2753B77D8();
}

uint64_t sub_27535C810()
{
  sub_2753B7798();
  MusicContent.QualifiedIdentifier.Library.hash(into:)();
  return sub_2753B77D8();
}

uint64_t MusicContent.QualifiedIdentifier.CloudLibrary.raw.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 MusicContent.QualifiedIdentifier.CloudLibrary.raw.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];

  result = v6;
  *v1 = v6;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  v1[2].n128_u8[0] = v4;
  return result;
}

uint64_t MusicContent.QualifiedIdentifier.CloudLibrary.cloudRevision.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.CloudLibrary.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_14_4(a1);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  v26 = *(v7 + 40);
  v11 = *(v7 + 48);
  v27 = *(v7 + 49);
  v12 = *(v7 + 50);
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v15 = *(v6 + 40);
  v16 = *(v6 + 48);
  v17 = *(v6 + 49);
  v18 = v5 == *v6 && v8 == *(v6 + 8);
  v24 = *(v6 + 50);
  v25 = v12;
  if (!v18 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v19 = v9 == v13 && v10 == v14;
  if (!v19 && (OUTLINED_FUNCTION_59_3() & 1) == 0)
  {
    return 0;
  }

  v20 = OUTLINED_FUNCTION_27();
  if ((sub_2752E91DC(v20) & 1) == 0)
  {
    return 0;
  }

  if (v11)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (v26 == v15)
    {
      v21 = v16;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v27 != 10)
  {
    if (v17 == 10 || v27 != v17)
    {
      return 0;
    }

    return v25 ^ v24 ^ 1u;
  }

  if (v17 == 10)
  {
    return v25 ^ v24 ^ 1u;
  }

  return 0;
}

void MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 49);
  sub_2753B6688();
  sub_2753B6688();
  sub_2752E99B4(a1);
  sub_2753B77B8();
  if (v4 != 1)
  {
    MEMORY[0x277C76A80](v3);
  }

  sub_2753B77B8();
  if (v5 != 10)
  {
    MEMORY[0x277C76A80](v5);
  }

  sub_2753B77B8();
  OUTLINED_FUNCTION_70_3();
}

uint64_t MusicContent.QualifiedIdentifier.CloudLibrary.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_100(a1);
  MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)(v2);
  return sub_2753B77D8();
}

uint64_t sub_27535CC20()
{
  sub_2753B7798();
  MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)(v1);
  return sub_2753B77D8();
}

double sub_27535CCA8()
{
  v0 = OUTLINED_FUNCTION_55_3();
  *&result = OUTLINED_FUNCTION_68_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9).n128_u64[0];
  return result;
}

BOOL sub_27535CD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_14_4(a1);
  OUTLINED_FUNCTION_44_3();
  v9 = v9 && v7 == v8;
  result = 0;
  if (v9 || (sub_2753B7718()) && v5 == v6)
  {
    v10 = OUTLINED_FUNCTION_27();
    if (sub_2752E90F0(v10, v11))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s015_SonicKit_MusicB00C7ContentO13RawIdentifierO13StorePurchaseV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2753B6688();
  MEMORY[0x277C76AA0](v2);
  sub_2753B6688();
}

uint64_t _s015_SonicKit_MusicB00C7ContentO13RawIdentifierO13StorePurchaseV9hashValueSivg_0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_24_2(v3);
  MEMORY[0x277C76AA0](v2);
  sub_2753B6688();

  return sub_2753B77D8();
}

uint64_t sub_27535CEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2753B7798();
  a4(v6);
  return sub_2753B77D8();
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.raw.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.raw.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.mediaAPILookupStorefronts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static MusicContent.QualifiedIdentifier.Opaque.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_14_4(a1);
  v8 = v5 == *v6 && *(v7 + 8) == v6[1];
  if (!v8 && (sub_2753B7718() & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_27();

  return sub_27535C378(v9, v10);
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.hash(into:)()
{
  OUTLINED_FUNCTION_38_2();
  sub_2753B6688();
  v0 = OUTLINED_FUNCTION_27();

  return sub_275360930(v0, v1);
}

uint64_t MusicContent.QualifiedIdentifier.Opaque.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_100(a1);
  OUTLINED_FUNCTION_24_2(v3);
  sub_275360930(v5, v2);
  return sub_2753B77D8();
}

uint64_t sub_27535D110()
{
  v1 = *(v0 + 16);
  sub_2753B7798();
  sub_2753B6688();
  sub_275360930(v3, v1);
  return sub_2753B77D8();
}

uint64_t static MusicContent.QualifiedIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 50);
  v252 = *(a1 + 24);
  v10 = v252 | (v9 << 16);
  v12 = *a2;
  v11 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = *(a2 + 50);
  v18 = *(a2 + 24);
  v19 = v18 | (v17 << 16);
  v251[0] = v4;
  v251[1] = v3;
  v251[2] = v6;
  v251[3] = v5;
  v251[4] = v7;
  v251[5] = v8;
  v230 = v8;
  v253 = v9;
  v254 = v12;
  v255 = v11;
  v256 = v14;
  v257 = v13;
  v258 = v16;
  v259 = v15;
  v261 = v17;
  v260 = v18;
  switch(v9 >> 5)
  {
    case 1:
      if ((v19 & 0xE00000) != 0x200000)
      {
        goto LABEL_35;
      }

      v240 = v4;
      v241 = v3;
      v242 = v6;
      LOBYTE(v243) = v5;
      v244 = v7;
      LOWORD(v245) = v8 & 0x1FF;
      v232 = v12;
      v233 = v11;
      v234 = v14;
      LOBYTE(v235) = v13;
      v236 = v16;
      LOWORD(v237) = v15 & 0x1FF;
      v221 = v7;
      v213 = v13;
      v217 = v5;
      v111 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_56_2(v111, v112, v113, v114, v115, v116);
      v117 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v117, v118, v119);
      v120 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v120, v121, v122);
      v123 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_52_3(v123, v124, v125, v126, v127, v128, v129, v130, v207, v208, v213, v217, v221, v15, v224, HIDWORD(v224), v16);
      v84 = static MusicContent.QualifiedIdentifier.Library.== infix(_:_:)(&v240, &v232, v131, v132, v133);
      goto LABEL_26;
    case 2:
      v250 = v252 & 1;
      if ((v19 & 0xE00000) != 0x400000)
      {
        goto LABEL_35;
      }

      v249 = v18 & 1;
      v240 = v4;
      v241 = v3;
      v242 = v6;
      v243 = v5;
      LOBYTE(v244) = v7;
      v245 = v8;
      v246 = v250;
      v247 = HIBYTE(v252);
      v248 = BYTE2(v10) & 1;
      v232 = v12;
      v233 = v11;
      v234 = v14;
      v235 = v13;
      LOBYTE(v236) = v16;
      v237 = v15;
      v238 = v18 & 0xFF01;
      v239 = BYTE2(v19) & 1;
      v220 = v7;
      v212 = v13;
      v216 = v5;
      v61 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_56_2(v61, v62, v63, v64, v65, v66);
      v67 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v67, v68, v69);
      v70 = OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_25_3(v70, v71, v72);
      v73 = OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_52_3(v73, v74, v75, v76, v77, v78, v79, v80, v207, v208, v212, v216, v220, v15, v224, HIDWORD(v224), v16);
      v84 = static MusicContent.QualifiedIdentifier.CloudLibrary.== infix(_:_:)(&v240, &v232, v81, v82, v83);
LABEL_26:
      v134 = v84;
      sub_2753609A8(v251, &qword_2809C27E8, &type metadata for MusicContent.QualifiedIdentifier);
      v135 = OUTLINED_FUNCTION_5_5();
      sub_2752FBB6C(v135, v136, v137, v16, v228, v15, v225);
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_21_3();
      sub_2752FBB6C(v138, v139, v140, v141, v142, v143, v144);
      return v134 & 1;
    case 3:
      if ((v19 & 0xE00000) == 0x600000)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    case 4:
      if ((v19 & 0xE00000) != 0x800000)
      {
        goto LABEL_35;
      }

LABEL_15:
      OUTLINED_FUNCTION_49_2();
      v86 = v4 == v12 && v3 == v11;
      HIDWORD(v224) = v85;
      if (!v86)
      {
        v87 = OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_61_1(v87, v88) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      if (v6 != v14)
      {
        goto LABEL_39;
      }

      v89 = OUTLINED_FUNCTION_50_3();
      v90 = v210;
      sub_275315CB8(v89, v91, v92, v210, v227, v222, HIDWORD(v224));
      v93 = OUTLINED_FUNCTION_2_8();
      v94 = v214;
      v95 = v218;
      OUTLINED_FUNCTION_69_3(v93, v96, v97, v214, v98, v99, v100, v101, v207, v208, v210, v214, v218, v222, v224, v227, v230);
      v102 = OUTLINED_FUNCTION_2_8();
      sub_275315CB8(v102, v103, v104, v94, v95, v2, v10);
      v105 = OUTLINED_FUNCTION_50_3();
      sub_275315CB8(v105, v106, v107, v90, v229, v223, v226);
      v209 = sub_2752E90F0(v94, v90);
      sub_2753609A8(v251, &qword_2809C27E8, &type metadata for MusicContent.QualifiedIdentifier);
      v108 = OUTLINED_FUNCTION_50_3();
      sub_2752FBB6C(v108, v109, v110, v90, v229, v223, v226);
      v57 = OUTLINED_FUNCTION_2_8();
      v60 = v94;
      goto LABEL_22;
    case 5:
      if ((v19 & 0xE00000) != 0xA00000)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_49_2();
      HIDWORD(v224) = v145;
      if (v4 != v12 || v3 != v11)
      {
        v147 = OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_61_1(v147, v148) & 1) == 0)
        {
LABEL_39:
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_21_3();
          sub_275315CB8(v179, v180, v181, v182, v183, v184, v185);
          OUTLINED_FUNCTION_5_5();
          OUTLINED_FUNCTION_28_3();
          v177 = HIDWORD(v224);
          goto LABEL_36;
        }
      }

      v149 = sub_27535C378(v6, v14);
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_21_3();
      sub_275315CB8(v150, v151, v152, v153, v154, v155, v156);
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_28_3();
      sub_275315CB8(v157, v158, v159, v160, v161, v162, HIDWORD(v224));
      sub_2753609A8(v251, &qword_2809C27E8, &type metadata for MusicContent.QualifiedIdentifier);
      if ((v149 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    default:
      if ((v19 & 0xFFFFFFu) >= 0x200000)
      {
LABEL_35:
        v163 = v13;
        v164 = OUTLINED_FUNCTION_2_8();
        v166 = v165;
        sub_275315CB8(v164, v167, v168, v169, v170, v230, v10);
        v171 = OUTLINED_FUNCTION_5_5();
        v174 = v163;
        v175 = v16;
        v176 = v15;
        v177 = v166;
LABEL_36:
        sub_275315CB8(v171, v172, v173, v174, v175, v176, v177);
        sub_2753609A8(v251, &qword_2809C27E8, &type metadata for MusicContent.QualifiedIdentifier);
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_49_2();
      v21 = v4 == v12 && v3 == v11;
      HIDWORD(v224) = v20;
      if (!v21)
      {
        v22 = OUTLINED_FUNCTION_147();
        if ((OUTLINED_FUNCTION_61_1(v22, v23) & 1) == 0)
        {
          OUTLINED_FUNCTION_5_5();
          OUTLINED_FUNCTION_28_3();
          sub_275315CB8(v200, v201, v202, v203, v204, v205, v206);
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_21_3();
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_28_3();
      sub_275315CB8(v24, v25, v26, v27, v28, v29, v30);
      v31 = OUTLINED_FUNCTION_2_8();
      v32 = v214;
      v33 = v218;
      OUTLINED_FUNCTION_69_3(v31, v34, v35, v214, v36, v37, v38, v39, v207, v208, v210, v214, v218, v222, v224, v227, v230);
      v40 = OUTLINED_FUNCTION_2_8();
      sub_275315CB8(v40, v41, v42, v32, v33, v2, v10);
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_2();
      sub_275315CB8(v43, v44, v45, v46, v47, v48, v49);
      if (sub_2752E8E7C(v6, v14))
      {
        v209 = sub_27535C378(v215, v211);
        sub_2753609A8(v251, &qword_2809C27E8, &type metadata for MusicContent.QualifiedIdentifier);
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_48_2();
        sub_2752FBB6C(v50, v51, v52, v53, v54, v55, v56);
        v57 = OUTLINED_FUNCTION_2_8();
        v60 = v215;
LABEL_22:
        sub_2752FBB6C(v57, v58, v59, v60, v219, v231, v10);
        if (v209)
        {
LABEL_34:
          v134 = 1;
          return v134 & 1;
        }
      }

      else
      {
        sub_2753609A8(v251, &qword_2809C27E8, &type metadata for MusicContent.QualifiedIdentifier);
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_48_2();
        sub_2752FBB6C(v186, v187, v188, v189, v190, v191, v192);
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_21_3();
        sub_2752FBB6C(v193, v194, v195, v196, v197, v198, v199);
      }

LABEL_37:
      v134 = 0;
      return v134 & 1;
  }
}

void MusicContent.QualifiedIdentifier.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  switch(*(v1 + 50) >> 5)
  {
    case 1:
      MEMORY[0x277C76A80](1);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v3);
      sub_2752E987C(a1, v2);
      MEMORY[0x277C76A80](v4);
      MEMORY[0x277C76A80](v5);
      sub_2753B77B8();
      goto LABEL_8;
    case 2:
      MEMORY[0x277C76A80](2);
      MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)(a1);
LABEL_8:
      OUTLINED_FUNCTION_53_3();
      return;
    case 3:
      v7 = 3;
      goto LABEL_6;
    case 4:
      v7 = 4;
LABEL_6:
      MEMORY[0x277C76A80](v7);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      MEMORY[0x277C76AA0](v3);
      sub_2753B6688();
      OUTLINED_FUNCTION_53_3();

      return;
    case 5:
      MEMORY[0x277C76A80](5);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      goto LABEL_10;
    default:
      MEMORY[0x277C76A80](0);
      OUTLINED_FUNCTION_13_5();
      sub_2753B6688();
      sub_2752E97E0();
      OUTLINED_FUNCTION_129_0();
LABEL_10:
      OUTLINED_FUNCTION_53_3();

      sub_275360930(v8, v9);
      return;
  }
}

uint64_t MusicContent.QualifiedIdentifier.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 50);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v1[2];
  v11 = v3;
  v10 = v2;
  OUTLINED_FUNCTION_100(a1);
  MusicContent.QualifiedIdentifier.hash(into:)(v6);
  return sub_2753B77D8();
}

uint64_t sub_27535D984()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 50);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v0[2];
  v10 = v2;
  v9 = v1;
  sub_2753B7798();
  MusicContent.QualifiedIdentifier.hash(into:)(v5);
  return sub_2753B77D8();
}

uint64_t MusicContent.RawIdentifier.description.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  switch(*(v0 + 32) >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0xD000000000000015, 0x80000002753B98B0);
      OUTLINED_FUNCTION_34_3();
      MEMORY[0x277C76100](0x203A646970202CLL, 0xE700000000000000);
      v4 = sub_2753B76B8();
      MEMORY[0x277C76100](v4);

      OUTLINED_FUNCTION_11_4();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0xD000000000000018, 0x80000002753B9890);
      OUTLINED_FUNCTION_34_3();
      MEMORY[0x277C76100](0x203A64696C75202CLL, 0xE800000000000000);
      MEMORY[0x277C76100](v2, v1);
      OUTLINED_FUNCTION_11_4();
      goto LABEL_6;
    case 3:
    case 4:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0xD00000000000001BLL, 0x80000002753B9870);
      OUTLINED_FUNCTION_34_3();
      MEMORY[0x277C76100](0x203A6469202CLL, 0xE600000000000000);
      v3 = sub_2753B76B8();
      MEMORY[0x277C76100](v3);

      OUTLINED_FUNCTION_11_4();
      goto LABEL_6;
    case 5:
      strcpy(v6, ".opaque(id: ");
      BYTE5(v6[1]) = 0;
      HIWORD(v6[1]) = -5120;
      OUTLINED_FUNCTION_34_3();
      goto LABEL_7;
    default:
      OUTLINED_FUNCTION_26_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_65_2();
      MEMORY[0x277C76100](0x5041616964656D2ELL, 0xEE00203A64692849);
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_11_4();
LABEL_6:
      sub_2753B7468();
LABEL_7:
      MEMORY[0x277C76100](41, 0xE100000000000000);
      return v6[0];
  }
}

void MusicContent.QualifiedIdentifier.description.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48) | (*(v0 + 50) << 16);
  switch(*(v0 + 50) >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_66_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_35_2();

      sub_2753B6DC8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      OUTLINED_FUNCTION_46_1();
      MEMORY[0x277C76100](v7 + 1, v8 | 0x8000000000000000);
      sub_2753B76B8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      OUTLINED_FUNCTION_32_2();
      sub_2753B7468();
      OUTLINED_FUNCTION_33_1();
      v6 = (v1 & 0x100) == 0;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_66_3();
      sub_2753B7398();
      OUTLINED_FUNCTION_35_2();

      sub_2753B6DC8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      MEMORY[0x277C76100](0xD000000000000011, 0x80000002753B98F0);
      sub_2753B76B8();
      OUTLINED_FUNCTION_42_2();
      MEMORY[0x277C76100]();

      OUTLINED_FUNCTION_32_2();
      sub_2753B7468();
      OUTLINED_FUNCTION_33_1();
      v6 = (v2 & 0x10000) == 0;
LABEL_7:
      if (v6)
      {
        v9 = 0x65736C6166;
      }

      else
      {
        v9 = 1702195828;
      }

      if (v6)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      v11 = v10;
      goto LABEL_18;
    case 3:
    case 4:
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_36_2();
      goto LABEL_17;
    case 5:
      if (*(*(v0 + 16) + 16))
      {
        OUTLINED_FUNCTION_66_3();

        sub_2753B7398();

        v12 = sub_2753B6DC8();
        MEMORY[0x277C76100](v12);

        OUTLINED_FUNCTION_46_1();
        MEMORY[0x277C76100](v13 | 0xC, v14 | 0x8000000000000000);
        sub_275361684(0, &qword_2809C1BB0);
        sub_275329E9C();
        v15 = sub_2753B6D48();
        v17 = v16;

        MEMORY[0x277C76100](v15, v17);
      }

      else
      {

        v18 = sub_2753B6DC8();
        MEMORY[0x277C76100](v18);
      }

      goto LABEL_19;
    default:
      if (*(*(v0 + 24) + 16))
      {
        OUTLINED_FUNCTION_66_3();

        sub_2753B7398();

        OUTLINED_FUNCTION_4_6();

        sub_2753B6DC8();
        OUTLINED_FUNCTION_42_2();
        MEMORY[0x277C76100]();

        OUTLINED_FUNCTION_46_1();
        MEMORY[0x277C76100](v3 + 9, v4 | 0x8000000000000000);
        sub_275361684(0, &qword_2809C1BB0);
        sub_275329E9C();
        sub_2753B6D48();

        v5 = OUTLINED_FUNCTION_129_0();
        MEMORY[0x277C76100](v5);
      }

      else
      {
        OUTLINED_FUNCTION_4_6();

LABEL_17:
        sub_2753B6DC8();
        OUTLINED_FUNCTION_42_2();
LABEL_18:
        MEMORY[0x277C76100](v9, v11);
      }

LABEL_19:

      MEMORY[0x277C76100](41, 0xE100000000000000);
      OUTLINED_FUNCTION_53_3();
      return;
  }
}

uint64_t sub_27535E3B4()
{
  OUTLINED_FUNCTION_39_3();
  sub_275360B3C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535E5D4()
{
  OUTLINED_FUNCTION_39_3();
  sub_275360DF0();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535E7F4()
{
  OUTLINED_FUNCTION_39_3();
  sub_275360F7C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535EA14()
{
  OUTLINED_FUNCTION_39_3();
  sub_275361184();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t static MusicContent.RawIdentifier.MediaAPI.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v2, &qword_2809C27F0, &qword_2809C27F8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2753C28B0;
  OUTLINED_FUNCTION_43_3();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2800);
  *(v3 + 56) = v5;
  v6 = sub_275360A58();
  OUTLINED_FUNCTION_64_3(v6);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_30_3();
  sub_275360AC0(v7);
  *(v3 + 96) = v8;
  v9 = sub_275360BE4(&qword_2809C2828, sub_275360AC0);
  OUTLINED_FUNCTION_75_3(v9);
  sub_275360B3C();
  sub_275360B90();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535EBD0(uint64_t a1)
{
  v2 = sub_2753642C8();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.Library.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v2, &qword_2809C2830, &qword_2809C2838);
  v4 = OUTLINED_FUNCTION_73_3(v3);
  *(v4 + 16) = xmmword_2753C96C0;
  sub_2753B64C8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2840);
  *(v4 + 56) = v6;
  v7 = sub_275360C90();
  OUTLINED_FUNCTION_64_3(v7);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  sub_2753B64C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275360CF8();
  *(v4 + 96) = v8;
  v9 = sub_275360BE4(&qword_2809C2858, sub_275360CF8);
  OUTLINED_FUNCTION_75_3(v9);
  OUTLINED_FUNCTION_129_0();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  v10 = OUTLINED_FUNCTION_30_3();
  sub_275360D74(v10);
  *(v4 + 136) = v11;
  v12 = sub_275360BE4(&qword_2809C2878, sub_275360D74);
  OUTLINED_FUNCTION_71_3(v12);
  sub_275360DF0();
  sub_275360E44();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535EE64(uint64_t a1)
{
  v2 = sub_275364274();

  return MEMORY[0x2821CC260](a1, v2);
}

void static MusicContent.RawIdentifier.CloudLibrary.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v2, &qword_2809C2880, &qword_2809C2888);
  v4 = OUTLINED_FUNCTION_73_3(v3);
  OUTLINED_FUNCTION_17_4(v4, xmmword_2753C96C0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2890);
  v7 = v6;
  v4[3].n128_u64[1] = v6;
  v8 = sub_275360E98();
  OUTLINED_FUNCTION_64_3(v8);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  sub_2753B64C8();
  swift_getKeyPath();
  v4[6].n128_u64[0] = v7;
  v4[6].n128_u64[1] = v8;
  __swift_allocate_boxed_opaque_existential_1(&v4[4].n128_i64[1]);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  v9 = OUTLINED_FUNCTION_30_3();
  sub_275360F00(v9);
  v4[8].n128_u64[1] = v10;
  v11 = sub_275360BE4(&qword_2809C28B8, sub_275360F00);
  OUTLINED_FUNCTION_71_3(v11);
  sub_275360F7C();
  sub_275360FD0();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_70_3();
}

uint64_t sub_27535F0C4(uint64_t a1)
{
  v2 = sub_275364220();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.PurchaseHistory.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v2, &qword_2809C28C0, &qword_2809C28C8);
  v4 = OUTLINED_FUNCTION_73_3(v3);
  OUTLINED_FUNCTION_17_4(v4, xmmword_2753C96C0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C28D0);
  v4[3].n128_u64[1] = v6;
  v7 = sub_275361024();
  OUTLINED_FUNCTION_64_3(v7);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_43_3();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_27536108C();
  v4[6].n128_u64[0] = v8;
  v9 = sub_275360BE4(&qword_2809C28E8, sub_27536108C);
  OUTLINED_FUNCTION_75_3(v9);
  OUTLINED_FUNCTION_129_0();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  v10 = OUTLINED_FUNCTION_30_3();
  sub_275361108(v10);
  v4[8].n128_u64[1] = v11;
  v12 = sub_275360BE4(&qword_2809C2908, sub_275361108);
  OUTLINED_FUNCTION_71_3(v12);
  sub_275361184();
  sub_2753611D8();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535F328(uint64_t a1)
{
  v2 = sub_2753641CC();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.StorePurchase.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_62_2(v2, &qword_2809C2910, &qword_2809C2918);
  v4 = OUTLINED_FUNCTION_73_3(v3);
  OUTLINED_FUNCTION_17_4(v4, xmmword_2753C96C0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_63_2(KeyPath, &qword_2809C2920);
  v4[3].n128_u64[1] = v6;
  v7 = sub_27536122C();
  OUTLINED_FUNCTION_64_3(v7);
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  OUTLINED_FUNCTION_43_3();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_3();
  sub_275361294();
  v4[6].n128_u64[0] = v8;
  v9 = sub_275360BE4(&qword_2809C2938, sub_275361294);
  OUTLINED_FUNCTION_75_3(v9);
  OUTLINED_FUNCTION_129_0();
  sub_2753B6368();
  OUTLINED_FUNCTION_22_2();
  swift_getKeyPath();
  v10 = OUTLINED_FUNCTION_30_3();
  sub_275361310(v10);
  v4[8].n128_u64[1] = v11;
  v12 = sub_275360BE4(&qword_2809C2948, sub_275361310);
  OUTLINED_FUNCTION_71_3(v12);
  sub_275361184();
  sub_2753611D8();
  OUTLINED_FUNCTION_9_4();
  return OUTLINED_FUNCTION_67_4();
}

uint64_t sub_27535F58C(uint64_t a1)
{
  v2 = sub_275364178();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t static MusicContent.RawIdentifier.Opaque.bindableValues()()
{
  v0 = sub_2753B64D8();
  v1 = OUTLINED_FUNCTION_75(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  sub_275360C38(0, &qword_2809C2950, &qword_2809C2958, &type metadata for MusicContent.RawIdentifier.Opaque);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2753BE420;
  OUTLINED_FUNCTION_43_3();
  swift_getKeyPath();
  sub_2753613E8(0, &qword_2809C2960, &type metadata for MusicContent.RawIdentifier.Opaque);
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_27536145C();
  __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  OUTLINED_FUNCTION_8_5();
  sub_2753B6368();
  return v2;
}

uint64_t sub_27535F760(uint64_t a1)
{
  v2 = sub_275364124();

  return MEMORY[0x2821CC260](a1, v2);
}

uint64_t sub_27535F97C()
{
  OUTLINED_FUNCTION_54_2();
  v1();
  v0();
  return sub_2753B6EF8();
}

uint64_t sub_27535FA24()
{
  OUTLINED_FUNCTION_45_3();
  v1();
  v0();
  return sub_2753B6EE8();
}

uint64_t sub_27535FAE0()
{
  OUTLINED_FUNCTION_45_3();
  v1();
  v0();
  return sub_2753B6ED8();
}

uint64_t sub_27535FB4C()
{
  OUTLINED_FUNCTION_39_3();
  sub_27536407C();
  v0 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x2821CC280](v0, v1);
}

uint64_t sub_27535FBD4()
{
  OUTLINED_FUNCTION_54_2();
  v1();
  v0();
  return sub_2753B6F08();
}

uint64_t sub_27535FC44(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2753B35FC(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_27535FCB0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_27535FCB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_27535FECC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_27535FDA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27535FDA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
    do
    {
      result = v6;
      v7 = v5;
      while (2)
      {
        v8 = *(v7 + 104) | (*(v7 + 106) << 16);
        v9 = (v8 >> 21) & 7;
        switch(*(v7 + 50) >> 5)
        {
          case 1:
            break;
          case 2:
            if ((3u >> v9))
            {
              goto LABEL_14;
            }

            break;
          case 3:
            if ((7u >> v9))
            {
              goto LABEL_14;
            }

            break;
          case 4:
            if ((0xFu >> v9))
            {
              goto LABEL_14;
            }

            break;
          case 5:
            if ((0x1Fu >> v9))
            {
              goto LABEL_14;
            }

            break;
          default:
            if ((2u >> v9))
            {
LABEL_14:
              if (!v4)
              {
                __break(1u);
                JUMPOUT(0x27535FEB4);
              }

              v10 = *(v7 + 56);
              v11 = *(v7 + 72);
              v12 = *(v7 + 16);
              *(v7 + 56) = *v7;
              v13 = *(v7 + 88);
              *(v7 + 72) = v12;
              *(v7 + 88) = *(v7 + 32);
              *(v7 + 104) = *(v7 + 48);
              *v7 = v10;
              *(v7 + 16) = v11;
              *(v7 + 32) = v13;
              *(v7 + 50) = BYTE2(v8);
              *(v7 + 48) = v8;
              v7 -= 56;
              if (!__CFADD__(result++, 1))
              {
                continue;
              }
            }

            break;
        }

        break;
      }

      ++a3;
      v5 += 56;
      --v6;
    }

    while (a3 != a2);
  }

  return result;
}

uint64_t sub_27535FECC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_117:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_119;
  }

  v5 = a4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
LABEL_3:
  v8 = v6;
  v9 = v6 + 1;
  if (v6 + 1 >= v4)
  {
    ++v6;
    goto LABEL_38;
  }

  LOBYTE(v10) = 0;
  v11 = ((*(*a3 + 56 * v9 + 48) | (*(*a3 + 56 * v9 + 50) << 16)) >> 21) & 7;
  switch(*(*a3 + 56 * v6 + 50) >> 5)
  {
    case 1:
      break;
    case 2:
      v10 = 3u >> v11;
      break;
    case 3:
      v10 = 7u >> v11;
      break;
    case 4:
      v10 = 0xFu >> v11;
      break;
    case 5:
      v10 = 0x1Fu >> v11;
      break;
    default:
      v10 = 2u >> v11;
      break;
  }

  v12 = v6 + 2;
  if (v4 <= v6 + 2)
  {
    v6 += 2;
  }

  else
  {
    v6 = v4;
  }

  v13 = 56 * v8;
  v14 = (*a3 + 56 * v8 + 160);
  while (2)
  {
    if (v12 >= v4)
    {
LABEL_29:
      if (v10)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

    ++v9;
    v15 = ((*v14 | (*(v14 + 2) << 16)) >> 21) & 7;
    switch(*(v14 - 54) >> 5)
    {
      case 1:
        if ((v10 & 1) == 0)
        {
          goto LABEL_27;
        }

        v6 = v12;
        goto LABEL_30;
      case 2:
        v16 = 60;
        goto LABEL_25;
      case 3:
        v17 = 0x38u >> v15;
        goto LABEL_26;
      case 4:
        v16 = 48;
        goto LABEL_25;
      case 5:
        v16 = 32;
LABEL_25:
        v17 = v16 >> v15;
LABEL_26:
        if ((v10 & 1) != (v17 & 1))
        {
          goto LABEL_27;
        }

        v6 = v9;
        goto LABEL_29;
      default:
        if ((v10 & 1) != ((0x3Du >> v15) & 1))
        {
LABEL_27:
          ++v12;
          v14 += 28;
          continue;
        }

        v6 = v12;
        if ((v10 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_30:
        if (v6 < v8)
        {
          goto LABEL_149;
        }

        if (v8 < v6)
        {
          v18 = 56 * v6;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_156;
              }

              v22 = (v21 + v13);
              v23 = *(v21 + v13 + 48);
              v24 = v21 + v18;
              v25 = *(v22 + 50);
              v26 = *v22;
              v27 = v22[1];
              v28 = v22[2];
              v29 = *(v24 - 40);
              v30 = *(v24 - 24);
              v31 = *(v24 - 56);
              *(v22 + 6) = *(v24 - 8);
              v22[1] = v29;
              v22[2] = v30;
              *v22 = v31;
              *(v24 - 56) = v26;
              *(v24 - 40) = v27;
              *(v24 - 24) = v28;
              *(v24 - 6) = v25;
              *(v24 - 8) = v23;
            }

            ++v20;
            v18 -= 56;
            v13 += 56;
          }

          while (v20 < v19);
          v4 = a3[1];
        }

LABEL_38:
        if (v6 >= v4)
        {
          goto LABEL_63;
        }

        if (__OFSUB__(v6, v8))
        {
          goto LABEL_148;
        }

        if (v6 - v8 >= v5)
        {
LABEL_63:
          if (v6 < v8)
          {
            goto LABEL_147;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275384E68();
            v7 = v85;
          }

          v44 = *(v7 + 16);
          v45 = v44 + 1;
          if (v44 >= *(v7 + 24) >> 1)
          {
            sub_275384E68();
            v7 = v86;
          }

          *(v7 + 16) = v45;
          v46 = v7 + 32;
          v47 = (v7 + 32 + 16 * v44);
          *v47 = v8;
          v47[1] = v6;
          __dst = *a1;
          if (!*a1)
          {
            goto LABEL_157;
          }

          if (v44)
          {
            while (1)
            {
              v48 = v45 - 1;
              v49 = (v46 + 16 * (v45 - 1));
              v50 = (v7 + 16 * v45);
              if (v45 >= 4)
              {
                break;
              }

              if (v45 == 3)
              {
                v51 = *(v7 + 32);
                v52 = *(v7 + 40);
                v61 = __OFSUB__(v52, v51);
                v53 = v52 - v51;
                v54 = v61;
LABEL_83:
                if (v54)
                {
                  goto LABEL_134;
                }

                v66 = *v50;
                v65 = v50[1];
                v67 = __OFSUB__(v65, v66);
                v68 = v65 - v66;
                v69 = v67;
                if (v67)
                {
                  goto LABEL_137;
                }

                v70 = v49[1];
                v71 = v70 - *v49;
                if (__OFSUB__(v70, *v49))
                {
                  goto LABEL_140;
                }

                if (__OFADD__(v68, v71))
                {
                  goto LABEL_142;
                }

                if (v68 + v71 >= v53)
                {
                  if (v53 < v71)
                  {
                    v48 = v45 - 2;
                  }

                  goto LABEL_105;
                }

                goto LABEL_98;
              }

              if (v45 < 2)
              {
                goto LABEL_136;
              }

              v73 = *v50;
              v72 = v50[1];
              v61 = __OFSUB__(v72, v73);
              v68 = v72 - v73;
              v69 = v61;
LABEL_98:
              if (v69)
              {
                goto LABEL_139;
              }

              v75 = *v49;
              v74 = v49[1];
              v61 = __OFSUB__(v74, v75);
              v76 = v74 - v75;
              if (v61)
              {
                goto LABEL_141;
              }

              if (v76 < v68)
              {
                goto LABEL_112;
              }

LABEL_105:
              if (v48 - 1 >= v45)
              {
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
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
                goto LABEL_151;
              }

              if (!*a3)
              {
                goto LABEL_154;
              }

              v80 = v7;
              v81 = (v46 + 16 * (v48 - 1));
              v82 = *v81;
              v83 = v46 + 16 * v48;
              v7 = *(v83 + 8);
              sub_275360660((*a3 + 56 * *v81), (*a3 + 56 * *v83), *a3 + 56 * v7, __dst);
              if (v99)
              {
              }

              if (v7 < v82)
              {
                goto LABEL_129;
              }

              v84 = *(v80 + 16);
              if (v48 > v84)
              {
                goto LABEL_130;
              }

              *v81 = v82;
              v81[1] = v7;
              if (v48 >= v84)
              {
                goto LABEL_131;
              }

              v99 = 0;
              v45 = v84 - 1;
              sub_2753B219C((v83 + 16), v84 - 1 - v48, (v46 + 16 * v48));
              v7 = v80;
              *(v80 + 16) = v84 - 1;
              if (v84 <= 2)
              {
                goto LABEL_112;
              }
            }

            v55 = v46 + 16 * v45;
            v56 = *(v55 - 64);
            v57 = *(v55 - 56);
            v61 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            if (v61)
            {
              goto LABEL_132;
            }

            v60 = *(v55 - 48);
            v59 = *(v55 - 40);
            v61 = __OFSUB__(v59, v60);
            v53 = v59 - v60;
            v54 = v61;
            if (v61)
            {
              goto LABEL_133;
            }

            v62 = v50[1];
            v63 = v62 - *v50;
            if (__OFSUB__(v62, *v50))
            {
              goto LABEL_135;
            }

            v61 = __OFADD__(v53, v63);
            v64 = v53 + v63;
            if (v61)
            {
              goto LABEL_138;
            }

            if (v64 >= v58)
            {
              v78 = *v49;
              v77 = v49[1];
              v61 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v61)
              {
                goto LABEL_146;
              }

              if (v53 < v79)
              {
                v48 = v45 - 2;
              }

              goto LABEL_105;
            }

            goto LABEL_83;
          }

LABEL_112:
          v4 = a3[1];
          v5 = a4;
          if (v6 >= v4)
          {
            goto LABEL_117;
          }

          goto LABEL_3;
        }

        if (__OFADD__(v8, v5))
        {
          goto LABEL_150;
        }

        if (v8 + v5 < v4)
        {
          v4 = v8 + v5;
        }

        if (v4 >= v8)
        {
          if (v6 != v4)
          {
            v32 = *a3;
            v33 = *a3 + 56 * v6 - 56;
            v34 = v8 - v6;
LABEL_47:
            v35 = v34;
            v36 = v33;
            while (2)
            {
              v37 = *(v36 + 104) | (*(v36 + 106) << 16);
              v38 = (v37 >> 21) & 7;
              switch(*(v36 + 50) >> 5)
              {
                case 1:
                  goto LABEL_61;
                case 2:
                  if (((3u >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_58;
                case 3:
                  if (((7u >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_58;
                case 4:
                  if (((0xFu >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_58;
                case 5:
                  if ((0x1Fu >> v38))
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_61;
                default:
                  if (((2u >> v38) & 1) == 0)
                  {
                    goto LABEL_61;
                  }

LABEL_58:
                  if (!v32)
                  {
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
                    JUMPOUT(0x275360618);
                  }

                  v39 = *(v36 + 56);
                  v40 = *(v36 + 72);
                  v41 = *(v36 + 16);
                  *(v36 + 56) = *v36;
                  v42 = *(v36 + 88);
                  *(v36 + 72) = v41;
                  *(v36 + 88) = *(v36 + 32);
                  *(v36 + 104) = *(v36 + 48);
                  *v36 = v39;
                  *(v36 + 16) = v40;
                  *(v36 + 32) = v42;
                  *(v36 + 50) = BYTE2(v37);
                  *(v36 + 48) = v37;
                  v36 -= 56;
                  if (!__CFADD__(v35++, 1))
                  {
                    continue;
                  }

LABEL_61:
                  ++v6;
                  v33 += 56;
                  --v34;
                  if (v6 != v4)
                  {
                    goto LABEL_47;
                  }

                  v6 = v4;
                  break;
              }

              break;
            }
          }

          goto LABEL_63;
        }

LABEL_151:
        __break(1u);
LABEL_152:
        v7 = sub_2753B20A8(v7);
LABEL_119:
        v87 = (v7 + 16);
        v88 = *(v7 + 16);
        while (v88 >= 2)
        {
          if (!*a3)
          {
            goto LABEL_155;
          }

          v89 = v7;
          v90 = (v7 + 16 * v88);
          v91 = *v90;
          v92 = &v87[2 * v88];
          v7 = v92[1];
          sub_275360660((*a3 + 56 * *v90), (*a3 + 56 * *v92), *a3 + 56 * v7, __dst);
          if (v99)
          {
            break;
          }

          if (v7 < v91)
          {
            goto LABEL_143;
          }

          if (v88 - 2 >= *v87)
          {
            goto LABEL_144;
          }

          *v90 = v91;
          v90[1] = v7;
          v93 = *v87 - v88;
          if (*v87 < v88)
          {
            goto LABEL_145;
          }

          v99 = 0;
          v88 = *v87 - 1;
          memmove(v92, v92 + 2, 16 * v93);
          *v87 = v88;
          v7 = v89;
        }
    }
  }
}