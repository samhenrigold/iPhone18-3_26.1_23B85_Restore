uint64_t sub_1DD76ED30(uint64_t a1)
{
  result = sub_1DD875020();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemPromptResolution.RequirementResolution(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseVisual.ResponseVisualOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

void sub_1DD76EF58(uint64_t a1)
{
  sub_1DD76F0A4(319);
  if (v1 <= 0x3F)
  {
    sub_1DD76F160(319, qword_1EE017860, &type metadata for ResponseDialog);
    if (v2 <= 0x3F)
    {
      sub_1DD76F160(319, &unk_1EE0176F8, &type metadata for ResponseVisual);
      if (v3 <= 0x3F)
      {
        sub_1DD76F108(319);
        if (v4 <= 0x3F)
        {
          sub_1DD76F160(319, &qword_1EE018D28, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1DD76F160(319, &qword_1EE015DB0, MEMORY[0x1E69E6370]);
            if (v6 <= 0x3F)
            {
              sub_1DD76F160(319, &qword_1EE017628, &type metadata for ResponseManifest.ResponseDialogPresentationHint);
              if (v7 <= 0x3F)
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

void sub_1DD76F0A4(uint64_t a1)
{
  if (!qword_1EE015DD8)
  {
    sub_1DD717E88(&qword_1ECD0F7E8, &qword_1DD87F318);
    v1 = sub_1DD8755C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE015DD8);
    }
  }
}

void sub_1DD76F108(uint64_t a1)
{
  if (!qword_1EE017780)
  {
    type metadata accessor for ResponseVisual.UIType(255);
    v1 = sub_1DD8755C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE017780);
    }
  }
}

void sub_1DD76F160(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DD8755C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ResponseManifest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseVisual.UIType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1DD76F4DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s16IntelligenceFlow14MessagePayloadO8UserTurnO6SpeechVwet_0_0(unsigned __int8 *a1, int a2)
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

  return sub_1DD6E9558(a1);
}

_BYTE *sub_1DD76F5F4(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1DD76F6A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD76F77C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 6);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 6);
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

  return sub_1DD6DEAA4(v8);
}

_BYTE *sub_1DD76F800(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD76F8D0()
{
  result = qword_1ECD0F878;
  if (!qword_1ECD0F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F878);
  }

  return result;
}

unint64_t sub_1DD76F928()
{
  result = qword_1ECD0F880;
  if (!qword_1ECD0F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F880);
  }

  return result;
}

unint64_t sub_1DD76F980()
{
  result = qword_1ECD0F888;
  if (!qword_1ECD0F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F888);
  }

  return result;
}

unint64_t sub_1DD76F9D8()
{
  result = qword_1ECD0F890;
  if (!qword_1ECD0F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F890);
  }

  return result;
}

unint64_t sub_1DD76FA30()
{
  result = qword_1ECD0F898;
  if (!qword_1ECD0F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F898);
  }

  return result;
}

unint64_t sub_1DD76FA88()
{
  result = qword_1ECD0F8A0;
  if (!qword_1ECD0F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8A0);
  }

  return result;
}

unint64_t sub_1DD76FAE0()
{
  result = qword_1ECD0F8A8;
  if (!qword_1ECD0F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8A8);
  }

  return result;
}

unint64_t sub_1DD76FB38()
{
  result = qword_1ECD0F8B0;
  if (!qword_1ECD0F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8B0);
  }

  return result;
}

unint64_t sub_1DD76FB90()
{
  result = qword_1ECD0F8B8;
  if (!qword_1ECD0F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8B8);
  }

  return result;
}

unint64_t sub_1DD76FBE8()
{
  result = qword_1ECD0F8C0;
  if (!qword_1ECD0F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8C0);
  }

  return result;
}

unint64_t sub_1DD76FC40()
{
  result = qword_1ECD0F8C8;
  if (!qword_1ECD0F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8C8);
  }

  return result;
}

unint64_t sub_1DD76FC98()
{
  result = qword_1ECD0F8D0;
  if (!qword_1ECD0F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8D0);
  }

  return result;
}

unint64_t sub_1DD76FCF0()
{
  result = qword_1ECD0F8D8;
  if (!qword_1ECD0F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8D8);
  }

  return result;
}

unint64_t sub_1DD76FD48()
{
  result = qword_1ECD0F8E0;
  if (!qword_1ECD0F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8E0);
  }

  return result;
}

unint64_t sub_1DD76FDA0()
{
  result = qword_1ECD0F8E8;
  if (!qword_1ECD0F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8E8);
  }

  return result;
}

unint64_t sub_1DD76FDF8()
{
  result = qword_1ECD0F8F0;
  if (!qword_1ECD0F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8F0);
  }

  return result;
}

unint64_t sub_1DD76FE50()
{
  result = qword_1ECD0F8F8;
  if (!qword_1ECD0F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F8F8);
  }

  return result;
}

unint64_t sub_1DD76FEA8()
{
  result = qword_1ECD0F900;
  if (!qword_1ECD0F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F900);
  }

  return result;
}

unint64_t sub_1DD76FF00()
{
  result = qword_1ECD0F908;
  if (!qword_1ECD0F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F908);
  }

  return result;
}

unint64_t sub_1DD76FF58()
{
  result = qword_1ECD0F910;
  if (!qword_1ECD0F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F910);
  }

  return result;
}

unint64_t sub_1DD76FFB0()
{
  result = qword_1ECD0F918;
  if (!qword_1ECD0F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F918);
  }

  return result;
}

unint64_t sub_1DD770008()
{
  result = qword_1ECD0F920;
  if (!qword_1ECD0F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F920);
  }

  return result;
}

unint64_t sub_1DD770060()
{
  result = qword_1ECD0F928;
  if (!qword_1ECD0F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F928);
  }

  return result;
}

unint64_t sub_1DD7700B8()
{
  result = qword_1ECD0F930;
  if (!qword_1ECD0F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F930);
  }

  return result;
}

unint64_t sub_1DD770110()
{
  result = qword_1ECD0F938;
  if (!qword_1ECD0F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F938);
  }

  return result;
}

unint64_t sub_1DD770168()
{
  result = qword_1ECD0F940;
  if (!qword_1ECD0F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F940);
  }

  return result;
}

unint64_t sub_1DD7701C0()
{
  result = qword_1ECD0F948;
  if (!qword_1ECD0F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F948);
  }

  return result;
}

unint64_t sub_1DD770218()
{
  result = qword_1ECD0F950;
  if (!qword_1ECD0F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F950);
  }

  return result;
}

unint64_t sub_1DD770270()
{
  result = qword_1ECD0F958;
  if (!qword_1ECD0F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F958);
  }

  return result;
}

unint64_t sub_1DD7702C8()
{
  result = qword_1ECD0F960;
  if (!qword_1ECD0F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F960);
  }

  return result;
}

unint64_t sub_1DD770320()
{
  result = qword_1ECD0F968;
  if (!qword_1ECD0F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F968);
  }

  return result;
}

unint64_t sub_1DD770378()
{
  result = qword_1ECD0F970;
  if (!qword_1ECD0F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F970);
  }

  return result;
}

unint64_t sub_1DD7703D0()
{
  result = qword_1ECD0F978;
  if (!qword_1ECD0F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F978);
  }

  return result;
}

unint64_t sub_1DD770428()
{
  result = qword_1ECD0F980;
  if (!qword_1ECD0F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F980);
  }

  return result;
}

unint64_t sub_1DD770480()
{
  result = qword_1ECD0F988;
  if (!qword_1ECD0F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F988);
  }

  return result;
}

unint64_t sub_1DD7704D8()
{
  result = qword_1ECD0F990;
  if (!qword_1ECD0F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F990);
  }

  return result;
}

unint64_t sub_1DD770530()
{
  result = qword_1ECD0F998;
  if (!qword_1ECD0F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F998);
  }

  return result;
}

unint64_t sub_1DD770588()
{
  result = qword_1ECD0F9A0;
  if (!qword_1ECD0F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9A0);
  }

  return result;
}

unint64_t sub_1DD7705E0()
{
  result = qword_1ECD0F9A8;
  if (!qword_1ECD0F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9A8);
  }

  return result;
}

unint64_t sub_1DD770638()
{
  result = qword_1ECD0F9B0;
  if (!qword_1ECD0F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9B0);
  }

  return result;
}

unint64_t sub_1DD770690()
{
  result = qword_1ECD0F9B8;
  if (!qword_1ECD0F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9B8);
  }

  return result;
}

unint64_t sub_1DD7706E8()
{
  result = qword_1ECD0F9C0;
  if (!qword_1ECD0F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9C0);
  }

  return result;
}

unint64_t sub_1DD770740()
{
  result = qword_1ECD0F9C8;
  if (!qword_1ECD0F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9C8);
  }

  return result;
}

unint64_t sub_1DD770798()
{
  result = qword_1ECD0F9D0;
  if (!qword_1ECD0F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9D0);
  }

  return result;
}

unint64_t sub_1DD7707F0()
{
  result = qword_1ECD0F9D8;
  if (!qword_1ECD0F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9D8);
  }

  return result;
}

unint64_t sub_1DD770848()
{
  result = qword_1ECD0F9E0;
  if (!qword_1ECD0F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9E0);
  }

  return result;
}

unint64_t sub_1DD7708A0()
{
  result = qword_1ECD0F9E8;
  if (!qword_1ECD0F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9E8);
  }

  return result;
}

unint64_t sub_1DD7708F8()
{
  result = qword_1ECD0F9F0;
  if (!qword_1ECD0F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9F0);
  }

  return result;
}

unint64_t sub_1DD770950()
{
  result = qword_1ECD0F9F8;
  if (!qword_1ECD0F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F9F8);
  }

  return result;
}

unint64_t sub_1DD7709A8()
{
  result = qword_1ECD0FA00;
  if (!qword_1ECD0FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA00);
  }

  return result;
}

unint64_t sub_1DD770A00()
{
  result = qword_1ECD0FA08;
  if (!qword_1ECD0FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA08);
  }

  return result;
}

unint64_t sub_1DD770A58()
{
  result = qword_1ECD0FA10;
  if (!qword_1ECD0FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA10);
  }

  return result;
}

unint64_t sub_1DD770AB0()
{
  result = qword_1ECD0FA18;
  if (!qword_1ECD0FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA18);
  }

  return result;
}

unint64_t sub_1DD770B08()
{
  result = qword_1ECD0FA20;
  if (!qword_1ECD0FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA20);
  }

  return result;
}

unint64_t sub_1DD770B60()
{
  result = qword_1ECD0FA28;
  if (!qword_1ECD0FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FA28);
  }

  return result;
}

uint64_t sub_1DD770C5C(uint64_t a1)
{

  return sub_1DD76DFE0(a1, v1 + 792, v2, v3);
}

uint64_t sub_1DD770C78(uint64_t a1, uint64_t a2)
{

  return sub_1DD76DFE0(a1, a2, v2, v3);
}

uint64_t sub_1DD770CCC()
{
}

uint64_t sub_1DD770CE4(uint64_t a1)
{

  return sub_1DD76DFE0(a1, v1 + 152, v3, v2);
}

uint64_t sub_1DD770D00(uint64_t a1)
{

  return sub_1DD76DFE0(a1, v1 + 344, v3, v2);
}

uint64_t sub_1DD770D1C@<X0>(char a1@<W8>)
{
  *(v1 + 16) = a1;

  return sub_1DD875920();
}

void sub_1DD770D40(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

__n128 sub_1DD770D84@<Q0>(uint64_t a1@<X8>)
{
  result = *(*(v1 + 8) + a1);
  *(v2 - 192) = result;
  return result;
}

double sub_1DD770DA4(uint64_t a1)
{

  return sub_1DD76DFA0(a1, v1);
}

uint64_t sub_1DD770DC4(uint64_t a1)
{

  return sub_1DD875B20();
}

void *sub_1DD770DDC(void *a1)
{

  return memcpy(a1, (v1 + 792), 0x60uLL);
}

uint64_t sub_1DD770DF4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1DD770E44(uint64_t a1)
{
  v2 = sub_1DD770EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD770E80(uint64_t a1)
{
  v2 = sub_1DD770EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD770EF0()
{
  result = qword_1ECD0FB28;
  if (!qword_1ECD0FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB28);
  }

  return result;
}

uint64_t _s16IntelligenceFlow14ResponseOutputV06VisualD0O012LiveActivityD7PayloadV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD770FD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD77106C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD770FD8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD771098(uint64_t a1)
{
  v2 = sub_1DD77125C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7710D4(uint64_t a1)
{
  v2 = sub_1DD77125C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD771144()
{
  sub_1DD6DED2C();
  v11 = v1;
  v4 = sub_1DD710A9C(v2, v3);
  sub_1DD6DDEAC();
  v6 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E7258();
  v8 = sub_1DD6DDEDC();
  v10 = sub_1DD6DEA7C(v8, v9);
  v11(v10);
  sub_1DD875BB0();
  sub_1DD875970();
  (*(v6 + 8))(v0, v4);
  sub_1DD6E0C78();
}

unint64_t sub_1DD77125C()
{
  result = qword_1ECD0FB40;
  if (!qword_1ECD0FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB40);
  }

  return result;
}

void sub_1DD7712E4()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v15 = v5;
  sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = sub_1DD6DEA7C(v4, v4[3]);
  v2(v9);
  sub_1DD875B90();
  if (!v0)
  {
    v10 = sub_1DD875870();
    v12 = v11;
    v13 = sub_1DD6DDEDC();
    v14(v13);
    *v15 = v10;
    v15[1] = v12;
  }

  sub_1DD6E1EC8(v4);
  sub_1DD6E0C78();
}

uint64_t static RGPluginModel.== infix(_:_:)()
{
  v0 = sub_1DD6E0D28();
  type metadata accessor for RGPluginModel(v0);
  sub_1DD6E0ABC();
  sub_1DD7718BC(v1);
  sub_1DD8748B0();
  v3 = v2;
  sub_1DD8748B0();
  if (v3 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      v5 = sub_1DD6ED118();
      sub_1DD70104C(v5, v6);
      return 1;
    }

    goto LABEL_5;
  }

  if (v4 >> 60 == 15)
  {
LABEL_5:
    v8 = sub_1DD6ED118();
    sub_1DD70104C(v8, v9);
    v10 = sub_1DD770D4C();
    sub_1DD70104C(v10, v11);
    return 0;
  }

  v12 = sub_1DD6ED118();
  sub_1DD76D0F4(v12, v13);
  v14 = sub_1DD770D4C();
  sub_1DD76D0F4(v14, v15);
  v16 = sub_1DD6ED118();
  v17 = MEMORY[0x1E12B41A0](v16);
  v18 = sub_1DD770D4C();
  sub_1DD70104C(v18, v19);
  v20 = sub_1DD770D4C();
  sub_1DD70104C(v20, v21);
  v22 = sub_1DD6ED118();
  sub_1DD70104C(v22, v23);
  v24 = sub_1DD6ED118();
  sub_1DD70104C(v24, v25);
  return v17 & 1;
}

uint64_t sub_1DD7715DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F4D6E6967756C70 && a2 == 0xEB000000006C6564)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD77167C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7715DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7716A8(uint64_t a1)
{
  v2 = sub_1DD771868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7716E4(uint64_t a1)
{
  v2 = sub_1DD771868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseOutput.VisualOutput.SystemSnippetOutputPayload.encode(to:)(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0FB58, &qword_1DD8814F0);
  sub_1DD6DDEAC();
  v4 = v3;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEBA0();
  v6 = sub_1DD6ED180();
  sub_1DD6DEA7C(v6, v7);
  sub_1DD771868();
  sub_1DD875BB0();
  type metadata accessor for RGPluginModel(0);
  sub_1DD6E0ABC();
  sub_1DD7718BC(v8);
  sub_1DD8759D0();
  return (*(v4 + 8))(v1, v2);
}

unint64_t sub_1DD771868()
{
  result = qword_1ECD0FB60;
  if (!qword_1ECD0FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB60);
  }

  return result;
}

