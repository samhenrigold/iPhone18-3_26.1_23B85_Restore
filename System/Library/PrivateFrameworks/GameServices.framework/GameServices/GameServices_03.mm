uint64_t getEnumTagSinglePayload for ParticipantInteraction.Mode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *_s12GameServices15ChallengeInviteV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D847F784(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *sub_1D847F80C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices20ChallengeLeaveResultOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices15ChallengeFilterO14GameCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D847FB08()
{
  result = qword_1ECA3DD60[0];
  if (!qword_1ECA3DD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3DD60);
  }

  return result;
}

unint64_t sub_1D847FB60()
{
  result = qword_1ECA3DF70[0];
  if (!qword_1ECA3DF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3DF70);
  }

  return result;
}

unint64_t sub_1D847FBB8()
{
  result = qword_1ECA3E180[0];
  if (!qword_1ECA3E180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3E180);
  }

  return result;
}

unint64_t sub_1D847FC10()
{
  result = qword_1ECA3E390[0];
  if (!qword_1ECA3E390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3E390);
  }

  return result;
}

unint64_t sub_1D847FC68()
{
  result = qword_1ECA3E5A0[0];
  if (!qword_1ECA3E5A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3E5A0);
  }

  return result;
}

unint64_t sub_1D847FCC0()
{
  result = qword_1ECA3EAB0[0];
  if (!qword_1ECA3EAB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3EAB0);
  }

  return result;
}

unint64_t sub_1D847FD18()
{
  result = qword_1ECA3ECC0[0];
  if (!qword_1ECA3ECC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3ECC0);
  }

  return result;
}

unint64_t sub_1D847FD70()
{
  result = qword_1ECA3EED0[0];
  if (!qword_1ECA3EED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3EED0);
  }

  return result;
}

unint64_t sub_1D847FDC8()
{
  result = qword_1ECA3F0E0[0];
  if (!qword_1ECA3F0E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3F0E0);
  }

  return result;
}

unint64_t sub_1D847FE20()
{
  result = qword_1ECA3F2F0[0];
  if (!qword_1ECA3F2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3F2F0);
  }

  return result;
}

unint64_t sub_1D847FE78()
{
  result = qword_1ECA3F500[0];
  if (!qword_1ECA3F500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3F500);
  }

  return result;
}

unint64_t sub_1D847FED0()
{
  result = qword_1ECA3F710[0];
  if (!qword_1ECA3F710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3F710);
  }

  return result;
}

unint64_t sub_1D847FF28()
{
  result = qword_1ECA3F920[0];
  if (!qword_1ECA3F920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3F920);
  }

  return result;
}

unint64_t sub_1D847FF80()
{
  result = qword_1ECA3FB30[0];
  if (!qword_1ECA3FB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3FB30);
  }

  return result;
}

unint64_t sub_1D847FFD8()
{
  result = qword_1ECA3FD40[0];
  if (!qword_1ECA3FD40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3FD40);
  }

  return result;
}

unint64_t sub_1D8480030()
{
  result = qword_1ECA3FF50[0];
  if (!qword_1ECA3FF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3FF50);
  }

  return result;
}

unint64_t sub_1D8480088()
{
  result = qword_1ECA40260[0];
  if (!qword_1ECA40260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA40260);
  }

  return result;
}

unint64_t sub_1D84800E0()
{
  result = qword_1ECA40470[0];
  if (!qword_1ECA40470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA40470);
  }

  return result;
}

unint64_t sub_1D8480138()
{
  result = qword_1ECA40680[0];
  if (!qword_1ECA40680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA40680);
  }

  return result;
}

unint64_t sub_1D8480190()
{
  result = qword_1ECA40990[0];
  if (!qword_1ECA40990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA40990);
  }

  return result;
}

unint64_t sub_1D84801E8()
{
  result = qword_1ECA40BA0[0];
  if (!qword_1ECA40BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA40BA0);
  }

  return result;
}

unint64_t sub_1D8480240()
{
  result = qword_1ECA40DB0[0];
  if (!qword_1ECA40DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA40DB0);
  }

  return result;
}

unint64_t sub_1D8480298()
{
  result = qword_1ECA411C0[0];
  if (!qword_1ECA411C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA411C0);
  }

  return result;
}

unint64_t sub_1D84802F0()
{
  result = qword_1ECA413D0[0];
  if (!qword_1ECA413D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA413D0);
  }

  return result;
}

unint64_t sub_1D8480348()
{
  result = qword_1ECA415E0[0];
  if (!qword_1ECA415E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA415E0);
  }

  return result;
}

unint64_t sub_1D84803A0()
{
  result = qword_1ECA417F0[0];
  if (!qword_1ECA417F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA417F0);
  }

  return result;
}

unint64_t sub_1D84803F8()
{
  result = qword_1ECA41A00[0];
  if (!qword_1ECA41A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA41A00);
  }

  return result;
}

unint64_t sub_1D8480450()
{
  result = qword_1ECA41C10[0];
  if (!qword_1ECA41C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA41C10);
  }

  return result;
}

unint64_t sub_1D84804A8()
{
  result = qword_1ECA41E20[0];
  if (!qword_1ECA41E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA41E20);
  }

  return result;
}

unint64_t sub_1D8480500()
{
  result = qword_1ECA42030[0];
  if (!qword_1ECA42030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42030);
  }

  return result;
}

unint64_t sub_1D8480558()
{
  result = qword_1ECA42240[0];
  if (!qword_1ECA42240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42240);
  }

  return result;
}

unint64_t sub_1D84805B0()
{
  result = qword_1ECA42350;
  if (!qword_1ECA42350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42350);
  }

  return result;
}

unint64_t sub_1D8480608()
{
  result = qword_1ECA42358[0];
  if (!qword_1ECA42358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42358);
  }

  return result;
}

unint64_t sub_1D8480660()
{
  result = qword_1ECA423E0;
  if (!qword_1ECA423E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA423E0);
  }

  return result;
}

unint64_t sub_1D84806B8()
{
  result = qword_1ECA423E8[0];
  if (!qword_1ECA423E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA423E8);
  }

  return result;
}

unint64_t sub_1D8480710()
{
  result = qword_1ECA42470;
  if (!qword_1ECA42470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42470);
  }

  return result;
}

unint64_t sub_1D8480768()
{
  result = qword_1ECA42478;
  if (!qword_1ECA42478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42478);
  }

  return result;
}

unint64_t sub_1D84807C0()
{
  result = qword_1ECA42500;
  if (!qword_1ECA42500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42500);
  }

  return result;
}

unint64_t sub_1D8480818()
{
  result = qword_1ECA42508[0];
  if (!qword_1ECA42508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42508);
  }

  return result;
}

unint64_t sub_1D8480870()
{
  result = qword_1ECA42590;
  if (!qword_1ECA42590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42590);
  }

  return result;
}

unint64_t sub_1D84808C8()
{
  result = qword_1ECA42598[0];
  if (!qword_1ECA42598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42598);
  }

  return result;
}

unint64_t sub_1D8480920()
{
  result = qword_1ECA42620;
  if (!qword_1ECA42620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42620);
  }

  return result;
}

unint64_t sub_1D8480978()
{
  result = qword_1ECA42628[0];
  if (!qword_1ECA42628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42628);
  }

  return result;
}

unint64_t sub_1D84809D0()
{
  result = qword_1ECA426B0;
  if (!qword_1ECA426B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA426B0);
  }

  return result;
}

unint64_t sub_1D8480A28()
{
  result = qword_1ECA426B8[0];
  if (!qword_1ECA426B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA426B8);
  }

  return result;
}

unint64_t sub_1D8480A80()
{
  result = qword_1ECA42740;
  if (!qword_1ECA42740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42740);
  }

  return result;
}

unint64_t sub_1D8480AD8()
{
  result = qword_1ECA42748[0];
  if (!qword_1ECA42748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42748);
  }

  return result;
}

unint64_t sub_1D8480B30()
{
  result = qword_1ECA427D0;
  if (!qword_1ECA427D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA427D0);
  }

  return result;
}

unint64_t sub_1D8480B88()
{
  result = qword_1ECA427D8[0];
  if (!qword_1ECA427D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA427D8);
  }

  return result;
}

unint64_t sub_1D8480BE0()
{
  result = qword_1ECA42860;
  if (!qword_1ECA42860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42860);
  }

  return result;
}

unint64_t sub_1D8480C38()
{
  result = qword_1ECA42868[0];
  if (!qword_1ECA42868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42868);
  }

  return result;
}

unint64_t sub_1D8480C90()
{
  result = qword_1ECA428F0;
  if (!qword_1ECA428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA428F0);
  }

  return result;
}

unint64_t sub_1D8480CE8()
{
  result = qword_1ECA428F8[0];
  if (!qword_1ECA428F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA428F8);
  }

  return result;
}

unint64_t sub_1D8480D40()
{
  result = qword_1ECA42980;
  if (!qword_1ECA42980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42980);
  }

  return result;
}

unint64_t sub_1D8480D98()
{
  result = qword_1ECA42988[0];
  if (!qword_1ECA42988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42988);
  }

  return result;
}

unint64_t sub_1D8480DF0()
{
  result = qword_1ECA42A10;
  if (!qword_1ECA42A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42A10);
  }

  return result;
}

unint64_t sub_1D8480E48()
{
  result = qword_1ECA42A18[0];
  if (!qword_1ECA42A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42A18);
  }

  return result;
}

unint64_t sub_1D8480EA0()
{
  result = qword_1ECA42AA0;
  if (!qword_1ECA42AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42AA0);
  }

  return result;
}

unint64_t sub_1D8480EF8()
{
  result = qword_1ECA42AA8[0];
  if (!qword_1ECA42AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42AA8);
  }

  return result;
}

unint64_t sub_1D8480F50()
{
  result = qword_1ECA42B30;
  if (!qword_1ECA42B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42B30);
  }

  return result;
}

unint64_t sub_1D8480FA8()
{
  result = qword_1ECA42B38[0];
  if (!qword_1ECA42B38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42B38);
  }

  return result;
}

unint64_t sub_1D8481000()
{
  result = qword_1ECA42BC0;
  if (!qword_1ECA42BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42BC0);
  }

  return result;
}

unint64_t sub_1D8481058()
{
  result = qword_1ECA42BC8[0];
  if (!qword_1ECA42BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42BC8);
  }

  return result;
}