unint64_t sub_1DD7718BC(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void ResponseOutput.VisualOutput.SystemSnippetOutputPayload.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v17 = v3;
  type metadata accessor for RGPluginModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v18 = v6 - v5;
  v7 = sub_1DD710A9C(&qword_1ECD0FB70, &qword_1DD8814F8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E9560();
  v9 = type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
  v10 = sub_1DD6DEA10(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v13 = v12 - v11;
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD771868();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD6E0ABC();
    sub_1DD7718BC(v14);
    sub_1DD8758D0();
    v15 = sub_1DD6ED80C();
    v16(v15, v7);
    sub_1DD6E95EC();
    sub_1DD771B18(v18, v13);
    sub_1DD6DEDBC();
    sub_1DD771B18(v13, v17);
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

uint64_t sub_1DD771B18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v4(v3);
  sub_1DD6DE1C4();
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return a2;
}

uint64_t ResponseOutput.VisualOutput.PluginSnippetOutputPayload.pluginModelData.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t ResponseOutput.VisualOutput.PluginSnippetOutputPayload.init(pluginModelData:bundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static ResponseOutput.VisualOutput.PluginSnippetOutputPayload.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1E12B41A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  sub_1DD6DDEFC();

  return sub_1DD875A30();
}

uint64_t sub_1DD771C94(uint64_t a1)
{
  v2 = sub_1DD771E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD771CD0(uint64_t a1)
{
  v2 = sub_1DD771E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.PluginSnippetOutputPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD0FB80, &qword_1DD881500);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  v5 = *v0;
  v6 = v0[1];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD710E74(v5, v6);
  sub_1DD771E70();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD6DE334();
  sub_1DD8759D0();
  sub_1DD6E6658(v5, v6);
  if (!v1)
  {
    sub_1DD6DE334();
    sub_1DD875970();
  }

  v7 = sub_1DD6DE58C();
  v8(v7);
  sub_1DD6E0C78();
}

unint64_t sub_1DD771E70()
{
  result = qword_1ECD0FB88;
  if (!qword_1ECD0FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FB88);
  }

  return result;
}

void ResponseOutput.VisualOutput.PluginSnippetOutputPayload.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD0FB90, &qword_1DD881508);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD771E70();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD6FF994();
    sub_1DD8758D0();
    v6 = sub_1DD875870();
    v8 = v7;
    v9 = sub_1DD6DFF30();
    v10(v9);
    *v4 = v11;
    v4[1] = v12;
    v4[2] = v6;
    v4[3] = v8;
    sub_1DD710E74(v11, v12);

    sub_1DD6E1EC8(v2);
    sub_1DD6E6658(v11, v12);
  }

  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 16))
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v7 >> 60) & 3 | v11;
  switch((v4 >> 60) & 3 | v10)
  {
    case 1uLL:
      if (v12 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    case 2uLL:
      if (v12 != 2)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    case 3uLL:
      if (v12 != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    case 4uLL:
      if (v12 == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    case 5uLL:
      if (v12 != 5)
      {
        goto LABEL_28;
      }

LABEL_19:
      sub_1DD6DF268();
      sub_1DD7722F0(v8, v7, v9, v21);
      v22 = sub_1DD6E1F14();
      sub_1DD7722F0(v22, v23, v24, v2);
      v18 = v4 & 0xCFFFFFFFFFFFFFFFLL;
      v20 = v7 & 0xCFFFFFFFFFFFFFFFLL;
      v17 = v5;
      v19 = v8;
      goto LABEL_20;
    case 6uLL:
      if (v12 != 6 || v8 != 0 || v7 != 0x2000000000000000)
      {
        goto LABEL_28;
      }

      sub_1DD7722F0(*a1, v4, v6, sub_1DD6E6658);
      sub_1DD7722F0(0, 0x2000000000000000uLL, v9, sub_1DD6E6658);
      return 1;
    default:
      if (v12)
      {
LABEL_28:
        sub_1DD6DF268();
        sub_1DD7722F0(v8, v7, v9, v32);
        v33 = sub_1DD6E1F14();
        sub_1DD7722F0(v33, v34, v35, v2);
        sub_1DD7722F0(v5, v4, v6, sub_1DD6E6658);
        v36 = sub_1DD6E87AC();
        sub_1DD7722F0(v36, v37, v9, sub_1DD6E6658);
        return 0;
      }

      else
      {
LABEL_11:
        sub_1DD6DF268();
        sub_1DD7722F0(v8, v7, v9, v13);
        v14 = sub_1DD6E1F14();
        sub_1DD7722F0(v14, v15, v16, v2);
        v17 = sub_1DD6DDEDC();
        v19 = v8;
        v20 = v7;
LABEL_20:
        v25 = MEMORY[0x1E12B41A0](v17, v18, v19, v20);
        sub_1DD6E6A8C();
        sub_1DD7722F0(v5, v4, v6, v26);
        v27 = sub_1DD6E87AC();
        sub_1DD7722F0(v27, v28, v9, v3);
        return v25 & 1;
      }
  }
}

uint64_t sub_1DD7722F0(uint64_t result, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  switch((a2 >> 60) & 3 | v4)
  {
    case 0uLL:
    case 4uLL:
      goto LABEL_6;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 5uLL:
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
LABEL_6:
      result = a4(result, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD77233C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7377656956646461 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C616944646461 && a2 == 0xEA00000000007367;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7449796173 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7449746165706572 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001DD8B5CF0 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x46646E616D6D6F63 && a2 == 0xED000064656C6961;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701736302 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD772588(char a1)
{
  result = 0x7377656956646461;
  switch(a1)
  {
    case 1:
      result = 0x6F6C616944646461;
      break;
    case 2:
      result = 0x7449796173;
      break;
    case 3:
      result = 0x7449746165706572;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x46646E616D6D6F63;
      break;
    case 6:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD772658(uint64_t a1)
{
  v2 = sub_1DD7733D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772694(uint64_t a1)
{
  v2 = sub_1DD7733D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7726D0(uint64_t a1)
{
  v2 = sub_1DD773424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD77270C(uint64_t a1)
{
  v2 = sub_1DD773424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD77233C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD772778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD772580();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7727A0(uint64_t a1)
{
  v2 = sub_1DD7731D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7727DC(uint64_t a1)
{
  v2 = sub_1DD7731D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772818(uint64_t a1)
{
  v2 = sub_1DD773280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772854(uint64_t a1)
{
  v2 = sub_1DD773280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772890(uint64_t a1)
{
  v2 = sub_1DD77322C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7728CC(uint64_t a1)
{
  v2 = sub_1DD77322C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772908(uint64_t a1)
{
  v2 = sub_1DD773328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772944(uint64_t a1)
{
  v2 = sub_1DD773328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD772980(uint64_t a1)
{
  v2 = sub_1DD7732D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7729BC(uint64_t a1)
{
  v2 = sub_1DD7732D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7729F8(uint64_t a1)
{
  v2 = sub_1DD77337C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD772A34(uint64_t a1)
{
  v2 = sub_1DD77337C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v55 = sub_1DD710A9C(&qword_1ECD0FB98, &qword_1DD881510);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E0C6C();
  v54 = v5;
  v56 = sub_1DD710A9C(&qword_1ECD0FBA0, &qword_1DD881518);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FBA8, &qword_1DD881520);
  sub_1DD6DDEAC();
  v53 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FBB0, &qword_1DD881528);
  sub_1DD6DDEAC();
  v52 = v9;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E0C6C();
  sub_1DD77E738(v11);
  sub_1DD710A9C(&qword_1ECD0FBB8, &qword_1DD881530);
  sub_1DD6DDEAC();
  v51 = v12;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E0C6C();
  v50 = sub_1DD710A9C(&qword_1ECD0FBC0, &qword_1DD881538);
  sub_1DD6DDEAC();
  v49 = v14;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E17C8();
  v16 = sub_1DD710A9C(&qword_1ECD0FBC8, &qword_1DD881540);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E9560();
  sub_1DD710A9C(&qword_1ECD0FBD0, &qword_1DD881548);
  sub_1DD6DDEAC();
  v58 = v18;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6E0C6C();
  v20 = v1[1];
  v57 = *v1;
  v21 = *(v1 + 16);
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD7731D8();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (v21)
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  switch((v20 >> 60) & 3 | v22)
  {
    case 1uLL:
      sub_1DD7733D0();
      sub_1DD6FF994();
      sub_1DD875910();
      v59 = v57;
      v60 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1DD712070();
      sub_1DD8759D0();
      (*(v49 + 8))(v0, v50);
      v27 = sub_1DD700BFC();
      v29 = v58;
      goto LABEL_13;
    case 2uLL:
      v30 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1DD77337C();
      v31 = v58;
      sub_1DD6F3128();
      sub_1DD875910();
      v59 = v57;
      v60 = v30;
      v32 = sub_1DD712070();
      v33 = v51;
      sub_1DD6E7268(&v59, v34, v35, MEMORY[0x1E6969080], v32);
      goto LABEL_12;
    case 3uLL:
      v36 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1DD773328();
      v31 = v58;
      sub_1DD6F3128();
      sub_1DD875910();
      v59 = v57;
      v60 = v36;
      v37 = sub_1DD712070();
      v33 = v52;
      sub_1DD6E7268(&v59, v38, v39, MEMORY[0x1E6969080], v37);
      goto LABEL_12;
    case 4uLL:
      sub_1DD7732D4();
      v23 = v58;
      sub_1DD6FF994();
      sub_1DD875910();
      v59 = v57;
      v60 = v20;
      sub_1DD712070();
      sub_1DD8759D0();
      v24 = sub_1DD6E61C4();
      v26 = v53;
      goto LABEL_7;
    case 5uLL:
      v40 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1DD773280();
      v31 = v58;
      sub_1DD6F3128();
      sub_1DD875910();
      v59 = v57;
      v60 = v40;
      v41 = sub_1DD712070();
      v33 = v56;
      sub_1DD6E7268(&v59, v42, v43, MEMORY[0x1E6969080], v41);
LABEL_12:
      v44 = sub_1DD6E61C4();
      v45(v44, v33);
      v27 = sub_1DD700BFC();
      v29 = v31;
      goto LABEL_13;
    case 6uLL:
      LOBYTE(v59) = 6;
      sub_1DD77322C();
      sub_1DD6FF994();
      sub_1DD875910();
      sub_1DD6E5918();
      v46(v54, v55);
      v47 = sub_1DD700BFC();
      v48(v47, v58);
      goto LABEL_14;
    default:
      sub_1DD773424();
      v23 = v58;
      sub_1DD6FF994();
      sub_1DD875910();
      v59 = v57;
      v60 = v20;
      sub_1DD712070();
      sub_1DD8759D0();
      v24 = sub_1DD6ED80C();
      v26 = v16;
LABEL_7:
      v25(v24, v26);
      v27 = sub_1DD700BFC();
      v29 = v23;
LABEL_13:
      v28(v27, v29);
LABEL_14:
      sub_1DD6E0C78();
      return;
  }
}

unint64_t sub_1DD7731D8()
{
  result = qword_1ECD0FBD8;
  if (!qword_1ECD0FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBD8);
  }

  return result;
}

unint64_t sub_1DD77322C()
{
  result = qword_1ECD0FBE0;
  if (!qword_1ECD0FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBE0);
  }

  return result;
}

unint64_t sub_1DD773280()
{
  result = qword_1ECD0FBE8;
  if (!qword_1ECD0FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBE8);
  }

  return result;
}

unint64_t sub_1DD7732D4()
{
  result = qword_1ECD0FBF0;
  if (!qword_1ECD0FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBF0);
  }

  return result;
}

unint64_t sub_1DD773328()
{
  result = qword_1ECD0FBF8;
  if (!qword_1ECD0FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FBF8);
  }

  return result;
}

unint64_t sub_1DD77337C()
{
  result = qword_1ECD0FC00;
  if (!qword_1ECD0FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC00);
  }

  return result;
}

unint64_t sub_1DD7733D0()
{
  result = qword_1ECD0FC08;
  if (!qword_1ECD0FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC08);
  }

  return result;
}

unint64_t sub_1DD773424()
{
  result = qword_1ECD0FC10;
  if (!qword_1ECD0FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC10);
  }

  return result;
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v76 = v4;
  sub_1DD710A9C(&qword_1ECD0FC18, &qword_1DD881550);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FC20, &qword_1DD881558);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FC28, &qword_1DD881560);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FC30, &qword_1DD881568);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v9);
  sub_1DD710A9C(&qword_1ECD0FC38, &qword_1DD881570);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FC40, &qword_1DD881578);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD0FC48, &qword_1DD881580);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DEA6C();
  v13 = sub_1DD710A9C(&qword_1ECD0FC50, &unk_1DD881588);
  sub_1DD6DDEAC();
  v15 = v14;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E7258();
  v77 = v3;
  v17 = sub_1DD6ED180();
  sub_1DD6DEA7C(v17, v18);
  sub_1DD7731D8();
  sub_1DD875B90();
  if (!v0)
  {
    v80 = v15;
    sub_1DD875900();
    sub_1DD6ED750();
    if (v20 == v19 >> 1)
    {
      v21 = v15;
    }

    else
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v28 == v29)
      {
        __break(1u);
        return;
      }

      v30 = v1;
      v31 = *(v27 + v26);
      sub_1DD77E6E4(v22, v23, v24, v25, v26);
      sub_1DD6ED830();
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      if (v33 == v35 >> 1)
      {
        switch(v31)
        {
          case 1:
            LOBYTE(v78) = 1;
            sub_1DD7733D0();
            sub_1DD6E7150(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.AddDialogsCodingKeys, &v78);
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v67 = sub_1DD6DE58C();
            v68(v67);
            v69 = sub_1DD6E08C4();
            v70(v69);
            sub_1DD700BD8();
            v66 = v71 | 0x1000000000000000;
            break;
          case 2:
            LOBYTE(v78) = 2;
            sub_1DD77337C();
            sub_1DD6E7150(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.SayItCodingKeys, &v78);
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v50 = sub_1DD6DE58C();
            v51(v50);
            v52 = sub_1DD6E08C4();
            v53(v52);
            sub_1DD700BD8();
            v66 = v54 | 0x2000000000000000;
            break;
          case 3:
            LOBYTE(v78) = 3;
            sub_1DD773328();
            sub_1DD6E7150(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.RepeatItCodingKeys, &v78);
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v55 = sub_1DD6DE58C();
            v56(v55);
            v57 = sub_1DD6E08C4();
            v58(v57);
            sub_1DD700BD8();
            v66 = v59 | 0x3000000000000000;
            break;
          case 4:
            LOBYTE(v78) = 4;
            sub_1DD7732D4();
            sub_1DD6E658C(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.RequestCompletedCodingKeys, &v78);
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v46 = sub_1DD6DE58C();
            v47(v46);
            v48 = sub_1DD6E08C4();
            v49(v48);
            v64 = v78;
            v66 = v79;
            goto LABEL_19;
          case 5:
            LOBYTE(v78) = 5;
            sub_1DD773280();
            sub_1DD6E7150(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.CommandFailedCodingKeys, &v78);
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v72 = sub_1DD6DE58C();
            v73(v72);
            v74 = sub_1DD6E08C4();
            v75(v74);
            v64 = v78;
            v66 = v79 | 0x1000000000000000;
LABEL_19:
            v65 = 1;
            break;
          case 6:
            LOBYTE(v78) = 6;
            sub_1DD77322C();
            sub_1DD6E658C(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.NoneCodingKeys, &v78);
            swift_unknownObjectRelease();
            v42 = sub_1DD6FF900();
            v43(v42);
            v44 = sub_1DD6E08C4();
            v45(v44);
            v64 = 0;
            v65 = 1;
            v66 = 0x2000000000000000;
            break;
          default:
            LOBYTE(v78) = 0;
            sub_1DD773424();
            sub_1DD6E7150(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.AddViewsCodingKeys, &v78);
            sub_1DD717D38();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD6F9BAC();
            swift_unknownObjectRelease();
            v60 = sub_1DD6DE58C();
            v61(v60);
            v62 = sub_1DD6E08C4();
            v63(v62);
            sub_1DD700BD8();
            break;
        }

        v41 = v77;
        *v76 = v64;
        *(v76 + 8) = v66;
        *(v76 + 16) = v65;
        goto LABEL_12;
      }

      v21 = v80;
      v1 = v30;
    }

    v36 = sub_1DD875740();
    sub_1DD6E41BC(v36, MEMORY[0x1E69E6B28]);
    v38 = v37;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v38 = &type metadata for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD6E0540();
    v39 = sub_1DD6FEB10();
    v40(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v21 + 8))(v1, v13);
  }

  v41 = v77;
LABEL_12:
  sub_1DD6E1EC8(v41);
  sub_1DD6E0C78();
}

uint64_t ResponseOutput.VisualOutput.AceCommandOutputPayload.aceCommandOutputData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  sub_1DD6E5EF8();
  return sub_1DD7722F0(v4, v5, v6, v7);
}

__n128 ResponseOutput.VisualOutput.AceCommandOutputPayload.init(aceCommandOutputData:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t static ResponseOutput.VisualOutput.AceCommandOutputPayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v17[0] = *a1;
  v17[1] = v4;
  v18 = v5;
  v15[0] = v6;
  v15[1] = v7;
  v16 = v8;
  sub_1DD6DF268();
  sub_1DD7722F0(v17[0], v4, v5, v9);
  sub_1DD7722F0(v6, v7, v8, v2);
  v10 = static ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.== infix(_:_:)(v17, v15);
  sub_1DD6E6A8C();
  sub_1DD7722F0(v6, v7, v8, v11);
  v12 = sub_1DD6DDEFC();
  sub_1DD7722F0(v12, v13, v5, v3);
  return v10 & 1;
}

uint64_t sub_1DD773F68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DD8B5D10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD774008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD773F68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD774034(uint64_t a1)
{
  v2 = sub_1DD77A7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774070(uint64_t a1)
{
  v2 = sub_1DD77A7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD0FC58, &qword_1DD881598);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE340();
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD6E5EF8();
  sub_1DD7722F0(v4, v5, v6, v7);
  sub_1DD77A7C0();
  sub_1DD875BB0();
  sub_1DD77A814();
  sub_1DD8759D0();
  sub_1DD6DE1D4();
  sub_1DD7722F0(v8, v9, v10, v11);
  v12 = sub_1DD6E0F70();
  v13(v12);
  sub_1DD6E0C78();
}

void ResponseOutput.VisualOutput.AceCommandOutputPayload.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD0FC70, &qword_1DD8815A0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77A7C0();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD77A868();
    sub_1DD6FF994();
    sub_1DD8758D0();
    v6 = sub_1DD6E0F98();
    v7(v6);
    *v4 = v8;
    *(v4 + 16) = v9;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.VisualOutput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
  v6 = sub_1DD6DEA10(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v86 = v8 - v7;
  type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E402C();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v85 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v85 - v20);
  v22 = sub_1DD710A9C(&qword_1ECD0FC80, &qword_1DD8815A8);
  sub_1DD6DEA10(v22);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v85 + *(v25 + 56) - v24);
  v27 = a1;
  v28 = &v85 - v24;
  sub_1DD77A8DC(v27, &v85 - v24);
  sub_1DD77A8DC(a2, v26);
  sub_1DD6F441C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v28, v18);
      v30 = *v18;
      v29 = v18[1];
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    case 2u:
      sub_1DD6E52EC();
      v48 = sub_1DD6E0F98();
      sub_1DD77A8DC(v48, v49);
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1DD6DEDBC();
        v50 = v26;
        v51 = v86;
        sub_1DD771B18(v50, v86);
        sub_1DD6E9594();
        v38 = static RGPluginModel.== infix(_:_:)();
        sub_1DD77A934(v51, type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload);
        v52 = sub_1DD6E40D8();
        sub_1DD77A934(v52, v53);
        sub_1DD6E1494();
        v47 = v28;
        goto LABEL_8;
      }

      sub_1DD6E1C24();
      sub_1DD77A934(v2, v71);
      goto LABEL_28;
    case 3u:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v28, v14);
      v55 = *(v14 + 2);
      v54 = *(v14 + 3);
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v72 = sub_1DD6DDEDC();
        sub_1DD6E6658(v72, v73);