unint64_t sub_1D84810B0()
{
  result = qword_1ECA42C50;
  if (!qword_1ECA42C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42C50);
  }

  return result;
}

unint64_t sub_1D8481108()
{
  result = qword_1ECA42C58[0];
  if (!qword_1ECA42C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42C58);
  }

  return result;
}

unint64_t sub_1D8481160()
{
  result = qword_1ECA42CE0;
  if (!qword_1ECA42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42CE0);
  }

  return result;
}

unint64_t sub_1D84811B8()
{
  result = qword_1ECA42CE8[0];
  if (!qword_1ECA42CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42CE8);
  }

  return result;
}

unint64_t sub_1D8481210()
{
  result = qword_1ECA42D70;
  if (!qword_1ECA42D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42D70);
  }

  return result;
}

unint64_t sub_1D8481268()
{
  result = qword_1ECA42D78;
  if (!qword_1ECA42D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42D78);
  }

  return result;
}

unint64_t sub_1D84812C0()
{
  result = qword_1ECA42E00;
  if (!qword_1ECA42E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42E00);
  }

  return result;
}

unint64_t sub_1D8481318()
{
  result = qword_1ECA42E08[0];
  if (!qword_1ECA42E08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42E08);
  }

  return result;
}

unint64_t sub_1D8481370()
{
  result = qword_1ECA42E90;
  if (!qword_1ECA42E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42E90);
  }

  return result;
}

unint64_t sub_1D84813C8()
{
  result = qword_1ECA42E98[0];
  if (!qword_1ECA42E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42E98);
  }

  return result;
}

unint64_t sub_1D8481420()
{
  result = qword_1ECA42F20;
  if (!qword_1ECA42F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42F20);
  }

  return result;
}

unint64_t sub_1D8481478()
{
  result = qword_1ECA42F28[0];
  if (!qword_1ECA42F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42F28);
  }

  return result;
}

unint64_t sub_1D84814D0()
{
  result = qword_1ECA42FB0;
  if (!qword_1ECA42FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA42FB0);
  }

  return result;
}

unint64_t sub_1D8481528()
{
  result = qword_1ECA42FB8[0];
  if (!qword_1ECA42FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA42FB8);
  }

  return result;
}

unint64_t sub_1D8481580()
{
  result = qword_1ECA43040;
  if (!qword_1ECA43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43040);
  }

  return result;
}

unint64_t sub_1D84815D8()
{
  result = qword_1ECA43048[0];
  if (!qword_1ECA43048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43048);
  }

  return result;
}

unint64_t sub_1D8481630()
{
  result = qword_1ECA430D0;
  if (!qword_1ECA430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA430D0);
  }

  return result;
}

unint64_t sub_1D8481688()
{
  result = qword_1ECA430D8[0];
  if (!qword_1ECA430D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA430D8);
  }

  return result;
}

unint64_t sub_1D84816E0()
{
  result = qword_1ECA43160;
  if (!qword_1ECA43160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43160);
  }

  return result;
}

unint64_t sub_1D8481738()
{
  result = qword_1ECA43168[0];
  if (!qword_1ECA43168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43168);
  }

  return result;
}

unint64_t sub_1D8481790()
{
  result = qword_1ECA431F0;
  if (!qword_1ECA431F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA431F0);
  }

  return result;
}

unint64_t sub_1D84817E8()
{
  result = qword_1ECA431F8[0];
  if (!qword_1ECA431F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA431F8);
  }

  return result;
}

unint64_t sub_1D8481840()
{
  result = qword_1ECA43280;
  if (!qword_1ECA43280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43280);
  }

  return result;
}

unint64_t sub_1D8481898()
{
  result = qword_1ECA43288[0];
  if (!qword_1ECA43288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43288);
  }

  return result;
}

unint64_t sub_1D84818F0()
{
  result = qword_1ECA43310;
  if (!qword_1ECA43310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43310);
  }

  return result;
}

unint64_t sub_1D8481948()
{
  result = qword_1ECA43318[0];
  if (!qword_1ECA43318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43318);
  }

  return result;
}

unint64_t sub_1D84819A0()
{
  result = qword_1ECA433A0;
  if (!qword_1ECA433A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA433A0);
  }

  return result;
}

unint64_t sub_1D84819F8()
{
  result = qword_1ECA433A8[0];
  if (!qword_1ECA433A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA433A8);
  }

  return result;
}

unint64_t sub_1D8481A50()
{
  result = qword_1ECA43430;
  if (!qword_1ECA43430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43430);
  }

  return result;
}

unint64_t sub_1D8481AA8()
{
  result = qword_1ECA43438[0];
  if (!qword_1ECA43438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43438);
  }

  return result;
}

unint64_t sub_1D8481B00()
{
  result = qword_1ECA434C0;
  if (!qword_1ECA434C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA434C0);
  }

  return result;
}

unint64_t sub_1D8481B58()
{
  result = qword_1ECA434C8[0];
  if (!qword_1ECA434C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA434C8);
  }

  return result;
}

unint64_t sub_1D8481BB0()
{
  result = qword_1ECA43550;
  if (!qword_1ECA43550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43550);
  }

  return result;
}

unint64_t sub_1D8481C08()
{
  result = qword_1ECA43558[0];
  if (!qword_1ECA43558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43558);
  }

  return result;
}

unint64_t sub_1D8481C60()
{
  result = qword_1ECA435E0;
  if (!qword_1ECA435E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA435E0);
  }

  return result;
}

unint64_t sub_1D8481CB8()
{
  result = qword_1ECA435E8[0];
  if (!qword_1ECA435E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA435E8);
  }

  return result;
}

unint64_t sub_1D8481D10()
{
  result = qword_1ECA43670;
  if (!qword_1ECA43670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43670);
  }

  return result;
}

unint64_t sub_1D8481D68()
{
  result = qword_1ECA43678;
  if (!qword_1ECA43678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43678);
  }

  return result;
}

unint64_t sub_1D8481DC0()
{
  result = qword_1ECA43700;
  if (!qword_1ECA43700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43700);
  }

  return result;
}

unint64_t sub_1D8481E18()
{
  result = qword_1ECA43708[0];
  if (!qword_1ECA43708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43708);
  }

  return result;
}

unint64_t sub_1D8481E70()
{
  result = qword_1ECA43790;
  if (!qword_1ECA43790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43790);
  }

  return result;
}

unint64_t sub_1D8481EC8()
{
  result = qword_1ECA43798[0];
  if (!qword_1ECA43798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43798);
  }

  return result;
}

unint64_t sub_1D8481F20()
{
  result = qword_1ECA43820;
  if (!qword_1ECA43820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43820);
  }

  return result;
}

unint64_t sub_1D8481F78()
{
  result = qword_1ECA43828[0];
  if (!qword_1ECA43828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43828);
  }

  return result;
}

unint64_t sub_1D8481FCC()
{
  result = qword_1ECA39498;
  if (!qword_1ECA39498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39498);
  }

  return result;
}

unint64_t sub_1D8482020()
{
  result = qword_1ECA394A0;
  if (!qword_1ECA394A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA394A0);
  }

  return result;
}

unint64_t sub_1D8482074()
{
  result = qword_1ECA394A8;
  if (!qword_1ECA394A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA394A8);
  }

  return result;
}

unint64_t sub_1D84820C8()
{
  result = qword_1ECA394C0;
  if (!qword_1ECA394C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA394C0);
  }

  return result;
}