LABEL_27:

        goto LABEL_28;
      }

      v57 = v26[2];
      v56 = v26[3];
      v58 = sub_1DD6DDEDC();
      if ((MEMORY[0x1E12B41A0](v58) & 1) == 0)
      {
        v74 = sub_1DD6F441C();
        sub_1DD6E6658(v74, v75);

        v76 = sub_1DD6DDEDC();
        sub_1DD6E6658(v76, v77);

        goto LABEL_33;
      }

      if (v55 == v57 && v54 == v56)
      {
        v79 = sub_1DD6F441C();
        sub_1DD6E6658(v79, v80);

        v81 = sub_1DD6DDEDC();
        sub_1DD6E6658(v81, v82);
      }

      else
      {
        v60 = sub_1DD875A30();
        v61 = sub_1DD6F441C();
        sub_1DD6E6658(v61, v62);

        v63 = sub_1DD6DDEDC();
        sub_1DD6E6658(v63, v64);

        if ((v60 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_35;
    case 4u:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v28, v11);
      v32 = *v11;
      v31 = *(v11 + 1);
      v33 = v11[16];
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v34 = v28;
        v35 = *v26;
        v36 = v26[1];
        v37 = *(v26 + 16);
        v89[0] = v32;
        v89[1] = v31;
        v90 = v33;
        v87[0] = v35;
        v87[1] = v36;
        v88 = v37;
        sub_1DD7722F0(v32, v31, v33, sub_1DD710E74);
        sub_1DD7722F0(v35, v36, v37, sub_1DD710E74);
        v38 = static ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.== infix(_:_:)(v89, v87);
        sub_1DD6E6A8C();
        sub_1DD7722F0(v35, v36, v37, v39);
        v40 = sub_1DD6E1F14();
        sub_1DD7722F0(v40, v41, v42, v11);
        sub_1DD7722F0(v35, v36, v37, v11);
        v43 = sub_1DD6E1F14();
        sub_1DD7722F0(v43, v44, v45, v11);
        sub_1DD6E1494();
        v47 = v34;
LABEL_8:
        sub_1DD77A934(v47, v46);
        return v38 & 1;
      }

      sub_1DD6DE1D4();
      v67 = sub_1DD6E1F14();
      sub_1DD7722F0(v67, v68, v69, v70);
LABEL_28:
      sub_1DD6FC560(v28, &qword_1ECD0FC80, &qword_1DD8815A8);
      goto LABEL_29;
    default:
      sub_1DD6E52EC();
      sub_1DD77A8DC(v28, v21);
      v30 = *v21;
      v29 = v21[1];
      sub_1DD6E87AC();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v30 == *v26 && v29 == v26[1])
      {

        goto LABEL_35;
      }

      v66 = sub_1DD875A30();

      if (v66)
      {
LABEL_35:
        sub_1DD6E1494();
        sub_1DD77A934(v28, v83);
        v38 = 1;
        return v38 & 1;
      }

LABEL_33:
      sub_1DD6E1494();
      sub_1DD77A934(v28, v78);
LABEL_29:
      v38 = 0;
      return v38 & 1;
  }
}