unint64_t sub_1D848211C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D8482160()
{
  result = qword_1ECA394E8;
  if (!qword_1ECA394E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA394E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  v1 = v0[16];
  v0[9] = v0[17];
  v2 = v0[28];
  v0[5] = v0[27];
  v0[6] = v2;
  return *(v1 + 16);
}

void OUTLINED_FUNCTION_29_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{

  sub_1D847EE88(319, a2, a3, a4, type metadata accessor for Ref);
}

unint64_t OUTLINED_FUNCTION_61(uint64_t a1)
{

  return sub_1D8473E40(a1);
}

uint64_t OUTLINED_FUNCTION_117_0()
{
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2)
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_179(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_213()
{
}

uint64_t OUTLINED_FUNCTION_216_0()
{
  v0[29] = v0[10];

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_243@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 56) = v2;
  *(v3 + 64) = a1;
  return *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_246()
{
}

__n128 OUTLINED_FUNCTION_252_0(unint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v3[16].n128_u64[1] = a1;
  v3[17].n128_u64[0] = v4;
  v3[17].n128_u64[1] = v5;
  result = *v2;
  v3[18] = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_255_0()
{
  *(v1 - 80) = *(v0 + 392);
}

uint64_t OUTLINED_FUNCTION_256()
{
  *(v1 - 80) = *(v0 + 368);
}

uint64_t OUTLINED_FUNCTION_261()
{
  *(v0 + 232) = $DistributedChallengeServiceProtocol.actorSystem.getter();

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

unint64_t OUTLINED_FUNCTION_278(uint64_t a1)
{

  return sub_1D8473E40(a1);
}

uint64_t OUTLINED_FUNCTION_287(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581A58();
}

uint64_t OUTLINED_FUNCTION_288()
{
}

uint64_t OUTLINED_FUNCTION_289()
{
  v0[38] = v0[14];

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_293_0()
{

  return sub_1D847C378(v0, type metadata accessor for ChallengeInvite.Details);
}

uint64_t OUTLINED_FUNCTION_303()
{

  return sub_1D847C204();
}

uint64_t OUTLINED_FUNCTION_306()
{
}

uint64_t OUTLINED_FUNCTION_312(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_316(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_317()
{
}

uint64_t OUTLINED_FUNCTION_333_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_343()
{
  *(v0 + 88) = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_347()
{
  *(v0 + 56) = *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_348()
{
  v2 = v0[10];
  v0[5] = v0[9];
  v0[6] = v2;
}

uint64_t OUTLINED_FUNCTION_352()
{
}

uint64_t OUTLINED_FUNCTION_354()
{

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_372()
{
}

uint64_t OUTLINED_FUNCTION_374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581A58();
}

uint64_t OUTLINED_FUNCTION_375(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1)
{
}

void *OUTLINED_FUNCTION_377()
{

  return sub_1D8581958();
}

void *OUTLINED_FUNCTION_379(uint64_t a1, ...)
{

  return sub_1D8581B58();
}

void *OUTLINED_FUNCTION_381@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 96), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_382()
{
}

uint64_t OUTLINED_FUNCTION_383()
{
  v2 = v0[35];
  v0[9] = v0[34];
  v0[10] = v2;
}

uint64_t OUTLINED_FUNCTION_387@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, int a5)
{

  return sub_1D8581838(a1, 11, 2, 0xD000000000000014, a3 | 0x8000000000000000, a2, 43, 2, a4);
}

uint64_t OUTLINED_FUNCTION_395()
{
  v2 = v0[12];
  v0[5] = v0[11];
  v0[6] = v2;
}

uint64_t OUTLINED_FUNCTION_398(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_402()
{

  return sub_1D8581B78();
}

uint64_t OUTLINED_FUNCTION_421()
{
}

uint64_t OUTLINED_FUNCTION_422()
{
}

uint64_t OUTLINED_FUNCTION_423(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_424()
{
}

uint64_t OUTLINED_FUNCTION_425()
{
}

void OUTLINED_FUNCTION_432()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 136);
  *(v0 - 96) = v1;
}

void OUTLINED_FUNCTION_447()
{

  JUMPOUT(0x1DA7191F0);
}

uint64_t OUTLINED_FUNCTION_451()
{
}

uint64_t OUTLINED_FUNCTION_454()
{
}

uint64_t OUTLINED_FUNCTION_455()
{
  v2 = v0[37];
  v0[11] = v0[36];
  v0[12] = v2;
}

uint64_t OUTLINED_FUNCTION_456()
{
  *(v0 + 120) = *(v0 + 136);
}

uint64_t OUTLINED_FUNCTION_458(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8581BA8();
}

uint64_t OUTLINED_FUNCTION_459()
{
}

uint64_t OUTLINED_FUNCTION_460()
{
}

uint64_t OUTLINED_FUNCTION_461(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_464()
{
}

uint64_t OUTLINED_FUNCTION_466()
{
  *(v0 + 72) = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_467(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_477(uint64_t a1)
{

  return sub_1D8581BB8();
}

void OUTLINED_FUNCTION_485()
{
  v1 = *(v0 - 112);
  *(v0 - 96) = *(v0 - 120);
  *(v0 - 88) = v1;
}

void OUTLINED_FUNCTION_517(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{

  sub_1D84408DC(a2 + 1, a1, v4, a4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_520()
{
}

uint64_t OUTLINED_FUNCTION_521()
{
}

uint64_t OUTLINED_FUNCTION_522_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581878();
}

uint64_t OUTLINED_FUNCTION_523(uint64_t a1)
{

  return MEMORY[0x1EEE6DFA0](a1);
}

uint64_t OUTLINED_FUNCTION_524(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_525(uint64_t a1)
{

  return MEMORY[0x1EEE6DFA0](a1);
}

uint64_t OUTLINED_FUNCTION_526()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_527()
{
}

void OUTLINED_FUNCTION_529()
{

  JUMPOUT(0x1DA7191F0);
}

void *OUTLINED_FUNCTION_530(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_531(uint64_t a1, uint64_t a2)
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_532(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_533(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D8581878();
}

uint64_t $DistributedGameKitServiceProtocol.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

void *static $DistributedGameKitServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedGameKitServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43_0();
  sub_1D84A6058(v5, 255, v6, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v7, v8, v9, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  v10 = sub_1D8580F48();
  v11 = v10;
  if (!v2 && !v10)
  {
    v11 = swift_distributedActor_remote_initialize();
    v12 = a1[1];
    v11[14] = *a1;
    v11[15] = v12;
    v11[16] = a2;
  }

  return v11;
}

uint64_t $DistributedGameKitServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43_0();
  sub_1D84A6058(v1, 255, v2, &protocol conformance descriptor for GameServicesActorSystem);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedGameKitServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedGameKitServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8483C80()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v0, v1, v2, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedGameKitServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedGameKitServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedGameKitServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedGameKitServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43_0();
  sub_1D84A6058(v3, 255, v4, &protocol conformance descriptor for GameServicesActorSystem);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v5, v6, v7, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v9;
  v1[15] = v10;

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedGameKitServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v1, v2, v3, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D8483EC4@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedGameKitServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8483F50()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v0, v1, v2, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D8483FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedGameKitServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D848402C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85969C0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84840B8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84841E0);
}

uint64_t sub_1D84841E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85969C0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  v27 = OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84(v27, v28, v29, v30, v13 + 40);
  sub_1D8484CB0();
  v31 = sub_1D8484D60();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
  sub_1D8484E10();
  sub_1D8484F6C();
  v33 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v33, v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {
    OUTLINED_FUNCTION_453();
    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_294_0(v38, v39);
  v40 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v40);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v41, v42, v43, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v44;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v45);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8484458()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.describeAchievements(achievements:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D8484640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    v28 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_76_0(v28, v29);
    sub_1D8484CB0();
    v30 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
    sub_1D8484E10();
    sub_1D8484F6C();
    v32 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v32, v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {
      OUTLINED_FUNCTION_452();
      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_294_0(v45, v46);
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_90_0(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_294(v48);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v51 = v15 + *v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_17(v17);
    OUTLINED_FUNCTION_169();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v51, a12, a13, a14);
  }
}

uint64_t sub_1D84848FC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84849F4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_255();

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D8484B20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.describeAchievements(achievements:)();
}

unint64_t sub_1D8484CB0()
{
  result = qword_1ECA39510;
  if (!qword_1ECA39510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39508, &unk_1D85A4F80);
    sub_1D844A16C(&qword_1ECA39518, &qword_1ECA39520, &unk_1D8595FE0, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39510);
  }

  return result;
}

unint64_t sub_1D8484D60()
{
  result = qword_1ECA39528;
  if (!qword_1ECA39528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39508, &unk_1D85A4F80);
    sub_1D844A16C(&qword_1ECA39530, &qword_1ECA39520, &unk_1D8595FE0, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39528);
  }

  return result;
}

unint64_t sub_1D8484E10()
{
  result = qword_1ECA39540;
  if (!qword_1ECA39540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39538, &unk_1D8595FF0);
    sub_1D8484E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39540);
  }

  return result;
}

unint64_t sub_1D8484E94()
{
  result = qword_1ECA39548;
  if (!qword_1ECA39548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39550, &qword_1D85A4F90);
    sub_1D8484F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39548);
  }

  return result;
}

unint64_t sub_1D8484F18()
{
  result = qword_1ECA39558;
  if (!qword_1ECA39558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39558);
  }

  return result;
}

unint64_t sub_1D8484F6C()
{
  result = qword_1ECA39560;
  if (!qword_1ECA39560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39538, &unk_1D8595FF0);
    sub_1D8484FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39560);
  }

  return result;
}

unint64_t sub_1D8484FF0()
{
  result = qword_1ECA39568;
  if (!qword_1ECA39568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39550, &qword_1D85A4F90);
    sub_1D8485074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39568);
  }

  return result;
}

unint64_t sub_1D8485074()
{
  result = qword_1ECA39570;
  if (!qword_1ECA39570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39570);
  }

  return result;
}

uint64_t sub_1D84850C8()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_31_0(&unk_1D85969B8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_64(v5);

  return v9(v7, v2, v3);
}

uint64_t sub_1D8485168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84852FC);
}

uint64_t sub_1D84852FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[22] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v27 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v27, v28, v29, v30, (v13 + 7));
    sub_1D847C154();
    v31 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v31);
    v32 = v13[11];
    v13[5] = v13[10];
    v13[6] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    v33 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214(v33, v34, v35, v36, (v13 + 5));
    sub_1D84751F0();
    v37 = sub_1D8475274();
    OUTLINED_FUNCTION_31(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    v39 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v39, v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_187();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    v13[24] = v54;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v55, v56, v57, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_98();
    *v54 = v58;
    v54[1] = sub_1D845C8C8;
    OUTLINED_FUNCTION_9_0(v59);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85969B8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    v16[1] = sub_1D845C784;
    OUTLINED_FUNCTION_207_0(v13[9]);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameKitServiceProtocol<>.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  *(v1 + 144) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v1 + 152) = v8;
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 168) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 176) = v10;
  *(v1 + 184) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  *(v1 + 192) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 200) = v12;
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  *(v1 + 216) = *v0;
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D8485770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 112);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 232) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    *(v14 + 88) = *(v14 + 104);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v27 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v27, v28, v29, v30, v14 + 88);
    sub_1D847C154();
    v31 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v31);
    v32 = *(v14 + 224);
    *(v14 + 56) = *(v14 + 216);
    *(v14 + 64) = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_252(v33, v34, v35, v36, v37);
    sub_1D84751F0();
    v38 = sub_1D8475274();
    OUTLINED_FUNCTION_31(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    v40 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v40, v41);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_213();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 240) = v55;
    *v55 = v56;
    v55[1] = sub_1D845CFE0;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_270_0(*(v14 + 136));
    *(v14 + 40) = *(v14 + 216);
    OUTLINED_FUNCTION_54();
    v58 = v16 + *v16;
    v17 = swift_task_alloc();
    *(v14 + 256) = v17;
    *v17 = v14;
    v17[1] = sub_1D8485B18;
    OUTLINED_FUNCTION_108_0(*(v14 + 104));
    OUTLINED_FUNCTION_169();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v58, a12, a13, a14);
  }
}

uint64_t sub_1D8485B18()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D8485C58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D8485E9C;

  return DistributedGameKitServiceProtocol<>.listAchievements(games:after:)();
}

uint64_t sub_1D8485E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v13 = *(v12 + 40);
  v14 = *(v12 + 24);
  OUTLINED_FUNCTION_242();
  *v15 = v16;
  OUTLINED_FUNCTION_476(v17, v18);
  OUTLINED_FUNCTION_431();
  (*(v19 + 8))(v13, v14);
  OUTLINED_FUNCTION_430();
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

unint64_t sub_1D8486070()
{
  result = qword_1ECA39588;
  if (!qword_1ECA39588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D844A16C(&qword_1ECA39590, &qword_1ECA39598, &qword_1D8596020, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39588);
  }

  return result;
}