uint64_t sub_1DD7748A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463416576696CLL && a2 == 0xEC00000079746976;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365527070416E69 && a2 == 0xED000065736E6F70;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E536D6574737973 && a2 == 0xED00007465707069;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E536E6967756C70 && a2 == 0xED00007465707069;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x80000001DD8B5D30 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD774A74(char a1)
{
  result = 0x697463416576696CLL;
  switch(a1)
  {
    case 1:
      result = 0x7365527070416E69;
      break;
    case 2:
      v3 = 0x6D6574737973;
      goto LABEL_6;
    case 3:
      v3 = 0x6E6967756C70;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E53000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD774B2C(uint64_t a1)
{
  v2 = sub_1DD77A9E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774B68(uint64_t a1)
{
  v2 = sub_1DD77A9E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7748A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD774BD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD774A6C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD774BFC(uint64_t a1)
{
  v2 = sub_1DD77A98C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774C38(uint64_t a1)
{
  v2 = sub_1DD77A98C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774C74(uint64_t a1)
{
  v2 = sub_1DD77AB84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774CB0(uint64_t a1)
{
  v2 = sub_1DD77AB84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774CEC(uint64_t a1)
{
  v2 = sub_1DD77AC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774D28(uint64_t a1)
{
  v2 = sub_1DD77AC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774D64(uint64_t a1)
{
  v2 = sub_1DD77AA88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774DA0(uint64_t a1)
{
  v2 = sub_1DD77AA88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD774DDC(uint64_t a1)
{
  v2 = sub_1DD77AB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD774E18(uint64_t a1)
{
  v2 = sub_1DD77AB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutput.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD0FC88, &qword_1DD8815B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FC90, &qword_1DD8815B8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FC98, &qword_1DD8815C0);
  sub_1DD6DDEAC();
  v48 = v3;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E0C6C();
  type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  sub_1DD77E738(v7 - v6);
  sub_1DD710A9C(&qword_1ECD0FCA0, &qword_1DD8815C8);
  sub_1DD6DDEAC();
  v46 = v8;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E9560();
  v10 = sub_1DD710A9C(&qword_1ECD0FCA8, &qword_1DD8815D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E7258();
  type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE4A8();
  v15 = v14 - v13;
  sub_1DD710A9C(&qword_1ECD0FCB0, &qword_1DD8815D8);
  sub_1DD6DDEAC();
  v49 = v16;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  v18 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v18, v19);
  sub_1DD77A98C();
  sub_1DD875BB0();
  sub_1DD6E52EC();
  sub_1DD77A8DC(v0, v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD77AB84();
      v20 = v49;
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77ABD8();
      sub_1DD8759D0();
      v21 = sub_1DD6ED80C();
      v23 = v46;
      goto LABEL_7;
    case 2u:
      sub_1DD771B18(v15, v47);
      sub_1DD77AB30();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD6E17E4();
      sub_1DD7718BC(v32);
      sub_1DD8759D0();
      v33 = sub_1DD6FF900();
      v34(v33, v48);
      sub_1DD6E1C24();
      sub_1DD77A934(v47, v35);
      v36 = sub_1DD6E61C4();
      v37(v36, v49);
      goto LABEL_9;
    case 3u:
      v38 = *v15;
      v39 = *(v15 + 8);
      sub_1DD77AA88();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77AADC();
      sub_1DD8759D0();
      v40 = sub_1DD6DFF24();
      v41(v40);
      v42 = sub_1DD6E61C4();
      v43(v42, v49);
      sub_1DD6E6658(v38, v39);
      goto LABEL_8;
    case 4u:
      v24 = *v15;
      v25 = *(v15 + 8);
      v26 = *(v15 + 16);
      sub_1DD77A9E0();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77AA34();
      sub_1DD8759D0();
      sub_1DD6E5918();
      v27 = sub_1DD6DFF24();
      v28(v27);
      v29 = sub_1DD6E61C4();
      v30(v29, v49);
      sub_1DD6DE1D4();
      sub_1DD7722F0(v24, v25, v26, v31);
      goto LABEL_9;
    default:
      sub_1DD77AC2C();
      v20 = v49;
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD77AC80();
      sub_1DD8759D0();
      v21 = sub_1DD705E24();
      v23 = v10;
LABEL_7:
      v22(v21, v23);
      v44 = sub_1DD6E61C4();
      v45(v44, v20);
LABEL_8:

LABEL_9:
      sub_1DD6E0C78();
      return;
  }
}

void ResponseOutput.VisualOutput.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v113 = v5;
  v109 = sub_1DD710A9C(&qword_1ECD0FD10, &qword_1DD8815E0);
  sub_1DD6DDEAC();
  v116 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v8);
  v108 = sub_1DD710A9C(&qword_1ECD0FD18, &qword_1DD8815E8);
  sub_1DD6DDEAC();
  v115 = v9;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E0C6C();
  v112 = v11;
  v107 = sub_1DD710A9C(&qword_1ECD0FD20, &qword_1DD8815F0);
  sub_1DD6DDEAC();
  v114 = v12;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E0C6C();
  v111 = v14;
  v106 = sub_1DD710A9C(&qword_1ECD0FD28, &qword_1DD8815F8);
  sub_1DD6DDEAC();
  v105 = v15;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E0C6C();
  sub_1DD77E738(v17);
  v104 = sub_1DD710A9C(&qword_1ECD0FD30, &qword_1DD881600);
  sub_1DD6DDEAC();
  v103 = v18;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6E0C6C();
  v110 = v20;
  v119 = sub_1DD710A9C(&qword_1ECD0FD38, &qword_1DD881608);
  sub_1DD6DDEAC();
  v118 = v21;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DDFE4();
  v117 = type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v23);
  v102 = (v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = v98 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v98 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v98 - v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E402C();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v98 - v36;
  v38 = v4[3];
  v120 = v4;
  sub_1DD6DEA7C(v4, v38);
  sub_1DD77A98C();
  sub_1DD77E6F4();
  sub_1DD875B90();
  if (!v0)
  {
    v98[2] = v1;
    v98[3] = v33;
    v99 = v27;
    v100 = v30;
    v101 = v37;
    v39 = v119;
    v40 = v2;
    sub_1DD875900();
    sub_1DD6ED750();
    if (v42 == v41 >> 1)
    {
      v44 = v117;
      v43 = v118;
    }

    else
    {
      sub_1DD6E6120();
      v124 = v2;
      v98[0] = 0;
      sub_1DD6E42A8();
      if (v51 == v52)
      {
        __break(1u);
        return;
      }

      v53 = *(v50 + v49);
      sub_1DD77E6E4(v45, v46, v47, v48, v49);
      v54 = sub_1DD6ED830();
      v56 = v55;
      v58 = v57;
      swift_unknownObjectRelease();
      v98[1] = v54;
      if (v56 == v58 >> 1)
      {
        v59 = v98[0];
        v60 = v113;
        switch(v53)
        {
          case 1:
            LOBYTE(v121) = 1;
            sub_1DD77AB84();
            sub_1DD6FAAE8(&type metadata for ResponseOutput.VisualOutput.InAppResponseCodingKeys, &v121);
            sub_1DD77AD7C();
            v61 = v106;
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD700B98();
            swift_unknownObjectRelease();
            v92 = sub_1DD6DE58C();
            v93(v92);
            v94 = sub_1DD6F3114();
            v95(v94);
            sub_1DD6FAC08(v121);
            goto LABEL_19;
          case 2:
            LOBYTE(v121) = 2;
            sub_1DD77AB30();
            sub_1DD6FAAE8(&type metadata for ResponseOutput.VisualOutput.SystemSnippetCodingKeys, &v121);
            type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(0);
            sub_1DD6E17E4();
            sub_1DD7718BC(v68);
            v69 = v100;
            sub_1DD8758D0();
            sub_1DD700B98();
            swift_unknownObjectRelease();
            v77 = sub_1DD6E0F70();
            v78(v77);
            v79 = sub_1DD6F3114();
            v80(v79);
            swift_storeEnumTagMultiPayload();
            sub_1DD6E05A4();
            v81 = v69;
            goto LABEL_20;
          case 3:
            LOBYTE(v121) = 3;
            sub_1DD77AA88();
            v70 = v119;
            sub_1DD6F3128();
            sub_1DD875800();
            if (v59)
            {
              sub_1DD6E5918();
              v71(v2, v70);
              swift_unknownObjectRelease();
              goto LABEL_11;
            }

            sub_1DD77AD28();
            sub_1DD6F4360();
            sub_1DD8758D0();
            sub_1DD700B98();
            swift_unknownObjectRelease();
            v82 = sub_1DD6E40D8();
            v83(v82);
            v84 = sub_1DD6F3114();
            v85(v84);
            v86 = v122;
            v87 = v123;
            v61 = v99;
            *v99 = v121;
            *(v61 + 2) = v86;
            *(v61 + 3) = v87;
LABEL_19:
            swift_storeEnumTagMultiPayload();
            sub_1DD6E05A4();
            v81 = v61;
LABEL_20:
            v96 = v101;
            sub_1DD771B18(v81, v101);
            v97 = v120;
            sub_1DD6E05A4();
            sub_1DD771B18(v96, v60);
            v67 = v97;
            break;
          case 4:
            LOBYTE(v121) = 4;
            sub_1DD77A9E0();
            sub_1DD6FAAE8(&type metadata for ResponseOutput.VisualOutput.AceCommandOutputCodingKeys, &v121);
            sub_1DD77ACD4();
            sub_1DD6F4360();
            sub_1DD8758D0();
            sub_1DD700B98();
            swift_unknownObjectRelease();
            v72 = sub_1DD6E40D8();
            v73(v72);
            v74 = sub_1DD6F3114();
            v75(v74);
            v76 = v122;
            v61 = v102;
            *v102 = v121;
            *(v61 + 16) = v76;
            goto LABEL_19;
          default:
            LOBYTE(v121) = 0;
            sub_1DD77AC2C();
            sub_1DD6FAAE8(&type metadata for ResponseOutput.VisualOutput.LiveActivityCodingKeys, &v121);
            sub_1DD77ADD0();
            v61 = v104;
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD700B98();
            swift_unknownObjectRelease();
            v88 = sub_1DD6DE58C();
            v89(v88);
            v90 = sub_1DD6F3114();
            v91(v90);
            sub_1DD6FAC08(v121);
            goto LABEL_19;
        }

        goto LABEL_12;
      }

      v44 = v117;
      v43 = v118;
      v39 = v119;
      v40 = v124;
    }

    v62 = sub_1DD875740();
    sub_1DD6E41BC(v62, MEMORY[0x1E69E6B28]);
    v64 = v63;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v64 = v44;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD6E0540();
    v65 = sub_1DD6FEB10();
    v66(v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v40, v39);
  }

LABEL_11:
  v67 = v120;
LABEL_12:
  sub_1DD6E1EC8(v67);
  sub_1DD6E0C78();
}

uint64_t sub_1DD775FE0(uint64_t a1)
{
  v2 = sub_1DD77AE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD77601C(uint64_t a1)
{
  v2 = sub_1DD77AE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.VisualOutputOptions.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD0FD68, &qword_1DD881610);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEBA0();
  sub_1DD6DEA7C(v1, v1[3]);
  sub_1DD77AE24();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD875980();
  v3 = sub_1DD6DDEDC();
  v4(v3);
  sub_1DD6E0C78();
}

void ResponseOutput.VisualOutputOptions.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD0FD78, &qword_1DD881618);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77AE24();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD6F178C();
    v6 = sub_1DD875880();
    v7 = sub_1DD6E0F98();
    v8(v7);
    *v4 = v6 & 1;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.DialogType.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_41;
      }

      if (v3 != v6 || v2 != v5)
      {
        v45 = sub_1DD6E21D0();
        v10 = sub_1DD7013BC(v45, v46);
        v47 = sub_1DD6E0C60();
        v49 = sub_1DD6FC470(v47, v48, 1u);
        v51 = sub_1DD6FC470(v49, v50, 1u);
        sub_1DD77AE90(v51, v52, 1u);
        v17 = sub_1DD6E0C60();
        v19 = 1;
        goto LABEL_36;
      }

      v24 = 1;
      v74 = sub_1DD6E21D0();
      v76 = sub_1DD6FC470(v74, v75, 1u);
      v78 = sub_1DD6FC470(v76, v77, 1u);
      sub_1DD77AE90(v78, v79, 1u);
      v25 = sub_1DD6E21D0();
      v27 = 1;
      goto LABEL_45;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_41;
      }

      v28 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1DD7013BC(v28, v2);
        v30 = sub_1DD6E0C60();
        v32 = sub_1DD6FC470(v30, v31, 2u);
        v34 = sub_1DD6FC470(v32, v33, 2u);
        sub_1DD77AE90(v34, v35, 2u);
        v17 = sub_1DD6E0C60();
        v19 = 2;
        goto LABEL_36;
      }

      v63 = sub_1DD6FC470(v28, v2, 2u);
      v65 = sub_1DD6FC470(v63, v64, 2u);
      sub_1DD77AE90(v65, v66, 2u);
      v67 = sub_1DD6E21D0();
      v69 = 2;
      goto LABEL_48;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      v36 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1DD7013BC(v36, v2);
        v38 = sub_1DD6E0C60();
        v40 = sub_1DD6FC470(v38, v39, 3u);
        v42 = sub_1DD6FC470(v40, v41, 3u);
        sub_1DD77AE90(v42, v43, 3u);
        v17 = sub_1DD6E0C60();
        v19 = 3;
        goto LABEL_36;
      }

      v70 = sub_1DD6FC470(v36, v2, 3u);
      v72 = sub_1DD6FC470(v70, v71, 3u);
      sub_1DD77AE90(v72, v73, 3u);
      v67 = sub_1DD6E21D0();
      v69 = 3;
      goto LABEL_48;
    case 4u:
      if (v3 | v2)
      {
        if (v7 != 4 || v6 != 1 || v5 != 0)
        {
LABEL_41:
          v55 = sub_1DD6E0C60();
          v57 = sub_1DD6FC470(v55, v56, v7);
          v59 = sub_1DD6FC470(v57, v58, v4);
          sub_1DD77AE90(v59, v60, v4);
          v61 = sub_1DD6E0C60();
          sub_1DD77AE90(v61, v62, v7);
          return 0;
        }

        v22 = sub_1DD6E21D0();
        sub_1DD77AE90(v22, v23, 4u);
        v24 = 1;
        v25 = 1;
        v26 = 0;
        v27 = 4;
LABEL_45:
        sub_1DD77AE90(v25, v26, v27);
      }

      else
      {
        if (v7 != 4 || (v5 | v6) != 0)
        {
          goto LABEL_41;
        }

        v80 = sub_1DD6E21D0();
        sub_1DD77AE90(v80, v81, 4u);
        v67 = 0;
        v68 = 0;
        v69 = 4;
LABEL_48:
        sub_1DD77AE90(v67, v68, v69);
        return 1;
      }

      return v24;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_41;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v82 = sub_1DD6FC470(v8, v2, 0);
        v84 = sub_1DD6FC470(v82, v83, 0);
        sub_1DD77AE90(v84, v85, 0);
        v67 = sub_1DD6E21D0();
        v69 = 0;
        goto LABEL_48;
      }

      v10 = sub_1DD7013BC(v8, v2);
      v11 = sub_1DD6E0C60();
      v13 = sub_1DD6FC470(v11, v12, 0);
      v15 = sub_1DD6FC470(v13, v14, 0);
      sub_1DD77AE90(v15, v16, 0);
      v17 = sub_1DD6E0C60();
      v19 = 0;
LABEL_36:
      sub_1DD77AE90(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_1DD7765D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554636974617473 && a2 == 0xEA00000000007478;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C616944746163 && a2 == 0xE900000000000067;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63696E6F73 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746172656E6567 && a2 == 0xE900000000000064;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001DD8B5D50 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7373657270707573 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD7767DC(char a1)
{
  result = 0x6554636974617473;
  switch(a1)
  {
    case 1:
      result = 0x6F6C616944746163;
      break;
    case 2:
      result = 0x63696E6F73;
      break;
    case 3:
      result = 0x65746172656E6567;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7373657270707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7768A4(uint64_t a1)
{
  v2 = sub_1DD77B04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7768E0(uint64_t a1)
{
  v2 = sub_1DD77B04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7765D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD77694C(uint64_t a1)
{
  v2 = sub_1DD77AEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776988(uint64_t a1)
{
  v2 = sub_1DD77AEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7769C4(uint64_t a1)
{
  v2 = sub_1DD77AFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776A00(uint64_t a1)
{
  v2 = sub_1DD77AFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776A3C(uint64_t a1)
{
  v2 = sub_1DD77AFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776A78(uint64_t a1)
{
  v2 = sub_1DD77AFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776AB4(uint64_t a1)
{
  v2 = sub_1DD77B0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776AF0(uint64_t a1)
{
  v2 = sub_1DD77B0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776B2C(uint64_t a1)
{
  v2 = sub_1DD77AEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776B68(uint64_t a1)
{
  v2 = sub_1DD77AEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD776BA4(uint64_t a1)
{
  v2 = sub_1DD77AF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD776BE0(uint64_t a1)
{
  v2 = sub_1DD77AF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.DialogType.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD0FD80, &qword_1DD881620);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E0C6C();
  sub_1DD77E738(v4);
  sub_1DD710A9C(&qword_1ECD0FD88, &qword_1DD881628);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FD90, &qword_1DD881630);
  sub_1DD6DDEAC();
  v41 = v7;
  v42 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v9);
  sub_1DD710A9C(&qword_1ECD0FD98, &qword_1DD881638);
  sub_1DD6DDEAC();
  v38 = v11;
  v39 = v10;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v37 = v13;
  sub_1DD710A9C(&qword_1ECD0FDA0, &qword_1DD881640);
  sub_1DD6DDEAC();
  v36 = v14;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E7258();
  v16 = sub_1DD710A9C(&qword_1ECD0FDA8, &qword_1DD881648);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DEBA0();
  sub_1DD710A9C(&qword_1ECD0FDB0, &qword_1DD881650);
  sub_1DD6DDEAC();
  v44 = v18;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE340();
  v43 = *v0;
  v20 = *(v0 + 16);
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD77AEA8();
  sub_1DD875BB0();
  switch(v20)
  {
    case 1:
      sub_1DD77B04C();
      v27 = v44;
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD875970();
      v30 = sub_1DD705E24();
      v31(v30, v36);
      goto LABEL_9;
    case 2:
      sub_1DD77AFF8();
      v26 = v37;
      v27 = v44;
      sub_1DD6F4360();
      sub_1DD875910();
      v28 = v39;
      sub_1DD875970();
      v29 = v38;
      goto LABEL_7;
    case 3:
      sub_1DD77AFA4();
      v26 = v40;
      v27 = v44;
      sub_1DD6F4360();
      sub_1DD875910();
      v28 = v42;
      sub_1DD875970();
      v29 = v41;
LABEL_7:
      (*(v29 + 8))(v26, v28);
LABEL_9:
      v23 = sub_1DD6E61C4();
      v25 = v27;
      goto LABEL_10;
    case 4:
      if (v43 == 0)
      {
        sub_1DD77AF50();
      }

      else
      {
        sub_1DD6E41B0();
        sub_1DD77AEFC();
      }

      sub_1DD6F4360();
      sub_1DD875910();
      v32 = sub_1DD6FF900();
      v33(v32);
      v34 = sub_1DD6E0F70();
      v35(v34);
      goto LABEL_13;
    default:
      sub_1DD77B0A0();
      sub_1DD6F4360();
      sub_1DD875910();
      sub_1DD875970();
      v21 = sub_1DD6FF900();
      v22(v21, v16);
      v23 = sub_1DD6E61C4();
      v25 = v44;
LABEL_10:
      v24(v23, v25);
LABEL_13:
      sub_1DD6E0C78();
      return;
  }
}

void ResponseOutput.DialogType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1DD6DED2C();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v96 = v33;
  v98 = sub_1DD710A9C(&qword_1ECD0FDF0, &qword_1DD881658);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FDF8, &qword_1DD881660);
  sub_1DD6DDEAC();
  v90 = v36;
  v91 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E0C6C();
  sub_1DD6FAD38(v38);
  v92 = sub_1DD710A9C(&qword_1ECD0FE00, &qword_1DD881668);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E0C6C();
  v97 = v40;
  v89 = sub_1DD710A9C(&qword_1ECD0FE08, &qword_1DD881670);
  sub_1DD6DDEAC();
  v94 = v41;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6E0C6C();
  v99 = v43;
  v88 = sub_1DD710A9C(&qword_1ECD0FE10, &qword_1DD881678);
  sub_1DD6DDEAC();
  v93 = v44;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6E7258();
  v46 = sub_1DD710A9C(&qword_1ECD0FE18, &qword_1DD881680);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6E17C8();
  sub_1DD710A9C(&qword_1ECD0FE20, &qword_1DD881688);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6E9560();
  v100 = v32;
  sub_1DD6DEA7C(v32, v32[3]);
  sub_1DD77AEA8();
  sub_1DD875B90();
  if (!v27)
  {
    v86 = v46;
    v87 = v26;
    v49 = v99;
    sub_1DD875900();
    sub_1DD6ED750();
    if (v51 != v50 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v54 == v55)
      {
        __break(1u);
        return;
      }

      v56 = *(v53 + v52);
      sub_1DD6ED830();
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      if (v58 == v60 >> 1)
      {
        switch(v56)
        {
          case 1:
            a12 = 1;
            sub_1DD77B04C();
            v60 = v28;
            sub_1DD6FBE10(&type metadata for ResponseOutput.DialogType.CatDialogCodingKeys, &a12);
            sub_1DD6E5D24();
            sub_1DD6F178C();
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            (*(v93 + 8))(v28, v88);
            v79 = sub_1DD6E9ADC();
            v80(v79);
            v85 = 1;
            break;
          case 2:
            a13 = 2;
            sub_1DD77AFF8();
            v60 = v99;
            sub_1DD6FBE10(&type metadata for ResponseOutput.DialogType.SonicCodingKeys, &a13);
            sub_1DD6E5D24();
            sub_1DD6F178C();
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            (*(v94 + 8))(v99, v89);
            v74 = sub_1DD6E9ADC();
            v75(v74);
            v85 = 2;
            break;
          case 3:
            a14 = 3;
            sub_1DD77AFA4();
            v60 = v97;
            sub_1DD6FBE10(&type metadata for ResponseOutput.DialogType.GeneratedCodingKeys, &a14);
            sub_1DD6E5D24();
            sub_1DD6F178C();
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            sub_1DD6E5918();
            v76(v97, v92);
            v77 = sub_1DD6E9ADC();
            v78(v77);
            v85 = 3;
            break;
          case 4:
            a15 = 4;
            sub_1DD77AF50();
            sub_1DD6FBE10(&type metadata for ResponseOutput.DialogType.UnableToGenerateCodingKeys, &a15);
            sub_1DD6E5D24();
            swift_unknownObjectRelease();
            (*(v90 + 8))(v95, v91);
            v68 = sub_1DD6E2754();
            v69(v68);
            v60 = 0;
            v56 = 0;
            v85 = 4;
            break;
          case 5:
            sub_1DD6E41B0();
            sub_1DD77AEFC();
            sub_1DD6FBE10(&type metadata for ResponseOutput.DialogType.SuppressedCodingKeys, &a16);
            sub_1DD6E5D24();
            swift_unknownObjectRelease();
            v70 = sub_1DD705E24();
            v71(v70, v98);
            v72 = sub_1DD6E2754();
            v73(v72);
            v56 = 0;
            v85 = 4;
            v60 = 1;
            break;
          default:
            a11 = 0;
            sub_1DD77B0A0();
            sub_1DD6FBE10(&type metadata for ResponseOutput.DialogType.StaticTextCodingKeys, &a11);
            v56 = v87;
            sub_1DD875870();
            sub_1DD77E718();
            sub_1DD6E72C0();
            v81 = sub_1DD705E24();
            v82(v81, v86);
            v83 = sub_1DD6E9ADC();
            v84(v83);
            v85 = 0;
            v49 = v100;
            break;
        }

        *v96 = v60;
        *(v96 + 8) = v56;
        *(v96 + 16) = v85;
        goto LABEL_10;
      }
    }

    v61 = sub_1DD875740();
    sub_1DD6E41BC(v61, MEMORY[0x1E69E6B28]);
    v63 = v62;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v63 = &type metadata for ResponseOutput.DialogType;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD6E0540();
    v64 = sub_1DD6FEB10();
    v65(v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v66 = sub_1DD6E2754();
    v67(v66);
  }

  v49 = v100;
LABEL_10:
  sub_1DD6E1EC8(v49);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD777AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974656C706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D726F666E69 && a2 == 0xE600000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7041889 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD777C74(char a1)
{
  result = 0x6974656C706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x6769626D61736964;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x6D726F666E69;
      break;
    case 4:
      result = 7041889;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD777D1C(uint64_t a1)
{
  v2 = sub_1DD77B148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777D58(uint64_t a1)
{
  v2 = sub_1DD77B148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD777AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD777DC4(uint64_t a1)
{
  v2 = sub_1DD77B0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777E00(uint64_t a1)
{
  v2 = sub_1DD77B0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777E3C(uint64_t a1)
{
  v2 = sub_1DD77B298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777E78(uint64_t a1)
{
  v2 = sub_1DD77B298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777EB4(uint64_t a1)
{
  v2 = sub_1DD77B1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777EF0(uint64_t a1)
{
  v2 = sub_1DD77B1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777F2C(uint64_t a1)
{
  v2 = sub_1DD77B244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777F68(uint64_t a1)
{
  v2 = sub_1DD77B244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD777FA4(uint64_t a1)
{
  v2 = sub_1DD77B19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD777FE0(uint64_t a1)
{
  v2 = sub_1DD77B19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseOutput.ResponseType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1DD6DED2C();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  sub_1DD710A9C(&qword_1ECD0FE28, &qword_1DD881690);
  sub_1DD6DDEAC();
  v62 = v32;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6E0C6C();
  v61 = v34;
  sub_1DD710A9C(&qword_1ECD0FE30, &qword_1DD881698);
  sub_1DD6DDEAC();
  v60 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0C6C();
  v59 = v37;
  sub_1DD710A9C(&qword_1ECD0FE38, &qword_1DD8816A0);
  sub_1DD6DDEAC();
  v58 = v38;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E0C6C();
  v57 = v40;
  sub_1DD710A9C(&qword_1ECD0FE40, &qword_1DD8816A8);
  sub_1DD6DDEAC();
  v56 = v41;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6E0C6C();
  v55 = v43;
  sub_1DD710A9C(&qword_1ECD0FE48, &qword_1DD8816B0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6E9560();
  v45 = sub_1DD710A9C(&qword_1ECD0FE50, &qword_1DD8816B8);
  sub_1DD6DDEAC();
  v47 = v46;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6E7258();
  v49 = *v26;
  sub_1DD6DEA7C(v31, v31[3]);
  sub_1DD77B0F4();
  sub_1DD875BB0();
  v50 = (v47 + 8);
  switch(v49)
  {
    case 1:
      a13 = 1;
      sub_1DD77B244();
      v53 = v55;
      sub_1DD6FADD0(&type metadata for ResponseOutput.ResponseType.DisambiguationCodingKeys, &a13);
      v54 = v56;
      goto LABEL_7;
    case 2:
      a14 = 2;
      sub_1DD77B1F0();
      v53 = v57;
      sub_1DD6FADD0(&type metadata for ResponseOutput.ResponseType.ConfirmationCodingKeys, &a14);
      v54 = v58;
      goto LABEL_7;
    case 3:
      a15 = 3;
      sub_1DD77B19C();
      v53 = v59;
      sub_1DD6FADD0(&type metadata for ResponseOutput.ResponseType.InformCodingKeys, &a15);
      v54 = v60;
      goto LABEL_7;
    case 4:
      sub_1DD6E70D8();
      sub_1DD77B148();
      v53 = v61;
      sub_1DD6FADD0(&type metadata for ResponseOutput.ResponseType.AskCodingKeys, &a16);
      v54 = v62;
LABEL_7:
      v52 = *(v54 + 8);
      v51 = v53;
      break;
    default:
      sub_1DD77B298();
      sub_1DD875910();
      v51 = sub_1DD6ED80C();
      break;
  }

  v52(v51);
  (*v50)(v27, v45);
  sub_1DD6E0C78();
}

uint64_t ResponseOutput.ResponseType.hashValue.getter()
{
  v1 = *v0;
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

void ResponseOutput.ResponseType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1DD6DED2C();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v66 = v31;
  sub_1DD710A9C(&qword_1ECD0FE88, &qword_1DD8816C0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FE90, &qword_1DD8816C8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FE98, &qword_1DD8816D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD0FEA0, &qword_1DD8816D8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6E7258();
  v36 = sub_1DD710A9C(&qword_1ECD0FEA8, &qword_1DD8816E0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DEA6C();
  sub_1DD710A9C(&qword_1ECD0FEB0, &qword_1DD8816E8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD6E17C8();
  sub_1DD6DEA7C(v30, v30[3]);
  sub_1DD77B0F4();
  sub_1DD875B90();
  if (!v26)
  {
    sub_1DD875900();
    sub_1DD6ED750();
    if (v40 != v39 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v47 == v48)
      {
        __break(1u);
        return;
      }

      v65 = *(v46 + v45);
      sub_1DD77E6E4(v41, v42, v43, v44, v45);
      sub_1DD6ED830();
      v50 = v49;
      v52 = v51;
      swift_unknownObjectRelease();
      if (v50 == v52 >> 1)
      {
        switch(v65)
        {
          case 1:
            a13 = 1;
            sub_1DD77B244();
            sub_1DD6DEBC8(&type metadata for ResponseOutput.ResponseType.DisambiguationCodingKeys, &a13);
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 2:
            a14 = 2;
            sub_1DD77B1F0();
            sub_1DD6DEBC8(&type metadata for ResponseOutput.ResponseType.ConfirmationCodingKeys, &a14);
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 3:
            a15 = 3;
            sub_1DD77B19C();
            sub_1DD6DEBC8(&type metadata for ResponseOutput.ResponseType.InformCodingKeys, &a15);
            swift_unknownObjectRelease();
LABEL_15:
            v53 = sub_1DD6E61C4();
            break;
          case 4:
            sub_1DD6E70D8();
            sub_1DD77B148();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v53 = sub_1DD705E24();
            break;
          default:
            a12 = 0;
            sub_1DD77B298();
            sub_1DD6DEBC8(&type metadata for ResponseOutput.ResponseType.CompletionCodingKeys, &a12);
            swift_unknownObjectRelease();
            v53 = sub_1DD6E61C4();
            v55 = v36;
            break;
        }

        v54(v53, v55);
        v63 = sub_1DD6ED180();
        v64(v63);
        *v66 = v65;
        sub_1DD6E1EC8(v30);
        goto LABEL_10;
      }
    }

    v56 = sub_1DD875740();
    sub_1DD6E41BC(v56, MEMORY[0x1E69E6B28]);
    v58 = v57;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v58 = &type metadata for ResponseOutput.ResponseType;
    sub_1DD875810();
    sub_1DD875730();
    sub_1DD6E0540();
    v59 = sub_1DD6FEB10();
    v60(v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = sub_1DD6DEAAC();
    v62(v61);
  }

  sub_1DD6E1EC8(v30);
LABEL_10:
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

double ResponseOutput.printedDialogOutput.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DD6EFF80(*(v1 + 24), a1, v2, v3);
}

double ResponseOutput.spokenDialogOutput.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DD6EFF80(*(v1 + 48), a1, v2, v3);
}

uint64_t ResponseOutput.attribution.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResponseOutput(0) + 28);

  return sub_1DD77B320(v3, a1);
}

uint64_t ResponseOutput.options.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseOutput(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ResponseOutput.options.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseOutput(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ResponseOutput.responseType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseOutput(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

double ResponseOutput.resultStatementIds.getter()
{
  type metadata accessor for ResponseOutput(0);

  return result;
}

uint64_t ResponseOutput.dialogIdentifier.getter()
{
  type metadata accessor for ResponseOutput(0);

  return sub_1DD6DDEFC();
}

double ResponseOutput.entities.getter()
{
  type metadata accessor for ResponseOutput(0);

  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:)@<X0>(uint64_t a1@<X8>)
{
  sub_1DD77E6D8();
  v3 = *v2;
  v8 = sub_1DD6EE86C(v4, v5, v6, v7);
  *(a1 + v9) = v3;
  return sub_1DD6FA6D0(v8, v8[10]);
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:)@<X0>(uint64_t a1@<X8>)
{
  sub_1DD77E6D8();
  v6 = sub_1DD6EE86C(v2, v3, v4, v5);
  *(a1 + v7) = 2;
  return sub_1DD6FA6D0(v6, v6[10]);
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:resultStatementIds:)@<X0>(uint64_t a1@<X8>)
{
  sub_1DD77E6D8();
  *a1 = v3;
  *(a1 + 8) = *v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *v6;
  *(a1 + 48) = v7;
  v8 = type metadata accessor for ResponseOutput(0);
  sub_1DD702A10(v8);
  *(a1 + v9) = 0;
  type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6E0C90();
  result = sub_1DD6E5E68(v10, v11, v12, v13);
  *(a1 + *(v1 + 48)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:resultStatementIds:visualOutputOptions:)@<X0>(uint64_t a1@<X8>)
{
  sub_1DD77E6D8();
  v4 = *v3;
  *a1 = v5;
  *(a1 + 8) = *v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *v8;
  *(a1 + 48) = v9;
  v10 = type metadata accessor for ResponseOutput(0);
  sub_1DD702A10(v10);
  *(a1 + v11) = v4;
  type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6E0C90();
  result = sub_1DD6E5E68(v12, v13, v14, v15);
  *(a1 + *(v1 + 48)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:attribution:resultStatementIds:visualOutputOptions:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_1DD77E6D8();
  v7 = *v6;
  *a3 = v8;
  *(a3 + 8) = *v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = *v11;
  *(a3 + 48) = v12;
  v13 = type metadata accessor for ResponseOutput(0);
  sub_1DD77B320(a1, a3 + v13[7]);
  *(a3 + v13[9]) = 2;
  *(a3 + v13[10]) = a2;
  v14 = (a3 + v13[11]);
  *v14 = 0;
  v14[1] = 0;
  *(a3 + v13[8]) = v7;
  result = sub_1DD6FC560(a1, &qword_1ECD0FEB8, &qword_1DD8816F0);
  *(a3 + v13[12]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:attribution:resultStatementIds:visualOutputOptions:dialogIdentifier:)()
{
  sub_1DD77E700();
  sub_1DD77E6D8();
  v7 = *v6;
  *v4 = v8;
  *(v4 + 8) = *v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = *v11;
  *(v4 + 48) = v12;
  type metadata accessor for ResponseOutput(0);
  v13 = sub_1DD77E724();
  sub_1DD77B320(v13, v14);
  *(v4 + v5[9]) = 2;
  *(v4 + v5[10]) = v2;
  v15 = (v4 + v5[11]);
  *v15 = v1;
  v15[1] = v0;
  *(v4 + v5[8]) = v7;
  result = sub_1DD6FC560(v3, &qword_1ECD0FEB8, &qword_1DD8816F0);
  *(v4 + v5[12]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:attribution:resultStatementIds:visualOutputOptions:dialogIdentifier:responseType:entities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  sub_1DD77E700();
  v16 = *(v15 + 16);
  v18 = *(v17 + 16);
  v20 = *v19;
  v21 = *a9;
  *v13 = v22;
  *(v13 + 8) = *v15;
  *(v13 + 24) = v16;
  *(v13 + 32) = *v17;
  *(v13 + 48) = v18;
  type metadata accessor for ResponseOutput(0);
  v23 = sub_1DD77E724();
  result = sub_1DD77B390(v23, v24);
  *(v13 + v14[10]) = v12;
  *(v13 + v14[8]) = v20;
  v26 = (v13 + v14[11]);
  *v26 = v11;
  v26[1] = v10;
  *(v13 + v14[9]) = v21;
  *(v13 + v14[12]) = a10;
  return result;
}

uint64_t ResponseOutput.responseType(withOutcome:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for StatementOutcome(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v7 = v6 - v5;
  sub_1DD77A8DC(a1, v6 - v5);
  sub_1DD6E0C60();
  LOBYTE(a1) = byte_1DD8848DA[swift_getEnumCaseMultiPayload()];
  result = sub_1DD77A934(v7, type metadata accessor for StatementOutcome);
  *a2 = a1;
  return result;
}

uint64_t static ResponseOutput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DD6E0D28();
  v6 = type metadata accessor for ResponseOutput.VisualOutput(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  v10 = v9 - v8;
  v11 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  sub_1DD6DEA10(v11);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE340();
  v13 = sub_1DD710A9C(&qword_1ECD0FEC0, &qword_1DD8816F8);
  sub_1DD6DE1C4();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v124 - v15;
  sub_1DD7159C8(*v2, *a2, v17, v18, v19, v20, v21, v22, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  v125 = v3;
  v126 = v6;
  v127 = v16;
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v27 = *(a2 + 8);
  v26 = *(a2 + 16);
  v28 = *(a2 + 24);
  if (v25 == 255)
  {
    v48 = sub_1DD6DFF24();
    sub_1DD77B2EC(v48, v49, 0xFFu);
    if (v28 != 255)
    {
LABEL_14:
      v91 = sub_1DD6EE24C();
      sub_1DD77B2EC(v91, v92, v93);
      goto LABEL_15;
    }

    v124 = v10;
    v50 = sub_1DD6E9594();
    sub_1DD77B2EC(v50, v51, 0xFFu);
    v52 = sub_1DD6DFF24();
    sub_1DD77B400(v52, v53, 0xFFu);
  }

  else
  {
    v131 = *(v2 + 8);
    v132 = v24;
    LOBYTE(v133) = v25;
    if (v28 == 255)
    {
LABEL_12:
      v78 = sub_1DD6E5FCC();
      sub_1DD77B2EC(v78, v79, v80);
      v81 = sub_1DD6E9594();
      sub_1DD77B2EC(v81, v82, 0xFFu);
      v83 = sub_1DD6E5FCC();
      sub_1DD77B2EC(v83, v84, v85);
      v86 = sub_1DD6E5FCC();
      sub_1DD77AE90(v86, v87, v88);
LABEL_15:
      v94 = sub_1DD6E5FCC();
      sub_1DD77B400(v94, v95, v96);
      v97 = sub_1DD6EE24C();
      sub_1DD77B400(v97, v98, v99);
      goto LABEL_16;
    }

    v124 = v10;
    v128 = v27;
    v129 = v26;
    LOBYTE(v130) = v28;
    v29 = sub_1DD6E5FCC();
    sub_1DD77B2EC(v29, v30, v31);
    v32 = sub_1DD6EE24C();
    sub_1DD77B2EC(v32, v33, v34);
    v35 = sub_1DD6E5FCC();
    sub_1DD77B2EC(v35, v36, v37);
    v38 = static ResponseOutput.DialogType.== infix(_:_:)(&v131, &v128);
    v39 = sub_1DD6EE24C();
    sub_1DD77AE90(v39, v40, v41);
    v42 = sub_1DD6E5FCC();
    sub_1DD77AE90(v42, v43, v44);
    v45 = sub_1DD6E5FCC();
    sub_1DD77B400(v45, v46, v47);
    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v54 = *(v2 + 40);
  v55 = *(v2 + 48);
  v57 = *(a2 + 32);
  v56 = *(a2 + 40);
  v58 = *(a2 + 48);
  if (v55 == 255)
  {
    v89 = sub_1DD6DFF24();
    sub_1DD77B2EC(v89, v90, 0xFFu);
    if (v58 == 255)
    {
      v102 = sub_1DD6E9594();
      sub_1DD77B2EC(v102, v103, 0xFFu);
      v104 = sub_1DD6DFF24();
      sub_1DD77B400(v104, v105, 0xFFu);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v131 = *(v2 + 32);
  v132 = v54;
  LOBYTE(v133) = v55;
  if (v58 == 255)
  {
    goto LABEL_12;
  }

  v128 = v57;
  v129 = v56;
  LOBYTE(v130) = v58;
  v59 = sub_1DD6E5FCC();
  sub_1DD77B2EC(v59, v60, v61);
  v62 = sub_1DD6EE24C();
  sub_1DD77B2EC(v62, v63, v64);
  v65 = sub_1DD6E5FCC();
  sub_1DD77B2EC(v65, v66, v67);
  v68 = static ResponseOutput.DialogType.== infix(_:_:)(&v131, &v128);
  v69 = sub_1DD6EE24C();
  sub_1DD77AE90(v69, v70, v71);
  v72 = sub_1DD6E5FCC();
  sub_1DD77AE90(v72, v73, v74);
  v75 = sub_1DD6E5FCC();
  sub_1DD77B400(v75, v76, v77);
  if ((v68 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v106 = type metadata accessor for ResponseOutput(0);
  v107 = v106[7];
  v108 = *(v13 + 48);
  v109 = v127;
  sub_1DD77B320(v2 + v107, v127);
  sub_1DD77B320(a2 + v107, v109 + v108);
  v110 = v126;
  if (sub_1DD6E5ED0(v109, 1, v126) != 1)
  {
    v111 = v125;
    sub_1DD77B320(v109, v125);
    if (sub_1DD6E5ED0(v109 + v108, 1, v110) != 1)
    {
      sub_1DD6E05A4();
      v113 = v124;
      sub_1DD771B18(v109 + v108, v124);
      v114 = sub_1DD6E0F98();
      v116 = static ResponseOutput.VisualOutput.== infix(_:_:)(v114, v115);
      sub_1DD77A934(v113, type metadata accessor for ResponseOutput.VisualOutput);
      sub_1DD77A934(v111, type metadata accessor for ResponseOutput.VisualOutput);
      sub_1DD6FC560(v109, &qword_1ECD0FEB8, &qword_1DD8816F0);
      if ((v116 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    sub_1DD6E1494();
    sub_1DD77A934(v111, v112);
LABEL_24:
    sub_1DD6FC560(v109, &qword_1ECD0FEC0, &qword_1DD8816F8);
    goto LABEL_16;
  }

  if (sub_1DD6E5ED0(v109 + v108, 1, v110) != 1)
  {
    goto LABEL_24;
  }

  sub_1DD6FC560(v109, &qword_1ECD0FEB8, &qword_1DD8816F0);
LABEL_26:
  if (*(v2 + v106[8]) != *(a2 + v106[8]))
  {
    goto LABEL_16;
  }

  if (*(v2 + v106[9]) != *(a2 + v106[9]))
  {
    goto LABEL_16;
  }

  sub_1DD715B8C();
  if ((v117 & 1) == 0)
  {
    goto LABEL_16;
  }

  v118 = v106[11];
  v119 = (v2 + v118);
  v120 = *(v2 + v118 + 8);
  v121 = (a2 + v118);
  v122 = v121[1];
  if (v120)
  {
    if (!v122)
    {
      goto LABEL_16;
    }

    v123 = *v119 == *v121 && v120 == v122;
    if (!v123 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    sub_1DD715C38(*(v2 + v106[12]), *(a2 + v106[12]));
    return v100 & 1;
  }

  if (!v122)
  {
    goto LABEL_38;
  }

LABEL_16:
  v100 = 0;
  return v100 & 1;
}

uint64_t sub_1DD77960C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754F6C6175736976 && a2 == 0xEC00000074757074;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD8B5D70 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DD8B5D90 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065707954;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001DD8B5DB0 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001DD8B5DD0 == a2;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1DD875A30();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1DD7798EC(char a1)
{
  result = 0x754F6C6175736976;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    case 4:
      result = 0x736E6F6974706FLL;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7365697469746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD779A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD77960C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD779A40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7798E4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD779A68(uint64_t a1)
{
  v2 = sub_1DD77B414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD779AA4(uint64_t a1)
{
  v2 = sub_1DD77B414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseOutput.encode(to:)(uint64_t a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD0FEC8, &qword_1DD881700);
  sub_1DD6DDEAC();
  v6 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = sub_1DD6ED180();
  sub_1DD6DEA7C(v8, v9);
  sub_1DD77B414();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD0FED8, &qword_1DD881708);
  sub_1DD77B5F4(&unk_1ECD0FEE0);
  sub_1DD6E0AD4();
  sub_1DD6DE334();
  sub_1DD8759D0();
  if (!v2)
  {
    v12 = *(v1 + 8);
    v14 = *(v1 + 16);
    v16 = *(v1 + 24);
    sub_1DD77B2EC(v12, v14, v16);
    sub_1DD77B468();
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD77B400(v12, v14, v16);
    v13 = *(v1 + 32);
    v15 = *(v1 + 40);
    v17 = *(v1 + 48);
    sub_1DD77B2EC(v13, v15, v17);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD77B400(v13, v15, v17);
    type metadata accessor for ResponseOutput(0);
    type metadata accessor for ResponseOutput.VisualOutput(0);
    sub_1DD6DDFF4();
    sub_1DD7718BC(v11);
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD6E70D8();
    sub_1DD77B4BC();
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6E41B0();
    sub_1DD77B510();
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD710A9C(&qword_1ECD0FF08, &qword_1DD881710);
    sub_1DD77B770(&unk_1ECD0FF10);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD710A9C(&qword_1ECD0FF18, &qword_1DD881718);
    sub_1DD77B564(&unk_1ECD0FF20);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  return (*(v6 + 8))(v3, v4);
}

void ResponseOutput.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v26 = v3;
  v4 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  sub_1DD6DEA10(v4);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v27 = sub_1DD710A9C(&qword_1ECD0FF30, &qword_1DD881720);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E17C8();
  v29 = type metadata accessor for ResponseOutput(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = v2[3];
  v28 = v2;
  sub_1DD6DEA7C(v2, v13);
  sub_1DD77B414();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v28);
  }

  else
  {
    v25 = v7;
    sub_1DD710A9C(&qword_1ECD0FED8, &qword_1DD881708);
    sub_1DD77B5F4(&unk_1ECD0FF38);
    sub_1DD6F9A7C();
    sub_1DD8758D0();
    *v12 = v30;
    sub_1DD77B674();
    sub_1DD6E5DBC();
    sub_1DD875860();
    v14 = v31;
    *(v12 + 8) = v30;
    *(v12 + 24) = v14;
    sub_1DD6E5DBC();
    sub_1DD875860();
    v15 = v31;
    *(v12 + 32) = v30;
    *(v12 + 48) = v15;
    type metadata accessor for ResponseOutput.VisualOutput(0);
    LOBYTE(v30) = 3;
    sub_1DD6DDFF4();
    sub_1DD7718BC(v16);
    v17 = v25;
    sub_1DD6FF7B4();
    sub_1DD875860();
    v18 = v29;
    sub_1DD77B390(v17, v12 + *(v29 + 28));
    sub_1DD6E70D8();
    sub_1DD77B6C8();
    sub_1DD6E5DBC();
    sub_1DD8758D0();
    *(v12 + v18[8]) = v30;
    sub_1DD6E41B0();
    sub_1DD77B71C();
    sub_1DD6E5DBC();
    sub_1DD8758D0();
    *(v12 + v18[9]) = v30;
    sub_1DD710A9C(&qword_1ECD0FF08, &qword_1DD881710);
    sub_1DD77B770(&unk_1ECD0FF60);
    sub_1DD6F9A7C();
    sub_1DD6FF7B4();
    sub_1DD8758D0();
    *(v12 + v18[10]) = v30;
    LOBYTE(v30) = 7;
    v19 = sub_1DD875820();
    v20 = (v12 + v18[11]);
    *v20 = v19;
    v20[1] = v21;
    sub_1DD710A9C(&qword_1ECD0FF18, &qword_1DD881718);
    sub_1DD77B564(&unk_1ECD0FF68);
    sub_1DD6F9A7C();
    sub_1DD6FF7B4();
    sub_1DD8758D0();
    v22 = sub_1DD6DEAAC();
    v23(v22);
    *(v12 + v18[12]) = v30;
    sub_1DD77A8DC(v12, v26);
    sub_1DD6E1EC8(v28);
    sub_1DD77A934(v12, type metadata accessor for ResponseOutput);
  }

  sub_1DD6E0C78();
}

uint64_t static ResponseOutput.VisualOutput.build(with:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1DD710A9C(&qword_1ECD0FF78, &qword_1DD881728);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  v7 = type metadata accessor for RGPluginModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE4A8();
  v11 = v10 - v9;
  sub_1DD8745E0();
  swift_allocObject();
  sub_1DD8745D0();
  sub_1DD6E0ABC();
  sub_1DD7718BC(v12);
  sub_1DD8745C0();

  sub_1DD6E5E68(v3, 0, 1, v7);
  sub_1DD771B18(v3, v11);
  sub_1DD771B18(v11, a3);
  v13 = type metadata accessor for ResponseOutput.VisualOutput(0);
  sub_1DD6DDEFC();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(a3, 0, 1, v13);
}

unint64_t sub_1DD77A7C0()
{
  result = qword_1ECD0FC60;
  if (!qword_1ECD0FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC60);
  }

  return result;
}

unint64_t sub_1DD77A814()
{
  result = qword_1ECD0FC68;
  if (!qword_1ECD0FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC68);
  }

  return result;
}

unint64_t sub_1DD77A868()
{
  result = qword_1ECD0FC78;
  if (!qword_1ECD0FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FC78);
  }

  return result;
}

uint64_t sub_1DD77A8DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v4(v3);
  sub_1DD6DE1C4();
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return a2;
}

uint64_t sub_1DD77A934(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DD77A98C()
{
  result = qword_1ECD0FCB8;
  if (!qword_1ECD0FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCB8);
  }

  return result;
}

unint64_t sub_1DD77A9E0()
{
  result = qword_1ECD0FCC0;
  if (!qword_1ECD0FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCC0);
  }

  return result;
}

unint64_t sub_1DD77AA34()
{
  result = qword_1ECD0FCC8;
  if (!qword_1ECD0FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCC8);
  }

  return result;
}

unint64_t sub_1DD77AA88()
{
  result = qword_1ECD0FCD0;
  if (!qword_1ECD0FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCD0);
  }

  return result;
}

unint64_t sub_1DD77AADC()
{
  result = qword_1ECD0FCD8;
  if (!qword_1ECD0FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCD8);
  }

  return result;
}

unint64_t sub_1DD77AB30()
{
  result = qword_1ECD0FCE0;
  if (!qword_1ECD0FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCE0);
  }

  return result;
}

unint64_t sub_1DD77AB84()
{
  result = qword_1ECD0FCF0;
  if (!qword_1ECD0FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCF0);
  }

  return result;
}

unint64_t sub_1DD77ABD8()
{
  result = qword_1ECD0FCF8;
  if (!qword_1ECD0FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FCF8);
  }

  return result;
}

unint64_t sub_1DD77AC2C()
{
  result = qword_1ECD0FD00;
  if (!qword_1ECD0FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD00);
  }

  return result;
}

unint64_t sub_1DD77AC80()
{
  result = qword_1ECD0FD08;
  if (!qword_1ECD0FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD08);
  }

  return result;
}

unint64_t sub_1DD77ACD4()
{
  result = qword_1ECD0FD40;
  if (!qword_1ECD0FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD40);
  }

  return result;
}

unint64_t sub_1DD77AD28()
{
  result = qword_1ECD0FD48;
  if (!qword_1ECD0FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD48);
  }

  return result;
}

unint64_t sub_1DD77AD7C()
{
  result = qword_1ECD0FD58;
  if (!qword_1ECD0FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD58);
  }

  return result;
}

unint64_t sub_1DD77ADD0()
{
  result = qword_1ECD0FD60;
  if (!qword_1ECD0FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD60);
  }

  return result;
}

unint64_t sub_1DD77AE24()
{
  result = qword_1ECD0FD70;
  if (!qword_1ECD0FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FD70);
  }

  return result;
}

double sub_1DD77AE78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1DD77AE90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_1DD77AEA8()
{
  result = qword_1ECD0FDB8;
  if (!qword_1ECD0FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDB8);
  }

  return result;
}

unint64_t sub_1DD77AEFC()
{
  result = qword_1ECD0FDC0;
  if (!qword_1ECD0FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDC0);
  }

  return result;
}

unint64_t sub_1DD77AF50()
{
  result = qword_1ECD0FDC8;
  if (!qword_1ECD0FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDC8);
  }

  return result;
}

unint64_t sub_1DD77AFA4()
{
  result = qword_1ECD0FDD0;
  if (!qword_1ECD0FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDD0);
  }

  return result;
}

unint64_t sub_1DD77AFF8()
{
  result = qword_1ECD0FDD8;
  if (!qword_1ECD0FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDD8);
  }

  return result;
}

unint64_t sub_1DD77B04C()
{
  result = qword_1ECD0FDE0;
  if (!qword_1ECD0FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDE0);
  }

  return result;
}

unint64_t sub_1DD77B0A0()
{
  result = qword_1ECD0FDE8;
  if (!qword_1ECD0FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FDE8);
  }

  return result;
}

unint64_t sub_1DD77B0F4()
{
  result = qword_1ECD0FE58;
  if (!qword_1ECD0FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE58);
  }

  return result;
}

unint64_t sub_1DD77B148()
{
  result = qword_1ECD0FE60;
  if (!qword_1ECD0FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE60);
  }

  return result;
}

unint64_t sub_1DD77B19C()
{
  result = qword_1ECD0FE68;
  if (!qword_1ECD0FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE68);
  }

  return result;
}

unint64_t sub_1DD77B1F0()
{
  result = qword_1ECD0FE70;
  if (!qword_1ECD0FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE70);
  }

  return result;
}

unint64_t sub_1DD77B244()
{
  result = qword_1ECD0FE78;
  if (!qword_1ECD0FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE78);
  }

  return result;
}

unint64_t sub_1DD77B298()
{
  result = qword_1ECD0FE80;
  if (!qword_1ECD0FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FE80);
  }

  return result;
}

double sub_1DD77B2EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DD77AE78(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1DD77B320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD77B390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0FEB8, &qword_1DD8816F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD77B400(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DD77AE90(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1DD77B414()
{
  result = qword_1ECD0FED0;
  if (!qword_1ECD0FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FED0);
  }

  return result;
}

unint64_t sub_1DD77B468()
{
  result = qword_1ECD0FEF0;
  if (!qword_1ECD0FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FEF0);
  }

  return result;
}

unint64_t sub_1DD77B4BC()
{
  result = qword_1ECD0FEF8;
  if (!qword_1ECD0FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FEF8);
  }

  return result;
}

unint64_t sub_1DD77B510()
{
  result = qword_1ECD0FF00;
  if (!qword_1ECD0FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF00);
  }

  return result;
}

unint64_t sub_1DD77B564(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD0FF18, &qword_1DD881718);
    sub_1DD7718BC(v4);
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD77B5F4(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD0FED8, &qword_1DD881708);
    sub_1DD6DDFF4();
    sub_1DD7718BC(v4);
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD77B674()
{
  result = qword_1ECD0FF48;
  if (!qword_1ECD0FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF48);
  }

  return result;
}

unint64_t sub_1DD77B6C8()
{
  result = qword_1ECD0FF50;
  if (!qword_1ECD0FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF50);
  }

  return result;
}

unint64_t sub_1DD77B71C()
{
  result = qword_1ECD0FF58;
  if (!qword_1ECD0FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF58);
  }

  return result;
}

unint64_t sub_1DD77B770(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD0FF08, &qword_1DD881710);
    v4();
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD77B7E0()
{
  result = qword_1ECD0FF80;
  if (!qword_1ECD0FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF80);
  }

  return result;
}

void sub_1DD77B85C(uint64_t a1)
{
  sub_1DD77BA54(319, &qword_1EE018D18, type metadata accessor for ResponseOutput.VisualOutput, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DD77BAB8(319, qword_1EE019668, &type metadata for ResponseOutput.DialogType, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD77BA54(319, qword_1EE0196E0, type metadata accessor for ResponseOutput.VisualOutput, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DD77BAB8(319, &qword_1EE018D20, &type metadata for StatementID, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1DD77BAB8(319, &qword_1EE018D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1DD77BA54(319, &qword_1EE018CF8, MEMORY[0x1E69DAC90], MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DD77BA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DD77BAB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DD77BB08(uint64_t a1)
{
  result = type metadata accessor for ResponseOutput.VisualOutput.SystemSnippetOutputPayload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD77BBD8(uint64_t a1)
{
  result = type metadata accessor for RGPluginModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD77BC54(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 60) & 3 | (4 * (*(a1 + 16) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1DD77BC88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FA && *(a1 + 17))
    {
      v2 = *a1 + 1017;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
      if (v2 >= 0x3F9)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD77BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1DD77BD24(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    v2 = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0x2000000000000000;
    v2 = 1;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.VisualOutputOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1DD77BE44(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1DD77BE60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD77BEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD77BEE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ResponseOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ResponseOutput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for ResponseOutput.DialogType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1DD77C22C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOutput.VisualOutput.PluginSnippetOutputPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1DD77C5B0(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD77C660()
{
  result = qword_1ECD0FF88;
  if (!qword_1ECD0FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF88);
  }

  return result;
}

unint64_t sub_1DD77C6B8()
{
  result = qword_1ECD0FF90;
  if (!qword_1ECD0FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF90);
  }

  return result;
}

unint64_t sub_1DD77C710()
{
  result = qword_1ECD0FF98;
  if (!qword_1ECD0FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FF98);
  }

  return result;
}

unint64_t sub_1DD77C768()
{
  result = qword_1ECD0FFA0;
  if (!qword_1ECD0FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFA0);
  }

  return result;
}

unint64_t sub_1DD77C7C0()
{
  result = qword_1ECD0FFA8;
  if (!qword_1ECD0FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFA8);
  }

  return result;
}

unint64_t sub_1DD77C818()
{
  result = qword_1ECD0FFB0;
  if (!qword_1ECD0FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFB0);
  }

  return result;
}

unint64_t sub_1DD77C870()
{
  result = qword_1ECD0FFB8;
  if (!qword_1ECD0FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFB8);
  }

  return result;
}

unint64_t sub_1DD77C8C8()
{
  result = qword_1ECD0FFC0;
  if (!qword_1ECD0FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFC0);
  }

  return result;
}

unint64_t sub_1DD77C920()
{
  result = qword_1ECD0FFC8;
  if (!qword_1ECD0FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFC8);
  }

  return result;
}

unint64_t sub_1DD77C978()
{
  result = qword_1ECD0FFD0;
  if (!qword_1ECD0FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFD0);
  }

  return result;
}

unint64_t sub_1DD77C9D0()
{
  result = qword_1ECD0FFD8;
  if (!qword_1ECD0FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFD8);
  }

  return result;
}

unint64_t sub_1DD77CA28()
{
  result = qword_1ECD0FFE0;
  if (!qword_1ECD0FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFE0);
  }

  return result;
}

unint64_t sub_1DD77CA80()
{
  result = qword_1ECD0FFE8;
  if (!qword_1ECD0FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFE8);
  }

  return result;
}

unint64_t sub_1DD77CAD8()
{
  result = qword_1ECD0FFF0;
  if (!qword_1ECD0FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFF0);
  }

  return result;
}

unint64_t sub_1DD77CB30()
{
  result = qword_1ECD0FFF8;
  if (!qword_1ECD0FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0FFF8);
  }

  return result;
}

unint64_t sub_1DD77CB88()
{
  result = qword_1ECD10000;
  if (!qword_1ECD10000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10000);
  }

  return result;
}

unint64_t sub_1DD77CBE0()
{
  result = qword_1ECD10008;
  if (!qword_1ECD10008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10008);
  }

  return result;
}

unint64_t sub_1DD77CC38()
{
  result = qword_1ECD10010;
  if (!qword_1ECD10010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10010);
  }

  return result;
}

unint64_t sub_1DD77CC90()
{
  result = qword_1ECD10018;
  if (!qword_1ECD10018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10018);
  }

  return result;
}

unint64_t sub_1DD77CCE8()
{
  result = qword_1ECD10020;
  if (!qword_1ECD10020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10020);
  }

  return result;
}

unint64_t sub_1DD77CD40()
{
  result = qword_1ECD10028;
  if (!qword_1ECD10028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10028);
  }

  return result;
}

unint64_t sub_1DD77CD98()
{
  result = qword_1ECD10030;
  if (!qword_1ECD10030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10030);
  }

  return result;
}

unint64_t sub_1DD77CDF0()
{
  result = qword_1ECD10038;
  if (!qword_1ECD10038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10038);
  }

  return result;
}

unint64_t sub_1DD77CE48()
{
  result = qword_1ECD10040;
  if (!qword_1ECD10040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10040);
  }

  return result;
}

unint64_t sub_1DD77CEA0()
{
  result = qword_1ECD10048;
  if (!qword_1ECD10048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10048);
  }

  return result;
}