unint64_t sub_1D8486120()
{
  result = qword_1ECA395A0;
  if (!qword_1ECA395A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D844A16C(&qword_1ECA395A8, &qword_1ECA39598, &qword_1D8596020, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA395A0);
  }

  return result;
}

uint64_t sub_1D84861D0()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_31_0(&unk_1D85969B0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_64(v5);

  return v9(v7, v2, v3);
}

uint64_t sub_1D8486270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8486404);
}

uint64_t sub_1D8486404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[22] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    v27 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_76_0(v27, v28);
    sub_1D8484CB0();
    v29 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v29);
    v30 = v13[11];
    v13[5] = v13[10];
    v13[6] = v30;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_2_2(&qword_1ECA389F8);
    OUTLINED_FUNCTION_2(&qword_1ECA389C0);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    v34 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v34, v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_187();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v49 = swift_task_alloc();
    v13[24] = v49;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v50, v51, v52, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_98();
    *v49 = v53;
    v49[1] = sub_1D845ACE8;
    OUTLINED_FUNCTION_9_0(v54);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85969B0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    v16[1] = sub_1D84821F8;
    OUTLINED_FUNCTION_207_0(v13[9]);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameKitServiceProtocol<>.getAchievementsProgresses(achievements:player:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  v1[18] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[19] = v8;
  v1[20] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[21] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v1[24] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[25] = v12;
  v13 = OUTLINED_FUNCTION_332();
  v14 = *v0;
  v15 = v0[1];
  v1[26] = v13;
  v1[27] = v14;
  v1[28] = v15;
  v16 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D8486898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[14];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[29] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
    }

    v14[11] = v14[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    v27 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_84(v27, v28, v29, v30, (v14 + 11));
    sub_1D8484CB0();
    v31 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v31);
    v32 = v14[28];
    v14[7] = v14[27];
    v14[8] = v32;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_2_2(&qword_1ECA389F8);
    OUTLINED_FUNCTION_2(&qword_1ECA389C0);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    v36 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v36, v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_213();
      v39 = OUTLINED_FUNCTION_52();
      v40(v39);
      v41 = OUTLINED_FUNCTION_51_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[30] = v51;
    *v51 = v52;
    v51[1] = sub_1D845B2D4;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_270_0(v14[17]);
    OUTLINED_FUNCTION_38(v14[28]);
    OUTLINED_FUNCTION_54();
    v54 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[32] = v17;
    *v17 = v14;
    v17[1] = sub_1D8486C58;
    OUTLINED_FUNCTION_108_0(v14[13]);
    OUTLINED_FUNCTION_169();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v54, a12, a13, a14);
  }
}

uint64_t sub_1D8486C58()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D8486D98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D84A7CD0;

  return DistributedGameKitServiceProtocol<>.getAchievementsProgresses(achievements:player:)();
}

unint64_t sub_1D8486FDC()
{
  result = qword_1ECA395B8;
  if (!qword_1ECA395B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D84A6058(&qword_1ECA395C0, 255, type metadata accessor for AchievementProgress, &protocol conformance descriptor for AchievementProgress);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA395B8);
  }

  return result;
}

unint64_t sub_1D8487094()
{
  result = qword_1ECA395C8;
  if (!qword_1ECA395C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D84A6058(&qword_1ECA395D0, 255, type metadata accessor for AchievementProgress, &protocol conformance descriptor for AchievementProgress);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA395C8);
  }

  return result;
}

uint64_t sub_1D848714C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85969A8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_104_0(v1);

  return v4(v3);
}

uint64_t sub_1D84871DC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8487370);
}

uint64_t sub_1D8487370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[19] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
    }

    v15[5] = v15[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_84(v30, v31, v32, v33, (v15 + 5));
    sub_1D8484CB0();
    v34 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v34);
    v15[6] = v15[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v35 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v35, v36, v37, v38, (v15 + 6));
    sub_1D84769B4();
    v39 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_238_0();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    v15[21] = v54;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v55, v56, v57, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v54 = v58;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v59, v60, v61, v62, v63, v64, v65);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85969A8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_275_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_197_0(v18);
    OUTLINED_FUNCTION_121_0(v20);
    OUTLINED_FUNCTION_240();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8487658()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.resetAchievementsProgress(achievements:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v0[17] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[19] = v9;
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v0[23] = OUTLINED_FUNCTION_332();
  v12 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v12);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D848789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[11];
    OUTLINED_FUNCTION_83_0();
    v14[24] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    v27 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_76_0(v27, v28);
    sub_1D8484CB0();
    v29 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v29);
    v14[8] = v14[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v30 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v30, v31, v32, v33, (v14 + 8));
    sub_1D84769B4();
    v34 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_527();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v49 = swift_task_alloc();
    v50 = OUTLINED_FUNCTION_321_0(v49);
    *v50 = v51;
    OUTLINED_FUNCTION_145_0(v50);
    OUTLINED_FUNCTION_53(v52);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[13]);
    OUTLINED_FUNCTION_54();
    v61 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[27] = v17;
    *v17 = v14;
    v17[1] = sub_1D8487CC0;
    OUTLINED_FUNCTION_65_1(v14[9]);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v61, a12, a13, a14);
  }
}

uint64_t sub_1D8487BC8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8487CC0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_300_0();

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8487DE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D848228C;

  return DistributedGameKitServiceProtocol<>.resetAchievementsProgress(achievements:players:)();
}

uint64_t sub_1D848802C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85969A0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_104_0(v1);

  return v4(v3);
}

uint64_t sub_1D84880BC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8488250);
}

uint64_t sub_1D8488250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[19] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
    }

    v15[5] = v15[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_84(v30, v31, v32, v33, (v15 + 5));
    sub_1D8484CB0();
    v34 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v34);
    v15[6] = v15[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v35 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v35, v36, v37, v38, (v15 + 6));
    sub_1D84769B4();
    v39 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_238_0();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    v15[21] = v54;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v55, v56, v57, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v54 = v58;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v59, v60, v61, v62, v63, v64, v65);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85969A0);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_275_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_197_0(v18);
    OUTLINED_FUNCTION_121_0(v20);
    OUTLINED_FUNCTION_240();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameKitServiceProtocol<>.revealAchievements(achievements:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v0[17] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[19] = v9;
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v0[23] = OUTLINED_FUNCTION_332();
  v12 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v12);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D8488684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[11];
    OUTLINED_FUNCTION_83_0();
    v14[24] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    v27 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_76_0(v27, v28);
    sub_1D8484CB0();
    v29 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v29);
    v14[8] = v14[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v30 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v30, v31, v32, v33, (v14 + 8));
    sub_1D84769B4();
    v34 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_527();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v49 = swift_task_alloc();
    v50 = OUTLINED_FUNCTION_321_0(v49);
    *v50 = v51;
    OUTLINED_FUNCTION_145_0(v50);
    OUTLINED_FUNCTION_53(v52);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[13]);
    OUTLINED_FUNCTION_54();
    v61 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[27] = v17;
    *v17 = v14;
    v17[1] = sub_1D8488AA8;
    OUTLINED_FUNCTION_65_1(v14[9]);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v61, a12, a13, a14);
  }
}

uint64_t sub_1D84889B0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8488AA8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_300_0();

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8488BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_158_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8488C8C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_158_0();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D8488D00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D847472C;

  return DistributedGameKitServiceProtocol<>.revealAchievements(achievements:players:)();
}

uint64_t sub_1D8488F44()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596998);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8488FD0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84890F8);
}

uint64_t sub_1D84890F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8596998);
    v17 = swift_task_alloc();
    v15[15] = v17;
    *v17 = v15;
    v17[1] = sub_1D84A7CD4;
    OUTLINED_FUNCTION_207_0(v15[6]);
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15[14] = OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_354();
  v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v16);
  if (v14)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v15[5] = v15[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_86_0();
  sub_1D8581038();
  sub_1D8486FDC();
  v27 = sub_1D8487094();
  OUTLINED_FUNCTION_31(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {

    v30 = OUTLINED_FUNCTION_49_0();
    v31(v30);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  v15[16] = v32;
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v33, v34, v35, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_81();
  *v32 = v36;
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1D848938C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.submitAchievementsProgress(progress:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v0[15] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v0[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D8489578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[9];
    OUTLINED_FUNCTION_83_0();
    v14[19] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
    }

    v14[7] = v14[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    OUTLINED_FUNCTION_278_0();
    OUTLINED_FUNCTION_86_0();
    sub_1D8581038();
    sub_1D8486FDC();
    v29 = sub_1D8487094();
    OUTLINED_FUNCTION_31(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      OUTLINED_FUNCTION_229_0();
      v32 = OUTLINED_FUNCTION_49_0();
      v33(v32);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_275_0(v42);
    *v43 = v44;
    OUTLINED_FUNCTION_200_0(v43);
    OUTLINED_FUNCTION_53(v45);
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v46, v47, v48, v49, v50, v51, v52);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[11]);
    OUTLINED_FUNCTION_131();
    v54 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_322_0(v17);
    *v18 = v19;
    v18[1] = sub_1D8489934;
    OUTLINED_FUNCTION_44(v14[8]);
    OUTLINED_FUNCTION_207();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, v54, a11, a12);
  }
}

uint64_t sub_1D848983C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8489934()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8489A5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CAC;

  return DistributedGameKitServiceProtocol<>.submitAchievementsProgress(progress:)();
}

uint64_t sub_1D8489BE8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596990);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8489C74(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8489D9C);
}

uint64_t sub_1D8489D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596990);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  v27 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_84(v27, v28 & 0xFFFF0000FFFFLL | 0xEC00000073640000, v29, v30, v13 + 40);
  sub_1D848A55C();
  v31 = sub_1D848A60C();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
  sub_1D848A6BC();
  sub_1D848A7F8();
  v33 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v33, v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {
    OUTLINED_FUNCTION_453();
    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_294_0(v38, v39);
  v40 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v40);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v41, v42, v43, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v44;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v45);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeLeaderboards(leaderboards:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D848A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    v28 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_67_0(v28, v29 & 0xFFFFFFFF0000FFFFLL | 0x73640000);
    sub_1D848A55C();
    v30 = sub_1D848A60C();
    OUTLINED_FUNCTION_31(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
    sub_1D848A6BC();
    sub_1D848A7F8();
    v32 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v32, v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {
      OUTLINED_FUNCTION_452();
      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_294_0(v45, v46);
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_90_0(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_294(v48);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v51 = v15 + *v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_17(v17);
    OUTLINED_FUNCTION_169();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v51, a12, a13, a14);
  }
}

uint64_t sub_1D848A3CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.describeLeaderboards(leaderboards:)();
}