unint64_t sub_1DD77CEF8()
{
  result = qword_1ECD10050;
  if (!qword_1ECD10050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10050);
  }

  return result;
}

unint64_t sub_1DD77CF50()
{
  result = qword_1ECD10058;
  if (!qword_1ECD10058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10058);
  }

  return result;
}

unint64_t sub_1DD77CFA8()
{
  result = qword_1ECD10060;
  if (!qword_1ECD10060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10060);
  }

  return result;
}

unint64_t sub_1DD77D000()
{
  result = qword_1ECD10068;
  if (!qword_1ECD10068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10068);
  }

  return result;
}

unint64_t sub_1DD77D058()
{
  result = qword_1ECD10070;
  if (!qword_1ECD10070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10070);
  }

  return result;
}

unint64_t sub_1DD77D0B0()
{
  result = qword_1ECD10078;
  if (!qword_1ECD10078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10078);
  }

  return result;
}

unint64_t sub_1DD77D108()
{
  result = qword_1ECD10080;
  if (!qword_1ECD10080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10080);
  }

  return result;
}

unint64_t sub_1DD77D160()
{
  result = qword_1ECD10088;
  if (!qword_1ECD10088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10088);
  }

  return result;
}

unint64_t sub_1DD77D1B8()
{
  result = qword_1ECD10090;
  if (!qword_1ECD10090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10090);
  }

  return result;
}

unint64_t sub_1DD77D210()
{
  result = qword_1ECD10098;
  if (!qword_1ECD10098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10098);
  }

  return result;
}

unint64_t sub_1DD77D268()
{
  result = qword_1ECD100A0;
  if (!qword_1ECD100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100A0);
  }

  return result;
}

unint64_t sub_1DD77D2C0()
{
  result = qword_1ECD100A8;
  if (!qword_1ECD100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100A8);
  }

  return result;
}

unint64_t sub_1DD77D318()
{
  result = qword_1ECD100B0;
  if (!qword_1ECD100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100B0);
  }

  return result;
}

unint64_t sub_1DD77D370()
{
  result = qword_1ECD100B8;
  if (!qword_1ECD100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100B8);
  }

  return result;
}

unint64_t sub_1DD77D3C8()
{
  result = qword_1ECD100C0;
  if (!qword_1ECD100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100C0);
  }

  return result;
}

unint64_t sub_1DD77D420()
{
  result = qword_1ECD100C8;
  if (!qword_1ECD100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100C8);
  }

  return result;
}

unint64_t sub_1DD77D478()
{
  result = qword_1ECD100D0;
  if (!qword_1ECD100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100D0);
  }

  return result;
}

unint64_t sub_1DD77D4D0()
{
  result = qword_1ECD100D8;
  if (!qword_1ECD100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100D8);
  }

  return result;
}

unint64_t sub_1DD77D528()
{
  result = qword_1ECD100E0;
  if (!qword_1ECD100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100E0);
  }

  return result;
}

unint64_t sub_1DD77D580()
{
  result = qword_1ECD100E8;
  if (!qword_1ECD100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100E8);
  }

  return result;
}

unint64_t sub_1DD77D5D8()
{
  result = qword_1ECD100F0;
  if (!qword_1ECD100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100F0);
  }

  return result;
}

unint64_t sub_1DD77D630()
{
  result = qword_1ECD100F8;
  if (!qword_1ECD100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD100F8);
  }

  return result;
}

unint64_t sub_1DD77D688()
{
  result = qword_1ECD10100;
  if (!qword_1ECD10100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10100);
  }

  return result;
}

unint64_t sub_1DD77D6E0()
{
  result = qword_1ECD10108;
  if (!qword_1ECD10108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10108);
  }

  return result;
}

unint64_t sub_1DD77D738()
{
  result = qword_1ECD10110;
  if (!qword_1ECD10110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10110);
  }

  return result;
}

unint64_t sub_1DD77D790()
{
  result = qword_1ECD10118;
  if (!qword_1ECD10118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10118);
  }

  return result;
}

unint64_t sub_1DD77D7E8()
{
  result = qword_1ECD10120;
  if (!qword_1ECD10120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10120);
  }

  return result;
}

unint64_t sub_1DD77D840()
{
  result = qword_1ECD10128;
  if (!qword_1ECD10128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10128);
  }

  return result;
}

unint64_t sub_1DD77D898()
{
  result = qword_1ECD10130;
  if (!qword_1ECD10130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10130);
  }

  return result;
}

unint64_t sub_1DD77D8F0()
{
  result = qword_1ECD10138;
  if (!qword_1ECD10138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10138);
  }

  return result;
}

unint64_t sub_1DD77D948()
{
  result = qword_1ECD10140;
  if (!qword_1ECD10140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10140);
  }

  return result;
}

unint64_t sub_1DD77D9A0()
{
  result = qword_1ECD10148;
  if (!qword_1ECD10148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10148);
  }

  return result;
}

unint64_t sub_1DD77D9F8()
{
  result = qword_1ECD10150;
  if (!qword_1ECD10150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10150);
  }

  return result;
}

unint64_t sub_1DD77DA50()
{
  result = qword_1ECD10158;
  if (!qword_1ECD10158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10158);
  }

  return result;
}

unint64_t sub_1DD77DAA8()
{
  result = qword_1ECD10160;
  if (!qword_1ECD10160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10160);
  }

  return result;
}

unint64_t sub_1DD77DB00()
{
  result = qword_1ECD10168;
  if (!qword_1ECD10168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10168);
  }

  return result;
}

unint64_t sub_1DD77DB58()
{
  result = qword_1ECD10170;
  if (!qword_1ECD10170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10170);
  }

  return result;
}

unint64_t sub_1DD77DBB0()
{
  result = qword_1ECD10178;
  if (!qword_1ECD10178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10178);
  }

  return result;
}