unint64_t sub_1D848A55C()
{
  result = qword_1ECA395F0;
  if (!qword_1ECA395F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA395E8, &unk_1D8596090);
    sub_1D844A16C(&qword_1ECA38DB8, &qword_1ECA38A90, &qword_1D8590AB0, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA395F0);
  }

  return result;
}

unint64_t sub_1D848A60C()
{
  result = qword_1ECA395F8;
  if (!qword_1ECA395F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA395E8, &unk_1D8596090);
    sub_1D844A16C(&qword_1ECA38DC0, &qword_1ECA38A90, &qword_1D8590AB0, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA395F8);
  }

  return result;
}

unint64_t sub_1D848A6BC()
{
  result = qword_1ECA39608;
  if (!qword_1ECA39608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39600, &unk_1D85960A0);
    sub_1D848A740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39608);
  }

  return result;
}

unint64_t sub_1D848A740()
{
  result = qword_1ECA39610;
  if (!qword_1ECA39610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39618, &qword_1D859F1C0);
    sub_1D84A6058(&qword_1ECA39620, 255, type metadata accessor for LeaderboardDescription, &protocol conformance descriptor for LeaderboardDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39610);
  }

  return result;
}

unint64_t sub_1D848A7F8()
{
  result = qword_1ECA39628;
  if (!qword_1ECA39628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39600, &unk_1D85960A0);
    sub_1D848A87C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39628);
  }

  return result;
}

unint64_t sub_1D848A87C()
{
  result = qword_1ECA39630;
  if (!qword_1ECA39630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39618, &qword_1D859F1C0);
    sub_1D84A6058(&qword_1ECA39638, 255, type metadata accessor for LeaderboardDescription, &protocol conformance descriptor for LeaderboardDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39630);
  }

  return result;
}

void sub_1D848A934()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_31_0(&unk_1D8596988);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  OUTLINED_FUNCTION_471();

  __asm { BR              X5 }
}

uint64_t sub_1D848A9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 96) = a4;
  *(v6 + 104) = v5;
  *(v6 + 289) = a5;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  *(v6 + 72) = a1;
  v7 = sub_1D8581018();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_1D8580EF8();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v6 + 184) = v10;
  *(v6 + 192) = *(v10 - 8);
  *(v6 + 200) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v6 + 208) = v11;
  *(v6 + 216) = *(v11 - 8);
  *(v6 + 224) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v6 + 232) = v12;
  *(v6 + 240) = *(v12 - 8);
  *(v6 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D848ACC0);
}

uint64_t sub_1D848B1E4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_320();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_482();
  }

  return v5(v4);
}

uint64_t sub_1D848B38C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 136) = v4;
  *(v1 + 144) = v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 88) = v9;
  *(v1 + 96) = v10;
  v11 = sub_1D8581018();
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 160) = v12;
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 176) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 184) = v14;
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v15 = sub_1D8580EF8();
  *(v1 + 200) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 208) = v16;
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 224) = v17;
  OUTLINED_FUNCTION_39(v17);
  *(v1 + 232) = v18;
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v1 + 248) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 256) = v20;
  *(v1 + 264) = OUTLINED_FUNCTION_332();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 272) = v21;
  OUTLINED_FUNCTION_39(v21);
  *(v1 + 280) = v22;
  *(v1 + 288) = OUTLINED_FUNCTION_332();
  *(v1 + 338) = *v3;
  v23 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v23);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D848BE74()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D848C05C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_511();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1D848C2B0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_165();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D848C338(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[2];
  v8[9] = v11;
  v8[10] = *(v11 - 8);
  v8[11] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[3];
  v8[12] = v12;
  v8[13] = *(v12 - 8);
  v8[14] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[15] = v13;
  *v13 = v8;
  v13[1] = sub_1D848C770;

  return DistributedGameKitServiceProtocol<>.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_1D848C770()
{
  OUTLINED_FUNCTION_153();
  v28 = *(v0 + 112);
  OUTLINED_FUNCTION_193();
  v27 = *(v1 + 104);
  OUTLINED_FUNCTION_193();
  v24 = *(v2 + 96);
  OUTLINED_FUNCTION_193();
  v26 = *(v3 + 88);
  OUTLINED_FUNCTION_193();
  v25 = *(v4 + 80);
  OUTLINED_FUNCTION_193();
  v6 = *(v5 + 72);
  v23 = *(v7 + 64);
  OUTLINED_FUNCTION_193();
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_193();
  v10 = *(v9 + 48);
  v12 = v11[5];
  v13 = v11[4];
  v14 = v11[3];
  OUTLINED_FUNCTION_171_0();
  v16 = v15;
  OUTLINED_FUNCTION_42();
  *v17 = v16;
  OUTLINED_FUNCTION_476(v18, v19);
  (*(v13 + 8))(v12, v14);
  (*(v22 + 8))(v23, v10);
  (*(v25 + 8))(v26, v6);
  (*(v27 + 8))(v28, v24);

  OUTLINED_FUNCTION_317_0();

  return v20();
}

uint64_t sub_1D848CA5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39658, &unk_1D859F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D848CAC8()
{
  result = qword_1ECA39688;
  if (!qword_1ECA39688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39680, &unk_1D85960E0);
    sub_1D848CB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39688);
  }

  return result;
}

unint64_t sub_1D848CB4C()
{
  result = qword_1ECA39690;
  if (!qword_1ECA39690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39690);
  }

  return result;
}

unint64_t sub_1D848CBA0()
{
  result = qword_1ECA39698;
  if (!qword_1ECA39698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39680, &unk_1D85960E0);
    sub_1D848CC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39698);
  }

  return result;
}

unint64_t sub_1D848CC24()
{
  result = qword_1ECA396A0;
  if (!qword_1ECA396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA396A0);
  }

  return result;
}

unint64_t sub_1D848CC78()
{
  result = qword_1ECA396B0;
  if (!qword_1ECA396B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA396A8, &unk_1D859F200);
    sub_1D844A16C(&qword_1ECA396B8, &qword_1ECA396C0, &qword_1D85960F0, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA396B0);
  }

  return result;
}

unint64_t sub_1D848CD28()
{
  result = qword_1ECA396C8;
  if (!qword_1ECA396C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA396A8, &unk_1D859F200);
    sub_1D844A16C(&qword_1ECA396D0, &qword_1ECA396C0, &qword_1D85960F0, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA396C8);
  }

  return result;
}

uint64_t sub_1D848CDD8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_24(&unk_1D8596980);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  OUTLINED_FUNCTION_535();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D848CE8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 273) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_1D8580EF8();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v5 + 192) = v10;
  *(v5 + 200) = *(v10 - 8);
  *(v5 + 208) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v5 + 216) = v11;
  *(v5 + 224) = *(v11 - 8);
  *(v5 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D848D150);
}

uint64_t sub_1D848D650()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_320();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_482();
  }

  return v5(v4);
}

uint64_t sub_1D848D7F8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 120) = v4;
  *(v1 + 128) = v0;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 80) = v9;
  v10 = sub_1D8581018();
  OUTLINED_FUNCTION_29(v10);
  *(v1 + 144) = v11;
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 160) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 168) = v13;
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v14 = sub_1D8580EF8();
  *(v1 + 184) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 192) = v15;
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 208) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 216) = v17;
  *(v1 + 224) = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v1 + 232) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 240) = v19;
  *(v1 + 248) = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 256) = v20;
  OUTLINED_FUNCTION_39(v20);
  *(v1 + 264) = v21;
  *(v1 + 272) = OUTLINED_FUNCTION_332();
  *(v1 + 322) = *v3;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_344_0(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_198();
  v6 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1D848E290()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D848E478()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_511();

    return v11(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1D848E6CC()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_166_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D848E754(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[2];
  v8[9] = v11;
  v8[10] = *(v11 - 8);
  v8[11] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[3];
  v8[12] = v12;
  v8[13] = *(v12 - 8);
  v8[14] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[15] = v13;
  *v13 = v8;
  v13[1] = sub_1D84A7C90;

  return DistributedGameKitServiceProtocol<>.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_1D848EB64()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D8596978);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_104_0(v1);

  return v4(v3);
}

uint64_t sub_1D848EBF4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1D8581018();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D848ED88);
}

uint64_t sub_1D848ED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[20] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
    }

    v13[5] = v13[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v25 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v25, v26, v27, v28, (v13 + 5));
    sub_1D847C154();
    v29 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v29);
    v13[6] = v13[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v30 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v30, v31, v32, v33, (v13 + 6));
    sub_1D84769B4();
    v34 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    v36 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v36, v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {

      v39 = OUTLINED_FUNCTION_52();
      v40(v39);
      v41 = OUTLINED_FUNCTION_51_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v51 = swift_task_alloc();
    v13[22] = v51;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v52, v53, v54, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_98();
    *v51 = v55;
    v51[1] = sub_1D848F20C;
    OUTLINED_FUNCTION_9_0(v56);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596978);
    v15 = swift_task_alloc();
    v13[21] = v15;
    *v15 = v13;
    v15[1] = sub_1D848F0C8;
    OUTLINED_FUNCTION_121_0(v13[8]);
    OUTLINED_FUNCTION_197();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }
}

uint64_t sub_1D848F0C8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    OUTLINED_FUNCTION_482();
  }

  OUTLINED_FUNCTION_535();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D848F20C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D848F304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_298_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D848F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_298_0();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_148();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v7 = sub_1D8581018();
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v1[19] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v1[22] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[23] = v12;
  v1[24] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D848F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[12];
    OUTLINED_FUNCTION_83_0();
    v14[25] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_314_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v27 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v27, v28, v29, v30, (v14 + 7));
    sub_1D847C154();
    v31 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v31);
    v14[8] = v14[11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    v32 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1(v32, v33, v34, v35, (v14 + 8));
    sub_1D84769B4();
    v36 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    v38 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v38, v39);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {

      v41 = OUTLINED_FUNCTION_52();
      v42(v41);
      v43 = OUTLINED_FUNCTION_51_0();
      v44(v43);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[26] = v53;
    *v53 = v54;
    v53[1] = sub_1D848F978;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[14]);
    OUTLINED_FUNCTION_54();
    v56 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[28] = v17;
    *v17 = v14;
    v17[1] = sub_1D848FB30;
    OUTLINED_FUNCTION_65_1(v14[10]);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_169();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v56, a12, a13, a14);
  }
}