unint64_t sub_1DD77DC08()
{
  result = qword_1ECD10180;
  if (!qword_1ECD10180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10180);
  }

  return result;
}

unint64_t sub_1DD77DC60()
{
  result = qword_1ECD10188;
  if (!qword_1ECD10188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10188);
  }

  return result;
}

unint64_t sub_1DD77DCB8()
{
  result = qword_1ECD10190;
  if (!qword_1ECD10190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10190);
  }

  return result;
}

unint64_t sub_1DD77DD10()
{
  result = qword_1ECD10198;
  if (!qword_1ECD10198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10198);
  }

  return result;
}

unint64_t sub_1DD77DD68()
{
  result = qword_1ECD101A0;
  if (!qword_1ECD101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101A0);
  }

  return result;
}

unint64_t sub_1DD77DDC0()
{
  result = qword_1ECD101A8;
  if (!qword_1ECD101A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101A8);
  }

  return result;
}

unint64_t sub_1DD77DE18()
{
  result = qword_1ECD101B0;
  if (!qword_1ECD101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101B0);
  }

  return result;
}

unint64_t sub_1DD77DE70()
{
  result = qword_1ECD101B8;
  if (!qword_1ECD101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101B8);
  }

  return result;
}

unint64_t sub_1DD77DEC8()
{
  result = qword_1ECD101C0;
  if (!qword_1ECD101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101C0);
  }

  return result;
}

unint64_t sub_1DD77DF20()
{
  result = qword_1ECD101C8;
  if (!qword_1ECD101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101C8);
  }

  return result;
}

unint64_t sub_1DD77DF78()
{
  result = qword_1ECD101D0;
  if (!qword_1ECD101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101D0);
  }

  return result;
}

unint64_t sub_1DD77DFD0()
{
  result = qword_1ECD101D8;
  if (!qword_1ECD101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101D8);
  }

  return result;
}

unint64_t sub_1DD77E028()
{
  result = qword_1ECD101E0;
  if (!qword_1ECD101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101E0);
  }

  return result;
}

unint64_t sub_1DD77E080()
{
  result = qword_1ECD101E8;
  if (!qword_1ECD101E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101E8);
  }

  return result;
}

unint64_t sub_1DD77E0D8()
{
  result = qword_1ECD101F0;
  if (!qword_1ECD101F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101F0);
  }

  return result;
}

unint64_t sub_1DD77E130()
{
  result = qword_1ECD101F8;
  if (!qword_1ECD101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD101F8);
  }

  return result;
}

unint64_t sub_1DD77E188()
{
  result = qword_1ECD10200;
  if (!qword_1ECD10200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10200);
  }

  return result;
}

unint64_t sub_1DD77E1E0()
{
  result = qword_1ECD10208;
  if (!qword_1ECD10208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10208);
  }

  return result;
}

unint64_t sub_1DD77E238()
{
  result = qword_1ECD10210;
  if (!qword_1ECD10210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10210);
  }

  return result;
}

unint64_t sub_1DD77E290()
{
  result = qword_1ECD10218;
  if (!qword_1ECD10218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10218);
  }

  return result;
}

unint64_t sub_1DD77E2E8()
{
  result = qword_1ECD10220;
  if (!qword_1ECD10220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10220);
  }

  return result;
}

unint64_t sub_1DD77E340()
{
  result = qword_1ECD10228;
  if (!qword_1ECD10228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10228);
  }

  return result;
}

unint64_t sub_1DD77E398()
{
  result = qword_1ECD10230;
  if (!qword_1ECD10230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10230);
  }

  return result;
}

unint64_t sub_1DD77E3F0()
{
  result = qword_1ECD10238;
  if (!qword_1ECD10238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10238);
  }

  return result;
}

unint64_t sub_1DD77E448()
{
  result = qword_1ECD10240;
  if (!qword_1ECD10240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10240);
  }

  return result;
}

unint64_t sub_1DD77E4A0()
{
  result = qword_1ECD10248;
  if (!qword_1ECD10248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10248);
  }

  return result;
}

unint64_t sub_1DD77E4F8()
{
  result = qword_1ECD10250;
  if (!qword_1ECD10250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10250);
  }

  return result;
}

unint64_t sub_1DD77E550()
{
  result = qword_1ECD10258;
  if (!qword_1ECD10258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10258);
  }

  return result;
}

unint64_t sub_1DD77E5A8()
{
  result = qword_1ECD10260;
  if (!qword_1ECD10260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10260);
  }

  return result;
}

unint64_t sub_1DD77E600()
{
  result = qword_1ECD10268;
  if (!qword_1ECD10268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10268);
  }

  return result;
}

unint64_t sub_1DD77E658()
{
  result = qword_1ECD10270;
  if (!qword_1ECD10270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10270);
  }

  return result;
}

uint64_t ResponseOverrideMatcher.__allocating_init(locale:)(uint64_t a1)
{
  sub_1DD785E80();
  v2 = swift_allocObject();
  ResponseOverrideMatcher.init(locale:)(a1);
  return v2;
}

uint64_t ResponseOverrideMatcher.init(locale:)(uint64_t a1)
{
  v4 = type metadata accessor for SearchOverrides_SearchOverrides(0);
  v5 = sub_1DD6DEA10(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  *(v1 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD77E904(0xD000000000000010, 0x80000001DD8B5DF0, v7 - v6);
  sub_1DD874890();
  sub_1DD6DE1C4();
  (*(v8 + 8))(a1);
  if (v2)
  {

    type metadata accessor for ResponseOverrideMatcher(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD6E0AE4();
    sub_1DD785B64();
  }

  return v1;
}

uint64_t sub_1DD77E904@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v77 = a2;
  v78 = a3;
  sub_1DD874890();
  sub_1DD6DDEAC();
  v72 = v8;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  v71 = v10 - v9;
  sub_1DD6E9A9C();
  sub_1DD874ED0();
  sub_1DD6DDEAC();
  v75 = v12;
  v76 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  v74 = v14 - v13;
  v15 = sub_1DD710A9C(&qword_1ECD10340, &qword_1DD884D80);
  v16 = sub_1DD6DEA10(v15);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DE21C();
  v69 = v17 - v18;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBEC();
  v20 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v21 = sub_1DD6DEA10(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE21C();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  v28 = sub_1DD874740();
  sub_1DD6DDEAC();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DE21C();
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DFF40();
  sub_1DD7831C8();
  if (sub_1DD6E5ED0(v27, 1, v28) == 1)
  {
    sub_1DD6FC560(v27, &qword_1ECD16C10, &qword_1DD878230);
  }

  else
  {
    v33 = sub_1DD6E60FC();
    v34(v33);
    sub_1DD783364();
    (*(v30 + 8))(v5, v28);
    type metadata accessor for SearchOverrides_SearchOverrides(0);
    v35 = sub_1DD6DF154();
    if (sub_1DD6E5ED0(v35, v36, v37) != 1)
    {
      goto LABEL_11;
    }

    sub_1DD6FC560(v6, &qword_1ECD10340, &qword_1DD884D80);
  }

  sub_1DD78427C();
  if (sub_1DD6E5ED0(v24, 1, v28) != 1)
  {
    (*(v30 + 32))(v4, v24, v28);
    v41 = v69;
    sub_1DD783364();
    (*(v30 + 8))(v4, v28);
    type metadata accessor for SearchOverrides_SearchOverrides(0);
    v42 = sub_1DD6DF154();
    if (sub_1DD6E5ED0(v42, v43, v44) == 1)
    {
      v38 = &qword_1ECD10340;
      v39 = &qword_1DD884D80;
      v40 = v41;
      goto LABEL_9;
    }

LABEL_11:
    sub_1DD6E0AE4();
    return sub_1DD785B64();
  }

  v38 = &qword_1ECD16C10;
  v39 = &qword_1DD878230;
  v40 = v24;
LABEL_9:
  sub_1DD6FC560(v40, v38, v39);
  v45 = v74;
  sub_1DD874BE0();
  v46 = v71;
  v47 = v72;
  v48 = sub_1DD6E60FC();
  v49 = v73;
  v50(v48);
  v51 = sub_1DD874EC0();
  v52 = sub_1DD8754E0();
  if (os_log_type_enabled(v51, v52))
  {
    sub_1DD6ED18C();
    v53 = swift_slowAlloc();
    sub_1DD6E0FA4();
    v54 = swift_slowAlloc();
    v79 = v54;
    *v53 = 136315138;
    v55 = sub_1DD874830();
    v56 = v46;
    v58 = v57;
    (*(v47 + 8))(v56, v49);
    v59 = sub_1DD6FD650(v55, v58, &v79);

    *(v53 + 4) = v59;
    sub_1DD6E112C();
    _os_log_impl(v60, v61, v62, v63, v64, v65);
    sub_1DD6E1EC8(v54);
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    v66 = sub_1DD6E4978();
    MEMORY[0x1E12B5DE0](v66);
  }

  else
  {

    (*(v47 + 8))(v46, v49);
  }

  (*(v75 + 8))(v45, v76);
  sub_1DD785C6C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t type metadata accessor for ResponseOverrideMatcher(uint64_t a1)
{
  result = qword_1ECD102B0;
  if (!qword_1ECD102B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResponseOverrideMatcher.__allocating_init(jsonString:)()
{
  sub_1DD785E80();
  v0 = swift_allocObject();
  v1 = sub_1DD6E0F70();
  ResponseOverrideMatcher.init(jsonString:)(v1, v2);
  return v0;
}

uint64_t ResponseOverrideMatcher.init(jsonString:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchOverrides_SearchOverrides(0);
  v5 = sub_1DD6DEA10(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  *(v2 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD6E60FC();
  sub_1DD77F014();

  if (v3)
  {

    type metadata accessor for ResponseOverrideMatcher(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1DD6E0AE4();
    sub_1DD785B64();
  }

  return v2;
}

uint64_t sub_1DD77F014()
{
  sub_1DD6E87B8();
  v2 = sub_1DD874940();
  sub_1DD6DDEAC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEBEC();
  sub_1DD874930();
  sub_1DD874920();
  type metadata accessor for SearchOverrides_SearchOverrides(0);
  (*(v4 + 16))(v1, v0, v2);
  sub_1DD785C14();
  sub_1DD785ECC();

  sub_1DD6DDEDC();
  sub_1DD874A30();
  return (*(v4 + 8))(v0, v2);
}

uint64_t ResponseOverrideMatcher.__allocating_init(overrides:)(uint64_t a1)
{
  sub_1DD785E80();
  v1 = swift_allocObject();
  *(v1 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD6E0AE4();
  sub_1DD785B64();
  return v1;
}

uint64_t ResponseOverrideMatcher.init(overrides:)()
{
  *(v0 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache) = MEMORY[0x1E69E7CC8];
  sub_1DD6E0AE4();
  sub_1DD785B64();
  return v0;
}

void sub_1DD77F1F8()
{
  sub_1DD6DEB38();
  v234 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SearchOverrides_SearchOverride(0);
  v8 = sub_1DD6DEA1C(v7);
  v235 = v9;
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE21C();
  v220 = v10 - v11;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6F1780();
  v221 = v13;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6F1780();
  v223 = v15;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6F1780();
  v222 = v17;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6F1780();
  v225 = v19;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6F1780();
  v224 = v21;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6F1780();
  v232 = v23;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6F1780();
  v226 = v25;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6F1780();
  v233 = v27;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6F1780();
  v227 = v29;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6F1780();
  v219 = v31;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v32);
  v217 = &v213 - v33;
  sub_1DD6E9A9C();
  v34 = sub_1DD874ED0();
  sub_1DD6DDEAC();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DE21C();
  v214 = (v38 - v39);
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v213 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v213 - v46;
  memcpy(v242, v4, 0x68uLL);
  sub_1DD874BE0();
  sub_1DD785330(v242, v241);
  v48 = sub_1DD874EC0();
  v49 = sub_1DD8754C0();
  sub_1DD785368(v242);
  v50 = os_log_type_enabled(v48, v49);
  v218 = v6;
  v215 = v1;
  if (v50)
  {
    v51 = swift_slowAlloc();
    LODWORD(v230) = v49;
    v52 = v51;
    v231 = swift_slowAlloc();
    v241[0] = v231;
    *v52 = 136382211;
    *(v52 + 4) = sub_1DD6FD650(v242[0], v242[1], v241);
    v229 = v48;
    *(v52 + 12) = 2085;
    if (v242[3])
    {
      v53 = v242[2];
    }

    else
    {
      v53 = 7104878;
    }

    sub_1DD6FF7C8();
    sub_1DD785ECC();

    *(v52 + 14) = v53;
    *(v52 + 22) = 2085;
    if (v242[5])
    {
      v54 = v242[4];
    }

    else
    {
      v54 = 7104878;
    }

    sub_1DD6FF7C8();
    sub_1DD785ECC();

    *(v52 + 24) = v54;
    *(v52 + 32) = 2080;
    *(v52 + 34) = sub_1DD6FD650(v242[6], v242[7], v241);
    *(v52 + 42) = 2080;
    *(v52 + 44) = sub_1DD6FD650(v242[8], v242[9], v241);
    *(v52 + 52) = 2085;
    v55 = MEMORY[0x1E12B4D20](v242[10], MEMORY[0x1E69E6158]);
    v57 = sub_1DD6FD650(v55, v56, v241);

    *(v52 + 54) = v57;
    *(v52 + 62) = 2085;
    if (v242[12])
    {
      v58 = v242[11];
    }

    else
    {
      v58 = 7104878;
    }

    sub_1DD6FF7C8();
    sub_1DD785ECC();

    *(v52 + 64) = v58;
    v59 = v229;
    _os_log_impl(&dword_1DD6DC000, v229, v230, "Searching override matches for input:\nutterance: %{private}s\nresponse: %{sensitive}s\nanswer: %{sensitive}s\ninterfaceIdiom: %s\ndeviceType: %s\ncustomEntityDescriptions: %{sensitive}s\nonScreenText: %{sensitive}s", v52, 0x48u);
    swift_arrayDestroy();
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
  }

  else
  {
  }

  isa = v36[1].isa;
  isa(v47, v34);
  v216 = v2;
  v229 = v36;
  v230 = v34;
  v60 = v234;
  v61 = *(v234 + OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_overrides);
  v62 = *(v61 + 16);
  v231 = v61;
  if (v62)
  {
    v213 = v44;
    v241[0] = MEMORY[0x1E69E7CC0];

    sub_1DD76C4A4(0, v62, 0);
    v63 = v241[0];
    sub_1DD6E0DE8();
    v66 = v61 + (v65 & ~v64);
    v68 = *(v67 + 72);
    v69 = v217;
    do
    {
      v70 = sub_1DD6E87AC();
      sub_1DD785398(v70, v71);
      v73 = *v69;
      v72 = v69[1];

      sub_1DD6E5304();
      sub_1DD785BBC(v69, v74);
      v241[0] = v63;
      v76 = *(v63 + 16);
      v75 = *(v63 + 24);
      if (v76 >= v75 >> 1)
      {
        v78 = sub_1DD6F0A3C(v75);
        sub_1DD76C4A4(v78, v76 + 1, 1);
        v69 = v217;
        v63 = v241[0];
      }

      *(v63 + 16) = v76 + 1;
      v77 = v63 + 16 * v76;
      *(v77 + 32) = v73;
      *(v77 + 40) = v72;
      v66 += v68;
      --v62;
    }

    while (v62);
    v60 = v234;
    v61 = v231;
    v44 = v213;
  }

  else
  {

    v63 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD874BE0();

  v79 = sub_1DD874EC0();
  v80 = sub_1DD8754D0();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = sub_1DD6DDF08();
    sub_1DD6E0FA4();
    v234 = swift_slowAlloc();
    v241[0] = v234;
    *v81 = 134218242;
    *(v81 + 4) = *(v61 + 16);
    *(v81 + 12) = 2080;
    v240[0] = v63;
    LODWORD(v217) = v80;
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD6EE25C();
    sub_1DD6DF59C(v82, v83, &qword_1DD8AEFF0, v84);
    v85 = sub_1DD8750E0();
    v87 = v86;

    v88 = sub_1DD6FD650(v85, v87, v241);

    *(v81 + 14) = v88;
    _os_log_impl(&dword_1DD6DC000, v79, v217, "%ld overrides loaded: %s", v81, 0x16u);
    sub_1DD6E1EC8(v234);
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
  }

  else
  {
  }

  isa(v44, v230);
  v89 = v232;
  v90 = v219;
  v234 = *(v61 + 16);

  v91 = 0;
  v92 = MEMORY[0x1E69E7CC0];
  while (v234 != v91)
  {
    if (v91 >= *(v61 + 16))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);

      sub_1DD6E5304();
      sub_1DD785BBC(v60, v212);

      __break(1u);
      return;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v61 + (v94 & ~v93) + *(v95 + 72) * v91, v90);
    sub_1DD7811FC();
    if (v96)
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v241[0] = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD76C4C4(0, *(v92 + 16) + 1, 1);
        v90 = v219;
        v92 = v241[0];
      }

      v100 = *(v92 + 16);
      v99 = *(v92 + 24);
      if (v100 >= v99 >> 1)
      {
        v101 = sub_1DD6F0A3C(v99);
        sub_1DD76C4C4(v101, v100 + 1, 1);
        v90 = v219;
        v92 = v241[0];
      }

      ++v91;
      *(v92 + 16) = v100 + 1;
      sub_1DD6E14AC();
      sub_1DD785B64();
      v61 = v231;
      v89 = v232;
    }

    else
    {
      sub_1DD6E5304();
      sub_1DD785BBC(v90, v97);
      ++v91;
    }
  }

  v102 = v60;

  v60 = 0;
  v234 = *(v92 + 16);
  v103 = MEMORY[0x1E69E7CC0];
  while (v234 != v60)
  {
    if (v60 >= *(v92 + 16))
    {
      goto LABEL_122;
    }

    sub_1DD6E0DE8();
    v107 = v102;
    v108 = v233;
    sub_1DD785398(v92 + (v105 & ~v104) + *(v106 + 72) * v60, v233);
    sub_1DD6E1C3C();
    sub_1DD7817A4();
    if (v109)
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v240[0] = v103;
      if ((v111 & 1) == 0)
      {
        sub_1DD6FBE30(*(v103 + 16));
        v103 = v240[0];
      }

      v102 = v107;
      v113 = *(v103 + 16);
      v112 = *(v103 + 24);
      if (v113 >= v112 >> 1)
      {
        v114 = sub_1DD6FAB0C(v112);
        sub_1DD76C4C4(v114, v113 + 1, 1);
        v103 = v240[0];
      }

      ++v60;
      *(v103 + 16) = v113 + 1;
      sub_1DD6E14AC();
      sub_1DD785B64();
      v89 = v232;
    }

    else
    {
      sub_1DD6E5304();
      sub_1DD785BBC(v108, v110);
      ++v60;
      v102 = v107;
    }
  }

  v115 = 0;
  v116 = *(v103 + 16);
  v60 = MEMORY[0x1E69E7CC0];
  while (v116 != v115)
  {
    if (v115 >= *(v103 + 16))
    {
      goto LABEL_123;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v103 + (v118 & ~v117) + *(v119 + 72) * v115, v89);
    sub_1DD6E1C3C();
    if (sub_1DD781A64())
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v240[0] = v60;
      if ((v121 & 1) == 0)
      {
        sub_1DD6FBE30(*(v60 + 16));
        v60 = v240[0];
      }

      v123 = *(v60 + 16);
      v122 = *(v60 + 24);
      v124 = v123 + 1;
      if (v123 >= v122 >> 1)
      {
        v125 = sub_1DD6FAB0C(v122);
        v127 = v126;
        sub_1DD76C4C4(v125, v126, 1);
        v124 = v127;
        v60 = v240[0];
      }

      ++v115;
      *(v60 + 16) = v124;
      sub_1DD6E14AC();
      sub_1DD785B64();
      v89 = v232;
    }

    else
    {
      sub_1DD6E5304();
      sub_1DD785BBC(v89, v120);
      ++v115;
    }
  }

  v128 = 0;
  v129 = *(v60 + 16);
  v89 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v130 = v225;
  while (v129 != v128)
  {
    if (v128 >= *(v60 + 16))
    {
      goto LABEL_124;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v60 + (v132 & ~v131) + *(v133 + 72) * v128, v130);
    sub_1DD6E1C3C();
    if (sub_1DD781B94())
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v240[0] = v89;
      if ((v135 & 1) == 0)
      {
        sub_1DD6FBE30(v89[2]);
        v89 = v240[0];
      }

      v137 = v89[2];
      v136 = v89[3];
      v138 = v137 + 1;
      if (v137 >= v136 >> 1)
      {
        v139 = sub_1DD6FAB0C(v136);
        v141 = v140;
        sub_1DD76C4C4(v139, v140, 1);
        v138 = v141;
        v89 = v240[0];
      }

      ++v128;
      v89[2] = v138;
      sub_1DD6E14AC();
      sub_1DD785B64();
      goto LABEL_54;
    }

    sub_1DD6E5304();
    sub_1DD785BBC(v130, v134);
    ++v128;
  }

  v142 = 0;
  v143 = v89[2];
  v234 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v60 = v223;
  while (v143 != v142)
  {
    if (v142 >= v89[2])
    {
      goto LABEL_125;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v89 + (v145 & ~v144) + *(v146 + 72) * v142, v60);
    sub_1DD6E1C3C();
    if (sub_1DD781CC4())
    {
      sub_1DD6E14AC();
      sub_1DD785B64();
      v148 = v234;
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v240[0] = v148;
      if ((v149 & 1) == 0)
      {
        sub_1DD6FBE30(v148[2]);
        v148 = v240[0];
      }

      v151 = v148[2];
      v150 = v148[3];
      if (v151 >= v150 >> 1)
      {
        v152 = sub_1DD6FAB0C(v150);
        sub_1DD76C4C4(v152, v151 + 1, 1);
        v148 = v240[0];
      }

      ++v142;
      v148[2] = v151 + 1;
      v234 = v148;
      sub_1DD6E14AC();
      sub_1DD785B64();
      goto LABEL_65;
    }

    sub_1DD6E5304();
    sub_1DD785BBC(v60, v147);
    ++v142;
  }

  v153 = v234;
  v154 = v234[2];

  v155 = 0;
  v89 = 0;
  v156 = MEMORY[0x1E69E7CC0];
  v60 = v221;
  while (v154 != v155)
  {
    if (v155 >= v153[2])
    {
      goto LABEL_126;
    }

    sub_1DD6E0DE8();
    sub_1DD785398(v153 + (v158 & ~v157) + *(v159 + 72) * v155, v60);
    sub_1DD6E0F70();
    sub_1DD7805C8(v160);
    sub_1DD6E5304();
    sub_1DD785BBC(v60, v161);
    memcpy(v240, v241, 0x88uLL);
    if (sub_1DD7853FC(v240) == 1)
    {
      memcpy(v239, v241, sizeof(v239));
      sub_1DD6FC560(v239, &qword_1ECD10288, &unk_1DD884900);
      ++v155;
    }

    else
    {
      memcpy(v239, v241, sizeof(v239));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = sub_1DD78476C(0, *(v156 + 2) + 1, 1, v156);
      }

      v163 = *(v156 + 2);
      v162 = *(v156 + 3);
      if (v163 >= v162 >> 1)
      {
        v164 = sub_1DD6F0A3C(v162);
        v156 = sub_1DD78476C(v164, v163 + 1, 1, v156);
      }

      ++v155;
      sub_1DD785E90();
      *(v156 + 2) = v163 + 1;
      memcpy(&v156[136 * v163 + 32], v238, 0x88uLL);
      v60 = v221;
      v153 = v234;
    }
  }

  v165 = *(v156 + 2);
  if (v165)
  {
    memcpy(v239, v156 + 32, sizeof(v239));
    memmove(v240, v156 + 32, 0x88uLL);
    nullsub_1();
    sub_1DD785414(v239, v241);
    memcpy(v241, v240, sizeof(v241));
  }

  else
  {
    sub_1DD78547C(v241);
  }

  v166 = 32;
  v167 = v165;
  if (v165)
  {
    while (1)
    {
      memcpy(v239, &v156[v166], sizeof(v239));
      v60 = v239[16];
      if (v239[16])
      {
        sub_1DD785E90();
        nullsub_1();
        if (*(v60 + 16))
        {
          break;
        }
      }

      v166 += 136;
      if (!--v167)
      {
        goto LABEL_92;
      }
    }

    sub_1DD785414(v239, v237);
    sub_1DD6FC560(v241, &qword_1ECD10288, &unk_1DD884900);
    v168 = v238;
  }

  else
  {
LABEL_92:
    v168 = v241;
  }

  memcpy(v240, v168, 0x88uLL);
  v169 = 0;
  v170 = 32;
  while (v165 != v169)
  {
    if (v169 >= *(v156 + 2))
    {
      goto LABEL_127;
    }

    memcpy(v239, &v156[v170], sizeof(v239));
    v171 = v239[16];
    if (v239[16])
    {
      v172 = v239[15];
      if (v239[15])
      {
        sub_1DD785414(v239, v238);
        sub_1DD6FC560(v240, &qword_1ECD10288, &unk_1DD884900);
LABEL_106:
        v180 = v239[1];
        memcpy(v237, &v239[2], 0x61uLL);
        v181 = v230;
        v235 = v239[0];
        memcpy(&v239[2], v237, 0x61uLL);
        v239[15] = v172;
        v239[16] = v171;
        v182 = *(v156 + 2);
        if (v182 < 2)
        {

          v190 = v216;
        }

        else
        {
          v233 = v239[1];
          v238[0] = MEMORY[0x1E69E7CC0];
          sub_1DD76C4A4(0, v182, 0);
          v183 = v238[0];
          v184 = (v156 + 40);
          do
          {
            v186 = *(v184 - 1);
            v185 = *v184;
            v238[0] = v183;
            v188 = *(v183 + 16);
            v187 = *(v183 + 24);

            if (v188 >= v187 >> 1)
            {
              sub_1DD76C4A4((v187 > 1), v188 + 1, 1);
              v183 = v238[0];
            }

            *(v183 + 16) = v188 + 1;
            v189 = v183 + 16 * v188;
            *(v189 + 32) = v186;
            *(v189 + 40) = v185;
            v184 += 17;
            --v182;
          }

          while (v182);
          v191 = v215;
          sub_1DD874BE0();

          v192 = sub_1DD874EC0();
          v193 = sub_1DD8754D0();

          if (os_log_type_enabled(v192, v193))
          {
            v195 = sub_1DD6DDF08();
            sub_1DD6E0FA4();
            v196 = swift_slowAlloc();
            v238[0] = v196;
            *v195 = 134218242;
            v197 = *(v156 + 2);

            *(v195 + 4) = v197;

            *(v195 + 12) = 2080;
            v236 = v183;
            sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
            sub_1DD6EE25C();
            sub_1DD6DF59C(v198, v199, &qword_1DD8AEFF0, v200);
            v201 = sub_1DD8750E0();
            v203 = v202;

            v204 = sub_1DD6FD650(v201, v203, v238);

            *(v195 + 14) = v204;
            _os_log_impl(&dword_1DD6DC000, v192, v193, "%ld overrides matched: %s", v195, 0x16u);
            sub_1DD6E1EC8(v196);
            sub_1DD6ED27C();
            MEMORY[0x1E12B5DE0]();
            sub_1DD6ED27C();
            MEMORY[0x1E12B5DE0]();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v205 = v191;
          v181 = v230;
          isa(v205, v230);
          v190 = v216;
          v180 = v233;
        }

        sub_1DD874BE0();
        sub_1DD785414(v239, v238);
        v206 = sub_1DD874EC0();
        v207 = sub_1DD8754D0();
        sub_1DD78544C(v239);
        if (os_log_type_enabled(v206, v207))
        {
          sub_1DD6ED18C();
          v208 = swift_slowAlloc();
          sub_1DD6E0FA4();
          v209 = swift_slowAlloc();
          v238[0] = v209;
          *v208 = 136315138;

          v210 = sub_1DD6FD650(v235, v180, v238);

          *(v208 + 4) = v210;
          _os_log_impl(&dword_1DD6DC000, v206, v207, "Returning matched override with identifier: %s", v208, 0xCu);
          sub_1DD6E1EC8(v209);
          sub_1DD6ED27C();
          MEMORY[0x1E12B5DE0]();
          sub_1DD6ED27C();
          MEMORY[0x1E12B5DE0]();
        }

        isa(v190, v181);

        v211 = v218;
        sub_1DD785E90();
        nullsub_1();
        v179 = v211;
        goto LABEL_120;
      }
    }

    v170 += 136;
    ++v169;
  }

  memcpy(v239, v240, sizeof(v239));
  if (sub_1DD7853FC(v239) != 1)
  {
    v172 = v239[15];
    v171 = v239[16];
    goto LABEL_106;
  }

  v173 = v214;
  sub_1DD874BE0();
  v174 = sub_1DD874EC0();
  v175 = sub_1DD8754D0();
  v176 = os_log_type_enabled(v174, v175);
  v177 = v230;
  if (v176)
  {
    v178 = swift_slowAlloc();
    *v178 = 0;
    _os_log_impl(&dword_1DD6DC000, v174, v175, "No overrides to match", v178, 2u);
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
  }

  isa(v173, v177);

  sub_1DD78547C(v238);
  v179 = v218;
LABEL_120:
  memcpy(v179, v238, 0x88uLL);
  sub_1DD6DFED0();
}

void *sub_1DD7805C8@<X0>(void *a3@<X8>)
{
  v39 = a3;
  v3 = sub_1DD874ED0();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DD710A9C(&qword_1ECD10338, &qword_1DD884D68);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for SearchOverrides_SearchOverride(0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v34 - v15);
  sub_1DD781DF4();
  v17 = sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
  if (sub_1DD6E5ED0(v11, 1, v17) == 1)
  {
    sub_1DD6FC560(v11, &qword_1ECD10338, &qword_1DD884D68);
    sub_1DD78547C(__dst);
    v18 = v39;
  }

  else
  {
    v19 = *&v11[*(v17 + 48)];
    sub_1DD785B64();
    v21 = *v16;
    v20 = v16[1];
    sub_1DD719110();

    sub_1DD780AF4();
    v22 = v43[96];
    sub_1DD719110();
    sub_1DD780F6C(v7, v19, &v41);
    if (v22 != 255 || v42)
    {
      memcpy(&v40[2], v43, 0x60uLL);
      v40[0] = v21;
      v40[1] = v20;
      LOBYTE(v40[14]) = v22;
      v40[15] = v41;
      v40[16] = v42;
      nullsub_1();
      v32 = v16;
    }

    else
    {

      sub_1DD78547C(v40);
      v23 = v38;
      sub_1DD874BE0();
      v24 = v35;
      sub_1DD785398(v16, v35);
      v25 = sub_1DD874EC0();
      v26 = sub_1DD8754D0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        __dst[0] = v28;
        *v27 = 136315138;
        v29 = *v24;
        v30 = v24[1];

        sub_1DD785BBC(v24, type metadata accessor for SearchOverrides_SearchOverride);
        v31 = sub_1DD6FD650(v29, v30, __dst);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1DD6DC000, v25, v26, "Malformed override: %s", v27, 0xCu);
        sub_1DD6E1EC8(v28);
        MEMORY[0x1E12B5DE0](v28, -1, -1);
        MEMORY[0x1E12B5DE0](v27, -1, -1);

        (*(v36 + 8))(v38, v37);
      }

      else
      {

        sub_1DD785BBC(v24, type metadata accessor for SearchOverrides_SearchOverride);
        (*(v36 + 8))(v23, v37);
      }

      v32 = v16;
    }

    sub_1DD785BBC(v32, type metadata accessor for SearchOverrides_SearchOverride);
    memcpy(__dst, v40, 0x88uLL);
    v18 = v39;
  }

  return memcpy(v18, __dst, 0x88uLL);
}

void sub_1DD780AF4()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for OverridesCommon_OverrideDialog.StringDialog(0);
  v7 = sub_1DD6DEA10(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  v8 = type metadata accessor for OverridesCommon_OverrideDialog.CATDialog(0);
  v9 = sub_1DD6DEA10(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v48 = (v11 - v10);
  v12 = sub_1DD710A9C(&qword_1ECD0EA08, &unk_1DD884D70);
  v13 = sub_1DD6DEA10(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE21C();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  sub_1DD6DEA10(v20);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6E7258();
  v22 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DE4A8();
  sub_1DD719110();
  v24 = sub_1DD6DF154();
  sub_1DD6DE1FC(v24, v25, v22);
  if (v32)
  {
    v26 = sub_1DD6E87AC();
    sub_1DD6FC560(v26, v27, &qword_1DD884D60);
    v28 = v1;
    v29 = &qword_1ECD0EE10;
    v30 = &qword_1DD884D60;
LABEL_7:
    sub_1DD6FC560(v28, v29, v30);
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    v33 = -1;
    goto LABEL_8;
  }

  sub_1DD6E6384();
  sub_1DD785B64();
  sub_1DD719110();
  v31 = type metadata accessor for OverridesCommon_OverrideDialogEnum(0);
  sub_1DD6DE1FC(v19, 1, v31);
  if (v32)
  {
    sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
    sub_1DD6DE59C();
    v29 = &qword_1ECD0EA08;
    v30 = &unk_1DD884D70;
    v28 = v19;
    goto LABEL_7;
  }

  sub_1DD719110();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DD6E60FC();
      sub_1DD785B64();
      v36 = *v0;
      v35 = v0[1];
      v37 = v0[2];
      v38 = v0[3];
      v39 = v0[5];
      v47 = v0[4];
      v48 = v37;
      v40 = v0[7];
      v46 = v0[6];

      sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
      sub_1DD785BBC(v0, type metadata accessor for OverridesCommon_OverrideDialog.StringDialog);
      sub_1DD6DE59C();
      sub_1DD6FC560(v19, &qword_1ECD0EA08, &unk_1DD884D70);
      *v5 = v36;
      *(v5 + 8) = v35;
      v41 = v47;
      *(v5 + 16) = v48;
      *(v5 + 24) = v38;
      *(v5 + 32) = v41;
      *(v5 + 40) = v39;
      *(v5 + 48) = v46;
      *(v5 + 56) = v40;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0;
      goto LABEL_9;
    }

    sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
    sub_1DD6DE59C();
    v42 = v48;
    sub_1DD785B64();
    v44 = *v42;
    v43 = v42[1];

    sub_1DD785BBC(v42, type metadata accessor for OverridesCommon_OverrideDialog.CATDialog);
    sub_1DD6FC560(v19, &qword_1ECD0EA08, &unk_1DD884D70);
    *v5 = v44;
    *(v5 + 8) = v43;
    v33 = 1;
  }

  else
  {
    sub_1DD6FC560(v3, &qword_1ECD0EE10, &qword_1DD884D60);
    sub_1DD6DE59C();
    sub_1DD785BBC(v16, type metadata accessor for OverridesCommon_OverrideDialogEnum);
    sub_1DD6FC560(v19, &qword_1ECD0EA08, &unk_1DD884D70);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    v33 = 2;
  }

LABEL_8:
  *(v5 + 96) = v33;
LABEL_9:
  sub_1DD6DFED0();
}