uint64_t sub_1D848F978()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D848FA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_274_0();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D848FB30()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D848FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_274_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D848FD30()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_274_0();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D848FDA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D8485E9C;

  return DistributedGameKitServiceProtocol<>.listLeaderboards(games:players:)();
}

unint64_t sub_1D848FFF0()
{
  result = qword_1ECA396E0;
  if (!qword_1ECA396E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D844A16C(&qword_1ECA396E8, &qword_1ECA396F0, &qword_1D8596120, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA396E0);
  }

  return result;
}

unint64_t sub_1D84900A0()
{
  result = qword_1ECA396F8;
  if (!qword_1ECA396F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D844A16C(&qword_1ECA39700, &qword_1ECA396F0, &qword_1D8596120, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA396F8);
  }

  return result;
}

uint64_t sub_1D8490150()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596970);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84901DC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8490304);
}

uint64_t sub_1D8490304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8596970);
    v17 = swift_task_alloc();
    v15[15] = v17;
    *v17 = v15;
    v17[1] = sub_1D8490590;
    OUTLINED_FUNCTION_207_0(v15[6]);
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15[14] = OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_354();
  v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v16);
  if (v14)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v15[5] = v15[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
  v27 = OUTLINED_FUNCTION_279_0();
  OUTLINED_FUNCTION_51_1(v27, v28, v29, v30, (v15 + 5));
  sub_1D849134C();
  v31 = sub_1D8491404();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v33)
  {

    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v36 = swift_task_alloc();
  v15[16] = v36;
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v37, v38, v39, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_81();
  *v36 = v40;
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v41, v42, v43, v44, v45, v46, v47);
}

uint64_t sub_1D8490590()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D84906A8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84907A0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_331_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8490844()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_331_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameKitServiceProtocol<>.submitLeaderboardEntries(entries:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v0[15] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v0[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84909E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[9];
    OUTLINED_FUNCTION_83_0();
    v14[19] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }

    v14[7] = v14[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
    v29 = OUTLINED_FUNCTION_279_0();
    OUTLINED_FUNCTION_51_1(v29, v30, v31, v32, (v14 + 7));
    sub_1D849134C();
    v33 = sub_1D8491404();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_229_0();
      v36 = OUTLINED_FUNCTION_49_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_275_0(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_200_0(v47);
    OUTLINED_FUNCTION_53(v49);
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v50, v51, v52, v53, v54, v55, v56);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[11]);
    OUTLINED_FUNCTION_131();
    v58 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_322_0(v17);
    *v18 = v19;
    v18[1] = sub_1D8490E34;
    OUTLINED_FUNCTION_44(v14[8]);
    OUTLINED_FUNCTION_207();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, v58, a11, a12);
  }
}

uint64_t sub_1D8490C9C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8490D94()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_330();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8490E34()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8490F5C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_330();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8491004()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D849106C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84911F8;

  return DistributedGameKitServiceProtocol<>.submitLeaderboardEntries(entries:)();
}

uint64_t sub_1D84911F8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_171_0();
  v1 = v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_188();
  v4(v3);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_1D849134C()
{
  result = qword_1ECA39718;
  if (!qword_1ECA39718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39710, &qword_1D8596140);
    sub_1D84A6058(&qword_1ECA39720, 255, type metadata accessor for LeaderboardEntry, &protocol conformance descriptor for LeaderboardEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39718);
  }

  return result;
}

unint64_t sub_1D8491404()
{
  result = qword_1ECA39728;
  if (!qword_1ECA39728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39710, &qword_1D8596140);
    sub_1D84A6058(&qword_1ECA39730, 255, type metadata accessor for LeaderboardEntry, &protocol conformance descriptor for LeaderboardEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39728);
  }

  return result;
}

uint64_t sub_1D84914BC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596968);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8491548(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8491670);
}

uint64_t sub_1D8491670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596968);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_84(v27, v28, v29, v30, v13 + 40);
  sub_1D8491E2C();
  v31 = sub_1D8491EDC();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
  sub_1D8491F8C();
  sub_1D84920E8();
  v33 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v33, v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {
    OUTLINED_FUNCTION_453();
    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_294_0(v38, v39);
  v40 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v40);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v41, v42, v43, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v44;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v45);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeLeaderboardSets(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84919DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_76_0(v28, v29);
    sub_1D8491E2C();
    v30 = sub_1D8491EDC();
    OUTLINED_FUNCTION_31(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D8491F8C();
    sub_1D84920E8();
    v32 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v32, v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {
      OUTLINED_FUNCTION_452();
      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_294_0(v45, v46);
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_90_0(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_294(v48);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v51 = v15 + *v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_17(v17);
    OUTLINED_FUNCTION_169();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v51, a12, a13, a14);
  }
}

uint64_t sub_1D8491C9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.describeLeaderboardSets(leaderboardSets:)();
}

unint64_t sub_1D8491E2C()
{
  result = qword_1ECA39748;
  if (!qword_1ECA39748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39740, &unk_1D8596160);
    sub_1D844A16C(&qword_1ECA39750, &qword_1ECA39758, &unk_1D859F290, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39748);
  }

  return result;
}

unint64_t sub_1D8491EDC()
{
  result = qword_1ECA39760;
  if (!qword_1ECA39760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39740, &unk_1D8596160);
    sub_1D844A16C(&qword_1ECA39768, &qword_1ECA39758, &unk_1D859F290, &protocol conformance descriptor for Ref<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39760);
  }

  return result;
}

unint64_t sub_1D8491F8C()
{
  result = qword_1ECA39778;
  if (!qword_1ECA39778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D8492010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39778);
  }

  return result;
}

unint64_t sub_1D8492010()
{
  result = qword_1ECA39780;
  if (!qword_1ECA39780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39788, &qword_1D859F2A0);
    sub_1D8492094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39780);
  }

  return result;
}

unint64_t sub_1D8492094()
{
  result = qword_1ECA39790;
  if (!qword_1ECA39790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39790);
  }

  return result;
}

unint64_t sub_1D84920E8()
{
  result = qword_1ECA39798;
  if (!qword_1ECA39798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D849216C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39798);
  }

  return result;
}

unint64_t sub_1D849216C()
{
  result = qword_1ECA397A0;
  if (!qword_1ECA397A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39788, &qword_1D859F2A0);
    sub_1D84921F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397A0);
  }

  return result;
}

unint64_t sub_1D84921F0()
{
  result = qword_1ECA397A8;
  if (!qword_1ECA397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397A8);
  }

  return result;
}

uint64_t sub_1D8492244()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596960);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84922D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84923F8);
}

uint64_t sub_1D84923F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596960);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  v27 = OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_229(v27, v28, v29, v30, v13 + 40);
  sub_1D847C154();
  v31 = sub_1D847C0A4();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
  sub_1D8492BB0();
  sub_1D8492C60();
  v33 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v33, v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {
    OUTLINED_FUNCTION_453();
    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_343_0(v38, v39);
  v40 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v40);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v41, v42, v43, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v44;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v45);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D8492760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    v29 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229(v29, v30, v31, v32, v15 + 56);
    sub_1D847C154();
    v33 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D8492BB0();
    sub_1D8492C60();
    v35 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v35, v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_452();
      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_343_0(v48, v49);
    v50 = swift_task_alloc();
    v51 = OUTLINED_FUNCTION_90_0(v50);
    *v51 = v52;
    OUTLINED_FUNCTION_294(v51);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v54 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v54, a12, a13, a14);
  }
}

uint64_t sub_1D8492A20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.listLeaderboardSets(games:)();
}

unint64_t sub_1D8492BB0()
{
  result = qword_1ECA397B8;
  if (!qword_1ECA397B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D844A16C(&qword_1ECA397C0, &qword_1ECA397C8, &qword_1D859F2C0, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397B8);
  }

  return result;
}

unint64_t sub_1D8492C60()
{
  result = qword_1ECA397D0;
  if (!qword_1ECA397D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D844A16C(&qword_1ECA397D8, &qword_1ECA397C8, &qword_1D859F2C0, &protocol conformance descriptor for Page<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397D0);
  }

  return result;
}

uint64_t sub_1D8492D10()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596958);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8492D9C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8492EC4);
}

uint64_t sub_1D8492EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596958);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_84(v27, v28, v29, v30, v13 + 40);
  sub_1D8491E2C();
  v31 = sub_1D8491EDC();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
  sub_1D848FFF0();
  sub_1D84900A0();
  v33 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v33, v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {
    OUTLINED_FUNCTION_453();
    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v38);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v39, v40, v41, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v42;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v43);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D8493238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_76_0(v28, v29);
    sub_1D8491E2C();
    v30 = sub_1D8491EDC();
    OUTLINED_FUNCTION_31(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    v32 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v32, v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {
      OUTLINED_FUNCTION_452();
      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_90_0(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_294(v46);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v49 = v15 + *v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_17(v17);
    OUTLINED_FUNCTION_169();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v49, a12, a13, a14);
  }
}

uint64_t sub_1D8493500(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_1D8493690()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_24(&unk_1D8596950);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_535();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D8493734(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 225) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8493934);
}

uint64_t sub_1D8493934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 192) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
    }

    v30 = *(v15 + 72);
    *(v15 + 40) = *(v15 + 64);
    *(v15 + 48) = v30;

    v31 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v31, v32, v33, v34, v15 + 40);
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
    OUTLINED_FUNCTION_314_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    v37 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v37, v38, v39, v40, v15 + 56);
    sub_1D847418C();
    v41 = sub_1D84742E8();
    OUTLINED_FUNCTION_31(v41);
    *(v15 + 224) = *(v15 + 225);
    v42 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v42, v43, v44, v45, v15 + 224);
    sub_1D8474444();
    v46 = sub_1D8474498();
    OUTLINED_FUNCTION_31(v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      v49 = *(v15 + 176);
      a9 = *(v15 + 168);
      a10 = *(v15 + 184);

      v50 = OUTLINED_FUNCTION_79();
      v51(v50);
      v52 = OUTLINED_FUNCTION_74_0();
      v53(v52);
      (*(v49 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_342_0(v62, v63);
    v64 = swift_task_alloc();
    *(v15 + 208) = v64;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v65, v66, v67, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v64 = v68;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v69, v70, v71, v72, v73, v74, v75);
  }

  else
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8596950);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_321_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_403(v18);
    OUTLINED_FUNCTION_207_0(v20);
    OUTLINED_FUNCTION_170();

    return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8493CC0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 120) = v6;
  *(v1 + 128) = v0;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 96) = v9;
  v10 = sub_1D8581018();
  OUTLINED_FUNCTION_29(v10);
  *(v1 + 144) = v11;
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 160) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 168) = v13;
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v1 + 184) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 192) = v15;
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 208) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 216) = v17;
  v18 = OUTLINED_FUNCTION_332();
  v19 = *v5;
  v20 = v5[1];
  *(v1 + 224) = v18;
  *(v1 + 232) = v19;
  *(v1 + 240) = v20;
  *(v1 + 290) = *v3;
  v21 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v21);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8494060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_188_0();
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v15 + 248) = *(v15 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_111();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
    }

    v30 = *(v15 + 240);
    *(v15 + 56) = *(v15 + 232);
    *(v15 + 64) = v30;

    v31 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v31, v32, v33, v34, v15 + 56);
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
    *(v15 + 88) = *(v15 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    v37 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v37, v38, v39, v40, v15 + 88);
    sub_1D847418C();
    v41 = sub_1D84742E8();
    OUTLINED_FUNCTION_31(v41);
    *(v15 + 289) = *(v15 + 290);
    v42 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v42, v43, v44, v45, v15 + 289);
    sub_1D8474444();
    v46 = sub_1D8474498();
    OUTLINED_FUNCTION_31(v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      v49 = *(v15 + 216);
      a9 = *(v15 + 208);
      a10 = *(v15 + 224);

      v50 = OUTLINED_FUNCTION_79();
      v51(v50);
      v52 = OUTLINED_FUNCTION_74_0();
      v53(v52);
      (*(v49 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_342_0(v62, v63);
    v64 = swift_task_alloc();
    *(v15 + 256) = v64;
    *v64 = v15;
    OUTLINED_FUNCTION_295_0(v64);
    OUTLINED_FUNCTION_53(v65);
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v66, v67, v68, v69, v70, v71, v72);
  }

  else
  {
    v16 = *(v15 + 290);
    v18 = *(v15 + 232);
    v17 = *(v15 + 240);
    *(v15 + 72) = *(v15 + 128);
    *(v15 + 40) = v18;
    *(v15 + 48) = v17;
    *(v15 + 288) = v16;
    OUTLINED_FUNCTION_131();
    v74 = v19 + *v19;
    v20 = swift_task_alloc();
    *(v15 + 272) = v20;
    *v20 = v15;
    v20[1] = sub_1D8494568;
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_170();

    return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v74, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8494470()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8494568()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8494784()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_235();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84947FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D84A7CA8;

  return DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)();
}

uint64_t sub_1D8494B04()
{
  OUTLINED_FUNCTION_475();
  v7 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8596948);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);
  v4 = OUTLINED_FUNCTION_166();

  return v6(v4);
}

uint64_t sub_1D8494BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8494D34);
}

uint64_t sub_1D8494D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[21] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_273_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    v30 = v15[9];
    v15[5] = v15[8];
    v15[6] = v30;

    v31 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v31, v32, v33, v34, (v15 + 5));
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
    OUTLINED_FUNCTION_314_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    v37 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v37, v38, v39, v40, (v15 + 7));
    sub_1D847418C();
    v41 = sub_1D84742E8();
    OUTLINED_FUNCTION_31(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_521();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    v15[23] = v56;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v57, v58, v59, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v56 = v60;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v61, v62, v63, v64, v65, v66, v67);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596948);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_322_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_403(v18);
    OUTLINED_FUNCTION_207_0(v20);
    OUTLINED_FUNCTION_240();

    return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8495030()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_29(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v1[20] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[23] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[24] = v12;
  v13 = OUTLINED_FUNCTION_332();
  v14 = *v0;
  v15 = v0[1];
  v1[25] = v13;
  v1[26] = v14;
  v1[27] = v15;
  v16 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D8495278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_188_0();
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v15[28] = v15[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    v27 = v15[27];
    v15[7] = v15[26];
    v15[8] = v27;

    v28 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v28, v29, v30, v31, (v15 + 7));
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    v15[11] = v15[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    v34 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v34, v35, v36, v37, (v15 + 11));
    sub_1D847418C();
    v38 = sub_1D84742E8();
    OUTLINED_FUNCTION_31(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      OUTLINED_FUNCTION_520();
      v41 = OUTLINED_FUNCTION_52();
      v42(v41);
      v43 = OUTLINED_FUNCTION_51_0();
      v44(v43);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    v15[29] = v53;
    *v53 = v15;
    OUTLINED_FUNCTION_295_0(v53);
    OUTLINED_FUNCTION_53(v54);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    OUTLINED_FUNCTION_270_0(v15[16]);
    OUTLINED_FUNCTION_38(v15[27]);
    OUTLINED_FUNCTION_54();
    v63 = v16 + *v16;
    v17 = swift_task_alloc();
    v15[31] = v17;
    *v17 = v15;
    v17[1] = sub_1D845C110;
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v63, a12, a13, a14);
  }
}

uint64_t sub_1D84955DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D848228C;

  return DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_1D8495818()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_259_0(&qword_1D8596940);
  v8 = v0;
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_64(v4);

  return v8(v6, v2);
}

uint64_t sub_1D84958B8(uint64_t a1, char a2)
{
  *(v3 + 169) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_1D8581018();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8495A4C);
}

uint64_t sub_1D8495A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 136) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_340_0(*(v15 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181(v27, v28, v29, v30, v15 + 40);
    sub_1D84748E4();
    v31 = sub_1D8474994();
    OUTLINED_FUNCTION_31(v31);
    *(v15 + 168) = *(v15 + 169);
    v32 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v32, v33, v34, v35, v15 + 168);
    sub_1D8474444();
    v36 = sub_1D8474498();
    OUTLINED_FUNCTION_31(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {

      v39 = OUTLINED_FUNCTION_52();
      v40(v39);
      v41 = OUTLINED_FUNCTION_51_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v51 = swift_task_alloc();
    *(v15 + 152) = v51;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v52, v53, v54, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v51 = v55;
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    OUTLINED_FUNCTION_24(&qword_1D8596940);
    v17 = swift_task_alloc();
    *(v15 + 144) = v17;
    *v17 = v15;
    v17[1] = sub_1D8451444;
    OUTLINED_FUNCTION_121_0(*(v15 + 48));
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v0;
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  *(v1 + 64) = v7;
  v8 = sub_1D8581018();
  *(v1 + 104) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 112) = v9;
  *(v1 + 120) = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 128) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 136) = v11;
  *(v1 + 144) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v1 + 152) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 160) = v13;
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  *(v1 + 218) = *v3;
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D8495EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 72);
    OUTLINED_FUNCTION_83_0();
    *(v14 + 176) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_341_0(*(v14 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181(v30, v31, v32, v33, v14 + 56);
    sub_1D84748E4();
    v34 = sub_1D8474994();
    OUTLINED_FUNCTION_31(v34);
    *(v14 + 217) = *(v14 + 218);
    v35 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v35, v36, v37, v38, v14 + 217);
    sub_1D8474444();
    v39 = sub_1D8474498();
    OUTLINED_FUNCTION_31(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_187();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v54 = swift_task_alloc();
    v55 = OUTLINED_FUNCTION_286(v54);
    *v55 = v56;
    OUTLINED_FUNCTION_200_0(v55);
    OUTLINED_FUNCTION_53(v57);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v58, v59, v60, v61, v62, v63, v64);
  }

  else
  {
    v16 = *(v14 + 218);
    *(v14 + 40) = *(v14 + 96);
    *(v14 + 216) = v16;
    OUTLINED_FUNCTION_54();
    v66 = v17 + *v17;
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_321_0(v18);
    *v19 = v20;
    v19[1] = sub_1D8451E80;
    OUTLINED_FUNCTION_108_0(*(v14 + 64));
    OUTLINED_FUNCTION_239();

    return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, v66, a12, a13, a14);
  }
}

uint64_t sub_1D8496200(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D847472C;

  return DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_1D8496440()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  OUTLINED_FUNCTION_24(&unk_1D8596938);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_97(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_107(v1);

  return v4(v3);
}

uint64_t sub_1D84964E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84966EC);
}

uint64_t sub_1D8496AA4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v0[24] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[26] = v11;
  v0[27] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v0[28] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[29] = v13;
  v0[30] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v0[31] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[32] = v15;
  v16 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v16);
  v17 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v17);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_344_0(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_198();
  v6 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1D8497148(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D84A7CA8;

  return DistributedGameKitServiceProtocol<>.listChallengeDefinitions(game:filters:after:)();
}

uint64_t sub_1D8497464()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596930);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84974F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8497618);
}

uint64_t sub_1D8497618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596930);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_340_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_181(v28, v29, v30, v31, v13 + 40);
  sub_1D84748E4();
  v32 = sub_1D8474994();
  OUTLINED_FUNCTION_31(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
  sub_1D84755F8();
  sub_1D8475754();
  v34 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_345_0(v34, v35);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v36)
  {
    OUTLINED_FUNCTION_453();
    v37 = OUTLINED_FUNCTION_49_0();
    v38(v37);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  sub_1D8581028();
  v39 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v39);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v40, v41, v42, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v43;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84979A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    v29 = OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_341_0(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181(v30, v31, v32, v33, v15 + 56);
    sub_1D84748E4();
    v34 = sub_1D8474994();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D84755F8();
    sub_1D8475754();
    v36 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0(v36, v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_452();
      v39 = OUTLINED_FUNCTION_49_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    sub_1D8581028();
    v49 = swift_task_alloc();
    v50 = OUTLINED_FUNCTION_90_0(v49);
    *v50 = v51;
    OUTLINED_FUNCTION_294(v50);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v53 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1D8497C88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_1D8497E18()
{
  OUTLINED_FUNCTION_475();
  v7 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8596928);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);
  v4 = OUTLINED_FUNCTION_166();

  return v6(v4);
}

uint64_t sub_1D8497EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8498048);
}

uint64_t sub_1D8498048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[21] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_273_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v30 = v15[9];
    v15[5] = v15[8];
    v15[6] = v30;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_2_2(&qword_1ECA389F8);
    OUTLINED_FUNCTION_2(&qword_1ECA389C0);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    OUTLINED_FUNCTION_314_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    v33 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v33, v34, v35, v36, (v15 + 7));
    sub_1D8477D80();
    v37 = sub_1D8477EDC();
    OUTLINED_FUNCTION_31(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_521();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v52 = swift_task_alloc();
    v15[23] = v52;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v53, v54, v55, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v52 = v56;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v57, v58, v59, v60, v61, v62, v63);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596928);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_322_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_403(v18);
    OUTLINED_FUNCTION_207_0(v20);
    OUTLINED_FUNCTION_240();

    return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8498350()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8498448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_246_0(*(v12 + 168));
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_273_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1D849850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_246_0(*(v12 + 168));
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_29(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v1[20] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[23] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[24] = v12;
  v13 = OUTLINED_FUNCTION_332();
  v14 = *v0;
  v15 = v0[1];
  v1[25] = v13;
  v1[26] = v14;
  v1[27] = v15;
  v16 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D8498728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_188_0();
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v15[28] = v15[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    v27 = v15[27];
    v15[7] = v15[26];
    v15[8] = v27;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_2_2(&qword_1ECA389F8);
    OUTLINED_FUNCTION_2(&qword_1ECA389C0);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
    v15[11] = v15[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    v30 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1(v30, v31, v32, v33, (v15 + 11));
    sub_1D8477D80();
    v34 = sub_1D8477EDC();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_520();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v49 = swift_task_alloc();
    v15[29] = v49;
    *v49 = v15;
    OUTLINED_FUNCTION_295_0(v49);
    OUTLINED_FUNCTION_53(v50);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v51, v52, v53, v54, v55, v56, v57);
  }

  else
  {
    OUTLINED_FUNCTION_270_0(v15[16]);
    OUTLINED_FUNCTION_38(v15[27]);
    OUTLINED_FUNCTION_54();
    v59 = v16 + *v16;
    v17 = swift_task_alloc();
    v15[31] = v17;
    *v17 = v15;
    v17[1] = sub_1D8453054;
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v59, a12, a13, a14);
  }
}

uint64_t sub_1D8498A98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D848228C;

  return DistributedGameKitServiceProtocol<>.refreshChallenges(player:filters:)();
}

uint64_t sub_1D8498CD4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  OUTLINED_FUNCTION_24(&unk_1D8596920);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_97(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_107(v1);

  return v4(v3);
}

uint64_t sub_1D8498D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8498F80);
}

uint64_t DistributedGameKitServiceProtocol<>.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v0[24] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[26] = v11;
  v0[27] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v0[28] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[29] = v13;
  v0[30] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[31] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[32] = v15;
  v16 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v16);
  v17 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v17);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_344_0(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_198();
  v6 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1D84998EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D84A7CA8;

  return DistributedGameKitServiceProtocol<>.listChallenges(player:filters:after:)();
}

uint64_t sub_1D8499C08()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596918);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8499C94(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8499DBC);
}

uint64_t sub_1D8499DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596918);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  v14 = type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
  v27 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_34_0(v27, v28, v29, v30, v13 + 40);
  sub_1D8475A40();
  v31 = sub_1D8475AF0();
  OUTLINED_FUNCTION_31(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
  sub_1D8475BA0();
  sub_1D8475CFC();
  v33 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v33, v34);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v35)
  {
    OUTLINED_FUNCTION_453();
    v36 = OUTLINED_FUNCTION_49_0();
    v37(v36);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v38);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v39, v40, v41, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v42;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v43);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D849A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v29 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v29, v30, v31, v32, v15 + 56);
    sub_1D8475A40();
    v33 = sub_1D8475AF0();
    OUTLINED_FUNCTION_31(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475BA0();
    sub_1D8475CFC();
    v35 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v35, v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_452();
      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_54();
    v52 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D849A3F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameKitServiceProtocol<>.describeChallenges(challenges:)();
}

uint64_t sub_1D849A584()
{
  OUTLINED_FUNCTION_475();
  v12 = v0;
  OUTLINED_FUNCTION_204();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_259_0(&qword_1D8596910);
  v11 = v3;
  v5 = *v4;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_176(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_64(v7);

  return v11(v9, v2, v5);
}

uint64_t sub_1D849A62C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 185) = a3;
  *(v4 + 56) = a1;
  v5 = sub_1D8581018();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D849A7C4);
}

uint64_t sub_1D849A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 152) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    v30 = *(v15 + 64);
    *(v15 + 40) = *(v15 + 56);
    *(v15 + 48) = v30;

    v31 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v31, v32, v33, v34, v15 + 40);
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
    *(v15 + 184) = *(v15 + 185);
    v37 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v37, v38, v39, v40, v15 + 184);
    sub_1D8474444();
    v41 = sub_1D8474498();
    OUTLINED_FUNCTION_31(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_238_0();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    *(v15 + 168) = v56;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v57, v58, v59, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v56 = v60;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v61, v62, v63, v64, v65, v66, v67);
  }

  else
  {
    OUTLINED_FUNCTION_24(&qword_1D8596910);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_275_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_197_0(v18);
    OUTLINED_FUNCTION_207_0(v20);
    OUTLINED_FUNCTION_240();

    return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t sub_1D849AABC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D849ABF0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D849ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_231_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D849ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 104) = v6;
  *(v1 + 112) = v0;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = sub_1D8581018();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 144) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 152) = v12;
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 168) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 176) = v14;
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v5;
  v17 = v5[1];
  *(v1 + 184) = v15;
  *(v1 + 192) = v16;
  *(v1 + 200) = v17;
  *(v1 + 250) = *v3;
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D849AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 88);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 208) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    v29 = *(v14 + 200);
    *(v14 + 56) = *(v14 + 192);
    *(v14 + 64) = v29;

    v30 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v30, v31, v32, v33, v14 + 56);
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
    *(v14 + 249) = *(v14 + 250);
    v36 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v36, v37, v38, v39, v14 + 249);
    sub_1D8474444();
    v40 = sub_1D8474498();
    OUTLINED_FUNCTION_31(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_527();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v55 = swift_task_alloc();
    *(v14 + 216) = v55;
    *v55 = v14;
    OUTLINED_FUNCTION_145_0(v55);
    OUTLINED_FUNCTION_53(v56);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v57, v58, v59, v60, v61, v62, v63);
  }

  else
  {
    v17 = *(v14 + 192);
    v16 = *(v14 + 200);
    *(v14 + 72) = *(v14 + 112);
    *(v14 + 40) = v17;
    LOBYTE(v17) = *(v14 + 250);
    *(v14 + 48) = v16;
    *(v14 + 248) = v17;
    OUTLINED_FUNCTION_54();
    v65 = v18 + *v18;
    v19 = swift_task_alloc();
    *(v14 + 232) = v19;
    *v19 = v14;
    v19[1] = sub_1D849B50C;
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_239();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v65, a12, a13, a14);
  }
}

uint64_t sub_1D849B35C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D849B454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_323();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D849B50C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_300_0();

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D849B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_158_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D849B6F0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_158_0();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D849B764(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D848228C;

  return DistributedGameKitServiceProtocol<>.refreshGameActivity(game:scope:)();
}

uint64_t sub_1D849B99C()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_24(&unk_1D8596908);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_64(v3);

  return v7(v5, v1);
}

uint64_t sub_1D849BA38(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D849BB64);
}

uint64_t sub_1D849BB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[16] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }

    v28 = v15[8];
    v15[5] = v15[7];
    v15[6] = v28;

    v29 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v29, v30, v31, v32, (v15 + 5));
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {

      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v47 = swift_task_alloc();
    v15[18] = v47;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v48, v49, v50, &protocol conformance descriptor for $DistributedGameKitServiceProtocol);
    OUTLINED_FUNCTION_81();
    *v47 = v51;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596908);
    v17 = swift_task_alloc();
    v15[17] = v17;
    *v17 = v15;
    OUTLINED_FUNCTION_197_0(v17);
    OUTLINED_FUNCTION_121_0(v18);
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D849BE00()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D849BF18()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D849C010()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_332_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D849C0B4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_332_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1D8581018();
  v1[15] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[18] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[19] = v10;
  v11 = OUTLINED_FUNCTION_332();
  v12 = *v3;
  v13 = v3[1];
  v1[20] = v11;
  v1[21] = v12;
  v1[22] = v13;
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D849C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[11];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[23] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_273_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
    }

    v27 = v14[22];
    v14[7] = v14[21];
    v14[8] = v27;

    v28 = OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60(v28, v29, v30, v31, (v14 + 7));
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_288_0();
      v36 = OUTLINED_FUNCTION_49_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    v14[24] = v46;
    *v46 = v14;
    OUTLINED_FUNCTION_145_0(v46);
    OUTLINED_FUNCTION_53(v47);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v48, v49, v50, v51, v52, v53, v54);
  }

  else
  {
    OUTLINED_FUNCTION_270_0(v14[14]);
    OUTLINED_FUNCTION_38(v14[22]);
    OUTLINED_FUNCTION_54();
    v56 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[26] = v17;
    *v17 = v14;
    v17[1] = sub_1D849C6F4;
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_239();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v56, a12, a13, a14);
  }
}

uint64_t sub_1D849C55C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D849C654()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_335();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_273_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D849C6F4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D849C81C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_335();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D849C8C4()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D849C92C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84911F8;

  return DistributedGameKitServiceProtocol<>.refreshGameActivity(game:)();
}

uint64_t sub_1D849CAB4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  OUTLINED_FUNCTION_24(&unk_1D8596900);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_97(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_107(v1);

  return v4(v3);
}

uint64_t sub_1D849CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D849CD60);
}

uint64_t sub_1D849D118()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameKitServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v0[24] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[26] = v11;
  v0[27] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  v0[28] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[29] = v13;
  v0[30] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v0[31] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[32] = v15;
  v16 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v16);
  v17 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v17);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_344_0(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_198();
  v6 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1D849D88C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D849DBA8;

  return DistributedGameKitServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)();
}